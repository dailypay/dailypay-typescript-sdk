# Data

A job describes the financial relationship between a person and an organization.

## Example Usage

```typescript
import { Data } from "@dailypay/sdk-typescript/models";

let value: Data = {
  type: "jobs",
  id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
  attributes: {
    activationStatus: "DEACTIVATED",
  },
  relationships: {
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
};
```

## Fields

| Field                                                                                                                         | Type                                                                                                                          | Required                                                                                                                      | Description                                                                                                                   | Example                                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                        | *string*                                                                                                                      | :heavy_check_mark:                                                                                                            | N/A                                                                                                                           |                                                                                                                               |
| `id`                                                                                                                          | *string*                                                                                                                      | :heavy_check_mark:                                                                                                            | N/A                                                                                                                           | e9d84b0d-92ba-43c9-93bf-7c993313fa6f                                                                                          |
| `attributes`                                                                                                                  | [models.JobAttributesInput](../models/jobattributesinput.md)                                                                  | :heavy_minus_sign:                                                                                                            | N/A                                                                                                                           |                                                                                                                               |
| `relationships`                                                                                                               | [models.JobRelationshipsInput](../models/jobrelationshipsinput.md)                                                            | :heavy_minus_sign:                                                                                                            | The relationships between the job and other resources, including the accounts to which paychecks from this job are deposited. |                                                                                                                               |