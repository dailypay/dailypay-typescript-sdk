# DetailsInput

The banking details of the account and account holder.


## Supported Types

### `models.AccountDebitCardInput`

```typescript
const value: models.AccountDebitCardInput = {
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
  token: "HX46TY794RG",
  issuer: "411600",
};
```

### `models.AccountGalileoCardInput`

```typescript
const value: models.AccountGalileoCardInput = {
  galileoCardId: "40769",
  galileoPmtRefNo: "777101360999",
};
```

### `models.AccountWiselyCard`

```typescript
const value: models.AccountWiselyCard = {
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

