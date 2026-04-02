# EarningsBalanceReadOnly

An account with type `EARNINGS_BALANCE` and subtype `ODP`.

## Example Usage

```typescript
import { EarningsBalanceReadOnly } from "@dailypay/dailypay/models";

let value: EarningsBalanceReadOnly = {
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
  name: "DailyPay Pay Balance",
  accountType: "EARNINGS_BALANCE",
  subtype: "ODP",
  details: {},
};
```

## Fields

| Field                                                                                                                                                                  | Type                                                                                                                                                                   | Required                                                                                                                                                               | Description                                                                                                                                                            | Example                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `accountVerificationStatus`                                                                                                                                            | [models.AccountAttributesEarningsBalanceAccountVerificationStatus](../models/accountattributesearningsbalanceaccountverificationstatus.md)                             | :heavy_check_mark:                                                                                                                                                     | A code that indicates the status of an account that is a destination for funds.                                                                                        | VERIFIED                                                                                                                                                               |
| `accountBalances`                                                                                                                                                      | [models.AccountAttributesEarningsBalanceAccountBalances](../models/accountattributesearningsbalanceaccountbalances.md)                                                 | :heavy_check_mark:                                                                                                                                                     | N/A                                                                                                                                                                    |                                                                                                                                                                        |
| `accountCapabilities`                                                                                                                                                  | [models.AccountAttributesEarningsBalanceAccountCapabilities](../models/accountattributesearningsbalanceaccountcapabilities.md)                                         | :heavy_check_mark:                                                                                                                                                     | N/A                                                                                                                                                                    |                                                                                                                                                                        |
| `name`                                                                                                                                                                 | *string*                                                                                                                                                               | :heavy_check_mark:                                                                                                                                                     | Display name for this account.                                                                                                                                         | DailyPay Pay Balance                                                                                                                                                   |
| `accountType`                                                                                                                                                          | *"EARNINGS_BALANCE"*                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                     | The type of account. It differentiates between depository accounts (e.g. bank account), cards (e.g. debit) and earnings balance type of accounts (e.g. on demand pay). |                                                                                                                                                                        |
| `subtype`                                                                                                                                                              | *"ODP"*                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                     | The subtype of the account.                                                                                                                                            |                                                                                                                                                                        |
| `details`                                                                                                                                                              | [models.Details](../models/details.md)                                                                                                                                 | :heavy_check_mark:                                                                                                                                                     | An empty object for earnings balance accounts.                                                                                                                         |                                                                                                                                                                        |