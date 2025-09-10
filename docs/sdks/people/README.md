# People
(*people*)

## Overview

The _people_ endpoint allows you to see information related to who owns 
resources such as jobs and accounts.

**Functionality:** Retrieve limited details about a person, including
their name, global status, and state of residence.


### Available Operations

* [read](#read) - Get a person object
* [update](#update) - Update a person

## read

Returns details about a person.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="readPerson" method="get" path="/rest/people/{person_id}" -->
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
  const result = await sdk.people.read({
    personId: "aa860051-c411-4709-9685-c1b716df611b",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "@dailypay/dailypay/core.js";
import { peopleRead } from "@dailypay/dailypay/funcs/peopleRead.js";

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
  const res = await peopleRead(sdk, {
    personId: "aa860051-c411-4709-9685-c1b716df611b",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("peopleRead failed:", res.error);
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
  usePeopleRead,
  usePeopleReadSuspense,

  // Utility for prefetching data during server-side rendering and in React
  // Server Components that will be immediately available to client components
  // using the hooks.
  prefetchPeopleRead,
  
  // Utilities to invalidate the query cache for this query in response to
  // mutations and other user actions.
  invalidatePeopleRead,
  invalidateAllPeopleRead,
} from "@dailypay/dailypay/react-query/peopleRead.js";
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadPersonRequest](../../models/operations/readpersonrequest.md)                                                                                                   | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.ReadPersonResponse](../../models/operations/readpersonresponse.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorNotFound     | 404                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |

## update

Update a person object.

### Example Usage

<!-- UsageSnippet language="typescript" operationID="updatePerson" method="patch" path="/rest/people/{person_id}" -->
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
  const result = await sdk.people.update({
    personId: "aa860051-c411-4709-9685-c1b716df611b",
    personData: {
      data: {
        type: "people",
        id: "aa860051-c411-4709-9685-c1b716df611b",
        attributes: {
          stateOfResidence: "NY",
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
import { SDKCore } from "@dailypay/dailypay/core.js";
import { peopleUpdate } from "@dailypay/dailypay/funcs/peopleUpdate.js";

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
  const res = await peopleUpdate(sdk, {
    personId: "aa860051-c411-4709-9685-c1b716df611b",
    personData: {
      data: {
        type: "people",
        id: "aa860051-c411-4709-9685-c1b716df611b",
        attributes: {
          stateOfResidence: "NY",
        },
      },
    },
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("peopleUpdate failed:", res.error);
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
  usePeopleUpdateMutation
} from "@dailypay/dailypay/react-query/peopleUpdate.js";
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.UpdatePersonRequest](../../models/operations/updatepersonrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[operations.UpdatePersonResponse](../../models/operations/updatepersonresponse.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorNotFound     | 404                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |