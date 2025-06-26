# TransferCreateResource

## Example Usage

```typescript
import { TransferCreateResource } from "DailyPay";

let value: TransferCreateResource = {
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
        id: "2bc7d781-3247-46f6-b60f-4090d214936a",
      },
    },
    destination: {
      data: {
        id: "2bc7d781-3247-46f6-b60f-4090d214936a",
      },
    },
    person: {
      data: {
        id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
      },
    },
  },
};
```

## Fields

| Field                                                                                                                                                                                                                           | Type                                                                                                                                                                                                                            | Required                                                                                                                                                                                                                        | Description                                                                                                                                                                                                                     | Example                                                                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                                                                                                                          | *string*                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             |                                                                                                                                                                                                                                 |
| `id`                                                                                                                                                                                                                            | *string*                                                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                                                              | The unique identifier of the transfer. Any UUID version is valid, lower-cased.                                                                                                                                                  | aba332a2-24a2-46de-8257-5040e71ab210                                                                                                                                                                                            |
| `attributes`                                                                                                                                                                                                                    | [models.TransferAttributesInput](../models/transferattributesinput.md)                                                                                                                                                          | :heavy_check_mark:                                                                                                                                                                                                              | An object representing a transfer of money from one account to another. <br/>Created when a person takes an advance against a future paycheck, or on a daily basis <br/>when we update estimated earnings based on current employment.<br/> |                                                                                                                                                                                                                                 |
| `relationships`                                                                                                                                                                                                                 | [models.TransferCreateRelationships](../models/transfercreaterelationships.md)                                                                                                                                                  | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             |                                                                                                                                                                                                                                 |