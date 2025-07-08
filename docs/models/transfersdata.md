# TransfersData

A list of transfer objects.

## Example Usage

```typescript
import { TransfersData } from "@dailypay/dailypay/models";

let value: TransfersData = {
  data: [],
  included: [
    {
      id: "b5393c00b7c113fc2e5ae3e80c785bb2",
      attributes: {
        amount: 2500,
        currency: "USD",
      },
      relationships: {
        source: {
          data: {
            id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
          },
        },
        transfer: {
          data: {
            id: "aba332a2-24a2-46de-8257-5040e71ab210",
          },
        },
      },
    },
  ],
};
```

## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `data`                                                               | [models.TransferResource](../models/transferresource.md)[]           | :heavy_check_mark:                                                   | N/A                                                                  |
| `included`                                                           | [models.FundingSourceResource](../models/fundingsourceresource.md)[] | :heavy_minus_sign:                                                   | N/A                                                                  |