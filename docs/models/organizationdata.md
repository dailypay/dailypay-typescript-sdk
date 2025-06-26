# OrganizationData

Returns details about an organization.

## Example Usage

```typescript
import { OrganizationData } from "@dailypay/dailypay";

let value: OrganizationData = {
  data: {
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
};
```

## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `data`                                                           | [models.OrganizationResource](../models/organizationresource.md) | :heavy_check_mark:                                               | N/A                                                              |