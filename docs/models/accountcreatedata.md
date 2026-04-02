# AccountCreateData

## Example Usage

```typescript
import { AccountCreateData } from "@dailypay/dailypay/models";

let value: AccountCreateData = {
  data: {
    type: "accounts",
    attributes: {
      name: "Debit Card",
      accountType: "CARD",
      subtype: "DEBIT",
      createCardAccountDetails: {
        token: "HX46TY794RG",
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
        issuer: "411600",
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
  },
};
```

## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `data`                                                             | [models.AccountCreateResource](../models/accountcreateresource.md) | :heavy_check_mark:                                                 | N/A                                                                |