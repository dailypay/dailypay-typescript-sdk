# AccountResourceInput

## Example Usage

```typescript
import { AccountResourceInput } from "@dailypay/dailypay/models";

let value: AccountResourceInput = {
  type: "accounts",
  attributes: {
    name: "Debit Card",
    accountType: "CARD",
    subtype: "DEBIT",
    cardAccountDetails: {
      token: "HX46TY794RG",
      issuer: "411600",
      firstName: "Edith",
      lastName: "Clarke",
      expirationMonth: "02",
      expirationYear: "2025",
      addressLineOne: "123 Kebly Street",
      addressLineTwo: "Apt #12",
      addressCity: "Fort Lee",
      addressState: "NJ",
      addressZipCode: "72374",
      addressCountry: "US",
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
| `type`                                                           | *string*                                                         | :heavy_check_mark:                                               | The type of the resource. Always `accounts`.                     | accounts                                                         |
| `attributes`                                                     | *models.AccountAttributesInput*                                  | :heavy_check_mark:                                               | The details of the account.                                      |                                                                  |
| `relationships`                                                  | [models.AccountRelationships](../models/accountrelationships.md) | :heavy_check_mark:                                               | N/A                                                              |                                                                  |