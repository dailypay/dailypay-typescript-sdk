# DisallowReason

The statuses and required actions are:
- `null` The person has not been disallowed, and is free to use DailyPay.
- `INACTIVE` The person has not completed registration or account verification.
- `DELINQUENT` The person has an outstanding, unrecoverable balance with DailyPay, and should contact support.
- `BANNED` Access has been revoked.


## Example Usage

```typescript
import { DisallowReason } from "dailypay/dailypay";

let value: DisallowReason = "INACTIVE";
```

## Values

```typescript
"INACTIVE" | "DELINQUENT" | "BANNED"
```