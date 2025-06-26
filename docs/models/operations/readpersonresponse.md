# ReadPersonResponse

## Example Usage

```typescript
import { ReadPersonResponse } from "dailypay/dailypay/models/operations";

let value: ReadPersonResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `personData`                                        | [models.PersonData](../../models/persondata.md)     | :heavy_minus_sign:                                  | Returns the person object.                          |