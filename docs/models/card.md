# Card

An account with type `CARD` and subtype `DAILYPAY` or `DEBIT`.

## Example Usage

```typescript
import { Card } from "@dailypay/dailypay/models";

let value: Card = {
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
};
```

## Fields

| Field                                                                                                                                                                  | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            | Example                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accountVerificationStatus`                                                                                                                                            | [models.AccountAttributesCardAccountVerificationStatus](../models/accountattributescardaccountverificationstatus.md)                                                   | :heavy_check_mark:                                                                                                                                                     | A code that indicates the status of an account that is a destination for funds.                                                                                        | VERIFIED                                                                                                                                                               |
| `accountBalances`                                                                                                                                                      | [models.AccountAttributesCardAccountBalances](../models/accountattributescardaccountbalances.md)                                                                       | :heavy_check_mark:                                                                                                                                                     | N/A                                                                                                                                                                    |                                                                                                                                                                        |
| `accountCapabilities`                                                                                                                                                  | [models.AccountAttributesCardAccountCapabilities](../models/accountattributescardaccountcapabilities.md)                                                               | :heavy_check_mark:                                                                                                                                                     | N/A                                                                                                                                                                    |                                                                                                                                                                        |
| `name`                                                                                                                                                                 | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | Display name for this account.                                                                                                                                         | Debit Card                                                                                                                                                             |
| `accountType`                                                                                                                                                          | *"CARD"*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | The type of account. It differentiates between depository accounts (e.g. bank account), cards (e.g. debit) and earnings balance type of accounts (e.g. on demand pay). |                                                                                                                                                                        |
| `subtype`                                                                                                                                                              | [models.AccountAttributesCardSubtype](../models/accountattributescardsubtype.md)                                                                                       | :heavy_check_mark:                                                                                                                                                     | The subtype of the account. Additional subtypes may be added over time                                                                                                 | DEBIT                                                                                                                                                                  |
| `cardAccountDetails`                                                                                                                                                   | [models.CardAccountDetails](../models/cardaccountdetails.md)                                                                                                           | :heavy_check_mark:                                                                                                                                                     | The banking details of the account and account holder.                                                                                                                 |                                                                                                                                                                        |