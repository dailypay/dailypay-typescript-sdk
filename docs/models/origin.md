# Origin

Origin may be a reference to either a Paycheck or an Account.

User-created transfers always originate from an Account with `account_type` `EARNINGS_BALANCE`.

A transfer that originates from a Paycheck is a  
system-created record that describes a credit of earnings to an account with `account_type` `EARNINGS_BALANCE`.



## Supported Types

### `models.AccountRelationship`

```typescript
const value: models.AccountRelationship = {
  data: {
    type: "accounts",
    id: "2bc7d781-3247-46f6-b60f-4090d214936a",
  },
};
```

### `models.PaycheckRelationship`

```typescript
const value: models.PaycheckRelationship = {
  data: {
    type: "paychecks",
    id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
  },
};
```

