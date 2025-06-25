

<!-- FILE: authorizationcodeflow.md -->

# AuthorizationCodeFlow

## Example Usage

```typescript
import { AuthorizationCodeFlow } from "openapi/models/operations";

let value: AuthorizationCodeFlow = {
  grantType: "authorization_code",
  code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
  redirectUri: "https://example.com/callback",
  state: "North Dakota",
  clientId: "<id>",
};
```

## Fields

| Field                                                                                                                                                                                           | Type                                                                                                                                                                                            | Required                                                                                                                                                                                        | Description                                                                                                                                                                                     | Example                                                                                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `grantType`                                                                                                                                                                                     | [operations.GrantType](../../models/operations/granttype.md)                                                                                                                                    | :heavy_check_mark:                                                                                                                                                                              | The OAuth2 grant type                                                                                                                                                                           | authorization_code                                                                                                                                                                              |
| `code`                                                                                                                                                                                          | *string*                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                              | An authorization code received through user authorization flow                                                                                                                                  | 50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw                                                                                                                                                     |
| `redirectUri`                                                                                                                                                                                   | *string*                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                              | The url redirected to after the authorization flow was completed by current user.                                                                                                               | https://example.com/callback                                                                                                                                                                    |
| `state`                                                                                                                                                                                         | *string*                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                              | A value used by the client to maintain state between the request and callback. This is used to prevent CSRF attacks.  See https://www.rfc-editor.org/rfc/rfc6749#section-10.12 for more detail. |                                                                                                                                                                                                 |
| `codeVerifier`                                                                                                                                                                                  | *string*                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                              | A PKCE verifier matching the challenge submitted during the authorization code request.                                                                                                         |                                                                                                                                                                                                 |
| `clientId`                                                                                                                                                                                      | *string*                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                              | The client id of the application requesting the token.                                                                                                                                          |                                                                                                                                                                                                 |
| `clientSecret`                                                                                                                                                                                  | *string*                                                                                                                                                                                        | :heavy_minus_sign:                                                                                                                                                                              | The client secret of the application requesting the token, if available.                                                                                                                        |                                                                                                                                                                                                 |


<!-- FILE: clientcredentialsflow.md -->

# ClientCredentialsFlow

## Example Usage

```typescript
import { ClientCredentialsFlow } from "openapi/models/operations";

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


<!-- FILE: createaccountglobals.md -->

# CreateAccountGlobals

## Example Usage

```typescript
import { CreateAccountGlobals } from "openapi/models/operations";

let value: CreateAccountGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: creategenericcardtokenrequest.md -->

# CreateGenericCardTokenRequest

## Example Usage

```typescript
import { CreateGenericCardTokenRequest } from "openapi/models/operations";

let value: CreateGenericCardTokenRequest = {
  firstName: "Edith",
  lastName: "Clarke",
  cardNumber: "4007589999999912",
  expirationYear: "2027",
  expirationMonth: "02",
  cvv: "123",
  addressLineOne: "123 Kebly Street",
  addressLineTwo: "Unit C",
  addressCity: "Fort Lee",
  addressState: "NJ",
  addressZipCode: "07237",
  addressCountry: "US",
};
```

## Fields

