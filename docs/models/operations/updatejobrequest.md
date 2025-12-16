# UpdateJobRequest

## Example Usage

```typescript
import { UpdateJobRequest } from "@dailypay/dailypay/models/operations";

let value: UpdateJobRequest = {
  jobId: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
  jobUpdateData: {
    jobUpdateResource: {
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
    },
  },
};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           | Example                                               |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `jobId`                                               | *string*                                              | :heavy_check_mark:                                    | Unique ID of the job                                  | e9d84b0d-92ba-43c9-93bf-7c993313fa6f                  |
| `jobUpdateData`                                       | [models.JobUpdateData](../../models/jobupdatedata.md) | :heavy_check_mark:                                    | N/A                                                   |                                                       |