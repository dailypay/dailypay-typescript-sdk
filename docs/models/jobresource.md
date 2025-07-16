# JobResource

A job describes the financial relationship between a person and an organization.

## Example Usage

```typescript
import { JobResource } from "DailyPay.SDK.Typescript/models";

let value: JobResource = {
  type: "jobs",
  id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
  attributes: {
    externalIdentifiers: {
      "primary_identifier": "0123456789",
    },
    firstName: "Edith",
    lastName: "Clarke",
    activationStatus: "DEACTIVATED",
    wageRate: {
      amount: 2500,
      currency: "USD",
      frequency: "HOURLY",
    },
    title: "Computer",
    department: null,
    location: "New York, New York",
    directDepositStatus: "SETUP_COMPLETE",
  },
  links: {
    self:
      "https://api.dailypay.com/rest/jobs/e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
  },
  relationships: {
    person: {
      data: {
        type: "people",
        id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
      },
    },
    organization: {
      data: {
        type: "organizations",
        id: "f0b30634-108c-439c-a8c1-c6a91197f022",
      },
    },
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
| `attributes`                                                                                                                  | [models.JobAttributes](../models/jobattributes.md)                                                                            | :heavy_check_mark:                                                                                                            | N/A                                                                                                                           |                                                                                                                               |
| `links`                                                                                                                       | [models.JobLinks](../models/joblinks.md)                                                                                      | :heavy_check_mark:                                                                                                            | N/A                                                                                                                           |                                                                                                                               |
| `relationships`                                                                                                               | [models.JobRelationships](../models/jobrelationships.md)                                                                      | :heavy_check_mark:                                                                                                            | The relationships between the job and other resources, including the accounts to which paychecks from this job are deposited. |                                                                                                                               |