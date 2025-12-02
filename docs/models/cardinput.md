# CardInput

An account with type `CARD` and subtype `DAILYPAY` or `DEBIT`.

## Example Usage

```typescript
import { CardInput } from "@dailypay/dailypay/models";

let value: CardInput = {
  name: "Debit Card",
  accountType: "CARD",
  subtype: "DEBIT",
  cardAccountDetails: {
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
  },
};
```

## Fields

| Field                                                                                                                                                                  | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            | Example                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`                                                                                                                                                                 | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | Display name for this account.                                                                                                                                         | Debit Card                                                                                                                                                             |
| `accountType`                                                                                                                                                          | *"CARD"*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | The type of account. It differentiates between depository accounts (e.g. bank account), cards (e.g. debit) and earnings balance type of accounts (e.g. on demand pay). |                                                                                                                                                                        |
| `subtype`                                                                                                                                                              | [models.AccountAttributesCardSubtype](../models/accountattributescardsubtype.md)                                                                                       | :heavy_check_mark:                                                                                                                                                     | The subtype of the account. Additional subtypes may be added over time                                                                                                 | DEBIT                                                                                                                                                                  |
| `cardAccountDetails`                                                                                                                                                   | [models.CardAccountDetailsInput](../models/cardaccountdetailsinput.md)                                                                                                 | :heavy_check_mark:                                                                                                                                                     | The banking details of the account and account holder.                                                                                                                 |                                                                                                                                                                        |