# DirectDepositStatus

- `SETUP_REQUIRED` Direct deposit is not set up for this Job. Update this resource's relationships to set up direct deposit.
- `SETUP_PENDING` A system action is still pending.
- `SETUP_COMPLETE` Direct deposit is set up for this Job.


## Example Usage

```typescript
import { DirectDepositStatus } from "@dailypay/dailypay";

let value: DirectDepositStatus = "SETUP_COMPLETE";
```

## Values

```typescript
"SETUP_REQUIRED" | "SETUP_PENDING" | "SETUP_COMPLETE"
```