# PersonResource

## Example Usage

```typescript
import { PersonResource } from "DailyPay";

let value: PersonResource = {
  id: "aa860051-c411-4709-9685-c1b716df611b",
  attributes: {
    disallowReason: null,
    stateOfResidence: "NY",
  },
  links: {
    self:
      "https://api.dailypay.com/rest/people/aa860051-c411-4709-9685-c1b716df611b",
  },
};
```

## Fields

| Field                                                                                                         | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   | Example                                                                                                       |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                        | *string*                                                                                                      | :heavy_check_mark:                                                                                            | N/A                                                                                                           |                                                                                                               |
| `id`                                                                                                          | *string*                                                                                                      | :heavy_check_mark:                                                                                            | N/A                                                                                                           | aa860051-c411-4709-9685-c1b716df611b                                                                          |
| `attributes`                                                                                                  | [models.PersonAttributes](../models/personattributes.md)                                                      | :heavy_check_mark:                                                                                            | A person is a record of someone known to DailyPay. There will only ever be one person record per human being. |                                                                                                               |
| `links`                                                                                                       | [models.PersonLinks](../models/personlinks.md)                                                                | :heavy_check_mark:                                                                                            | N/A                                                                                                           |                                                                                                               |