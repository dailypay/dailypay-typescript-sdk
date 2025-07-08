# FundingSourceRelationships

## Example Usage

```typescript
import { FundingSourceRelationships } from "@dailypay/dailypay/models";

let value: FundingSourceRelationships = {
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
};
```

## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `source`                                                         | [models.PaycheckRelationship](../models/paycheckrelationship.md) | :heavy_check_mark:                                               | N/A                                                              |
| `transfer`                                                       | [models.TransferRelationship](../models/transferrelationship.md) | :heavy_check_mark:                                               | N/A                                                              |