# ReadTransferResponse

## Example Usage

```typescript
import { ReadTransferResponse } from "@dailypay/dailypay/models/operations";

let value: ReadTransferResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `transferData`                                      | [models.TransferData](../../models/transferdata.md) | :heavy_minus_sign:                                  | Returns the newly created transfer object.          |