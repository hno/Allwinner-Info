mw.l 01c20080 8003000f

# Initialization
mw.l 01c03000 0 40 # Wipe clear
mw.l 01c03000 2    # Reset
#sleep 1
mw.l 01c0300c 100  # Timing CTL
mw.l 01c03010 ff  # Timing CTL
mw.l 01c030a0 800  # Spare area
mw.l 01c03000 301
mw.l 01c03024 004000ff  # reset nand chip

mw.l 1c03000 2	  # Reset
#sleep 1
mw.l 1c03000 301
mw.l 1c03020 400
mw.l 01c03028 e00530
mw.l 01c0301C 1		# Sectors
mw.l 01c03014 e6000000
mw.l 01c03018 6
mw.l 01c03034 2b753209
mw.l 01c03024 85ec0000

mw.l 01c03024 05ec0000
