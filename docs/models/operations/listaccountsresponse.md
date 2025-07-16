# ListAccountsResponse

## Example Usage

```typescript
import { ListAccountsResponse } from "DailyPay.SDK.Typescript/models/operations";

let value: ListAccountsResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `accountsData`                                      | [models.AccountsData](../../models/accountsdata.md) | :heavy_minus_sign:                                  | Returns the account object.                         |