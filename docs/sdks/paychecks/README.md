# Paychecks
(*paychecks*)

## Overview

The _paychecks_ endpoint provides detailed information about paychecks. 
You can retrieve individual paycheck details, including the
person and job associated with the paycheck, its status, pay period,
expected deposit date, total debited amount, withholdings, earnings, and
currency.

**Functionality:** Retrieve specific paycheck details, including payee and
job information, and monitor the status and financial details of each
paycheck.


### Available Operations

* [read](#read) - Get a Paycheck object
* [list](#list) - Get a list of paycheck objects

## read

Returns details about a paycheck object.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="readPaycheck" method="get" path="/rest/paychecks/{paycheck_id}" -->
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
  const result = await sdk.paychecks.read({
    paycheckId: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "@dailypay/dailypay/core.js";
import { paychecksRead } from "@dailypay/dailypay/funcs/paychecksRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
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
  const res = await paychecksRead(sdk, {
    paycheckId: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("paychecksRead failed:", res.error);
  }
}

run();
```

### React hooks and utilities

This method can be used in React components through the following hooks and
associated utilities.

> Check out [this guide][hook-guide] for information about each of the utilities
> below and how to get started using React hooks.

[hook-guide]: ../../../REACT_QUERY.md

```tsx
import {
  // Query hooks for fetching data.
  usePaychecksRead,
  usePaychecksReadSuspense,

  // Utility for prefetching data during server-side rendering and in React
  // Server Components that will be immediately available to client components
  // using the hooks.
  prefetchPaychecksRead,
  
  // Utilities to invalidate the query cache for this query in response to
  // mutations and other user actions.
  invalidatePaychecksRead,
  invalidateAllPaychecksRead,
} from "@dailypay/dailypay/react-query/paychecksRead.js";
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadPaycheckRequest](../../models/operations/readpaycheckrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.ReadPaycheckResponse](../../models/operations/readpaycheckresponse.md)\>**

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

Returns a collection of paycheck objects. This object details a person's pay and pay period.


### Example Usage

<!-- UsageSnippet language="typescript" operationID="listPaychecks" method="get" path="/rest/paychecks" -->
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
  const result = await sdk.paychecks.list({
    filterDepositExpectedAtGte: new Date("2023-03-15T04:00:00Z"),
    filterDepositExpectedAtLt: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodEndsAtGte: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodEndsAtLt: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodStartsAtGte: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodStartsAtLt: new Date("2023-03-15T04:00:00Z"),
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "@dailypay/dailypay/core.js";
import { paychecksList } from "@dailypay/dailypay/funcs/paychecksList.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
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
  const res = await paychecksList(sdk, {
    filterDepositExpectedAtGte: new Date("2023-03-15T04:00:00Z"),
    filterDepositExpectedAtLt: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodEndsAtGte: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodEndsAtLt: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodStartsAtGte: new Date("2023-03-15T04:00:00Z"),
    filterPayPeriodStartsAtLt: new Date("2023-03-15T04:00:00Z"),
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("paychecksList failed:", res.error);
  }
}

run();
```

### React hooks and utilities

This method can be used in React components through the following hooks and
associated utilities.

> Check out [this guide][hook-guide] for information about each of the utilities
> below and how to get started using React hooks.

[hook-guide]: ../../../REACT_QUERY.md

```tsx
import {
  // Query hooks for fetching data.
  usePaychecksList,
  usePaychecksListSuspense,

  // Utility for prefetching data during server-side rendering and in React
  // Server Components that will be immediately available to client components
  // using the hooks.
  prefetchPaychecksList,
  
  // Utilities to invalidate the query cache for this query in response to
  // mutations and other user actions.
  invalidatePaychecksList,
  invalidateAllPaychecksList,
} from "@dailypay/dailypay/react-query/paychecksList.js";
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListPaychecksRequest](../../models/operations/listpaychecksrequest.md)                                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.ListPaychecksResponse](../../models/operations/listpaychecksresponse.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |