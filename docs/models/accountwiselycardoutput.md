# AccountWiselyCardOutput

## Example Usage

```typescript
import { AccountWiselyCardOutput } from "dailypay/dailypay";

let value: AccountWiselyCardOutput = {
  firstName: "Edith",
  lastName: "Clarke",
  expirationMonth: "02",
  expirationYear: "2025",
  wiselyToken: "53bf829e-6e3f-4c17-a7de-6e91003a5dd3",
  lastFour: "0003",
  issuer: "411600",
};
```

## Fields

| Field                                          | Type                                           | Required                                       | Description                                    | Example                                        |
| ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- | ---------------------------------------------- |
| `firstName`                                    | *string*                                       | :heavy_check_mark:                             | The first name of the account holder.          | Edith                                          |
| `lastName`                                     | *string*                                       | :heavy_check_mark:                             | The last name of the account holder.           | Clarke                                         |
| `expirationMonth`                              | *string*                                       | :heavy_check_mark:                             | The month of the expiration date for the card. | 02                                             |
| `expirationYear`                               | *string*                                       | :heavy_check_mark:                             | The year of the expiration date for the card.  | 2025                                           |
| `wiselyToken`                                  | *string*                                       | :heavy_check_mark:                             | Wisely unique identifier associated to card.   | 53bf829e-6e3f-4c17-a7de-6e91003a5dd3           |
| `lastFour`                                     | *string*                                       | :heavy_check_mark:                             | Last four digits of the card number.           | 0003                                           |
| `issuer`                                       | *string*                                       | :heavy_check_mark:                             | The issuer of the card.                        | 411600                                         |