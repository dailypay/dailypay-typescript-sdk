# PersonData

Returns the person object.

## Example Usage

```typescript
import { PersonData } from "dailypay/dailypay";

let value: PersonData = {
  data: {
    id: "aa860051-c411-4709-9685-c1b716df611b",
    attributes: {
      disallowReason: null,
      stateOfResidence: "NY",
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