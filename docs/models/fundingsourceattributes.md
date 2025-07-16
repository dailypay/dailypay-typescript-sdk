# FundingSourceAttributes

## Example Usage

```typescript
import { FundingSourceAttributes } from "@dailypay/dailypay-typescript-sdk/models";

let value: FundingSourceAttributes = {
  amount: 2500,
  currency: "USD",
};
```

## Fields

| Field                                                                                                                                                              | Type                                                                                                                                                               | Required                                                                                                                                                           | Description                                                                                                                                                        | Example                                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `amount`                                                                                                                                                           | *number*                                                                                                                                                           | :heavy_check_mark:                                                                                                                                                 | A monetary quantity expressed in units of the lowest denomination in the associated currency. For example, `{ amount: 7250, currency: 'USD' }` resolves to $72.50. | 2500                                                                                                                                                               |
| `currency`                                                                                                                                                         | *string*                                                                                                                                                           | :heavy_check_mark:                                                                                                                                                 | A three-letter ISO 4217 currency code. For example, `USD` for US Dollars, `EUR` for Euros, or `JPY` for Japanese Yen.                                              | USD                                                                                                                                                                |