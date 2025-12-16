# JobUpdateDataActivationStatus

Activation is the process of verifying that data is available for a Job,  and that a person has verified their identity as the Person associated with the Job. Only paychecks from Jobs with `activated` status will contribute to an earnings balance account.

To deactivate a job, update activation_status to `DEACTIVATED`.


## Example Usage

```typescript
import { JobUpdateDataActivationStatus } from "@dailypay/dailypay/models";

let value: JobUpdateDataActivationStatus = "DEACTIVATED";
```

## Values

```typescript
"DEACTIVATED" | "DEACTIVATION_PENDING" | "ACTIVATION_REQUIRED" | "ACTIVATION_UNDER_REVIEW" | "ACTIVATED"
```