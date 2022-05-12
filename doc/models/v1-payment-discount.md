
# V1 Payment Discount

V1PaymentDiscount

## Structure

`V1 Payment Discount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | The discount's name. |
| `applied_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `discount_id` | `String` | Optional | The ID of the applied discount, if available. Discounts applied in older versions of Square Register might not have an ID. |

## Example (as JSON)

```json
{
  "name": null,
  "applied_money": null,
  "discount_id": null
}
```

