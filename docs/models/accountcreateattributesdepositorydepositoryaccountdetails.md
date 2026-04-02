# AccountCreateAttributesDepositoryDepositoryAccountDetails

The banking details of the account and account holder.

## Example Usage

```typescript
import { AccountCreateAttributesDepositoryDepositoryAccountDetails } from "@dailypay/dailypay/models";

let value: AccountCreateAttributesDepositoryDepositoryAccountDetails = {
  firstName: "Edith",
  lastName: "Clarke",
  routingNumber: "XXXXX2021",
  accountNumber: "XXXXXX4321",
};
```

## Fields

| Field                                                                                                                                       | Type                                                                                                                                        | Required                                                                                                                                    | Description                                                                                                                                 | Example                                                                                                                                     |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------- |
| `firstName`                                                                                                                                 | *string*                                                                                                                                    | :heavy_check_mark:                                                                                                                          | The first name of the account holder.                                                                                                       | Edith                                                                                                                                       |
| `lastName`                                                                                                                                  | *string*                                                                                                                                    | :heavy_check_mark:                                                                                                                          | The last name of the account holder.                                                                                                        | Clarke                                                                                                                                      |
| `routingNumber`                                                                                                                             | *string*                                                                                                                                    | :heavy_check_mark:                                                                                                                          | The routing number of the bank that holds this account. Responses from this API that return this number are masked to the last four digits. | XXXXX2021                                                                                                                                   |
| `accountNumber`                                                                                                                             | *string*                                                                                                                                    | :heavy_check_mark:                                                                                                                          | The account number. Responses from this API that return this number are masked to the last four digits.                                     | XXXXXX4321                                                                                                                                  |