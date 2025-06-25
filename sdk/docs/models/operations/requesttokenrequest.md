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

