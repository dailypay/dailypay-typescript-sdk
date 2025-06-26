# AccountWiselyCard

## Example Usage

```typescript
import { AccountWiselyCard } from "dailypay/dailypay";

let value: AccountWiselyCard = {
  firstName: "Edith",
  lastName: "Clarke",
  expirationMonth: "02",
  expirationYear: "2025",
  addressLineOne: "123 Kebly Street",
  addressLineTwo: "Apt #12",
  addressCity: "Fort Lee",
  addressState: "NJ",
  addressZipCode: "72374",
  addressCountry: "US",
  wiselyToken: "53bf829e-6e3f-4c17-a7de-6e91003a5dd3",
  lastFour: "0003",
  issuer: "411600",
};
```

## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           | Example                                                               |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `firstName`                                                           | *string*                                                              | :heavy_check_mark:                                                    | The first name of the account holder.                                 | Edith                                                                 |
| `lastName`                                                            | *string*                                                              | :heavy_check_mark:                                                    | The last name of the account holder.                                  | Clarke                                                                |
| `expirationMonth`                                                     | *string*                                                              | :heavy_check_mark:                                                    | The month of the expiration date for the card.                        | 02                                                                    |
| `expirationYear`                                                      | *string*                                                              | :heavy_check_mark:                                                    | The year of the expiration date for the card.                         | 2025                                                                  |
| `addressLineOne`                                                      | *string*                                                              | :heavy_check_mark:                                                    | The first line of the address for the card.                           | 123 Kebly Street                                                      |
| `addressLineTwo`                                                      | *string*                                                              | :heavy_minus_sign:                                                    | The second line of the address for the card.                          | Apt #12                                                               |
| `addressCity`                                                         | *string*                                                              | :heavy_check_mark:                                                    | The city of the address for the card.                                 | Fort Lee                                                              |
| `addressState`                                                        | *string*                                                              | :heavy_check_mark:                                                    | The two-letter abbreviation of the state in the address for the card. | NJ                                                                    |
| `addressZipCode`                                                      | *string*                                                              | :heavy_check_mark:                                                    | The zip code of the address for the card.                             | 72374                                                                 |
| `addressCountry`                                                      | *string*                                                              | :heavy_check_mark:                                                    | The country code of the address for the card.                         | US                                                                    |
| `wiselyToken`                                                         | *string*                                                              | :heavy_check_mark:                                                    | Wisely unique identifier associated to card.                          | 53bf829e-6e3f-4c17-a7de-6e91003a5dd3                                  |
| `lastFour`                                                            | *string*                                                              | :heavy_check_mark:                                                    | Last four digits of the card number.                                  | 0003                                                                  |
| `issuer`                                                              | *string*                                                              | :heavy_check_mark:                                                    | The issuer of the card.                                               | 411600                                                                |