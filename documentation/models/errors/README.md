

<!-- FILE: accountcreateerror.md -->

# AccountCreateError

The request contained an error

## Example Usage

```typescript
import { AccountCreateError } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `errors`                                                                    | [models.ErrorAccountCreateError](../../models/erroraccountcreateerror.md)[] | :heavy_check_mark:                                                          | A list of errors that occurred.                                             |


<!-- FILE: badrequesterror.md -->

# BadRequestError

Something went wrong when exchanging oauth grant or refresh token for an access token. NOTE: This conforms to the OAuth spec and does not follow the same error pattern as the rest of the API

## Example Usage

```typescript
import { BadRequestError } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                                                                                                                                                          | Type                                                                                                                                                                                           | Required                                                                                                                                                                                       | Description                                                                                                                                                                                    | Example                                                                                                                                                                                        |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `errorCode`                                                                                                                                                                                    | [operations.ErrorCode](../../models/operations/errorcode.md)                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                             | Error code indicating what went wrong with the oauth token exchange. See the OAuth2 RFC for further context https://datatracker.ietf.org/doc/html/rfc6749#section-5.2                          |                                                                                                                                                                                                |
| `errorDescription`                                                                                                                                                                             | *string*                                                                                                                                                                                       | :heavy_minus_sign:                                                                                                                                                                             | A description of exactly went wrong with the oauth token exchange. This is meant to improve developer experience, and is subject to change, so this should not be relied upon programatically. | The requested scope is invalid, unknown, or malformed.                                                                                                                                         |


<!-- FILE: errorbadrequest.md -->

# ErrorBadRequest

Bad Request

## Example Usage

```typescript
import { ErrorBadRequest } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `errors`                                                              | [models.ErrorBadRequestError](../../models/errorbadrequesterror.md)[] | :heavy_check_mark:                                                    | A list of errors that occurred.                                       |


<!-- FILE: errorforbidden.md -->

# ErrorForbidden

Not authorized to perform this operation

## Example Usage

```typescript
import { ErrorForbidden } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                               | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `errors`                                                            | [models.ErrorForbiddenError](../../models/errorforbiddenerror.md)[] | :heavy_check_mark:                                                  | A list of errors that occurred.                                     |


<!-- FILE: errornotfound.md -->

# ErrorNotFound

Resource was not found

## Example Usage

```typescript
import { ErrorNotFound } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                             | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `errors`                                                          | [models.ErrorNotFoundError](../../models/errornotfounderror.md)[] | :heavy_check_mark:                                                | A list of errors that occurred.                                   |


<!-- FILE: errorunauthorized.md -->

# ErrorUnauthorized

Invalid authentication credentials

## Example Usage

```typescript
import { ErrorUnauthorized } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `errors`                                                                  | [models.ErrorUnauthorizedError](../../models/errorunauthorizederror.md)[] | :heavy_check_mark:                                                        | A list of errors that occurred.                                           |


<!-- FILE: errorunexpected.md -->

# ErrorUnexpected

Unexpected error occured

## Example Usage

```typescript
import { ErrorUnexpected } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                                 | Type                                                                  | Required                                                              | Description                                                           |
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------- |
| `errors`                                                              | [models.ErrorUnexpectedError](../../models/errorunexpectederror.md)[] | :heavy_check_mark:                                                    | A list of errors that occurred.                                       |


<!-- FILE: jobupdateerror.md -->

# JobUpdateError

Bad Request

## Example Usage

```typescript
import { JobUpdateError } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                               | Type                                                                | Required                                                            | Description                                                         |
| ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------- |
| `errors`                                                            | [models.ErrorJobUpdateError](../../models/errorjobupdateerror.md)[] | :heavy_check_mark:                                                  | A list of errors that occurred.                                     |


<!-- FILE: transfercreateerror.md -->

# TransferCreateError

The request contained an error

## Example Usage

```typescript
import { TransferCreateError } from "openapi/models/errors";

// No examples available for this model
```

## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `errors`                                                                      | [models.ErrorTransferCreateError](../../models/errortransfercreateerror.md)[] | :heavy_check_mark:                                                            | A list of errors that occurred.                                               |