| Field                                                                                   | Type                                                                                    | Required                                                                                | Description                                                                             | Example                                                                                 |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `firstName`                                                                             | *string*                                                                                | :heavy_check_mark:                                                                      | The first name or given name of the cardholder.                                         | Edith                                                                                   |
| `lastName`                                                                              | *string*                                                                                | :heavy_check_mark:                                                                      | The last name or surname of the cardholder.                                             | Clarke                                                                                  |
| `cardNumber`                                                                            | *string*                                                                                | :heavy_check_mark:                                                                      | The full card number without spaces or hyphenation.                                     | 4007589999999912                                                                        |
| `expirationYear`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The four-digit year of expiration for the card.                                         | 2027                                                                                    |
| `expirationMonth`                                                                       | *string*                                                                                | :heavy_check_mark:                                                                      | The two-digit month of the expiration date for the card.                                | 02                                                                                      |
| `cvv`                                                                                   | *string*                                                                                | :heavy_minus_sign:                                                                      | The CVV card code.                                                                      | 123                                                                                     |
| `addressLineOne`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The first line of the address associated with the card.                                 | 123 Kebly Street                                                                        |
| `addressLineTwo`                                                                        | *string*                                                                                | :heavy_minus_sign:                                                                      | The second line of the address associated with the card.                                | Unit C                                                                                  |
| `addressCity`                                                                           | *string*                                                                                | :heavy_check_mark:                                                                      | The city component of the address associated with the card.                             | Fort Lee                                                                                |
| `addressState`                                                                          | *string*                                                                                | :heavy_check_mark:                                                                      | The two-letter state component of the address associated with the card.                 | NJ                                                                                      |
| `addressZipCode`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The 5 digit zip-code component of the address associated with the card.                 | 07237                                                                                   |
| `addressCountry`                                                                        | *string*                                                                                | :heavy_check_mark:                                                                      | The two-letter ISO 3166 country code component of the address associated with the card. | US                                                                                      |


<!-- FILE: creategenericcardtokenresponse.md -->

# CreateGenericCardTokenResponse

Returns an opaque string representing the card details.


## Example Usage

```typescript
import { CreateGenericCardTokenResponse } from "openapi/models/operations";

let value: CreateGenericCardTokenResponse = {
  token:
    "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkExMjhHQ00ifQ.ZR3Eq5MAuS_03RopT9QWK1MUiFFIOoZoDgwkiDWzz-7S6Zeda0JdvzwI51lHxuvi6EFdXLi7-1thIpPt49JMiLtzZgcf7UCJrVOZTf88JhIL5X5rvmnpO2NADfR9PVzrSV2AwxLCRy6vRfgCHGJZy1o5AZzwaaMLCRzqb3vdCaXn9gKvGPmvHKg9PkR-Zrfs9XDsRHeCVtfvu8PBzMNO5r_Dfo-fo3l3cyV4pKFtbvjlJXm--Ko5XiJPxffnBofmlYabXHku5yuo6IsVTnd9ETksMu1tnfr4T9AC14fiZew0FJetIayf_-kmiR1t7_aU3Q_A8Uwy7kTmxrFTvu6Cgw.yT7WptQfjKXswG_N.DY77q22ZGV5efeh6LNI6bWRmhZikY0dLAyIDVrK7nite1B7T_4IL9XdM7Luf9BOpXHTscu9y6Zqun-687bclLnzOYB7nNpV_DZM-5stWz2MuQeLiokqTfrF5jfXtpLDaDEiwAY9HHTBrKoD91Wkp5aX1CsB4jFBTfFDES0BQbTrRXqLTMIItZqKFbh5btqFCskfl7JKtozo3UgMNj__HnNiF5GUN-QgiOrYZKn7d2hXPpUABPmYGFkpXSXTnnCRGTVoZHoyh5L-4Apr8yVRUxUX1rrMFjOurr8VqmQPg-9-2Z7zxmwp5joms19JdgV2FhgJnbKilwFY4IQrYbhfLdfuApHgpptvrODLdPB5DJnT6tAfsJM_-LuFC7cg9kg6Xm6G-8jGEuO56sd-Og3cvK-jnhSR6Vu9O6nSGKZ1X3H0O_EHgMhHV-WTtf8KfrUHdVsSBIZvA6J_5gmOAB53KPaCPy8AU8XQBUgPVBt35h9J4HLuWq3HGRKEw5nHNNdSSjgWXfpC9X8OXgric1540nZz5A-zBP3XNOZuD26yPNDg2g7jCzVZs1TfRgX9DXqZHUkugPuyXN82FMT3bxKAZzH5OsmVSnir8f75OAx18hVG-jheEBTYzbx4yh6YwlaWKkekKKwGAAdEnUg5cQxNNmeOpTzQiSyMCnFOtQyn67qSk9I3e5ig9l5ElSoX-MhL9g2liAKbX6_fl4wJ1elvrhy0w6Xuf6V74UrwKP5deKxtGLbWoSVC-v0k5lrweP8SbD1R62DyfdcdgZSPDmiiSgF8YuHO_8fW96xQeOD_fJ59qf4-qvfuToM39X52s5vH7Qj53v5kp-Tg23Ki2C-ENPIqa6hKl0BaTHltIKwZt1ll4l7ho1vMxPdPVq47FmTzPyliB0JuK6VoQIaR4ej4CCSrQmRTXMohXnbIaVubm-kLyK5RebvnJFJr5J2YswT5ZnUuEb5MbkNaeqJ0CUaQ8Z_vRXI-UaZOuGI_BPYsuIDmBKsfihoGUHau6WBNqqCDBRQsHlLRc3pUBfLLWQyO8pdB2JHjco_8wh2SuxLrD9abLNwjt9NNNmQdW8Qzm-E7aG-DnLN0y6z1T1dTr-YiUO4TBw1sPNysVX6v2Pz5jN7xQ6ukZ59rXgJ4Rozci5ip0V28whvs5Aw8oiOY9Uo0qS9UEHjILCDdhPuBgt7v_v6ylsIPEy9ZL8Z0F-Dh_SqqJl9H4TSKVbalk4PJ8f2TGywbB7b2l5t5wHPZexuhkZZ1X_lChvi7nistQQ9952S6quPhT8OZntWqHe2X63THSVweupbe0D21tftdNsiZFP4rptJ6SfkmcEiS4CDA233CjCTy5sMALIYMsATL5dQxG5myUc3hiDQqpT_n7pIMhSuVrMcFi0bfpLSVYtLShmhQno8wqrm1p5aqahY1YQQmMM4VLT-05Fz53cTlJsEqnu6_2tg6v_j4cWYnHnP4IAvtJmw4BRQ.3yAMw37rs8X_gfRMqpYD1w",
};
```

