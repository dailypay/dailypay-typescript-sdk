# DailyPayCardProductEntitlement

The DailyPay Visa®️ Prepaid Card program. A person can be either eligible or enrolled, but not both.


## Example Usage

```typescript
import { DailyPayCardProductEntitlement } from "@dailypay/dailypay/models";

let value: DailyPayCardProductEntitlement = {
  eligible: true,
  enrolled: false,
};
```

## Fields

| Field                                                                                  | Type                                                                                   | Required                                                                               | Description                                                                            | Example                                                                                |
| -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| `eligible`                                                                             | *boolean*                                                                              | :heavy_check_mark:                                                                     | Whether the person is eligible to enroll in the DailyPay Visa®️ Prepaid Card program.<br/> | true                                                                                   |
| `enrolled`                                                                             | *boolean*                                                                              | :heavy_check_mark:                                                                     | Whether the person is enrolled in the DailyPay Visa®️ Prepaid Card program.<br/>       | false                                                                                  |