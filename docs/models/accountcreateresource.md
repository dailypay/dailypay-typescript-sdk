# AccountCreateResource

## Example Usage

```typescript
import { AccountCreateResource } from "@dailypay/dailypay/models";

let value: AccountCreateResource = {
  type: "accounts",
  attributes: {
    name: "Checking Account",
    accountType: "DEPOSITORY",
    subtype: "CHECKING",
    depositoryAccountDetails: {
      firstName: "Edith",
      lastName: "Clarke",
      routingNumber: "XXXXX2021",
      accountNumber: "XXXXXX4321",
    },
  },
  relationships: {
    person: {
      data: {
        type: "people",
        id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
      },
    },
  },
};
```

## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      | Example                                                          |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `type`                                                           | *"accounts"*                                                     | :heavy_check_mark:                                               | The type of the resource. Always `accounts`.                     | accounts                                                         |
| `attributes`                                                     | *models.AccountCreateAttributes*                                 | :heavy_check_mark:                                               | The details of the account.                                      |                                                                  |
| `relationships`                                                  | [models.AccountRelationships](../models/accountrelationships.md) | :heavy_check_mark:                                               | N/A                                                              |                                                                  |