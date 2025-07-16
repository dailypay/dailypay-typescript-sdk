# DepositoryInput

An account with type `DEPOSITORY` and subtype `SAVINGS` or `CHECKING`.

## Example Usage

```typescript
import { DepositoryInput } from "@dailypay/dailypay-typescript-sdk/models";

let value: DepositoryInput = {
  name: "Checking Account",
  accountType: "DEPOSITORY",
  subtype: "CHECKING",
  depositoryAccountDetails: {
    firstName: "Edith",
    lastName: "Clarke",
    routingNumber: "XXXXX2021",
    accountNumber: "XXXXXX4321",
  },
};
```

## Fields

| Field                                                                                                                                                                  | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            | Example                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `name`                                                                                                                                                                 | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | Display name for this account.                                                                                                                                         | Checking Account                                                                                                                                                       |
| `accountType`                                                                                                                                                          | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | The type of account. It differentiates between depository accounts (e.g. bank account), cards (e.g. debit) and earnings balance type of accounts (e.g. on demand pay). |                                                                                                                                                                        |
| `subtype`                                                                                                                                                              | [models.AccountAttributesDepositorySubtype](../models/accountattributesdepositorysubtype.md)                                                                           | :heavy_check_mark:                                                                                                                                                     | The subtype of the account.                                                                                                                                            | CHECKING                                                                                                                                                               |
| `depositoryAccountDetails`                                                                                                                                             | [models.DepositoryAccountDetails](../models/depositoryaccountdetails.md)                                                                                               | :heavy_check_mark:                                                                                                                                                     | The banking details of the account and account holder.                                                                                                                 |                                                                                                                                                                        |