## Fields

| Field                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `token`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | *string*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | This token should be supplied in the `generic_token` field when creating a TransferAccount with <br/>`transfer_account_type` of DebitCard using the Extend API "Create a transfer account" endpoint.<br/>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkExMjhHQ00ifQ.ZR3Eq5MAuS_03RopT9QWK1MUiFFIOoZoDgwkiDWzz-7S6Zeda0JdvzwI51lHxuvi6EFdXLi7-1thIpPt49JMiLtzZgcf7UCJrVOZTf88JhIL5X5rvmnpO2NADfR9PVzrSV2AwxLCRy6vRfgCHGJZy1o5AZzwaaMLCRzqb3vdCaXn9gKvGPmvHKg9PkR-Zrfs9XDsRHeCVtfvu8PBzMNO5r_Dfo-fo3l3cyV4pKFtbvjlJXm--Ko5XiJPxffnBofmlYabXHku5yuo6IsVTnd9ETksMu1tnfr4T9AC14fiZew0FJetIayf_-kmiR1t7_aU3Q_A8Uwy7kTmxrFTvu6Cgw.yT7WptQfjKXswG_N.DY77q22ZGV5efeh6LNI6bWRmhZikY0dLAyIDVrK7nite1B7T_4IL9XdM7Luf9BOpXHTscu9y6Zqun-687bclLnzOYB7nNpV_DZM-5stWz2MuQeLiokqTfrF5jfXtpLDaDEiwAY9HHTBrKoD91Wkp5aX1CsB4jFBTfFDES0BQbTrRXqLTMIItZqKFbh5btqFCskfl7JKtozo3UgMNj__HnNiF5GUN-QgiOrYZKn7d2hXPpUABPmYGFkpXSXTnnCRGTVoZHoyh5L-4Apr8yVRUxUX1rrMFjOurr8VqmQPg-9-2Z7zxmwp5joms19JdgV2FhgJnbKilwFY4IQrYbhfLdfuApHgpptvrODLdPB5DJnT6tAfsJM_-LuFC7cg9kg6Xm6G-8jGEuO56sd-Og3cvK-jnhSR6Vu9O6nSGKZ1X3H0O_EHgMhHV-WTtf8KfrUHdVsSBIZvA6J_5gmOAB53KPaCPy8AU8XQBUgPVBt35h9J4HLuWq3HGRKEw5nHNNdSSjgWXfpC9X8OXgric1540nZz5A-zBP3XNOZuD26yPNDg2g7jCzVZs1TfRgX9DXqZHUkugPuyXN82FMT3bxKAZzH5OsmVSnir8f75OAx18hVG-jheEBTYzbx4yh6YwlaWKkekKKwGAAdEnUg5cQxNNmeOpTzQiSyMCnFOtQyn67qSk9I3e5ig9l5ElSoX-MhL9g2liAKbX6_fl4wJ1elvrhy0w6Xuf6V74UrwKP5deKxtGLbWoSVC-v0k5lrweP8SbD1R62DyfdcdgZSPDmiiSgF8YuHO_8fW96xQeOD_fJ59qf4-qvfuToM39X52s5vH7Qj53v5kp-Tg23Ki2C-ENPIqa6hKl0BaTHltIKwZt1ll4l7ho1vMxPdPVq47FmTzPyliB0JuK6VoQIaR4ej4CCSrQmRTXMohXnbIaVubm-kLyK5RebvnJFJr5J2YswT5ZnUuEb5MbkNaeqJ0CUaQ8Z_vRXI-UaZOuGI_BPYsuIDmBKsfihoGUHau6WBNqqCDBRQsHlLRc3pUBfLLWQyO8pdB2JHjco_8wh2SuxLrD9abLNwjt9NNNmQdW8Qzm-E7aG-DnLN0y6z1T1dTr-YiUO4TBw1sPNysVX6v2Pz5jN7xQ6ukZ59rXgJ4Rozci5ip0V28whvs5Aw8oiOY9Uo0qS9UEHjILCDdhPuBgt7v_v6ylsIPEy9ZL8Z0F-Dh_SqqJl9H4TSKVbalk4PJ8f2TGywbB7b2l5t5wHPZexuhkZZ1X_lChvi7nistQQ9952S6quPhT8OZntWqHe2X63THSVweupbe0D21tftdNsiZFP4rptJ6SfkmcEiS4CDA233CjCTy5sMALIYMsATL5dQxG5myUc3hiDQqpT_n7pIMhSuVrMcFi0bfpLSVYtLShmhQno8wqrm1p5aqahY1YQQmMM4VLT-05Fz53cTlJsEqnu6_2tg6v_j4cWYnHnP4IAvtJmw4BRQ.3yAMw37rs8X_gfRMqpYD1w |


