# JobUpdateResource

A job describes the financial relationship between a person and an organization.

## Example Usage

```typescript
import { JobUpdateResource } from "@dailypay/dailypay/models";

let value: JobUpdateResource = {
  type: "jobs",
  id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
  jobUpdateRelationships: {
    directDepositDefaultDepository: {
      data: {
        type: "accounts",
        id: "2bc7d781-3247-46f6-b60f-4090d214936a",
      },
    },
    directDepositDefaultCard: {
      data: {
        type: "accounts",
        id: "2bc7d781-3247-46f6-b60f-4090d214936a",
      },
    },
  },
  jobUpdateAttributes: {
    activationStatus: "DEACTIVATED",
  },
};
```

## Fields

| Field                                                                                                                         | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   | Example                                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                        | *"jobs"*                                                                                                                      | :heavy_check_mark:                                                                                                            | N/A                                                                                                                           |                                                                                                                               |
| `id`                                                                                                                          | *string*                                                                                                                      | :heavy_check_mark:                                                                                                            | N/A                                                                                                                           | e9d84b0d-92ba-43c9-93bf-7c993313fa6f                                                                                          |
| `jobUpdateRelationships`                                                                                                      | [models.JobUpdateRelationships](../models/jobupdaterelationships.md)                                                          | :heavy_minus_sign:                                                                                                            | The relationships between the job and other resources, including the accounts to which paychecks from this job are deposited. |                                                                                                                               |
| `jobUpdateAttributes`                                                                                                         | [models.JobUpdateAttributes](../models/jobupdateattributes.md)                                                                | :heavy_minus_sign:                                                                                                            | N/A                                                                                                                           |                                                                                                                               |