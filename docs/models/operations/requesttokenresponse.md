# RequestTokenResponse

## Example Usage

```typescript
import { RequestTokenResponse } from "@dailypay/dailypay-typescript-sdk/models/operations";

let value: RequestTokenResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `tokenData`                                         | [models.TokenData](../../models/tokendata.md)       | :heavy_minus_sign:                                  | DailyPay user access token                          |