<!-- FILE: createtransferglobals.md -->

# CreateTransferGlobals

## Example Usage

```typescript
import { CreateTransferGlobals } from "openapi/models/operations";

let value: CreateTransferGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: createtransferrequest.md -->

# CreateTransferRequest

## Example Usage

```typescript
import { CreateTransferRequest } from "openapi/models/operations";

let value: CreateTransferRequest = {
  idempotencyKey: "452bfada-ad7f-4795-8c64-2fdbe87fed90",
};
```

## Fields

| Field                                                                                                                                                                                                   | Type                                                                                                                                                                                                    | Required                                                                                                                                                                                                | Description                                                                                                                                                                                             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `idempotencyKey`                                                                                                                                                                                        | *string*                                                                                                                                                                                                | :heavy_check_mark:                                                                                                                                                                                      | An idempotency key is a unique string that you provide to ensure a request is only processed once.<br/>Any number of requests with the same idempotency key and payload will return an identical response.<br/> |
| `include`                                                                                                                                                                                               | *string*                                                                                                                                                                                                | :heavy_minus_sign:                                                                                                                                                                                      | Add related resources to the response. <br/><br/>The value of the include parameter must be a comma-separated (U+002C COMMA, “,”) list of relationship paths.<br/>                                      |
| `transferCreateData`                                                                                                                                                                                    | [models.TransferCreateData](../../models/transfercreatedata.md)                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                      | N/A                                                                                                                                                                                                     |


<!-- FILE: errorcode.md -->

# ErrorCode

Error code indicating what went wrong with the oauth token exchange. See the OAuth2 RFC for further context https://datatracker.ietf.org/doc/html/rfc6749#section-5.2

## Example Usage

```typescript
import { ErrorCode } from "openapi/models/operations";

