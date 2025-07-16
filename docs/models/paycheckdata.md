# PaycheckData

Returns the paycheck object.

## Example Usage

```typescript
import { PaycheckData } from "DailyPay.SDK.Typescript/models";

let value: PaycheckData = {
  data: {
    type: "paychecks",
    id: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    attributes: {
      status: "DEPOSITED",
      payPeriodEndsAt: new Date("2023-03-15T04:00:00Z"),
      payPeriodStartsAt: new Date("2023-03-15T04:00:00Z"),
      depositExpectedAt: new Date("2023-03-15T04:00:00Z"),
      totalDebited: 0,
      grossEarnings: 0,
      employerWithholdings: 0,
      netEarnings: 0,
      currency: "USD",
    },
    links: {
      self:
        "https://api.dailypay.com/rest/paychecks/f4e2fd6c-b567-447c-a003-b7315b8d22d2",
    },
    relationships: {
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
    },
  },
};
```

## Fields

| Field                                                    | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `data`                                                   | [models.PaycheckResource](../models/paycheckresource.md) | :heavy_check_mark:                                       | N/A                                                      |