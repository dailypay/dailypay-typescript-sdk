# ListPaychecksResponse

## Example Usage

```typescript
import { ListPaychecksResponse } from "@dailypay/dailypay/models/operations";

let value: ListPaychecksResponse = {};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `httpMeta`                                            | [models.HTTPMetadata](../../models/httpmetadata.md)   | :heavy_check_mark:                                    | N/A                                                   |
| `paychecksData`                                       | [models.PaychecksData](../../models/paychecksdata.md) | :heavy_minus_sign:                                    | Returns the paycheck object.                          |