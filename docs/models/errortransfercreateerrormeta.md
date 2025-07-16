# ErrorTransferCreateErrorMeta

Additional information about the error.

## Example Usage

```typescript
import { ErrorTransferCreateErrorMeta } from "DailyPay.SDK.Typescript/models";

let value: ErrorTransferCreateErrorMeta = {
  requestId: "3c526bf4-f3c0-4c4a-a4cb-95f7db8b3bbe",
  traceId: "4016616108459136584",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `requestId`                          | *string*                             | :heavy_minus_sign:                   | A UUID for the originating request.  | 3c526bf4-f3c0-4c4a-a4cb-95f7db8b3bbe |
| `traceId`                            | *string*                             | :heavy_minus_sign:                   | An ID used for tracing purposes.     | 4016616108459136584                  |