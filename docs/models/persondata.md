# PersonData

Returns the person object.

## Example Usage

```typescript
import { PersonData } from "@dailypay/dailypay/models";

let value: PersonData = {
  data: {
    type: "people",
    id: "aa860051-c411-4709-9685-c1b716df611b",
    attributes: {
      disallowReason: null,
      stateOfResidence: "NY",
      products: {
        dailyPayCardProductEntitlement: {
          eligible: true,
          enrolled: false,
        },
      },
    },
    links: {
      self:
        "https://api.dailypay.com/rest/people/aa860051-c411-4709-9685-c1b716df611b",
    },
  },
};
```

## Fields

| Field                                                | Type                                                 | Required                                             | Description                                          |
| ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- | ---------------------------------------------------- |
| `data`                                               | [models.PersonResource](../models/personresource.md) | :heavy_check_mark:                                   | N/A                                                  |