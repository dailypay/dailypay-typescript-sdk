# AccountGalileoCardOutput

An account of type CARD with subtype GALILEO.

## Example Usage

```typescript
import { AccountGalileoCardOutput } from "@dailypay/dailypay-typescript-sdk/models";

let value: AccountGalileoCardOutput = {
  galileoCardId: "40769",
  firstName: "Edith",
  lastName: "Clarke",
  lastFour: "0003",
  issuer: "411600",
  expirationMonth: "02",
  expirationYear: "2025",
};
```

## Fields

| Field                                          | Type                                           | Required                                       | Description                                    | Example                                        |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `galileoCardId`                                | *string*                                       | :heavy_check_mark:                             | The card ID provided by Galileo.               | 40769                                          |
| `firstName`                                    | *string*                                       | :heavy_check_mark:                             | The first name of the account holder.          | Edith                                          |
| `lastName`                                     | *string*                                       | :heavy_check_mark:                             | The last name of the account holder.           | Clarke                                         |
| `lastFour`                                     | *string*                                       | :heavy_check_mark:                             | Last four digits of the card number.           | 0003                                           |
| `issuer`                                       | *string*                                       | :heavy_check_mark:                             | The issuer of the card.                        | 411600                                         |
| `expirationMonth`                              | *string*                                       | :heavy_check_mark:                             | The month of the expiration date for the card. | 02                                             |
| `expirationYear`                               | *string*                                       | :heavy_check_mark:                             | The year of the expiration date for the card.  | 2025                                           |