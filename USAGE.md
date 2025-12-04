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
    include: "estimated_funding_sources,final_funding_sources",
    idempotencyKey: "e2736aa1-78c4-4cc6-b0a6-848e733f232a",
    transferCreateData: {
      data: {
        type: "transfers",
        attributes: {
          preview: true,
          amount: 15000,
          currency: "USD",
          schedule: "WITHIN_THIRTY_MINUTES",
        },
        relationships: {
          origin: {
            data: {
              type: "accounts",
              id: "123e4567-e89b-12d3-a456-426614174000",
            },
          },
          destination: {
            data: {
              type: "accounts",
              id: "223e4567-e89b-12d3-a456-426614174001",
            },
          },
          person: {
            data: {
              type: "people",
              id: "aa860051-c411-4709-9685-c1b716df611b",
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