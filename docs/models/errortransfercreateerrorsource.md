# ErrorTransferCreateErrorSource

Location in the request that may have caused the error.

## Example Usage

```typescript
import { ErrorTransferCreateErrorSource } from "@dailypay/dailypay";

let value: ErrorTransferCreateErrorSource = {
  parameter: "filter[first_name]",
  pointer: "/data/attributes/first_name",
  header: "Accept",
};
```

## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          | Example                                                              |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `parameter`                                                          | *string*                                                             | :heavy_minus_sign:                                                   | The name of the parameter that caused the error.                     | filter[first_name]                                                   |
| `pointer`                                                            | *string*                                                             | :heavy_minus_sign:                                                   | A JSON Pointer to the location in the request that caused the error. | /data/attributes/first_name                                          |
| `header`                                                             | *string*                                                             | :heavy_minus_sign:                                                   | The name of the header that caused the error.                        | Accept                                                               |