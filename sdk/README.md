# DailyPay

Developer-friendly & type-safe Typescript SDK specifically catered to leverage *DailyPay* API.

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=daily-pay&utm_campaign=typescript"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


<br /><br />
> [!IMPORTANT]
> This SDK is not yet ready for production use. To complete setup please follow the steps outlined in your [workspace](https://app.speakeasy.com/org/dailypay/dailypay). Delete this section before > publishing to a package manager.

<!-- Start Summary [summary] -->
## Summary

DailyPay Public Rest API: # Welcome

This site contains information on basic DailyPay concepts and instructions for using the endpoints of each API. We are just now getting started with our public documentation - please let us know if you have any feedback or questions via Suggested Edits, where you can suggest changes to the documentation directly from the portal.

Here are some links to help you get familiar with the DailyPay basics:

[API Versioning](/tag/Getting-Started#section/DailyPay's-API-Versioning) — Find out how we version our APIs.  
[Environments](/tag/Getting-Started#section/Environments) — Get an overview of the different environments in the DailyPay API.  
[Glossary](/tag/Glossary) — Explore a list of terms used in the DailyPay API.
<!-- End Summary [summary] -->

<!-- Start Table of Contents [toc] -->
## Table of Contents
<!-- $toc-max-depth=2 -->
* [DailyPay](#dailypay)
  * [SDK Installation](#sdk-installation)
  * [Requirements](#requirements)
  * [SDK Example Usage](#sdk-example-usage)
  * [Authentication](#authentication)
  * [Available Resources and Operations](#available-resources-and-operations)
  * [Standalone functions](#standalone-functions)
  * [Retries](#retries)
  * [Error Handling](#error-handling)
  * [Server Selection](#server-selection)
  * [Custom HTTP Client](#custom-http-client)
  * [Debugging](#debugging)
* [Development](#development)
  * [Maturity](#maturity)
  * [Contributions](#contributions)

<!-- End Table of Contents [toc] -->

<!-- Start SDK Installation [installation] -->
## SDK Installation

> [!TIP]
> To finish publishing your SDK to npm and others you must [run your first generation action](https://www.speakeasy.com/docs/github-setup#step-by-step-guide).


The SDK can be installed with either [npm](https://www.npmjs.com/), [pnpm](https://pnpm.io/), [bun](https://bun.sh/) or [yarn](https://classic.yarnpkg.com/en/) package managers.

### NPM

```bash
npm add <UNSET>
```

### PNPM

```bash
pnpm add <UNSET>
```

### Bun

```bash
bun add <UNSET>
```

### Yarn

```bash
yarn add <UNSET> zod

# Note that Yarn does not install peer dependencies automatically. You will need
# to install zod as shown above.
```

> [!NOTE]
> This package is published with CommonJS and ES Modules (ESM) support.


### Model Context Protocol (MCP) Server

This SDK is also an installable MCP server where the various SDK methods are
exposed as tools that can be invoked by AI applications.

> Node.js v20 or greater is required to run the MCP server from npm.

<details>
<summary>Claude installation steps</summary>

Add the following server definition to your `claude_desktop_config.json` file:

```json
{
  "mcpServers": {
    "SDK": {
      "command": "npx",
      "args": [
        "-y", "--package", "DailyPay",
        "--",
        "mcp", "start",
        "--oauth-user-token", "...",
        "--client-id", "...",
        "--client-secret", "...",
        "--token-url", "...",
        "--api-version", "..."
      ]
    }
  }
}
```

</details>

<details>
<summary>Cursor installation steps</summary>

Create a `.cursor/mcp.json` file in your project root with the following content:

```json
{
  "mcpServers": {
    "SDK": {
      "command": "npx",
      "args": [
        "-y", "--package", "DailyPay",
        "--",
        "mcp", "start",
        "--oauth-user-token", "...",
        "--client-id", "...",
        "--client-secret", "...",
        "--token-url", "...",
        "--api-version", "..."
      ]
    }
  }
}
```

</details>

You can also run MCP servers as a standalone binary with no additional dependencies. You must pull these binaries from available Github releases:

```bash
curl -L -o mcp-server \
    https://github.com/{org}/{repo}/releases/download/{tag}/mcp-server-bun-darwin-arm64 && \
chmod +x mcp-server
```

If the repo is a private repo you must add your Github PAT to download a release `-H "Authorization: Bearer {GITHUB_PAT}"`.


```json
{
  "mcpServers": {
    "Todos": {
      "command": "./DOWNLOAD/PATH/mcp-server",
      "args": [
        "start"
      ]
    }
  }
}
```

For a full list of server arguments, run:

```sh
npx -y --package DailyPay -- mcp start --help
```
<!-- End SDK Installation [installation] -->

<!-- Start Requirements [requirements] -->
## Requirements

For supported JavaScript runtimes, please consult [RUNTIMES.md](RUNTIMES.md).
<!-- End Requirements [requirements] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

```typescript
import { SDK } from "DailyPay";

const sdk = new SDK();

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
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
| `oauthUserToken`              | oauth2 | OAuth2 token |
| `oauthClientCredentialsToken` | oauth2 | OAuth2 token |

You can set the security parameters through the `security` optional parameter when initializing the SDK client instance. The selected scheme will be used by default to authenticate with the API for all operations that support it. For example:
```typescript
import { SDK } from "DailyPay";

const sdk = new SDK({
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
  });

  console.log(result);
}

run();

```
<!-- End Authentication [security] -->

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

<details open>
<summary>Available methods</summary>

### [accounts](docs/sdks/accounts/README.md)

* [read](docs/sdks/accounts/README.md#read) - Get an Account object
* [list](docs/sdks/accounts/README.md#list) - Get a list of Account objects
* [create](docs/sdks/accounts/README.md#create) - Create an Account object

### [authentication](docs/sdks/authentication/README.md)

* [requestToken](docs/sdks/authentication/README.md#requesttoken) - Request access token

### [cards](docs/sdks/cards/README.md)

* [create](docs/sdks/cards/README.md#create) - Obtain a card token

### [health](docs/sdks/health/README.md)

* [getHealth](docs/sdks/health/README.md#gethealth) - Verify the status of the API

### [jobs](docs/sdks/jobs/README.md)

* [read](docs/sdks/jobs/README.md#read) - Get a job object
* [update](docs/sdks/jobs/README.md#update) - Update paycheck settings or deactivate a job
* [list](docs/sdks/jobs/README.md#list) - Get a list of job objects

### [organizations](docs/sdks/organizations/README.md)

* [read](docs/sdks/organizations/README.md#read) - Get an organization
* [list](docs/sdks/organizations/README.md#list) - List organizations

### [paychecks](docs/sdks/paychecks/README.md)

* [read](docs/sdks/paychecks/README.md#read) - Get a Paycheck object
* [list](docs/sdks/paychecks/README.md#list) - Get a list of paycheck objects

### [people](docs/sdks/people/README.md)

* [read](docs/sdks/people/README.md#read) - Get a person object
* [update](docs/sdks/people/README.md#update) - Update a person


### [transfers](docs/sdks/transfers/README.md)

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
- [`authenticationRequestToken`](docs/sdks/authentication/README.md#requesttoken) - Request access token
- [`cardsCreate`](docs/sdks/cards/README.md#create) - Obtain a card token
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

<!-- Start Retries [retries] -->
## Retries

Some of the endpoints in this SDK support retries.  If you use the SDK without any configuration, it will fall back to the default retry strategy provided by the API.  However, the default retry strategy can be overridden on a per-operation basis, or across the entire SDK.

To change the default retry strategy for a single API call, simply provide a retryConfig object to the call:
```typescript
import { SDK } from "DailyPay";

const sdk = new SDK();

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
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
import { SDK } from "DailyPay";

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
});

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
  });

  console.log(result);
}

run();

```
<!-- End Retries [retries] -->

<!-- Start Error Handling [errors] -->
## Error Handling

[`DailyPayError`](./src/models/errors/dailypayerror.ts) is the base class for all HTTP error responses. It has the following properties:

| Property            | Type       | Description                                                                             |
| ------------------- | ---------- | --------------------------------------------------------------------------------------- |
| `error.message`     | `string`   | Error message                                                                           |
| `error.statusCode`  | `number`   | HTTP response status code eg `404`                                                      |
| `error.headers`     | `Headers`  | HTTP response headers                                                                   |
| `error.body`        | `string`   | HTTP body. Can be empty string if no body is returned.                                  |
| `error.rawResponse` | `Response` | Raw HTTP response                                                                       |
| `error.data$`       |            | Optional. Some errors may contain structured data. [See Error Classes](#error-classes). |

### Example
```typescript
import { SDK } from "DailyPay";
import * as errors from "DailyPay/models/errors";

const sdk = new SDK();

async function run() {
  try {
    const result = await sdk.authentication.requestToken({
      grantType: "authorization_code",
      code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
      redirectUri: "https://example.com/callback",
      state: "Hawaii",
      clientId: "<id>",
    });

    console.log(result);
  } catch (error) {
    // The base class for HTTP error responses
    if (error instanceof errors.DailyPayError) {
      console.log(error.message);
      console.log(error.statusCode);
      console.log(error.body);
      console.log(error.headers);

      // Depending on the method different errors may be thrown
      if (error instanceof errors.BadRequestError) {
        console.log(error.data$.errorCode); // operations.ErrorCode
        console.log(error.data$.errorDescription); // string
      }
    }
  }
}

run();

```

### Error Classes
**Primary errors:**
* [`DailyPayError`](./src/models/errors/dailypayerror.ts): The base class for HTTP error responses.
  * [`ErrorUnexpected`](docs/models/errors/errorunexpected.md): Unexpected error occured. Status code `500`. *
  * [`ErrorUnauthorized`](docs/models/errors/errorunauthorized.md): Invalid authentication credentials. Status code `401`. *
  * [`ErrorForbidden`](docs/models/errors/errorforbidden.md): Not authorized to perform this operation. Status code `403`. *

<details><summary>Less common errors (12)</summary>

<br />

**Network errors:**
* [`ConnectionError`](./src/models/errors/httpclienterrors.ts): HTTP client was unable to make a request to a server.
* [`RequestTimeoutError`](./src/models/errors/httpclienterrors.ts): HTTP request timed out due to an AbortSignal signal.
* [`RequestAbortedError`](./src/models/errors/httpclienterrors.ts): HTTP request was aborted by the client.
* [`InvalidRequestError`](./src/models/errors/httpclienterrors.ts): Any input used to create a request is invalid.
* [`UnexpectedClientError`](./src/models/errors/httpclienterrors.ts): Unrecognised or unexpected error.


**Inherit from [`DailyPayError`](./src/models/errors/dailypayerror.ts)**:
* [`ErrorBadRequest`](docs/models/errors/errorbadrequest.md): Bad Request. Status code `400`. Applicable to 12 of 18 methods.*
* [`ErrorNotFound`](docs/models/errors/errornotfound.md): Resource was not found. Status code `404`. Applicable to 8 of 18 methods.*
* [`BadRequestError`](docs/models/errors/badrequesterror.md): Something went wrong when exchanging oauth grant or refresh token for an access token. NOTE: This conforms to the OAuth spec and does not follow the same error pattern as the rest of the API. Status code `400`. Applicable to 1 of 18 methods.*
* [`JobUpdateError`](docs/models/errors/jobupdateerror.md): Bad Request. Status code `400`. Applicable to 1 of 18 methods.*
* [`AccountCreateError`](docs/models/errors/accountcreateerror.md): The request contained an error. Status code `400`. Applicable to 1 of 18 methods.*
* [`TransferCreateError`](docs/models/errors/transfercreateerror.md): The request contained an error. Status code `400`. Applicable to 1 of 18 methods.*
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
import { SDK } from "DailyPay";

const sdk = new SDK({
  environment: "dailypayuat",
});

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
  });

  console.log(result);
}

run();

```

### Override Server URL Per-Client

The default server can be overridden globally by passing a URL to the `serverURL: string` optional parameter when initializing the SDK client instance. For example:
```typescript
import { SDK } from "DailyPay";

const sdk = new SDK({
  serverURL: "https://api.dailypay.com",
});

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
  });

  console.log(result);
}

run();

```

### Override Server URL Per-Operation

The server URL can also be overridden on a per-operation basis, provided a server list was specified for the operation. For example:
```typescript
import { SDK } from "DailyPay";

const sdk = new SDK();

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
  }, {
    serverURL: "https://auth.uat.dailypay.com",
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
import { SDK } from "DailyPay";
import { HTTPClient } from "DailyPay/lib/http";

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

const sdk = new SDK({ httpClient });
```
<!-- End Custom HTTP Client [http-client] -->

<!-- Start Debugging [debug] -->
## Debugging

You can setup your SDK to emit debug logs for SDK requests and responses.

You can pass a logger that matches `console`'s interface as an SDK option.

> [!WARNING]
> Beware that debug logging will reveal secrets, like API tokens in headers, in log messages printed to a console or files. It's recommended to use this feature only during local development and not in production.

```typescript
import { SDK } from "DailyPay";

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

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=daily-pay&utm_campaign=typescript)
