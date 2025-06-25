# JobUpdateData

## Example Usage

```typescript
import { JobUpdateData } from "DailyPay";

let value: JobUpdateData = {
  data: {
    id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
    attributes: {
      activationStatus: "DEACTIVATED",
    },
    relationships: {
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
    },
  },
};
```

## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `data`                                                                           | [models.Data](../models/data.md)                                                 | :heavy_check_mark:                                                               | A job describes the financial relationship between a person and an organization. |