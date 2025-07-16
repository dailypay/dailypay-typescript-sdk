# ErrorAccountCreateError

## Example Usage

```typescript
import { ErrorAccountCreateError } from "DailyPay.SDK.Typescript/models";

let value: ErrorAccountCreateError = {
  code: "<value>",
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
};
```

## Fields

| Field                                                                                                                                      | Type                                                                                                                                       | Required                                                                                                                                   | Description                                                                                                                                | Example                                                                                                                                    |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `code`                                                                                                                                     | *string*                                                                                                                                   | :heavy_check_mark:                                                                                                                         | A code that indicates what went wrong. Please consider this an open enum, where new codes may be added over time.                          |                                                                                                                                            |
| `status`                                                                                                                                   | *string*                                                                                                                                   | :heavy_check_mark:                                                                                                                         | The HTTP status code for the error.                                                                                                        | 400                                                                                                                                        |
| `detail`                                                                                                                                   | *string*                                                                                                                                   | :heavy_check_mark:                                                                                                                         | A message that explains the meaning of the error code. Developers are advised not to make programmatic use of this value, as it may change | The request failed because it was not in the correct format or did not contain valid data.                                                 |
| `links`                                                                                                                                    | [models.ErrorAccountCreateErrorLinks](../models/erroraccountcreateerrorlinks.md)                                                           | :heavy_check_mark:                                                                                                                         | A list of links to resources that may be helpful in resolving the error.                                                                   |                                                                                                                                            |
| `source`                                                                                                                                   | [models.ErrorAccountCreateErrorSource](../models/erroraccountcreateerrorsource.md)                                                         | :heavy_minus_sign:                                                                                                                         | Location in the request that may have caused the error.                                                                                    |                                                                                                                                            |
| `meta`                                                                                                                                     | [models.ErrorAccountCreateErrorMeta](../models/erroraccountcreateerrormeta.md)                                                             | :heavy_check_mark:                                                                                                                         | Additional information about the error.                                                                                                    |                                                                                                                                            |