# OrganizationResource

## Example Usage

```typescript
import { OrganizationResource } from "@dailypay/dailypay/models";

let value: OrganizationResource = {
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
};
```

## Fields

| Field                                                                                                                      | Type                                                                                                                       | Required                                                                                                                   | Description                                                                                                                | Example                                                                                                                    |
| -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                                     | *string*                                                                                                                   | :heavy_check_mark:                                                                                                         | N/A                                                                                                                        |                                                                                                                            |
| `id`                                                                                                                       | *string*                                                                                                                   | :heavy_check_mark:                                                                                                         | String identifier that is unique to this organization. You can safely assume the identifier to never exceed 64 characters. | f0b30634-108c-439c-a8c1-c6a91197f022                                                                                       |
| `attributes`                                                                                                               | [models.OrganizationAttributes](../models/organizationattributes.md)                                                       | :heavy_check_mark:                                                                                                         | N/A                                                                                                                        |                                                                                                                            |
| `links`                                                                                                                    | [models.OrganizationLinks](../models/organizationlinks.md)                                                                 | :heavy_check_mark:                                                                                                         | N/A                                                                                                                        |                                                                                                                            |