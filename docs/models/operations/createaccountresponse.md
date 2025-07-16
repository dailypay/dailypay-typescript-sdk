# CreateAccountResponse

## Example Usage

```typescript
import { CreateAccountResponse } from "@dailypay/sdk-typescript/models/operations";

let value: CreateAccountResponse = {};
```

## Fields

| Field                                                         | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `httpMeta`                                                    | [models.HTTPMetadata](../../models/httpmetadata.md)           | :heavy_check_mark:                                            | N/A                                                           |
| `accountData`                                                 | [models.AccountDataOutput](../../models/accountdataoutput.md) | :heavy_minus_sign:                                            | Returns the account object.                                   |