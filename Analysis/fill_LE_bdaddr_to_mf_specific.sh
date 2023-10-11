#!/bin/bash
echo "$1"
echo "tsharking"
tshark -r "$1" -Y 'bthci_evt.code == 0x3e && btcommon.eir_ad.entry.type == 0xff' -T fields -e bthci_evt.bd_addr -e bthci_evt.le_peer_address_type -e bthci_evt.le_advts_event_type -e bthci_evt.le_ext_advts_event_type -e btcommon.eir_ad.entry.company_id -e btcommon.eir_ad.entry.data -E separator=, -E quote=d | awk -F, '{gsub(/,,/, ",")}1' > /tmp/LE_bdaddr_to_mf_specific.csv
# Dedup
cat /tmp/LE_bdaddr_to_mf_specific.csv | sort | uniq > /tmp/LE_bdaddr_to_mf_specific_uniq.csv
echo "mysql import"
mysql -u root --database='bt' --execute="LOAD DATA INFILE '/tmp/LE_bdaddr_to_mf_specific_uniq.csv' IGNORE INTO TABLE LE_bdaddr_to_mf_specific FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' (device_bdaddr, @bdaddr_random, @le_evt_type, @device_BT_CID, mf_specific_data) SET bdaddr_random = CAST(CONV(REPLACE(@bdaddr_random, '0x', ''), 16, 10) AS UNSIGNED), le_evt_type = CAST(CONV(REPLACE(@le_evt_type, '0x', ''), 16, 10) AS UNSIGNED), device_BT_CID = CAST(CONV(REPLACE(@device_BT_CID, '0x', ''), 16, 10) AS UNSIGNED);"
