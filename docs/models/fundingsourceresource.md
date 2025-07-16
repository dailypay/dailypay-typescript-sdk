# FundingSourceResource

A source describes how transfers with an origin of EARNINGS_BALANCE account are funded.

## Example Usage

```typescript
import { FundingSourceResource } from "@dailypay/sdk-typescript/models";

let value: FundingSourceResource = {
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
};
```

## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  | Example                                                                      |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `id`                                                                         | *string*                                                                     | :heavy_check_mark:                                                           | N/A                                                                          | b5393c00b7c113fc2e5ae3e80c785bb2                                             |
| `type`                                                                       | *string*                                                                     | :heavy_check_mark:                                                           | N/A                                                                          |                                                                              |
| `attributes`                                                                 | [models.FundingSourceAttributes](../models/fundingsourceattributes.md)       | :heavy_check_mark:                                                           | N/A                                                                          |                                                                              |
| `relationships`                                                              | [models.FundingSourceRelationships](../models/fundingsourcerelationships.md) | :heavy_check_mark:                                                           | N/A                                                                          |                                                                              |