

<!-- FILE: accounts/README.md -->

# Accounts
(*accounts*)

## Overview

The _accounts_ endpoint provides comprehensive information about money
accounts. You can retrieve account details, including the
account's unique ID, a link to the account holder, type, subtype,
verification status, balance details, transfer capabilities, and
user-specific information such as names, routing numbers, and partial
account numbers.


**Functionality:** Access detailed user account information, verify
account balances, view transfer capabilities, and access user-specific
details associated with each account.


### Available Operations

* [read](#read) - Get an Account object
* [list](#list) - Get a list of Account objects
* [create](#create) - Create an Account object

## read

Returns details about an account. This object represents a person's bank accounts, debit and pay cards, and earnings balance accounts.

### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.accounts.read({
    accountId: "2bc7d781-3247-46f6-b60f-4090d214936a",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { accountsRead } from "openapi/funcs/accountsRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await accountsRead(sdk, {
    accountId: "2bc7d781-3247-46f6-b60f-4090d214936a",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("accountsRead failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadAccountRequest](../../models/operations/readaccountrequest.md)                                                                                                 | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.AccountDataOutput](../../models/accountdataoutput.md)\>**

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

Returns a list of account objects. An account object represents a person's bank accounts, debit and pay cards, and earnings balance accounts.
See [Filtering Accounts](https://developer.dailypay.com/tag/Filtering#section/Supported-Endpoint-Filters) for a description of filterable fields.


### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.accounts.list({
    filterAccountType: "EARNINGS_BALANCE",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { accountsList } from "openapi/funcs/accountsList.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await accountsList(sdk, {
    filterAccountType: "EARNINGS_BALANCE",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("accountsList failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListAccountsRequest](../../models/operations/listaccountsrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.AccountsData](../../models/accountsdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |

## create

Create an account object to store a person's bank or card information as a destination for funds.

### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.accounts.create({
    data: {
      type: "accounts",
      attributes: {
        name: "Acme Bank Checking Account",
        accountType: "DEPOSITORY",
        subtype: "CHECKING",
        depositoryAccountDetails: {
          firstName: "Edith",
          lastName: "Clarke",
          routingNumber: "XXXXX2021",
          accountNumber: "XXXXXX4321",
        },
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
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { accountsCreate } from "openapi/funcs/accountsCreate.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await accountsCreate(sdk, {
    data: {
      type: "accounts",
      attributes: {
        name: "Acme Bank Checking Account",
        accountType: "DEPOSITORY",
        subtype: "CHECKING",
        depositoryAccountDetails: {
          firstName: "Edith",
          lastName: "Clarke",
          routingNumber: "XXXXX2021",
          accountNumber: "XXXXXX4321",
        },
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
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("accountsCreate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [models.AccountDataInput](../../models/accountdatainput.md)                                                                                                                    | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.AccountDataOutput](../../models/accountdataoutput.md)\>**

### Errors

| Error Type                | Status Code               | Content Type              |
| ------------------------- | ------------------------- | ------------------------- |
| errors.AccountCreateError | 400                       | application/vnd.api+json  |
| errors.ErrorUnauthorized  | 401                       | application/vnd.api+json  |
| errors.ErrorForbidden     | 403                       | application/vnd.api+json  |
| errors.ErrorUnexpected    | 500                       | application/vnd.api+json  |
| errors.SDKDefaultError    | 4XX, 5XX                  | \*/\*                     |


<!-- FILE: cards/README.md -->

# Cards
(*cards*)

## Overview

## What is the Payments API?

The Payments API is a PCI compliant endpoint and allows for secure debit card token creation. These tokens are used within DailyPay's APIs. When a tokenized debit card is added to a user’s account they can begin to take instant transfers.

**How does this work?** A user's debit card data is sent via POST request to the Payments API. The debit card data is encrypted and tokenized before being returned. This tokenized card data is used for instant transfers via the Extend API.

### What is PCI compliance?

It’s how we keep card data secure. DailyPay has a responsibility and legal requirement to protect debit card data therefore the Payments API endpoint complies with the Payment Card Industry Data Security Standards [PCI DSS](https://www.pcisecuritystandards.org/).

> 📘 **Info**
> DailyPay only handles card data during encryption and tokenization
> **The Payments server is DailyPay’s only PCI compliant API.**

## Create a Debit Card Token

Steps to create a tokenized debit card for use within DailyPay's APIs.

### 1. POST debit card data to the Payments API

After you have securely collected the debit card data for a user, create a POST to the PCI compliant payments endpoint [`POST Generic Card`](/v2/tag/Card-Creation) with the following required parameters in this example.

```json
{
  "first_name": "Edith",
  "last_name": "Clarke",
  "card_number": "4007589999999912",
  "expiration_year": "2027",
  "expiration_month": "02",
  "cvv": "123",
  "address_line_one": "1234 Street",
  "address_city": "Fort Lee",
  "address_state": "NJ",
  "address_zip_code": "07237",
  "address_country": "US"
}
```

### 2. Receive and handle the tokenized card data

The [payments endpoint](https://developer.dailypay.com/v2/reference/post_cards-generic) returns an opaque string representing the card details. This token is encrypted and complies with PCI DSS. You will need the token for step 3, after which it can be discarded. The token is a long string and will look similar to below:

```json
{"token":"eyJhbGciOiJSU0Et.....T0FFU”}
```

### 3. POST the token to the Extend API

> 📘 **Important** > [Proper authorization](/v2/tag/Authorization) is required to create a transfer account.

Send the encrypted token in a POST request to the [transfer accounts endpoint](/v2/tag/Users#operation/createTransferAccount) as the value for the `generic_token` field. This will create a transfer account and allow a user to start taking transfers.


### Available Operations

* [create](#create) - Obtain a card token

## create

Obtain a PCI DSS Compliant card token. This token must be used in order to add a card to a user’s DailyPay account.

### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK();

async function run() {
  const result = await sdk.cards.create({
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
import { SDKCore } from "openapi/core.js";
import { cardsCreate } from "openapi/funcs/cardsCreate.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore();

async function run() {
  const res = await cardsCreate(sdk, {
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
    console.log("cardsCreate failed:", res.error);
  }
}

run();
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


<!-- FILE: health/README.md -->

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
import { SDK } from "openapi";

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
import { SDKCore } from "openapi/core.js";
import { healthGetHealth } from "openapi/funcs/healthGetHealth.js";

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

**Promise\<[models.Health200](../../models/health200.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |


<!-- FILE: jobs/README.md -->

# Jobs
(*jobs*)

## Overview

The _jobs_ endpoint provides access to comprehensive information 
about a person's employment. It enables you to retrieve details about
individual jobs, including information about the organization
they work for, status, wage rate, job title, location,
paycheck settings, and related links to associated accounts.


### Available Operations

* [read](#read) - Get a job object
* [update](#update) - Update paycheck settings or deactivate a job
* [list](#list) - Get a list of job objects

## read

Returns details about a person's employment.

### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { jobsRead } from "openapi/funcs/jobsRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await jobsRead(sdk, {
    jobId: "aa860051-c411-4709-9685-c1b716df611b",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("jobsRead failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadJobRequest](../../models/operations/readjobrequest.md)                                                                                                         | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.JobData](../../models/jobdata.md)\>**

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

Update this job to set where pay should be deposited for paychecks related to this job,  or deactivate on-demand pay for this job. 
Returns the job object if the update succeeded. Returns an error if update parameters are invalid.


### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.jobs.update({
    jobId: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
    jobUpdateData: {
      data: {
        type: "jobs",
        id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
        attributes: {
          activationStatus: "DEACTIVATED",
        },
        relationships: {
          directDepositDefaultDepository: {
            data: {
              type: "accounts",
              id: "2bc7d781-3247-46f6-b60f-4090d214936a",
            },
          },
          directDepositDefaultCard: {
            data: {
              type: "accounts",
              id: "2bc7d781-3247-46f6-b60f-4090d214936a",
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
import { SDKCore } from "openapi/core.js";
import { jobsUpdate } from "openapi/funcs/jobsUpdate.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await jobsUpdate(sdk, {
    jobId: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
    jobUpdateData: {
      data: {
        type: "jobs",
        id: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
        attributes: {
          activationStatus: "DEACTIVATED",
        },
        relationships: {
          directDepositDefaultDepository: {
            data: {
              type: "accounts",
              id: "2bc7d781-3247-46f6-b60f-4090d214936a",
            },
          },
          directDepositDefaultCard: {
            data: {
              type: "accounts",
              id: "2bc7d781-3247-46f6-b60f-4090d214936a",
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
    console.log("jobsUpdate failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.UpdateJobRequest](../../models/operations/updatejobrequest.md)                                                                                                     | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.JobData](../../models/jobdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.JobUpdateError    | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorNotFound     | 404                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |

## list

Returns a collection of job objects. This object represents a person's employment details.
See [Filtering Jobs](https://developer.dailypay.com/tag/Filtering#section/Supported-Endpoint-Filters) for a description of filterable fields.


### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.jobs.list();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { jobsList } from "openapi/funcs/jobsList.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await jobsList(sdk);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("jobsList failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListJobsRequest](../../models/operations/listjobsrequest.md)                                                                                                       | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.JobsData](../../models/jobsdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |


<!-- FILE: organizations/README.md -->

# Organizations
(*organizations*)

## Overview

The _organizations_ endpoint provides details about a business entity, 
such as an employer, or a group of people, such as a division.

The response includes the organization name and ID which can be used to
make subsequent endpoint calls related to the organization and its
employees.


### Available Operations

* [read](#read) - Get an organization
* [list](#list) - List organizations

## read

Lookup organization by ID for a detailed view of single organization.

### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.organizations.read({
    organizationId: "123e4567-e89b-12d3-a456-426614174000",
  });

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { organizationsRead } from "openapi/funcs/organizationsRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await organizationsRead(sdk, {
    organizationId: "123e4567-e89b-12d3-a456-426614174000",
  });
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("organizationsRead failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadOrganizationRequest](../../models/operations/readorganizationrequest.md)                                                                                       | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.OrganizationData](../../models/organizationdata.md)\>**

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

Get organizations with an optional filter

### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const result = await sdk.organizations.list();

  console.log(result);
}

run();
```

### Standalone function

The standalone function version of this method:

```typescript
import { SDKCore } from "openapi/core.js";
import { organizationsList } from "openapi/funcs/organizationsList.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
  },
});

async function run() {
  const res = await organizationsList(sdk);
  if (res.ok) {
    const { value: result } = res;
    console.log(result);
  } else {
    console.log("organizationsList failed:", res.error);
  }
}

run();
```

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListOrganizationsRequest](../../models/operations/listorganizationsrequest.md)                                                                                     | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.OrganizationsData](../../models/organizationsdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |


<!-- FILE: paychecks/README.md -->

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

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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
import { SDKCore } from "openapi/core.js";
import { paychecksRead } from "openapi/funcs/paychecksRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadPaycheckRequest](../../models/operations/readpaycheckrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.PaycheckData](../../models/paycheckdata.md)\>**

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
See [Filtering Paychecks](https://developer.dailypay.com/tag/Filtering#section/Supported-Endpoint-Filters) for a description of filterable fields.


### Example Usage

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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
import { SDKCore } from "openapi/core.js";
import { paychecksList } from "openapi/funcs/paychecksList.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ListPaychecksRequest](../../models/operations/listpaychecksrequest.md)                                                                                             | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.PaychecksData](../../models/paychecksdata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |


<!-- FILE: people/README.md -->

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

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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
import { SDKCore } from "openapi/core.js";
import { peopleRead } from "openapi/funcs/peopleRead.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.ReadPersonRequest](../../models/operations/readpersonrequest.md)                                                                                                   | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.PersonData](../../models/persondata.md)\>**

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

```typescript
import { SDK } from "openapi";

const sdk = new SDK({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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
import { SDKCore } from "openapi/core.js";
import { peopleUpdate } from "openapi/funcs/peopleUpdate.js";

// Use `SDKCore` for best tree-shaking performance.
// You can create one instance of it to use across an application.
const sdk = new SDKCore({
  version: 3,
  security: {
    oauthUserToken: "<YOUR_OAUTH_USER_TOKEN_HERE>",
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

### Parameters

| Parameter                                                                                                                                                                      | Type                                                                                                                                                                           | Required                                                                                                                                                                       | Description                                                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `request`                                                                                                                                                                      | [operations.UpdatePersonRequest](../../models/operations/updatepersonrequest.md)                                                                                               | :heavy_check_mark:                                                                                                                                                             | The request object to use for the request.                                                                                                                                     |
| `options`                                                                                                                                                                      | RequestOptions                                                                                                                                                                 | :heavy_minus_sign:                                                                                                                                                             | Used to set various options for making HTTP requests.                                                                                                                          |
| `options.fetchOptions`                                                                                                                                                         | [RequestInit](https://developer.mozilla.org/en-US/docs/Web/API/Request/Request#options)                                                                                        | :heavy_minus_sign:                                                                                                                                                             | Options that are passed to the underlying HTTP request. This can be used to inject extra headers for examples. All `Request` options, except `method` and `body`, are allowed. |
| `options.retries`                                                                                                                                                              | [RetryConfig](../../lib/utils/retryconfig.md)                                                                                                                                  | :heavy_minus_sign:                                                                                                                                                             | Enables retrying HTTP requests under certain failure conditions.                                                                                                               |

### Response

**Promise\<[models.PersonData](../../models/persondata.md)\>**

### Errors

| Error Type               | Status Code              | Content Type             |
| ------------------------ | ------------------------ | ------------------------ |
| errors.ErrorBadRequest   | 400                      | application/vnd.api+json |
| errors.ErrorUnauthorized | 401                      | application/vnd.api+json |
| errors.ErrorForbidden    | 403                      | application/vnd.api+json |
| errors.ErrorNotFound     | 404                      | application/vnd.api+json |
| errors.ErrorUnexpected   | 500                      | application/vnd.api+json |
| errors.SDKDefaultError   | 4XX, 5XX                 | \*/\*                    |


<!-- FILE: sdk/README.md -->

# SDK

## Overview

DailyPay Public Rest API: # Welcome

This site contains information on basic DailyPay concepts and instructions for using the endpoints of each API. We are just now getting started with our public documentation - please let us know if you have any feedback or questions via Suggested Edits, where you can suggest changes to the documentation directly from the portal.

Here are some links to help you get familiar with the DailyPay basics:

[API Versioning](/tag/Getting-Started#section/DailyPay's-API-Versioning) — Find out how we version our APIs.  
[Environments](/tag/Getting-Started#section/Environments) — Get an overview of the different environments in the DailyPay API.  
[Glossary](/tag/Glossary) — Explore a list of terms used in the DailyPay API.


### Available Operations



<!-- FILE: transfers/README.md -->

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
import { SDK } from "openapi";

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
import { SDKCore } from "openapi/core.js";
import { transfersRead } from "openapi/funcs/transfersRead.js";

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
import { SDK } from "openapi";

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
import { SDKCore } from "openapi/core.js";
import { transfersList } from "openapi/funcs/transfersList.js";

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
import { SDK } from "openapi";

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
import { SDKCore } from "openapi/core.js";
import { transfersCreate } from "openapi/funcs/transfersCreate.js";

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