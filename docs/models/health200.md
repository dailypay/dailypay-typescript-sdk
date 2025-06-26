# Health200

Returns a healthcheck document

## Example Usage

```typescript
import { Health200 } from "@dailypay/dailypay";

let value: Health200 = {
  status: "UP",
  version: "3.0.0",
};
```

## Fields

| Field                  | Type                   | Required               | Description            | Example                |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `status`               | *string*               | :heavy_check_mark:     | The status of the API  | UP                     |
| `version`              | *string*               | :heavy_check_mark:     | The version of the API | 3.0.0                  |