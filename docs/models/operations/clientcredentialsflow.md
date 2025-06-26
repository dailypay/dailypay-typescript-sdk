# ClientCredentialsFlow

## Example Usage

```typescript
import { ClientCredentialsFlow } from "dailypay/dailypay/models/operations";

let value: ClientCredentialsFlow = {
  grantType: "client_credentials",
  scope: "client:lookup health:read",
  clientId: "<id>",
  clientSecret: "<value>",
};
```

## Fields

| Field                                                      | Type                                                       | Required                                                   | Description                                                | Example                                                    |
| ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- | ---------------------------------------------------------- |
| `grantType`                                                | *string*                                                   | :heavy_check_mark:                                         | The OAuth2 grant type                                      | client_credentials                                         |
| `scope`                                                    | *string*                                                   | :heavy_check_mark:                                         | A space-separated list of scopes to request                | client:lookup health:read                                  |
| `clientId`                                                 | *string*                                                   | :heavy_check_mark:                                         | The client id of the application requesting the token.     |                                                            |
| `clientSecret`                                             | *string*                                                   | :heavy_check_mark:                                         | The client secret of the application requesting the token. |                                                            |