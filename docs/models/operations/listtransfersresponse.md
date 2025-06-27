# ListTransfersResponse

## Example Usage

```typescript
import { ListTransfersResponse } from "@dailypay/dailypay/models/operations";

let value: ListTransfersResponse = {};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `httpMeta`                                            | [models.HTTPMetadata](../../models/httpmetadata.md)   | :heavy_check_mark:                                    | N/A                                                   |
| `transfersData`                                       | [models.TransfersData](../../models/transfersdata.md) | :heavy_minus_sign:                                    | A list of transfer objects.                           |