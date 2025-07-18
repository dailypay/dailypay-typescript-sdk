# PaycheckAttributesStatus

A paycheck expected for an open pay period will have the status ESTIMATED. At the end of the pay period, the paycheck will begin PROCESSING. When it is sent, it will become IN_TRANSIT. Finally, once deposited in an account it will have the status DEPOSITED.

## Example Usage

```typescript
import { PaycheckAttributesStatus } from "@dailypay/dailypay/models";

let value: PaycheckAttributesStatus = "ESTIMATED";
```

## Values

```typescript
"ESTIMATED" | "PROCESSING" | "IN_TRANSIT" | "DEPOSITED"
```