let value: ErrorCode = "unauthorized_client";
```

## Values

```typescript
"invalid_request" | "invalid_client" | "invalid_grant" | "unauthorized_client" | "unsupported_grant_type"
```


<!-- FILE: granttype.md -->

# GrantType

The OAuth2 grant type

## Example Usage

```typescript
import { GrantType } from "openapi/models/operations";

let value: GrantType = "authorization_code";
```

## Values

```typescript
"authorization_code"
```


<!-- FILE: listaccountsglobals.md -->

# ListAccountsGlobals

## Example Usage

```typescript
import { ListAccountsGlobals } from "openapi/models/operations";

let value: ListAccountsGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: listaccountsrequest.md -->

# ListAccountsRequest

## Example Usage

```typescript
import { ListAccountsRequest } from "openapi/models/operations";

let value: ListAccountsRequest = {
  filterAccountType: "EARNINGS_BALANCE",
};
```

## Fields

| Field                                                                                                                   | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             | Example                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `filterPersonId`                                                                                                        | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents related to a specific person                                                             |                                                                                                                         |
| `filterAccountType`                                                                                                     | [models.FilterAccountType](../../models/filteraccounttype.md)                                                           | :heavy_minus_sign:                                                                                                      | Limit the results to documents matching the specified account type.                                                     | EARNINGS_BALANCE                                                                                                        |
| `filterSubtype`                                                                                                         | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents matching the specified account subtype.                                                  |                                                                                                                         |
| ~~`filterBy`~~                                                                                                          | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible. |                                                                                                                         |


<!-- FILE: listjobsglobals.md -->

# ListJobsGlobals

## Example Usage

```typescript
import { ListJobsGlobals } from "openapi/models/operations";

let value: ListJobsGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: listjobsrequest.md -->

# ListJobsRequest

## Example Usage

```typescript
import { ListJobsRequest } from "openapi/models/operations";

let value: ListJobsRequest = {};
```

## Fields

| Field                                                                                                                   | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `filterExternalIdentifiersPrimaryIdentifier`                                                                            | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents with an external identifier matching exactly at the specified key.                       |
| `filterExternalIdentifiersEmployeeId`                                                                                   | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents with an external identifier matching exactly at the specified key.                       |
| `filterExternalIdentifiersGroup`                                                                                        | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents with an external identifier matching exactly at the specified key.                       |
| `filterPersonId`                                                                                                        | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents related to a specific person                                                             |
| `filterOrganizationId`                                                                                                  | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | _Not yet supported_ Limit the results to documents related to a specific organization                                   |
| ~~`filterBy`~~                                                                                                          | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible. |


<!-- FILE: listorganizationsglobals.md -->

# ListOrganizationsGlobals

## Example Usage

```typescript
import { ListOrganizationsGlobals } from "openapi/models/operations";

let value: ListOrganizationsGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: listorganizationsrequest.md -->

# ListOrganizationsRequest

## Example Usage

```typescript
import { ListOrganizationsRequest } from "openapi/models/operations";

let value: ListOrganizationsRequest = {};
```

## Fields

