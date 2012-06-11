#!/bin/sh
cat G2_Flash_LyF1_Pre_rev_ffff_switch.1.usb.tcpdump | sed -e 's/ \([0-9a-z][0-9a-f]\)   / \1__/g; s/     / ____/g' | awk -f decode.awk >G2_Flash_LyF1_Pre_rev_ffff_switch.1.usb.txt
