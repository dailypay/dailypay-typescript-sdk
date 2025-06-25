# TransferAttributesSchedule

Set the schedule for the transfer. If not set, the transfer will be processed immediately. 
A preview transfer will never send.


## Example Usage

```typescript
import { TransferAttributesSchedule } from "openapi";

let value: TransferAttributesSchedule = "WITHIN_THIRTY_MINUTES";
```

## Values

```typescript
"WITHIN_THIRTY_MINUTES" | "NEXT_BUSINESS_DAY"
```