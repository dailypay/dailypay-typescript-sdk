# CreateGenericCardTokenRequest

## Example Usage

```typescript
import { CreateGenericCardTokenRequest } from "@dailypay/dailypay-typescript-sdk/models/operations";

let value: CreateGenericCardTokenRequest = {
  firstName: "Edith",
  lastName: "Clarke",
  cardNumber: "4007589999999912",
  expirationYear: "2027",
  expirationMonth: "02",
  cvv: "123",
  addressLineOne: "123 Kebly Street",
  addressLineTwo: "Unit C",
  addressCity: "Fort Lee",
  addressState: "NJ",
  addressZipCode: "07237",
  addressCountry: "US",
};
```

## Fields

| Field                                                                                   | Type                                                                                    | Required                                                                                | Description                                                                             | Example                                                                                 |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `firstName`                                                                             | *string*                                                                                | :heavy_check_mark:                                                                      | The first name or given name of the cardholder.                                         | Edith                                                                                   |
| `lastName`                                                                              | *string*                                                                                | :heavy_check_mark:                                                                      | The last name or surname of the cardholder.                                             | Clarke                                                                                  |
| `cardNumber`                                                                            | *string*                                                                                | :heavy_check_mark:                                                                      | The full card number without spaces or hyphenation.                                     | 4007589999999912                                                                        |
| `expirationYear`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The four-digit year of expiration for the card.                                         | 2027                                                                                    |
| `expirationMonth`                                                                       | *string*                                                                                | :heavy_check_mark:                                                                      | The two-digit month of the expiration date for the card.                                | 02                                                                                      |
| `cvv`                                                                                   | *string*                                                                                | :heavy_minus_sign:                                                                      | The CVV card code.                                                                      | 123                                                                                     |
| `addressLineOne`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The first line of the address associated with the card.                                 | 123 Kebly Street                                                                        |
| `addressLineTwo`                                                                        | *string*                                                                                | :heavy_minus_sign:                                                                      | The second line of the address associated with the card.                                | Unit C                                                                                  |
| `addressCity`                                                                           | *string*                                                                                | :heavy_check_mark:                                                                      | The city component of the address associated with the card.                             | Fort Lee                                                                                |
| `addressState`                                                                          | *string*                                                                                | :heavy_check_mark:                                                                      | The two-letter state component of the address associated with the card.                 | NJ                                                                                      |
| `addressZipCode`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The 5 digit zip-code component of the address associated with the card.                 | 07237                                                                                   |
| `addressCountry`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The two-letter ISO 3166 country code component of the address associated with the card. | US                                                                                      |