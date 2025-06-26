# AccountResourceInput

## Example Usage

```typescript
import { AccountResourceInput } from "dailypay/dailypay";

let value: AccountResourceInput = {
  attributes: {
    name: "Debit Card",
    subtype: "DEBIT",
    details: {
      galileoCardId: "40769",
      galileoPmtRefNo: "777101360999",
    },
  },
  relationships: {
    person: {
      data: {
        id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
      },
    },
  },
};
```

## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      | Example                                                          |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `type`                                                           | *string*                                                         | :heavy_check_mark:                                               | The type of the resource. Always `accounts`.                     | accounts                                                         |
| `attributes`                                                     | *models.AccountAttributesInput*                                  | :heavy_check_mark:                                               | The details of the account.                                      |                                                                  |
| `relationships`                                                  | [models.AccountRelationships](../models/accountrelationships.md) | :heavy_check_mark:                                               | N/A                                                              |                                                                  |