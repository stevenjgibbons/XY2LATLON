#!/bin/sh
awk '{print $1, $2      , $3      , 1.0}' ./DPRK_xy.txt > DPRK_locations.txt
reflat=41.29520
reflon=129.08400
#
python xy2latlon.py --reflat $reflat --reflon $reflon --infile DPRK_locations.txt >> DPRK_locations_latlon.txt
