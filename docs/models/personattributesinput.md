# PersonAttributesInput

A person is a record of someone known to DailyPay. There will only ever be one person record per human being.

## Example Usage

```typescript
import { PersonAttributesInput } from "@dailypay/sdk-typescript/models";

let value: PersonAttributesInput = {
  stateOfResidence: "NY",
};
```

## Fields

| Field                                                                                                                                                      | Type                                                                                                                                                       | Required                                                                                                                                                   | Description                                                                                                                                                | Example                                                                                                                                                    |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `stateOfResidence`                                                                                                                                         | *string*                                                                                                                                                   | :heavy_minus_sign:                                                                                                                                         | The two-letter abbreviation for the state in which the person resides, if located in the United States.  This is used for regulatory compliance purposes.<br/> | NY                                                                                                                                                         |