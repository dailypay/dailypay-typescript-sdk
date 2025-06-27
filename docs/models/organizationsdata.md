# OrganizationsData

Returns a list of organization objects that match the filter. If no organizations match the filter, the resulting collection will be empty. If no filter is provider, the resulting collection will include all accessible organizations.

## Example Usage

```typescript
import { OrganizationsData } from "@dailypay/dailypay";

let value: OrganizationsData = {
  data: [
    {
      id: "f0b30634-108c-439c-a8c1-c6a91197f022",
      attributes: {
        name: "DailyPay",
        products: [
          "ODP",
          "FRIDAY",
        ],
      },
      links: {
        self:
          "https://api.dailypay.com/rest/organizations/f0b30634-108c-439c-a8c1-c6a91197f022",
      },
    },
  ],
};
```

## Fields

| Field                                                              | Type                                                               | Required                                                           | Description                                                        |
| ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ------------------------------------------------------------------ |
| `data`                                                             | [models.OrganizationResource](../models/organizationresource.md)[] | :heavy_check_mark:                                                 | N/A                                                                |