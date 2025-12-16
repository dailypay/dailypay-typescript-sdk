# CreateAccountResponse

## Example Usage

```typescript
import { CreateAccountResponse } from "@dailypay/dailypay/models/operations";

let value: CreateAccountResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `accountData`                                       | [models.AccountData](../../models/accountdata.md)   | :heavy_minus_sign:                                  | Returns the account object.                         |