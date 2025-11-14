# ListAccountsRequest

## Example Usage

```typescript
import { ListAccountsRequest } from "@dailypay/dailypay/models/operations";

let value: ListAccountsRequest = {
  filterPersonId: "aa860051-c411-4709-9685-c1b716df611b",
  filterAccountType: "EARNINGS_BALANCE",
  filterSubtype: "ODP",
};
```

## Fields

| Field                                                                                                                   | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             | Example                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `filterPersonId`                                                                                                        | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents related to a specific person                                                             | aa860051-c411-4709-9685-c1b716df611b                                                                                    |
| `filterAccountType`                                                                                                     | [models.FilterAccountType](../../models/filteraccounttype.md)                                                           | :heavy_minus_sign:                                                                                                      | Limit the results to documents matching the specified account type.                                                     | EARNINGS_BALANCE                                                                                                        |
| `filterSubtype`                                                                                                         | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents matching the specified account subtype.                                                  | ODP                                                                                                                     |
| ~~`filterBy`~~                                                                                                          | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible. |                                                                                                                         |