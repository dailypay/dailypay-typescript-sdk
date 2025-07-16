# AccountAttributesDepositoryAccountCapabilities

## Example Usage

```typescript
import { AccountAttributesDepositoryAccountCapabilities } from "@dailypay/dailypay-typescript-sdk/models";

let value: AccountAttributesDepositoryAccountCapabilities = {
  transferDestination: [
    {
      schedule: "WITHIN_THIRTY_MINUTES",
      fee: 300,
      currency: "USD",
    },
    {
      schedule: "NEXT_BUSINESS_DAY",
      fee: 0,
      currency: "USD",
    },
  ],
};
```

## Fields

| Field                                                                                                                                                                                                                                                                    | Type                                                                                                                                                                                                                                                                     | Required                                                                                                                                                                                                                                                                 | Description                                                                                                                                                                                                                                                              | Example                                                                                                                                                                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `transferDestination`                                                                                                                                                                                                                                                    | [models.TransferDestinationCapability](../models/transferdestinationcapability.md)[]                                                                                                                                                                                     | :heavy_check_mark:                                                                                                                                                                                                                                                       | List of the timing and associate fees available when crediting this account as a<br/>transfer destination.<br/><br/>Actual fees may differ at the time of transfer; please refer to <br/>the transfer preview attribute for the most accurate fee information <br/>for any given transfer. <br/> | [<br/>{<br/>"schedule": "WITHIN_THIRTY_MINUTES",<br/>"fee": 300,<br/>"currency": "USD"<br/>},<br/>{<br/>"schedule": "NEXT_BUSINESS_DAY",<br/>"fee": 0,<br/>"currency": "USD"<br/>}<br/>]                                                                                 |