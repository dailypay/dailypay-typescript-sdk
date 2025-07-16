# CreateGenericCardTokenResponse

## Example Usage

```typescript
import { CreateGenericCardTokenResponse } from "@dailypay/sdk-typescript/models/operations";

let value: CreateGenericCardTokenResponse = {};
```

## Fields

| Field                                                                                                          | Type                                                                                                           | Required                                                                                                       | Description                                                                                                    |
| -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `httpMeta`                                                                                                     | [models.HTTPMetadata](../../models/httpmetadata.md)                                                            | :heavy_check_mark:                                                                                             | N/A                                                                                                            |
| `object`                                                                                                       | [operations.CreateGenericCardTokenResponseBody](../../models/operations/creategenericcardtokenresponsebody.md) | :heavy_minus_sign:                                                                                             | Returns an opaque string representing the card details.<br/>                                                   |