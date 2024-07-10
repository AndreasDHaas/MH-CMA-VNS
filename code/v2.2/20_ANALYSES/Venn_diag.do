* Venn diagramm of MHD and NVL 
	ssc install venndiag
	use if CMA180_cat !=. using "$clean/analyseNVL", clear
	egen mhd = rowtotal(F2 F3 F4 F5 F9)
	replace mhd = 1 if mhd >0 & mhd !=.
	gen nomhd = 1-mhd
	gen vls = 1-vf400
	
	tab mhd vf200, col
	tab mhd vls if age<25, col
	tab mhd vls, col
	
	
