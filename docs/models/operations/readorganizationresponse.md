# ReadOrganizationResponse

## Example Usage

```typescript
import { ReadOrganizationResponse } from "DailyPay.SDK.Typescript/models/operations";

let value: ReadOrganizationResponse = {};
```

## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `httpMeta`                                                  | [models.HTTPMetadata](../../models/httpmetadata.md)         | :heavy_check_mark:                                          | N/A                                                         |
| `organizationData`                                          | [models.OrganizationData](../../models/organizationdata.md) | :heavy_minus_sign:                                          | Returns details about an organization.                      |