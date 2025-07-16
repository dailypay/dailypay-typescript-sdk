# PaycheckRelationships

## Example Usage

```typescript
import { PaycheckRelationships } from "@dailypay/sdk-typescript/models";

let value: PaycheckRelationships = {
  person: {
    data: {
      type: "people",
      id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
    },
  },
  job: {
    data: {
      type: "jobs",
      id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
    },
  },
};
```

## Fields

| Field                                                        | Type                                                         | Required                                                     | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `person`                                                     | [models.PersonRelationship](../models/personrelationship.md) | :heavy_check_mark:                                           | N/A                                                          |
| `job`                                                        | [models.JobRelationship](../models/jobrelationship.md)       | :heavy_check_mark:                                           | N/A                                                          |