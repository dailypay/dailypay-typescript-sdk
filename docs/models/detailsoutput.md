# DetailsOutput

The banking details of the account and account holder.


## Supported Types

### `models.AccountDebitCardOutput`

```typescript
const value: models.AccountDebitCardOutput = {
  firstName: "Edith",
  lastName: "Clarke",
  expirationMonth: "02",
  expirationYear: "2025",
  lastFour: "0003",
  issuer: "411600",
};
```

### `models.AccountGalileoCardOutput`

```typescript
const value: models.AccountGalileoCardOutput = {
  galileoCardId: "40769",
  firstName: "Edith",
  lastName: "Clarke",
  lastFour: "0003",
  issuer: "411600",
  expirationMonth: "02",
  expirationYear: "2025",
};
```

### `models.AccountWiselyCardOutput`

```typescript
const value: models.AccountWiselyCardOutput = {
  firstName: "Edith",
  lastName: "Clarke",
  expirationMonth: "02",
  expirationYear: "2025",
  wiselyToken: "53bf829e-6e3f-4c17-a7de-6e91003a5dd3",
  lastFour: "0003",
  issuer: "411600",
};
```

