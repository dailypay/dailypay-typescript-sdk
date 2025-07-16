# RefreshToken

## Example Usage

```typescript
import { RefreshToken } from "DailyPay.SDK.Typescript/models/operations";

let value: RefreshToken = {
  grantType: "refresh_token",
  refreshToken: "rt.ML_PsNjfQA4M7iupH_3jw",
  clientId: "<id>",
};
```

## Fields

| Field                                                                    | Type                                                                     | Required                                                                 | Description                                                              | Example                                                                  |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `grantType`                                                              | *string*                                                                 | :heavy_check_mark:                                                       | The OAuth2 grant type                                                    | refresh_token                                                            |
| `refreshToken`                                                           | *string*                                                                 | :heavy_check_mark:                                                       | A refresh token received from a previous token request                   | rt.ML_PsNjfQA4M7iupH_3jw                                                 |
| `clientId`                                                               | *string*                                                                 | :heavy_check_mark:                                                       | The client id of the application requesting the token.                   |                                                                          |
| `clientSecret`                                                           | *string*                                                                 | :heavy_minus_sign:                                                       | The client secret of the application requesting the token, if available. |                                                                          |