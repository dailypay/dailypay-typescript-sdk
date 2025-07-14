# TransferCreateData

## Example Usage

```typescript
import { TransferCreateData } from "@dailypay/dailypay/models";

let value: TransferCreateData = {
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
};
```

## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `data`                                                               | [models.TransferCreateResource](../models/transfercreateresource.md) | :heavy_check_mark:                                                   | N/A                                                                  |