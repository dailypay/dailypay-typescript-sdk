# PersonUpdateResource

## Example Usage

```typescript
import { PersonUpdateResource } from "@dailypay/dailypay/models";

let value: PersonUpdateResource = {
  type: "people",
  id: "aa860051-c411-4709-9685-c1b716df611b",
  personUpdateAttributes: {
    stateOfResidence: "NY",
  },
};
```

## Fields

| Field                                                                                                         | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   | Example                                                                                                       |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                        | *"people"*                                                                                                    | :heavy_check_mark:                                                                                            | N/A                                                                                                           |                                                                                                               |
| `id`                                                                                                          | *string*                                                                                                      | :heavy_check_mark:                                                                                            | N/A                                                                                                           | aa860051-c411-4709-9685-c1b716df611b                                                                          |
| `personUpdateAttributes`                                                                                      | [models.PersonUpdateAttributes](../models/personupdateattributes.md)                                          | :heavy_check_mark:                                                                                            | A person is a record of someone known to DailyPay. There will only ever be one person record per human being. |                                                                                                               |