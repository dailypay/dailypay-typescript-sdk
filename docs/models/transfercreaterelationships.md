# TransferCreateRelationships

The relationships between the transfer and other resources, including the destination account, the origination account, and the person who initiated the transfer.


## Example Usage

```typescript
import { TransferCreateRelationships } from "dailypay/dailypay";

let value: TransferCreateRelationships = {
  origin: {
    data: {
      id: "2bc7d781-3247-46f6-b60f-4090d214936a",
    },
  },
  destination: {
    data: {
      id: "2bc7d781-3247-46f6-b60f-4090d214936a",
    },
  },
  person: {
    data: {
      id: "3fa8f641-5717-4562-b3fc-2c963f66afa6",
    },
  },
};
```

## Fields

| Field                                                          | Type                                                           | Required                                                       | Description                                                    |
| -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- | -------------------------------------------------------------- |
| `origin`                                                       | [models.AccountRelationship](../models/accountrelationship.md) | :heavy_check_mark:                                             | N/A                                                            |
| `destination`                                                  | [models.AccountRelationship](../models/accountrelationship.md) | :heavy_check_mark:                                             | N/A                                                            |
| `person`                                                       | [models.PersonRelationship](../models/personrelationship.md)   | :heavy_check_mark:                                             | N/A                                                            |