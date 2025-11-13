# CardTokenization
(*cardTokenization*)

## Overview

Securely tokenize personal cards for use in the accounts API.

### Available Operations

* [create](#create) - Obtain a card token

## create

Obtain a PCI DSS Compliant card token. This token must be used in order to add a card to a user’s DailyPay account.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="createGenericCardToken" method="post" path="/cards/generic" -->
```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK();

async function run() {
  const result = await sdk.cardTokenization.create({
    firstName: "Edith",
    lastName: "Clarke",
    cardNumber: "4007589999999912",
    expirationYear: "2027",
    expirationMonth: "02",
    cvv: "123",
    addressLineOne: "123 Kebly Street",
    addressLineTwo: "Unit C",
    addressCity: "Fort Lee",
    addressState: "NJ",
    addressZipCode: "07237",
    addressCountry: "US",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "@dailypay/dailypay/core.js";
import { cardTokenizationCreate } from "@dailypay/dailypay/funcs/cardTokenizationCreate.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore();

async function run() {
  const res = await cardTokenizationCreate(sdk, {
    firstName: "Edith",
    lastName: "Clarke",
    cardNumber: "4007589999999912",
    expirationYear: "2027",
    expirationMonth: "02",
    cvv: "123",
    addressLineOne: "123 Kebly Street",
    addressLineTwo: "Unit C",
    addressCity: "Fort Lee",
    addressState: "NJ",
    addressZipCode: "07237",
    addressCountry: "US",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("cardTokenizationCreate failed:", res.error);
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
  // Mutation hook for triggering the API call.
  useCardTokenizationCreateMutation
} from "@dailypay/dailypay/react-query/cardTokenizationCreate.js";
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.CreateGenericCardTokenRequest](../../models/operations/creategenericcardtokenrequest.md)                                                                           | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |
| `options.serverURL`                                                                                                                                                            | *string*                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                             | An optional server URL to use.                                                                                                                                                 |

### Response

**Promise\<[operations.CreateGenericCardTokenResponse](../../models/operations/creategenericcardtokenresponse.md)\>**

### Errors

| Error Type             | Status Code            | Content Type           |
| ---------------------- | ---------------------- | ---------------------- |
| errors.SDKDefaultError | 4XX, 5XX               | \*/\*                  |