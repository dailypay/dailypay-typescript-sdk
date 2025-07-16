# AccountGalileoCardInput

An account of type CARD with subtype GALILEO.

## Example Usage

```typescript
import { AccountGalileoCardInput } from "@dailypay/dailypay-typescript-sdk/models";

let value: AccountGalileoCardInput = {
  galileoCardId: "40769",
  galileoPmtRefNo: "777101360999",
};
```

## Fields

| Field                                             | Type                                              | Required                                          | Description                                       | Example                                           |
| ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| `galileoCardId`                                   | *string*                                          | :heavy_check_mark:                                | The card ID provided by Galileo.                  | 40769                                             |
| `galileoPmtRefNo`                                 | *string*                                          | :heavy_check_mark:                                | The payment reference number provided by Galileo. | 777101360999                                      |