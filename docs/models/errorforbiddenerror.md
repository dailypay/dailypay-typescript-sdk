# ErrorForbiddenError

## Example Usage

```typescript
import { ErrorForbiddenError } from "dailypay/dailypay";

let value: ErrorForbiddenError = {
  status: "400",
  detail:
    "The request failed because it was not in the correct format or did not contain valid data.",
  links: {
    about: "https://developer.dailypay.com/tag/Errors",
  },
  source: {
    parameter: "filter[first_name]",
    pointer: "/data/attributes/first_name",
    header: "Accept",
  },
  meta: {
    requestId: "3c526bf4-f3c0-4c4a-a4cb-95f7db8b3bbe",
    traceId: "4016616108459136584",
  },
  code: "FORBIDDEN",
};
```

## Fields

| Field                                                                                                                                      | Type                                                                                                                                       | Required                                                                                                                                   | Description                                                                                                                                | Example                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `status`                                                                                                                                   | *string*                                                                                                                                   | :heavy_check_mark:                                                                                                                         | The HTTP status code for the error.                                                                                                        | 400                                                                                                                                        |
| `detail`                                                                                                                                   | *string*                                                                                                                                   | :heavy_check_mark:                                                                                                                         | A message that explains the meaning of the error code. Developers are advised not to make programmatic use of this value, as it may change | The request failed because it was not in the correct format or did not contain valid data.                                                 |
| `links`                                                                                                                                    | [models.ErrorForbiddenErrorLinks](../models/errorforbiddenerrorlinks.md)                                                                   | :heavy_check_mark:                                                                                                                         | A list of links to resources that may be helpful in resolving the error.                                                                   |                                                                                                                                            |
| `source`                                                                                                                                   | [models.ErrorForbiddenErrorSource](../models/errorforbiddenerrorsource.md)                                                                 | :heavy_minus_sign:                                                                                                                         | Location in the request that may have caused the error.                                                                                    |                                                                                                                                            |
| `meta`                                                                                                                                     | [models.ErrorForbiddenErrorMeta](../models/errorforbiddenerrormeta.md)                                                                     | :heavy_check_mark:                                                                                                                         | Additional information about the error.                                                                                                    |                                                                                                                                            |
| `code`                                                                                                                                     | [models.ErrorForbiddenErrorCode](../models/errorforbiddenerrorcode.md)                                                                     | :heavy_check_mark:                                                                                                                         | A code that indicates what went wrong.                                                                                                     | FORBIDDEN                                                                                                                                  |