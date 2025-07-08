# PaycheckResource

## Example Usage

```typescript
import { PaycheckResource } from "@dailypay/dailypay/models";

let value: PaycheckResource = {
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
        id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
      },
    },
    job: {
      data: {
        id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
      },
    },
  },
};
```

## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        | Example                                                            |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `type`                                                             | *string*                                                           | :heavy_check_mark:                                                 | N/A                                                                |                                                                    |
| `id`                                                               | *string*                                                           | :heavy_check_mark:                                                 | N/A                                                                | 3fa85f64-5717-4562-b3fc-2c963f66afa6                               |
| `attributes`                                                       | [models.PaycheckAttributes](../models/paycheckattributes.md)       | :heavy_check_mark:                                                 | N/A                                                                |                                                                    |
| `links`                                                            | [models.PaycheckLinks](../models/paychecklinks.md)                 | :heavy_check_mark:                                                 | N/A                                                                |                                                                    |
| `relationships`                                                    | [models.PaycheckRelationships](../models/paycheckrelationships.md) | :heavy_check_mark:                                                 | N/A                                                                |                                                                    |