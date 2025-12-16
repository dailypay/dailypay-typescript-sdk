# PersonUpdateAttributes

A person is a record of someone known to DailyPay. There will only ever be one person record per human being.

## Example Usage

```typescript
import { PersonUpdateAttributes } from "@dailypay/dailypay/models";

let value: PersonUpdateAttributes = {
  stateOfResidence: "NY",
};
```

## Fields

| Field                                                                                                                                                      | Type                                                                                                                                                       | Required                                                                                                                                                   | Description                                                                                                                                                | Example                                                                                                                                                    |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `stateOfResidence`                                                                                                                                         | *string*                                                                                                                                                   | :heavy_check_mark:                                                                                                                                         | The two-letter abbreviation for the state in which the person resides, if located in the United States.  This is used for regulatory compliance purposes.<br/> | NY                                                                                                                                                         |