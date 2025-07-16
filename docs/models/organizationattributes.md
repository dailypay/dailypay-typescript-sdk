# OrganizationAttributes

## Example Usage

```typescript
import { OrganizationAttributes } from "@dailypay/sdk-typescript/models";

let value: OrganizationAttributes = {
  name: "DailyPay",
  products: [
    "ODP",
    "FRIDAY",
  ],
};
```

## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    | Example                                                        |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `name`                                                         | *string*                                                       | :heavy_minus_sign:                                             | Organization's name                                            | DailyPay                                                       |
| `products`                                                     | [models.Product](../models/product.md)[]                       | :heavy_minus_sign:                                             | List of the names of products available for this organization. | [<br/>"ODP",<br/>"FRIDAY"<br/>]                                |