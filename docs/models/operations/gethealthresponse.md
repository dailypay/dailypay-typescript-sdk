# GetHealthResponse

## Example Usage

```typescript
import { GetHealthResponse } from "@dailypay/dailypay-typescript-sdk/models/operations";

let value: GetHealthResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `health200`                                         | [models.Health200](../../models/health200.md)       | :heavy_minus_sign:                                  | Returns a healthcheck document                      |