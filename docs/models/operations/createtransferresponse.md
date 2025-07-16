# CreateTransferResponse

## Example Usage

```typescript
import { CreateTransferResponse } from "@dailypay/dailypay-typescript-sdk/models/operations";

let value: CreateTransferResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `transferData`                                      | [models.TransferData](../../models/transferdata.md) | :heavy_minus_sign:                                  | Returns the newly created transfer object.          |