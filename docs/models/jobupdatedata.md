# JobUpdateData

## Example Usage

```typescript
import { JobUpdateData } from "@dailypay/dailypay/models";

let value: JobUpdateData = {
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
};
```

## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `jobUpdateResource`                                                              | [models.JobUpdateResource](../models/jobupdateresource.md)                       | :heavy_check_mark:                                                               | A job describes the financial relationship between a person and an organization. |