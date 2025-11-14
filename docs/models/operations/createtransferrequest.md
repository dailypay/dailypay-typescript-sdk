# CreateTransferRequest

## Example Usage

```typescript
import { CreateTransferRequest } from "@dailypay/dailypay/models/operations";

let value: CreateTransferRequest = {
  idempotencyKey: "e2736aa1-78c4-4cc6-b0a6-848e733f232a",
  transferCreateData: {
    data: {
      type: "transfers",
      id: "aba332a2-24a2-46de-8257-5040e71ab210",
      attributes: {
        preview: true,
        amount: 2500,
        currency: "USD",
        schedule: "WITHIN_THIRTY_MINUTES",
      },
      relationships: {
        origin: {
          data: {
            type: "accounts",
            id: "2bc7d781-3247-46f6-b60f-4090d214936a",
          },
        },
        destination: {
          data: {
            type: "accounts",
            id: "2bc7d781-3247-46f6-b60f-4090d214936a",
          },
        },
        person: {
          data: {
            type: "people",
            id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
          },
        },
      },
    },
  },
};
```

## Fields

| Field                                                                                                                                                                                                   | Type                                                                                                                                                                                                    | Required                                                                                                                                                                                                | Description                                                                                                                                                                                             | Example                                                                                                                                                                                                 |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `idempotencyKey`                                                                                                                                                                                        | *string*                                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                      | An idempotency key is a unique string that you provide to ensure a request is only processed once.<br/>Any number of requests with the same idempotency key and payload will return an identical response.<br/> | e2736aa1-78c4-4cc6-b0a6-848e733f232a                                                                                                                                                                    |
| `include`                                                                                                                                                                                               | *string*                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                      | Add related resources to the response. <br/><br/>The value of the include parameter must be a comma-separated (U+002C COMMA, “,”) list of relationship paths.<br/>                                      |                                                                                                                                                                                                         |
| `transferCreateData`                                                                                                                                                                                    | [models.TransferCreateData](../../models/transfercreatedata.md)                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                      | N/A                                                                                                                                                                                                     |                                                                                                                                                                                                         |