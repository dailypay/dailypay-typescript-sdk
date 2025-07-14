# PersonDataInput

## Example Usage

```typescript
import { PersonDataInput } from "@dailypay/dailypay/models";

let value: PersonDataInput = {
  data: {
    type: "people",
    id: "aa860051-c411-4709-9685-c1b716df611b",
    attributes: {
      stateOfResidence: "NY",
    },
  },
};
```

## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `data`                                                         | [models.PersonResourceInput](../models/personresourceinput.md) | :heavy_check_mark:                                             | N/A                                                            |