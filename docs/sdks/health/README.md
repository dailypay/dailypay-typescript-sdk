# Health
(*health*)

## Overview

The _health_ endpoint provides a simple health check for the API. 

**Functionality:** Check the status of the API to ensure it is functioning
correctly.


### Available Operations

* [getHealth](#gethealth) - Verify the status of the API

## getHealth

Returns a 200 status code if the API is up and running.


### Example Usage

```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.health.getHealth();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "@dailypay/dailypay/core.js";
import { healthGetHealth } from "@dailypay/dailypay/funcs/healthGetHealth.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await healthGetHealth(sdk);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("healthGetHealth failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.GetHealthResponse](../../models/operations/gethealthresponse.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |