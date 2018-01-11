
CCMPDIR = /Users/Weiguangwu/research/expansion_fan/ccmp2/M01/
CCMPSUFIX = _V02.0_L3.0_RSS.nc
CCMPFILES = `ls $(CCMPDIR)/*$(CCMPSUFIX)`
OUTDIR = /Users/weiguangwu/research/expansion_fan/data/v2.0/


LATMIN = 22.0
LATMAX = 47.0
LONMIN = 220.0
LONMAX = 255.0

space_crop:
	for file in $(CCMPFILES); do \
	     filename=`basename $$file`; \
	     ncks -d lat,$(LATMIN),$(LATMAX) \
	     -d lon,$(LONMIN),$(LONMAX) \
             $$file $(OUTDIR)/$$filename; \
	done
