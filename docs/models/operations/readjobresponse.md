# ReadJobResponse

## Example Usage

```typescript
import { ReadJobResponse } from "DailyPay.SDK.Typescript/models/operations";

let value: ReadJobResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `jobData`                                           | [models.JobData](../../models/jobdata.md)           | :heavy_minus_sign:                                  | Returns the job object.                             |