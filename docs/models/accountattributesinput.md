# AccountAttributesInput

The details of the account.


## Supported Types

### `models.CardInput`

```typescript
const value: models.CardInput = {
  name: "Debit Card",
  accountType: "CARD",
  subtype: "DEBIT",
  details: {
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
  },
};
```

### `models.EarningsBalanceReadOnlyInput`

```typescript
const value: models.EarningsBalanceReadOnlyInput = {};
```

### `models.DepositoryInput`

```typescript
const value: models.DepositoryInput = {
  name: "Checking Account",
  accountType: "DEPOSITORY",
  subtype: "CHECKING",
  depositoryAccountDetails: {
    firstName: "Edith",
    lastName: "Clarke",
    routingNumber: "XXXXX2021",
    accountNumber: "XXXXXX4321",
  },
};
```

