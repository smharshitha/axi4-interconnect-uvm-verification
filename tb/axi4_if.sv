interface axi4_if #(parameter ADDR_W=32, DATA_W=32, ID_W=4) (input logic ACLK);
    logic ARESETn;
    logic [ADDR_W-1:0] AWADDR;
    logic [7:0] AWLEN;
    logic [2:0] AWSIZE;
    logic [1:0] AWBURST;
    logic AWVALID, AWREADY;
    logic [DATA_W-1:0] WDATA;
    logic [DATA_W/8-1:0] WSTRB;
    logic WLAST, WVALID, WREADY;
    logic [ID_W-1:0] BID;
    logic [1:0] BRESP;
    logic BVALID, BREADY;
    logic [ADDR_W-1:0] ARADDR;
    logic [7:0] ARLEN;
    logic [2:0] ARSIZE;
    logic [1:0] ARBURST;
    logic [ID_W-1:0] ARID;
    logic ARVALID, ARREADY;
    logic [ID_W-1:0] RID;
    logic [DATA_W-1:0] RDATA;
    logic [1:0] RRESP;
    logic RLAST, RVALID, RREADY;

    property aw_stable_when_stalled;
        @(posedge ACLK) disable iff (!ARESETn)
        AWVALID && !AWREADY |=> AWVALID && $stable({AWADDR,AWLEN,AWSIZE,AWBURST});
    endproperty
    assert property (aw_stable_when_stalled);
endinterface
