
# V1 Settlement Entry

V1SettlementEntry

## Structure

`V1 Settlement Entry`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_id` | `String` | Optional | The settlement's unique identifier. |
| `type` | [`String (V1 Settlement Entry Type)`](../../doc/models/v1-settlement-entry-type.md) | Optional | - |
| `amount_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |
| `fee_money` | [`V1 Money Hash`](../../doc/models/v1-money.md) | Optional | - |

## Example (as JSON)

```json
{
  "payment_id": "payment_id0",
  "type": "RETURNED_PAYOUT",
  "amount_money": {
    "amount": 186,
    "currency_code": "UZS"
  },
  "fee_money": {
    "amount": 108,
    "currency_code": "ILS"
  }
}
```

