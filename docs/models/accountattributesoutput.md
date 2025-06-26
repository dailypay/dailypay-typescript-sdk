# AccountAttributesOutput

The details of the account.


## Supported Types

### `models.CardOutput`

```typescript
const value: models.CardOutput = {
  verificationStatus: "VERIFIED",
  accountBalances: {
    available: 12000,
    current: 50000,
    currency: "USD",
  },
  accountCapabilities: {
    transferDestination: [
      {
        schedule: "WITHIN_THIRTY_MINUTES",
        fee: 300,
        currency: "USD",
      },
      {
        schedule: "NEXT_BUSINESS_DAY",
        fee: 0,
        currency: "USD",
      },
    ],
  },
  name: "Debit Card",
  subtype: "DEBIT",
  details: {
    firstName: "Edith",
    lastName: "Clarke",
    expirationMonth: "02",
    expirationYear: "2025",
    lastFour: "0003",
    issuer: "411600",
  },
};
```

### `models.EarningsBalanceReadOnly`

```typescript
const value: models.EarningsBalanceReadOnly = {
  verificationStatus: "VERIFIED",
  accountBalances: {
    available: 12000,
    current: 50000,
    currency: "USD",
  },
  accountCapabilities: {
    transferDestination: [
      {
        schedule: "WITHIN_THIRTY_MINUTES",
        fee: 300,
        currency: "USD",
      },
      {
        schedule: "NEXT_BUSINESS_DAY",
        fee: 0,
        currency: "USD",
      },
    ],
  },
  name: "DailyPay Pay Balance",
  details: {},
};
```

### `models.Depository`

```typescript
const value: models.Depository = {
  verificationStatus: "VERIFIED",
  accountBalances: {
    available: 12000,
    current: 50000,
    currency: "USD",
  },
  accountCapabilities: {
    transferDestination: [
      {
        schedule: "WITHIN_THIRTY_MINUTES",
        fee: 300,
        currency: "USD",
      },
      {
        schedule: "NEXT_BUSINESS_DAY",
        fee: 0,
        currency: "USD",
      },
    ],
  },
  name: "Checking Account",
  subtype: "CHECKING",
  depositoryAccountDetails: {
    firstName: "Edith",
    lastName: "Clarke",
    routingNumber: "XXXXX2021",
    accountNumber: "XXXXXX4321",
  },
};
```

