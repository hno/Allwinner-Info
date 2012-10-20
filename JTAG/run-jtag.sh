#!/bin/sh
while ./olimex_reset; do
	sleep 1
	openocd -f openocd-sunxi.cfg
done
