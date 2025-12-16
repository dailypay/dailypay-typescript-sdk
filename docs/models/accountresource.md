# AccountResource

## Example Usage

```typescript
import { AccountResource } from "@dailypay/dailypay/models";

let value: AccountResource = {
  id: "2bc7d781-3247-46f6-b60f-4090d214936a",
  type: "accounts",
  attributes: {
    accountVerificationStatus: "VERIFIED",
    accountBalances: {
      available: 12000,
      current: 50000,
      currency: "USD",
    },
    accountCapabilities: {
      transferDestination: [
        {
          schedule: "WITHIN_THIRTY_MINUTES",
          fee: 300,
          currency: "USD",
        },
        {
          schedule: "NEXT_BUSINESS_DAY",
          fee: 0,
          currency: "USD",
        },
      ],
    },
    name: "Debit Card",
    accountType: "CARD",
    subtype: "DEBIT",
    cardAccountDetails: {
      lastFour: "0003",
      issuer: "411600",
      firstName: "Edith",
      lastName: "Clarke",
      expirationMonth: "02",
      expirationYear: "2025",
    },
  },
  links: {
    self:
      "https://api.dailypay.com/rest/accounts/2bc7d781-3247-46f6-b60f-4090d214936a",
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
| `id`                                                             | *string*                                                         | :heavy_check_mark:                                               | The unique identifier of the Account.                            | 2bc7d781-3247-46f6-b60f-4090d214936a                             |
| `type`                                                           | *"accounts"*                                                     | :heavy_check_mark:                                               | The type of the resource. Always `accounts`.                     | accounts                                                         |
| `attributes`                                                     | *models.AccountAttributes*                                       | :heavy_check_mark:                                               | The details of the account.                                      |                                                                  |
| `links`                                                          | [models.AccountLinks](../models/accountlinks.md)                 | :heavy_check_mark:                                               | N/A                                                              |                                                                  |
| `relationships`                                                  | [models.AccountRelationships](../models/accountrelationships.md) | :heavy_check_mark:                                               | N/A                                                              |                                                                  |