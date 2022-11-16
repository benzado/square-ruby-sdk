
# Catalog Subscription Plan

Describes a subscription plan. For more information, see
[Set Up and Manage a Subscription Plan](https://developer.squareup.com/docs/subscriptions-api/setup-plan).

## Structure

`Catalog Subscription Plan`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The name of the plan. |
| `phases` | [`Array<Subscription Phase Hash>`](../../doc/models/subscription-phase.md) | Optional | A list of SubscriptionPhase containing the [SubscriptionPhase](../../doc/models/subscription-phase.md) for this plan.<br>This field it required. Not including this field will throw a REQUIRED_FIELD_MISSING error |

## Example (as JSON)

```json
{
  "name": "name0",
  "phases": null
}
```

