# TransferResource

## Example Usage

```typescript
import { TransferResource } from "dailypay/dailypay";

let value: TransferResource = {
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
        id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
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
      data: [],
    },
    finalFundingSources: {
      data: [
        {
          id: "b5393c00b7c113fc2e5ae3e80c785bb2",
        },
      ],
    },
  },
};
```

## Fields

| Field                                                                                                                                                                                                                           | Type                                                                                                                                                                                                                            | Required                                                                                                                                                                                                                        | Description                                                                                                                                                                                                                     | Example                                                                                                                                                                                                                         |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                                                                                                                          | *string*                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             |                                                                                                                                                                                                                                 |
| `id`                                                                                                                                                                                                                            | *string*                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             | aba332a2-24a2-46de-8257-5040e71ab210                                                                                                                                                                                            |
| `attributes`                                                                                                                                                                                                                    | [models.TransferAttributes](../models/transferattributes.md)                                                                                                                                                                    | :heavy_check_mark:                                                                                                                                                                                                              | An object representing a transfer of money from one account to another. <br/>Created when a person takes an advance against a future paycheck, or on a daily basis <br/>when we update estimated earnings based on current employment.<br/> |                                                                                                                                                                                                                                 |
| `links`                                                                                                                                                                                                                         | [models.TransferLinks](../models/transferlinks.md)                                                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             |                                                                                                                                                                                                                                 |
| `relationships`                                                                                                                                                                                                                 | [models.TransferRelationships](../models/transferrelationships.md)                                                                                                                                                              | :heavy_check_mark:                                                                                                                                                                                                              | N/A                                                                                                                                                                                                                             |                                                                                                                                                                                                                                 |