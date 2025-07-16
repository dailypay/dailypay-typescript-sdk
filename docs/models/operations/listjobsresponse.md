# ListJobsResponse

## Example Usage

```typescript
import { ListJobsResponse } from "DailyPay.SDK.Typescript/models/operations";

let value: ListJobsResponse = {};
```

## Fields

| Field                                               | Type                                                | Required                                            | Description                                         |
| --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- | --------------------------------------------------- |
| `httpMeta`                                          | [models.HTTPMetadata](../../models/httpmetadata.md) | :heavy_check_mark:                                  | N/A                                                 |
| `jobsData`                                          | [models.JobsData](../../models/jobsdata.md)         | :heavy_minus_sign:                                  | Returns a list of job objects.                      |