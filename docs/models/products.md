# Products

Products that the person is enrolled in or eligible for. This data is refreshed nightly.


## Example Usage

```typescript
import { Products } from "@dailypay/dailypay/models";

let value: Products = {
  dailyPayCardProductEntitlement: {
    eligible: true,
    enrolled: false,
  },
};
```

## Fields

| Field                                                                                                 | Type                                                                                                  | Required                                                                                              | Description                                                                                           |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------- |
| `dailyPayCardProductEntitlement`                                                                      | [models.DailyPayCardProductEntitlement](../models/dailypaycardproductentitlement.md)                  | :heavy_check_mark:                                                                                    | The DailyPay Visa®️ Prepaid Card program. A person can be either eligible or enrolled, but not both.<br/> |