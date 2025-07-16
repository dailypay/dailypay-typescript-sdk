# JobRelationshipsInput

The relationships between the job and other resources, including the accounts to which paychecks from this job are deposited.

## Example Usage

```typescript
import { JobRelationshipsInput } from "@dailypay/sdk-typescript/models";

let value: JobRelationshipsInput = {
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
};
```

## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `directDepositDefaultDepository`                               | [models.AccountRelationship](../models/accountrelationship.md) | :heavy_minus_sign:                                             | N/A                                                            |
| `directDepositDefaultCard`                                     | [models.AccountRelationship](../models/accountrelationship.md) | :heavy_minus_sign:                                             | N/A                                                            |