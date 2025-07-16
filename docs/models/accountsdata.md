# AccountsData

Returns the account object.

## Example Usage

```typescript
import { AccountsData } from "@dailypay/sdk-typescript/models";

let value: AccountsData = {
  data: [
    {
      id: "2bc7d781-3247-46f6-b60f-4090d214936a",
      type: "accounts",
      attributes: {
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
        accountType: "CARD",
        subtype: "DEBIT",
        details: {
          galileoCardId: "40769",
          firstName: "Edith",
          lastName: "Clarke",
          lastFour: "0003",
          issuer: "411600",
          expirationMonth: "02",
          expirationYear: "2025",
        },
      },
      links: {
        self:
          "https://api.dailypay.com/rest/accounts/2bc7d781-3247-46f6-b60f-4090d214936a",
      },
      relationships: {
        person: {
          data: {
            type: "people",
            id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
          },
        },
      },
    },
  ],
};
```

## Fields

| Field                                                                | Type                                                                 | Required                                                             | Description                                                          |
| -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- | -------------------------------------------------------------------- |
| `data`                                                               | [models.AccountResourceOutput](../models/accountresourceoutput.md)[] | :heavy_check_mark:                                                   | N/A                                                                  |