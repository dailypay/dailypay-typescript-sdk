# Depository

An account with type `DEPOSITORY` and subtype `SAVINGS` or `CHECKING`.

## Example Usage

```typescript
import { Depository } from "openapi";

let value: Depository = {
  verificationStatus: "VERIFIED",
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
  name: "Checking Account",
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
| `verificationStatus`                                                                                                                                                   | [models.AccountAttributesDepositoryVerificationStatus](../models/accountattributesdepositoryverificationstatus.md)                                                     | :heavy_check_mark:                                                                                                                                                     | A code that indicates the status of an account that is a destination for funds.                                                                                        | VERIFIED                                                                                                                                                               |
| `accountBalances`                                                                                                                                                      | [models.AccountAttributesDepositoryAccountBalances](../models/accountattributesdepositoryaccountbalances.md)                                                           | :heavy_check_mark:                                                                                                                                                     | N/A                                                                                                                                                                    |                                                                                                                                                                        |
| `accountCapabilities`                                                                                                                                                  | [models.AccountAttributesDepositoryAccountCapabilities](../models/accountattributesdepositoryaccountcapabilities.md)                                                   | :heavy_check_mark:                                                                                                                                                     | N/A                                                                                                                                                                    |                                                                                                                                                                        |
| `name`                                                                                                                                                                 | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | Display name for this account.                                                                                                                                         | Checking Account                                                                                                                                                       |
| `accountType`                                                                                                                                                          | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | The type of account. It differentiates between depository accounts (e.g. bank account), cards (e.g. debit) and earnings balance type of accounts (e.g. on demand pay). |                                                                                                                                                                        |
| `subtype`                                                                                                                                                              | [models.AccountAttributesDepositorySubtype](../models/accountattributesdepositorysubtype.md)                                                                           | :heavy_check_mark:                                                                                                                                                     | The subtype of the account.                                                                                                                                            | CHECKING                                                                                                                                                               |
| `depositoryAccountDetails`                                                                                                                                             | [models.DepositoryAccountDetails](../models/depositoryaccountdetails.md)                                                                                               | :heavy_check_mark:                                                                                                                                                     | The banking details of the account and account holder.                                                                                                                 |                                                                                                                                                                        |