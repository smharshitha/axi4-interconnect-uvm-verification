# AXI4 Interconnect Verification with UVM

Verification-plan and interface starter for a multi-master/multi-slave AXI4 interconnect, targeting a 4-master/4-slave configuration.

## Planned verification
- Address routing and arbitration.
- Independent AW/W channel timing and backpressure.
- Read/write bursts, IDs, outstanding transactions, and response routing.
- Reset, invalid addresses, error responses, and concurrent traffic.
- UVM agents, monitors, scoreboard/reference model, SVA, and functional coverage.

## Contents
- `tb/axi4_if.sv`: simplified AXI4-style interface and example assertion.
- `docs/verification-plan.md`: directed/random test matrix.
- `docs/coverage-model.md`: coverage outline.

## Setup
Integrate the DUT, simulator-specific UVM library, and compile scripts before running. The starter interface is not a full AXI4 implementation. Report coverage percentages and bug counts only when supported by actual logs and a coverage database.