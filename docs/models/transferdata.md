# TransferData

Returns the newly created transfer object.

## Example Usage

```typescript
import { TransferData } from "@dailypay/dailypay/models";

let value: TransferData = {
  data: {
    type: "transfers",
    id: "aba332a2-24a2-46de-8257-5040e71ab210",
    attributes: {
      preview: true,
      amount: 2500,
      currency: "USD",
      schedule: "WITHIN_THIRTY_MINUTES",
      status: "PENDING",
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
          type: "paychecks",
          id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
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
      estimatedFundingSources: {
        data: [],
      },
      finalFundingSources: {
        data: [
          {
            type: "funding_sources",
            id: "b5393c00b7c113fc2e5ae3e80c785bb2",
          },
        ],
      },
    },
  },
  included: [
    {
      id: "b5393c00b7c113fc2e5ae3e80c785bb2",
      type: "funding_sources",
      attributes: {
        amount: 2500,
        currency: "USD",
      },
      relationships: {
        source: {
          data: {
            type: "paychecks",
            id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
          },
        },
        transfer: {
          data: {
            type: "transfers",
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