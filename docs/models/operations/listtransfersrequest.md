# ListTransfersRequest

## Example Usage

```typescript
import { ListTransfersRequest } from "@dailypay/dailypay/models/operations";

let value: ListTransfersRequest = {
  include: "estimated_funding_sources,final_funding_sources",
};
```

## Fields

| Field                                                                                                                                                  | Type                                                                                                                                                   | Required                                                                                                                                               | Description                                                                                                                                            | Example                                                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `include`                                                                                                                                              | *string*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                     | Add related resources to the response. <br/><br/>The value of the include parameter must be a comma-separated (U+002C COMMA, “,”) list of relationship paths.<br/> | estimated_funding_sources,final_funding_sources                                                                                                        |
| ~~`filterBy`~~                                                                                                                                         | *string*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                     | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible.                                |                                                                                                                                                        |