| Field                                                                                                                   | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| ~~`filterBy`~~                                                                                                          | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible. |


<!-- FILE: listpaychecksglobals.md -->

# ListPaychecksGlobals

## Example Usage

```typescript
import { ListPaychecksGlobals } from "openapi/models/operations";

let value: ListPaychecksGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: listpaychecksrequest.md -->

# ListPaychecksRequest

## Example Usage

```typescript
import { ListPaychecksRequest } from "openapi/models/operations";

let value: ListPaychecksRequest = {
  filterDepositExpectedAtGte: new Date("2023-03-15T04:00:00Z"),
  filterDepositExpectedAtLt: new Date("2023-03-15T04:00:00Z"),
  filterPayPeriodEndsAtGte: new Date("2023-03-15T04:00:00Z"),
  filterPayPeriodEndsAtLt: new Date("2023-03-15T04:00:00Z"),
  filterPayPeriodStartsAtGte: new Date("2023-03-15T04:00:00Z"),
  filterPayPeriodStartsAtLt: new Date("2023-03-15T04:00:00Z"),
};
```

## Fields

| Field                                                                                                                   | Type                                                                                                                    | Required                                                                                                                | Description                                                                                                             | Example                                                                                                                 |
| ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------- |
| `filterJobId`                                                                                                           | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | Limit the results to documents related to a specific job                                                                |                                                                                                                         |
| `filterStatus`                                                                                                          | [models.FilterPaycheckStatus](../../models/filterpaycheckstatus.md)                                                     | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with the specified status                                                                |                                                                                                                         |
| `filterDepositExpectedAtGte`                                                                                            | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)                           | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with deposit_expected_at greater than or equal to the specified date                     | 2023-03-15T04:00:00Z                                                                                                    |
| `filterDepositExpectedAtLt`                                                                                             | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)                           | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with deposit_expected_at less than the specified date                                    | 2023-03-15T04:00:00Z                                                                                                    |
| `filterPayPeriodEndsAtGte`                                                                                              | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)                           | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with pay_period_ends_at greater than or equal to the specified date                      | 2023-03-15T04:00:00Z                                                                                                    |
| `filterPayPeriodEndsAtLt`                                                                                               | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)                           | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with pay_period_ends_at less than the specified date                                     | 2023-03-15T04:00:00Z                                                                                                    |
| `filterPayPeriodStartsAtGte`                                                                                            | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)                           | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with pay_period_starts_at greater than or equal to the specified date                    | 2023-03-15T04:00:00Z                                                                                                    |
| `filterPayPeriodStartsAtLt`                                                                                             | [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)                           | :heavy_minus_sign:                                                                                                      | Limit the results to paychecks with pay_period_starts_at less than the specified date                                   | 2023-03-15T04:00:00Z                                                                                                    |
| ~~`filterBy`~~                                                                                                          | *string*                                                                                                                | :heavy_minus_sign:                                                                                                      | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible. |                                                                                                                         |


<!-- FILE: listtransfersglobals.md -->

# ListTransfersGlobals

## Example Usage

```typescript
import { ListTransfersGlobals } from "openapi/models/operations";

let value: ListTransfersGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: listtransfersrequest.md -->

# ListTransfersRequest

## Example Usage

```typescript
import { ListTransfersRequest } from "openapi/models/operations";

let value: ListTransfersRequest = {};
```

## Fields

| Field                                                                                                                                                  | Type                                                                                                                                                   | Required                                                                                                                                               | Description                                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `filterPersonId`                                                                                                                                       | *string*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                     | Limit the results to documents related to a specific person                                                                                            |
| `include`                                                                                                                                              | *string*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                     | Add related resources to the response. <br/><br/>The value of the include parameter must be a comma-separated (U+002C COMMA, “,”) list of relationship paths.<br/> |
| ~~`filterBy`~~                                                                                                                                         | *string*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                     | : warning: ** DEPRECATED **: This will be removed in a future release, please migrate away from it as soon as possible.                                |


