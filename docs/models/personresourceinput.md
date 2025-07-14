# PersonResourceInput

## Example Usage

```typescript
import { PersonResourceInput } from "@dailypay/dailypay/models";

let value: PersonResourceInput = {
  type: "people",
  id: "aa860051-c411-4709-9685-c1b716df611b",
  attributes: {
    stateOfResidence: "NY",
  },
};
```

## Fields

| Field                                                                                                         | Type                                                                                                          | Required                                                                                                      | Description                                                                                                   | Example                                                                                                       |
| ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------- |
| `type`                                                                                                        | *string*                                                                                                      | :heavy_check_mark:                                                                                            | N/A                                                                                                           |                                                                                                               |
| `id`                                                                                                          | *string*                                                                                                      | :heavy_check_mark:                                                                                            | N/A                                                                                                           | aa860051-c411-4709-9685-c1b716df611b                                                                          |
| `attributes`                                                                                                  | [models.PersonAttributesInput](../models/personattributesinput.md)                                            | :heavy_check_mark:                                                                                            | A person is a record of someone known to DailyPay. There will only ever be one person record per human being. |                                                                                                               |