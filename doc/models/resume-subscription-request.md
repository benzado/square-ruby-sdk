
# Resume Subscription Request

Defines input parameters in a request to the
[ResumeSubscription](/doc/api/subscriptions.md#resume-subscription) endpoint.

## Structure

`Resume Subscription Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resume_effective_date` | `String` | Optional | The `YYYY-MM-DD`-formatted date when the subscription reactivated. |
| `resume_change_timing` | [`String (Change Timing)`](/doc/models/change-timing.md) | Optional | Supported timings when a pending change, as an action, takes place to a subscription. |

## Example (as JSON)

```json
{
  "resume_effective_date": "resume_effective_date2",
  "resume_change_timing": "IMMEDIATE"
}
```