<!-- FILE: readaccountglobals.md -->

# ReadAccountGlobals

## Example Usage

```typescript
import { ReadAccountGlobals } from "openapi/models/operations";

let value: ReadAccountGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: readaccountrequest.md -->

# ReadAccountRequest

## Example Usage

```typescript
import { ReadAccountRequest } from "openapi/models/operations";

let value: ReadAccountRequest = {
  accountId: "2bc7d781-3247-46f6-b60f-4090d214936a",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `accountId`                          | *string*                             | :heavy_check_mark:                   | Unique UUID of the Account.          | 2bc7d781-3247-46f6-b60f-4090d214936a |


<!-- FILE: readjobglobals.md -->

# ReadJobGlobals

## Example Usage

```typescript
import { ReadJobGlobals } from "openapi/models/operations";

let value: ReadJobGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: readjobrequest.md -->

# ReadJobRequest

## Example Usage

```typescript
import { ReadJobRequest } from "openapi/models/operations";

let value: ReadJobRequest = {
  jobId: "aa860051-c411-4709-9685-c1b716df611b",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `jobId`                              | *string*                             | :heavy_check_mark:                   | Unique ID of the job                 | aa860051-c411-4709-9685-c1b716df611b |


<!-- FILE: readorganizationglobals.md -->

# ReadOrganizationGlobals

## Example Usage

```typescript
import { ReadOrganizationGlobals } from "openapi/models/operations";

let value: ReadOrganizationGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: readorganizationrequest.md -->

# ReadOrganizationRequest

## Example Usage

```typescript
import { ReadOrganizationRequest } from "openapi/models/operations";

let value: ReadOrganizationRequest = {
  organizationId: "123e4567-e89b-12d3-a456-426614174000",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `organizationId`                     | *string*                             | :heavy_check_mark:                   | Unique ID of the organization        | 123e4567-e89b-12d3-a456-426614174000 |


<!-- FILE: readpaycheckglobals.md -->

# ReadPaycheckGlobals

## Example Usage

```typescript
import { ReadPaycheckGlobals } from "openapi/models/operations";

let value: ReadPaycheckGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: readpaycheckrequest.md -->

# ReadPaycheckRequest

## Example Usage

```typescript
import { ReadPaycheckRequest } from "openapi/models/operations";

let value: ReadPaycheckRequest = {
  paycheckId: "3fa85f64-5717-4562-b3fc-2c963f66afa6",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `paycheckId`                         | *string*                             | :heavy_check_mark:                   | Unique ID of the paycheck            | 3fa85f64-5717-4562-b3fc-2c963f66afa6 |


<!-- FILE: readpersonglobals.md -->

# ReadPersonGlobals

## Example Usage

```typescript
import { ReadPersonGlobals } from "openapi/models/operations";

let value: ReadPersonGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: readpersonrequest.md -->

# ReadPersonRequest

## Example Usage

```typescript
import { ReadPersonRequest } from "openapi/models/operations";

let value: ReadPersonRequest = {
  personId: "aa860051-c411-4709-9685-c1b716df611b",
};
```

## Fields

| Field                                | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `personId`                           | *string*                             | :heavy_check_mark:                   | Unique ID of the person              | aa860051-c411-4709-9685-c1b716df611b |


<!-- FILE: readtransferglobals.md -->

# ReadTransferGlobals

## Example Usage

```typescript
import { ReadTransferGlobals } from "openapi/models/operations";

let value: ReadTransferGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: readtransferrequest.md -->

# ReadTransferRequest

## Example Usage

```typescript
import { ReadTransferRequest } from "openapi/models/operations";

let value: ReadTransferRequest = {
  transferId: "aba332a2-24a2-46de-8257-5040e71ab210",
};
```

## Fields

| Field                                                                                                                                                  | Type                                                                                                                                                   | Required                                                                                                                                               | Description                                                                                                                                            | Example                                                                                                                                                |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `include`                                                                                                                                              | *string*                                                                                                                                               | :heavy_minus_sign:                                                                                                                                     | Add related resources to the response. <br/><br/>The value of the include parameter must be a comma-separated (U+002C COMMA, “,”) list of relationship paths.<br/> |                                                                                                                                                        |
| `transferId`                                                                                                                                           | *string*                                                                                                                                               | :heavy_check_mark:                                                                                                                                     | Unique ID of the transfer                                                                                                                              | aba332a2-24a2-46de-8257-5040e71ab210                                                                                                                   |


<!-- FILE: refreshtoken.md -->

# RefreshToken

## Example Usage

```typescript
import { RefreshToken } from "openapi/models/operations";

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


<!-- FILE: requesttokenrequest.md -->

# RequestTokenRequest


## Supported Types

### `operations.AuthorizationCodeFlow`

```typescript
const value: operations.AuthorizationCodeFlow = {
  grantType: "authorization_code",
  code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
  redirectUri: "https://example.com/callback",
  state: "North Dakota",
  clientId: "<id>",
};
```

### `operations.ClientCredentialsFlow`

```typescript
const value: operations.ClientCredentialsFlow = {
  grantType: "client_credentials",
  scope: "client:lookup health:read",
  clientId: "<id>",
  clientSecret: "<value>",
};
```

### `operations.RefreshToken`

```typescript
const value: operations.RefreshToken = {
  grantType: "refresh_token",
  refreshToken: "rt.ML_PsNjfQA4M7iupH_3jw",
  clientId: "<id>",
};
```




<!-- FILE: updatejobglobals.md -->

# UpdateJobGlobals

## Example Usage

```typescript
import { UpdateJobGlobals } from "openapi/models/operations";

let value: UpdateJobGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: updatejobrequest.md -->

# UpdateJobRequest

## Example Usage

```typescript
import { UpdateJobRequest } from "openapi/models/operations";

let value: UpdateJobRequest = {
  jobId: "e9d84b0d-92ba-43c9-93bf-7c993313fa6f",
};
```

## Fields

| Field                                                 | Type                                                  | Required                                              | Description                                           | Example                                               |
| ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- | ----------------------------------------------------- |
| `jobId`                                               | *string*                                              | :heavy_check_mark:                                    | Unique ID of the job                                  | e9d84b0d-92ba-43c9-93bf-7c993313fa6f                  |
| `jobUpdateData`                                       | [models.JobUpdateData](../../models/jobupdatedata.md) | :heavy_check_mark:                                    | N/A                                                   |                                                       |


<!-- FILE: updatepersonglobals.md -->

# UpdatePersonGlobals

## Example Usage

```typescript
import { UpdatePersonGlobals } from "openapi/models/operations";

let value: UpdatePersonGlobals = {};
```

## Fields

| Field                                                                                                                  | Type                                                                                                                   | Required                                                                                                               | Description                                                                                                            |
| ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `version`                                                                                                              | *number*                                                                                                               | :heavy_minus_sign:                                                                                                     | The version of the DailyPay API to use for this request. If not provided, the latest version of the API will be used.<br/> |


<!-- FILE: updatepersonrequest.md -->

# UpdatePersonRequest

## Example Usage

```typescript
import { UpdatePersonRequest } from "openapi/models/operations";

let value: UpdatePersonRequest = {
  personId: "aa860051-c411-4709-9685-c1b716df611b",
};
```

## Fields

| Field                                                     | Type                                                      | Required                                                  | Description                                               | Example                                                   |
| --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- | --------------------------------------------------------- |
| `personId`                                                | *string*                                                  | :heavy_check_mark:                                        | Unique ID of the person                                   | aa860051-c411-4709-9685-c1b716df611b                      |
| `personData`                                              | [models.PersonDataInput](../../models/persondatainput.md) | :heavy_check_mark:                                        | N/A                                                       |                                                           |