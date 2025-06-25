<!-- Start SDK Example Usage [usage] -->
```typescript
import { SDK } from "openapi";

const sdk = new SDK();

async function run() {
  const result = await sdk.authentication.requestToken({
    grantType: "authorization_code",
    code: "50BTIf2h7Wtg3DAk7ytpG5ML_PsNjfQA4M7iupH_3jw",
    redirectUri: "https://example.com/callback",
    state: "Hawaii",
    clientId: "<id>",
  });

  console.log(result);
}

run();

```
<!-- End SDK Example Usage [usage] -->