# Transfers
(*transfers*)

## Overview

The _transfers_ endpoint allows you to initiate and track money movement.  You can access transfer details, including the transfer's unique ID, amount, currency, status, schedule, submission and resolution times, fees, and related links to the involved parties.

**Functionality** Retrieve transfer information, monitor transfer statuses, view transfer schedules, and access relevant links for the source, destination, and origin of the transfer.

**Important** - Account origin: a user initiated movement of money from one account to another - Paycheck origin: an automatic (system-generated) movement of money as part of payroll


### Available Operations

* [read](#read) - Get a transfer object
* [list](#list) - Get a list of transfers
* [create](#create) - Request a transfer

## read

Returns details about a transfer of money from one account to another. 

Created when a person takes an advance against a future paycheck, or on a daily basis when available balance is updated based on current employment.


### Example Usage

```typescript
import { SDK } from "DailyPay";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.transfers.read({
    transferId: "aba332a2-24a2-46de-8257-5040e71ab210",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "DailyPay/core.js";
import { transfersRead } from "DailyPay/funcs/transfersRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await transfersRead(sdk, {
    transferId: "aba332a2-24a2-46de-8257-5040e71ab210",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("transfersRead failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadTransferRequest](../../models/operations/readtransferrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.TransferData](../../models/transferdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorNotFound     | 404                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |

## list

Returns a list of transfer objects.
See [Filtering Transfers](https://developer.dailypay.com/tag/Filtering#section/Supported-Endpoint-Filters) for a description of filterable fields.


### Example Usage

```typescript
import { SDK } from "DailyPay";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.transfers.list();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "DailyPay/core.js";
import { transfersList } from "DailyPay/funcs/transfersList.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await transfersList(sdk);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("transfersList failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListTransfersRequest](../../models/operations/listtransfersrequest.md)                                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.TransfersData](../../models/transfersdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |

## create

Request transfer of funds from an `EARNINGS_BALANCE` account to a
personal `DEPOSITORY` or `CARD` account.


### Example Usage

```typescript
import { SDK } from "DailyPay";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.transfers.create({
    idempotencyKey: "ea9f2225-403b-4e2c-93b0-0eda090ffa65",
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

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "DailyPay/core.js";
import { transfersCreate } from "DailyPay/funcs/transfersCreate.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await transfersCreate(sdk, {
    idempotencyKey: "ea9f2225-403b-4e2c-93b0-0eda090ffa65",
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
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("transfersCreate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.CreateTransferRequest](../../models/operations/createtransferrequest.md)                                                                                           | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.TransferData](../../models/transferdata.md)\>**

### Errors

| Error Type                 | Status Code                | Content Type               |
| -------------------------- | -------------------------- | -------------------------- |
| errors.TransferCreateError | 400                        | application/vnd.api+json   |
| errors.ErrorUnauthorized   | 401                        | application/vnd.api+json   |
| errors.ErrorForbidden      | 403                        | application/vnd.api+json   |
| errors.ErrorUnexpected     | 500                        | application/vnd.api+json   |
| errors.SDKDefaultError     | 4XX, 5XX                   | \*/\*                      |