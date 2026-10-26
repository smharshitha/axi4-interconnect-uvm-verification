# Verification plan

## Test matrix
- Reset during idle and traffic.
- Every master routes to every legal slave.
- Invalid/unmapped address behavior.
- Single-beat and burst reads/writes, including boundary addresses.
- AW/W channel skew and independent backpressure.
- Multiple outstanding IDs and out-of-order responses where supported.
- Contention for one slave and independent traffic to different slaves.
- Error responses and response routing to originating master.
- Long random stress with reproducible seeds.

## Scoreboard
Track accepted address transactions by ID and expected destination. Pair write address/data according to AXI rules; do not assume AW and W arrive in the same cycle. Check response ID, status, and routing. For reads, compare returned data against a reference memory model.

## Assertions
Check VALID/payload stability while stalled, no response without a request, legal IDs/routes, and reset behavior.

## Coverage
Cover master × slave, burst length/type, response status, stall duration, and concurrent contention. State exclusions explicitly.