# TransferCreateAttributesSchedule

Set the schedule for the transfer. If not set, the transfer will be processed immediately. 
A preview transfer will never send.


## Example Usage

```typescript
import { TransferCreateAttributesSchedule } from "@dailypay/dailypay/models";

let value: TransferCreateAttributesSchedule = "WITHIN_THIRTY_MINUTES";
```

## Values

```typescript
"WITHIN_THIRTY_MINUTES" | "NEXT_BUSINESS_DAY"
```