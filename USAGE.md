<!-- Start SDK Example Usage [usage] -->
### Look up accounts

Fetch a list of accounts, including earnings balance accounts.

```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  version: 3,
  security: {
    oauthClientCredentialsToken: {
      clientID: "<YOUR_CLIENT_ID_HERE>",
      clientSecret: "<YOUR_CLIENT_SECRET_HERE>",
      tokenURL: "<YOUR_TOKEN_URL_HERE>",
    },
  },
});

async function run() {
  const result = await sdk.accounts.list({
    filterPersonId: "aa860051-c411-4709-9685-c1b716df611b",
    filterAccountType: "EARNINGS_BALANCE",
    filterSubtype: "ODP",
  });

  console.log(result);
}

run();

```

### Request a transfer

Initiate a transfer of funds from an earnings balance account to a personal depository or card account.

```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  version: 3,
  security: {
    oauthClientCredentialsToken: {
      clientID: "<YOUR_CLIENT_ID_HERE>",
      clientSecret: "<YOUR_CLIENT_SECRET_HERE>",
      tokenURL: "<YOUR_TOKEN_URL_HERE>",
    },
  },
});

async function run() {
  const result = await sdk.transfers.create({
    idempotencyKey: "e2736aa1-78c4-4cc6-b0a6-848e733f232a",
    transferCreateData: {
      data: {
        type: "transfers",
        id: "aba332a2-24a2-46de-8257-5040e71ab210",
        attributes: {
          preview: true,
          amount: 2500,
          currency: "USD",
          schedule: "WITHIN_THIRTY_MINUTES",
        },
        relationships: {
          origin: {
            data: {
              type: "accounts",
              id: "2bc7d781-3247-46f6-b60f-4090d214936a",
            },
          },
          destination: {
            data: {
              type: "accounts",
              id: "2bc7d781-3247-46f6-b60f-4090d214936a",
            },
          },
          person: {
            data: {
              type: "people",
              id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
            },
          },
        },
      },
    },
  });

  console.log(result);
}

run();

```
<!-- End SDK Example Usage [usage] -->