# ReadPaycheckResponse

## Example Usage

```typescript
import { ReadPaycheckResponse } from "@dailypay/sdk-typescript/models/operations";

let value: ReadPaycheckResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `paycheckData`                                      | [models.PaycheckData](../../models/paycheckdata.md) | :heavy_minus_sign:                                  | Returns the paycheck object.                        |