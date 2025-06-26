# ReadAccountResponse

## Example Usage

```typescript
import { ReadAccountResponse } from "@dailypay/dailypay/models/operations";

let value: ReadAccountResponse = {};
```

## Fields

| Field                                                         | Type                                                          | Required                                                      | Description                                                   |
| ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- | ------------------------------------------------------------- |
| `httpMeta`                                                    | [models.HTTPMetadata](../../models/httpmetadata.md)           | :heavy_check_mark:                                            | N/A                                                           |
| `accountData`                                                 | [models.AccountDataOutput](../../models/accountdataoutput.md) | :heavy_minus_sign:                                            | Returns the account object.                                   |