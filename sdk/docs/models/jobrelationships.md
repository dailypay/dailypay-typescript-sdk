# JobRelationships

The relationships between the job and other resources, including the accounts to which paychecks from this job are deposited.

## Example Usage

```typescript
import { JobRelationships } from "DailyPay";

let value: JobRelationships = {
  person: {
    data: {
      id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
    },
  },
  organization: {
    data: {
      id: "f0b30634-108c-439c-a8c1-c6a91197f022",
    },
  },
  directDepositDefaultDepository: {
    data: {
      id: "2bc7d781-3247-46f6-b60f-4090d214936a",
    },
  },
  directDepositDefaultCard: {
    data: {
      id: "2bc7d781-3247-46f6-b60f-4090d214936a",
    },
  },
};
```

## Fields

| Field                                                                        | Type                                                                         | Required                                                                     | Description                                                                  |
| ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------------------------------- |
| `person`                                                                     | [models.PersonRelationshipReadOnly](../models/personrelationshipreadonly.md) | :heavy_check_mark:                                                           | N/A                                                                          |
| `organization`                                                               | [models.OrganizationRelationship](../models/organizationrelationship.md)     | :heavy_check_mark:                                                           | N/A                                                                          |
| `directDepositDefaultDepository`                                             | [models.AccountRelationship](../models/accountrelationship.md)               | :heavy_minus_sign:                                                           | N/A                                                                          |
| `directDepositDefaultCard`                                                   | [models.AccountRelationship](../models/accountrelationship.md)               | :heavy_minus_sign:                                                           | N/A                                                                          |