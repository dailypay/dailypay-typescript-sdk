# AccountDataInput

## Example Usage

```typescript
import { AccountDataInput } from "@dailypay/dailypay-typescript-sdk/models";

let value: AccountDataInput = {
  data: {
    type: "accounts",
    attributes: {},
    relationships: {
      person: {
        data: {
          type: "people",
          id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
        },
      },
    },
  },
};
```

## Fields

| Field                                                            | Type                                                             | Required                                                         | Description                                                      |
| ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `data`                                                           | [models.AccountResourceInput](../models/accountresourceinput.md) | :heavy_check_mark:                                               | N/A                                                              |