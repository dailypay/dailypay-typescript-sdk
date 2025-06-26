# TransferData

Returns the newly created transfer object.

## Example Usage

```typescript
import { TransferData } from "DailyPay";

let value: TransferData = {
  data: {
    id: "aba332a2-24a2-46de-8257-5040e71ab210",
    attributes: {
      preview: true,
      amount: 2500,
      currency: "USD",
      status: "PENDING",
      schedule: "WITHIN_THIRTY_MINUTES",
      submittedAt: new Date("2021-04-21T21:30:58.051Z"),
      resolvedAt: new Date("2021-04-21T21:30:58.051Z"),
      fee: 0,
    },
    links: {
      self:
        "https://api.dailypay.com/rest/transfers/aba332a2-24a2-46de-8257-5040e71ab210",
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
      estimatedFundingSources: {
        data: [
          {
            id: "b5393c00b7c113fc2e5ae3e80c785bb2",
          },
        ],
      },
      finalFundingSources: {
        data: [
          {
            id: "b5393c00b7c113fc2e5ae3e80c785bb2",
          },
        ],
      },
    },
  },
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
| `data`                                                               | [models.TransferResource](../models/transferresource.md)             | :heavy_check_mark:                                                   | N/A                                                                  |
| `included`                                                           | [models.FundingSourceResource](../models/fundingsourceresource.md)[] | :heavy_minus_sign:                                                   | N/A                                                                  |