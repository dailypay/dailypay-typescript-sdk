# @dailypay/dailypay

Developer-friendly & type-safe Typescript SDK specifically catered to leverage the DailyPay Public REST API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=@dailypay/dailypay&utm_campaign=typescript"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


### [https://developer.dailypay.com](https://developer.dailypay.com)

<!-- No Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [@dailypay/dailypay](#dailypaydailypay)
  * [SDK Installation](#sdk-installation)
  * [Requirements](#requirements)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Standalone functions](#standalone-functions)
  * [React hooks with TanStack Query](#react-hooks-with-tanstack-query)
  * [Retries](#retries)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
  * [Custom HTTP Client](#custom-http-client)
  * [Debugging](#debugging)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

## SDK Installation


The SDK can be installed with either [npm](https://www.npmjs.com/), [pnpm](https://pnpm.io/), [bun](https://bun.sh/) or [yarn](https://classic.yarnpkg.com/en/) package managers.

### NPM

```bash
npm add https://github.com/dailypay/dailypay-typescript-sdk
```

### PNPM

```bash
pnpm add https://github.com/dailypay/dailypay-typescript-sdk
```

### Bun

```bash
bun add https://github.com/dailypay/dailypay-typescript-sdk
```

### Yarn

```bash
yarn add https://github.com/dailypay/dailypay-typescript-sdk zod

# Note that Yarn does not install peer dependencies automatically. You will need
# to install zod as shown above.
```

> [!NOTE]
> This package is published with CommonJS and ES Modules (ESM) support.
<!-- No SDK Installation [installation] -->

<!-- Start Requirements [requirements] -->
## Requirements

For supported JavaScript runtimes, please consult [RUNTIMES.md](RUNTIMES.md).
<!-- End Requirements [requirements] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

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

<!-- Start Authentication [security] -->
## Authentication

### Per-Client Security Schemes

This SDK supports the following security schemes globally:

| Name                          | Type   | Scheme       |
| ----------------------------- | ------ | ------------ |
| `oauthClientCredentialsToken` | oauth2 | OAuth2 token |
| `oauthUserToken`              | oauth2 | OAuth2 token |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. The selected scheme will be used by default to authenticate with the API for all operations that support it. For example:
```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  security: {
    oauthClientCredentialsToken: {
      clientID: "<YOUR_CLIENT_ID_HERE>",
      clientSecret: "<YOUR_CLIENT_SECRET_HERE>",
      tokenURL: "<YOUR_TOKEN_URL_HERE>",
    },
  },
  version: 3,
});

async function run() {
  const result = await sdk.jobs.read({
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  });

  console.log(result);
}

run();

```
<!-- End Authentication [security] -->

<!-- Suggested: Use a Callback for Access Tokens -->
### Suggested: Use a Callback for Access Tokens

You can use a callback to automatically refresh and retrieve user access tokens from secure storage. Pass a callback as a security source when initializing the SDK:

```typescript
import { SDK } from "@dailypay/dailypay";
import { Security } from "@dailypay/dailypay/models";

const sdk = new SDK({
  security: async (): Promise<Security> => {
    // refresh token here
    const token = "<YOUR_OAUTH_USER_TOKEN_HERE>";
    return { oauthUserToken: token };
  },
  version: 3,
});

async function run() {
  const result = await sdk.jobs.read({
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  });
  console.log(result);
}

run();
```

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [Accounts](docs/sdks/accounts/README.md)

* [read](docs/sdks/accounts/README.md#read) - Get an Account object
* [list](docs/sdks/accounts/README.md#list) - Get a list of Account objects
* [create](docs/sdks/accounts/README.md#create) - Create an Account object

### [CardTokenization](docs/sdks/cardtokenization/README.md)

* [create](docs/sdks/cardtokenization/README.md#create) - Obtain a card token

### [Health](docs/sdks/health/README.md)

* [getHealth](docs/sdks/health/README.md#gethealth) - Verify the status of the API

### [Jobs](docs/sdks/jobs/README.md)

* [read](docs/sdks/jobs/README.md#read) - Get a job object
* [update](docs/sdks/jobs/README.md#update) - Update paycheck settings or deactivate a job
* [list](docs/sdks/jobs/README.md#list) - Get a list of job objects

### [Organizations](docs/sdks/organizations/README.md)

* [read](docs/sdks/organizations/README.md#read) - Get an organization
* [list](docs/sdks/organizations/README.md#list) - List organizations

### [Paychecks](docs/sdks/paychecks/README.md)

* [read](docs/sdks/paychecks/README.md#read) - Get a Paycheck object
* [list](docs/sdks/paychecks/README.md#list) - Get a list of paycheck objects

### [People](docs/sdks/people/README.md)

* [read](docs/sdks/people/README.md#read) - Get a person object
* [update](docs/sdks/people/README.md#update) - Update a person

### [Transfers](docs/sdks/transfers/README.md)

* [read](docs/sdks/transfers/README.md#read) - Get a transfer object
* [list](docs/sdks/transfers/README.md#list) - Get a list of transfers
* [create](docs/sdks/transfers/README.md#create) - Request a transfer

</details>
<!-- End Available Resources and Operations [operations] -->

<!-- Start Standalone functions [standalone-funcs] -->
## Standalone functions

All the methods listed above are available as standalone functions. These
functions are ideal for use in applications running in the browser, serverless
runtimes or other environments where application bundle size is a primary
concern. When using a bundler to build your application, all unused
functionality will be either excluded from the final bundle or tree-shaken away.

To read more about standalone functions, check [FUNCTIONS.md](./FUNCTIONS.md).

<details>

<summary>Available standalone functions</summary>

- [`accountsCreate`](docs/sdks/accounts/README.md#create) - Create an Account object
- [`accountsList`](docs/sdks/accounts/README.md#list) - Get a list of Account objects
- [`accountsRead`](docs/sdks/accounts/README.md#read) - Get an Account object
- [`cardTokenizationCreate`](docs/sdks/cardtokenization/README.md#create) - Obtain a card token
- [`healthGetHealth`](docs/sdks/health/README.md#gethealth) - Verify the status of the API
- [`jobsList`](docs/sdks/jobs/README.md#list) - Get a list of job objects
- [`jobsRead`](docs/sdks/jobs/README.md#read) - Get a job object
- [`jobsUpdate`](docs/sdks/jobs/README.md#update) - Update paycheck settings or deactivate a job
- [`organizationsList`](docs/sdks/organizations/README.md#list) - List organizations
- [`organizationsRead`](docs/sdks/organizations/README.md#read) - Get an organization
- [`paychecksList`](docs/sdks/paychecks/README.md#list) - Get a list of paycheck objects
- [`paychecksRead`](docs/sdks/paychecks/README.md#read) - Get a Paycheck object
- [`peopleRead`](docs/sdks/people/README.md#read) - Get a person object
- [`peopleUpdate`](docs/sdks/people/README.md#update) - Update a person
- [`transfersCreate`](docs/sdks/transfers/README.md#create) - Request a transfer
- [`transfersList`](docs/sdks/transfers/README.md#list) - Get a list of transfers
- [`transfersRead`](docs/sdks/transfers/README.md#read) - Get a transfer object

</details>
<!-- End Standalone functions [standalone-funcs] -->

<!-- Start React hooks with TanStack Query [react-query] -->
## React hooks with TanStack Query

React hooks built on [TanStack Query][tanstack-query] are included in this SDK.
These hooks and the utility functions provided alongside them can be used to
build rich applications that pull data from the API using one of the most
popular asynchronous state management library.

[tanstack-query]: https://tanstack.com/query/v5/docs/framework/react/overview

To learn about this feature and how to get started, check
[REACT_QUERY.md](./REACT_QUERY.md).

> [!WARNING]
>
> This feature is currently in **preview** and is subject to breaking changes
> within the current major version of the SDK as we gather user feedback on it.

<details>

<summary>Available React hooks</summary>

- [`useAccountsCreateMutation`](docs/sdks/accounts/README.md#create) - Create an Account object
- [`useAccountsList`](docs/sdks/accounts/README.md#list) - Get a list of Account objects
- [`useAccountsRead`](docs/sdks/accounts/README.md#read) - Get an Account object
- [`useCardTokenizationCreateMutation`](docs/sdks/cardtokenization/README.md#create) - Obtain a card token
- [`useHealthGetHealth`](docs/sdks/health/README.md#gethealth) - Verify the status of the API
- [`useJobsList`](docs/sdks/jobs/README.md#list) - Get a list of job objects
- [`useJobsRead`](docs/sdks/jobs/README.md#read) - Get a job object
- [`useJobsUpdateMutation`](docs/sdks/jobs/README.md#update) - Update paycheck settings or deactivate a job
- [`useOrganizationsList`](docs/sdks/organizations/README.md#list) - List organizations
- [`useOrganizationsRead`](docs/sdks/organizations/README.md#read) - Get an organization
- [`usePaychecksList`](docs/sdks/paychecks/README.md#list) - Get a list of paycheck objects
- [`usePaychecksRead`](docs/sdks/paychecks/README.md#read) - Get a Paycheck object
- [`usePeopleRead`](docs/sdks/people/README.md#read) - Get a person object
- [`usePeopleUpdateMutation`](docs/sdks/people/README.md#update) - Update a person
- [`useTransfersCreateMutation`](docs/sdks/transfers/README.md#create) - Request a transfer
- [`useTransfersList`](docs/sdks/transfers/README.md#list) - Get a list of transfers
- [`useTransfersRead`](docs/sdks/transfers/README.md#read) - Get a transfer object

</details>
<!-- End React hooks with TanStack Query [react-query] -->

<!-- Start Retries [retries] -->
## Retries

Some of the endpoints in this SDK support retries.  If you use the SDK without any configuration, it will fall back to the default retry strategy provided by the API.  However, the default retry strategy can be overridden on a per-operation basis, or across the entire SDK.

To change the default retry strategy for a single API call, simply provide a retryConfig object to the call:
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
  const result = await sdk.jobs.read({
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  }, {
    retries: {
      strategy: "backoff",
      backoff: {
        initialInterval: 1,
        maxInterval: 50,
        exponent: 1.1,
        maxElapsedTime: 100,
      },
      retryConnectionErrors: false,
    },
  });

  console.log(result);
}

run();

```

If you'd like to override the default retry strategy for all operations that support retries, you can provide a retryConfig at SDK initialization:
```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  retryConfig: {
    strategy: "backoff",
    backoff: {
      initialInterval: 1,
      maxInterval: 50,
      exponent: 1.1,
      maxElapsedTime: 100,
    },
    retryConnectionErrors: false,
  },
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
  const result = await sdk.jobs.read({
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  });

  console.log(result);
}

run();

```
<!-- End Retries [retries] -->

<!-- Start Error Handling [errors] -->
## Error Handling

[`DailyPayError`](./src/models/errors/dailypayerror.ts) is the base class for all HTTP error responses. It has the following properties:

| Property                  | Type       | Description                                                                             |
| ------------------------- | ---------- | --------------------------------------------------------------------------------------- |
| `error.message`           | `string`   | Error message                                                                           |
| `error.httpMeta.response` | `Response` | HTTP response. Access to headers and more.                                              |
| `error.httpMeta.request`  | `Request`  | HTTP request. Access to headers and more.                                               |
| `error.data$`             |            | Optional. Some errors may contain structured data. [See Error Classes](#error-classes). |

### Example
```typescript
import { SDK } from "@dailypay/dailypay";
import * as errors from "@dailypay/dailypay/models/errors";

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
  try {
    const result = await sdk.jobs.read({
      jobId: "aa860051-c411-4709-9685-c1b716df611b",
    });

    console.log(result);
  } catch (error) {
    // The base class for HTTP error responses
    if (error instanceof errors.DailyPayError) {
      console.log(error.message);
      console.log(error.httpMeta.response.status);
      console.log(error.httpMeta.response.headers);
      console.log(error.httpMeta.request);

      // Depending on the method different errors may be thrown
      if (error instanceof errors.ErrorBadRequest) {
        console.log(error.data$.errors); // ErrorBadRequestError[]
        console.log(error.data$.httpMeta); // models.HTTPMetadata
      }
    }
  }
}

run();

```

### Error Classes
**Primary errors:**
* [`DailyPayError`](./src/models/errors/dailypayerror.ts): The base class for HTTP error responses.
  * [`ErrorUnauthorized`](./src/models/errors/errorunauthorized.ts): Invalid authentication credentials. Status code `401`. *
  * [`ErrorUnexpected`](./src/models/errors/errorunexpected.ts): Unexpected error occured. Status code `500`. *
  * [`ErrorForbidden`](./src/models/errors/errorforbidden.ts): Not authorized to perform this operation. Status code `403`. *

<details><summary>Less common errors (12)</summary>

<br />

**Network errors:**
* [`ConnectionError`](./src/models/errors/httpclienterrors.ts): HTTP client was unable to make a request to a server.
* [`RequestTimeoutError`](./src/models/errors/httpclienterrors.ts): HTTP request timed out due to an AbortSignal signal.
* [`RequestAbortedError`](./src/models/errors/httpclienterrors.ts): HTTP request was aborted by the client.
* [`InvalidRequestError`](./src/models/errors/httpclienterrors.ts): Any input used to create a request is invalid.
* [`UnexpectedClientError`](./src/models/errors/httpclienterrors.ts): Unrecognised or unexpected error.


**Inherit from [`DailyPayError`](./src/models/errors/dailypayerror.ts)**:
* [`ErrorBadRequest`](./src/models/errors/errorbadrequest.ts): Bad Request. Status code `400`. Applicable to 12 of 17 methods.*
* [`ErrorNotFound`](./src/models/errors/errornotfound.ts): Resource was not found. Status code `404`. Applicable to 8 of 17 methods.*
* [`JobUpdateError`](./src/models/errors/jobupdateerror.ts): Bad Request. Status code `400`. Applicable to 1 of 17 methods.*
* [`AccountCreateError`](./src/models/errors/accountcreateerror.ts): The request contained an error. Status code `400`. Applicable to 1 of 17 methods.*
* [`TransferCreateError`](./src/models/errors/transfercreateerror.ts): The request contained an error. Status code `400`. Applicable to 1 of 17 methods.*
* [`ErrorConflict`](./src/models/errors/errorconflict.ts): A conflict occurred with the current state of the resource. Status code `409`. Applicable to 1 of 17 methods.*
* [`ResponseValidationError`](./src/models/errors/responsevalidationerror.ts): Type mismatch between the data returned from the server and the structure expected by the SDK. See `error.rawValue` for the raw value and `error.pretty()` for a nicely formatted multi-line string.

</details>

\* Check [the method documentation](#available-resources-and-operations) to see if the error is applicable.
<!-- End Error Handling [errors] -->

<!-- Start Server Selection [server] -->
## Server Selection

### Server Variables

The default server `https://api.{environment}.com` contains variables and is set to `https://api.dailypay.com` by default. To override default values, the following parameters are available when initializing the SDK client instance:

| Variable      | Parameter                               | Supported Values                     | Default      | Description |
| ------------- | --------------------------------------- | ------------------------------------ | ------------ | ----------- |
| `environment` | `environment: models.ServerEnvironment` | - `"dailypay"`<br/>- `"dailypayuat"` | `"dailypay"` |             |

#### Example

```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  serverIdx: 0,
  environment: "dailypayuat",
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
  const result = await sdk.jobs.read({
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  });

  console.log(result);
}

run();

```

### Override Server URL Per-Client

The default server can be overridden globally by passing a URL to the `serverURL: string` optional parameter when initializing the SDK client instance. For example:
```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({
  serverURL: "https://api.dailypay.com",
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
  const result = await sdk.jobs.read({
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  });

  console.log(result);
}

run();

```

### Override Server URL Per-Operation

The server URL can also be overridden on a per-operation basis, provided a server list was specified for the operation. For example:
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
  }, {
    serverURL: "https://payments.dailypay.com/v2",
  });

  console.log(result);
}

run();

```
<!-- End Server Selection [server] -->

<!-- Start Custom HTTP Client [http-client] -->
## Custom HTTP Client

The TypeScript SDK makes API calls using an `HTTPClient` that wraps the native
[Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API). This
client is a thin wrapper around `fetch` and provides the ability to attach hooks
around the request lifecycle that can be used to modify the request or handle
errors and response.

The `HTTPClient` constructor takes an optional `fetcher` argument that can be
used to integrate a third-party HTTP client or when writing tests to mock out
the HTTP client and feed in fixtures.

The following example shows how to use the `"beforeRequest"` hook to to add a
custom header and a timeout to requests and how to use the `"requestError"` hook
to log errors:

```typescript
import { SDK } from "@dailypay/dailypay";
import { HTTPClient } from "@dailypay/dailypay/lib/http";

const httpClient = new HTTPClient({
  // fetcher takes a function that has the same signature as native `fetch`.
  fetcher: (request) => {
    return fetch(request);
  }
});

httpClient.addHook("beforeRequest", (request) => {
  const nextRequest = new Request(request, {
    signal: request.signal || AbortSignal.timeout(5000)
  });

  nextRequest.headers.set("x-custom-header", "custom value");

  return nextRequest;
});

httpClient.addHook("requestError", (error, request) => {
  console.group("Request Error");
  console.log("Reason:", `${error}`);
  console.log("Endpoint:", `${request.method} ${request.url}`);
  console.groupEnd();
});

const sdk = new SDK({ httpClient: httpClient });
```
<!-- End Custom HTTP Client [http-client] -->

<!-- Start Debugging [debug] -->
## Debugging

You can setup your SDK to emit debug logs for SDK requests and responses.

You can pass a logger that matches `console`'s interface as an SDK option.

> [!WARNING]
> Beware that debug logging will reveal secrets, like API tokens in headers, in log messages printed to a console or files. It's recommended to use this feature only during local development and not in production.

```typescript
import { SDK } from "@dailypay/dailypay";

const sdk = new SDK({ debugLogger: console });
```
<!-- End Debugging [debug] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=@dailypay/dailypay&utm_campaign=typescript)
