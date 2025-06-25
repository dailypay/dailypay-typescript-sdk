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