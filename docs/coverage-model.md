# Coverage model outline

Add covergroups in monitors or a dedicated subscriber:
- master ID × slave ID route cross.
- AWLEN/ARLEN bins: 0, 1, short bursts, maximum supported burst.
- AWBURST/ARBURST: FIXED, INCR, WRAP.
- BRESP/RRESP: OKAY, EXOKAY if supported, SLVERR, DECERR.
- READY-low stall duration bins.
- Simultaneous request count and arbitration winner.
- Reset phase × traffic state.

Coverage goals are targets, not results. Save simulator logs and the UCDB/coverage database before publishing percentages.
