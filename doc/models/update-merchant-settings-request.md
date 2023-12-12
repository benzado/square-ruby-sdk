
# Update Merchant Settings Request

## Structure

`Update Merchant Settings Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_settings` | [`Checkout Merchant Settings Hash`](../../doc/models/checkout-merchant-settings.md) | Required | - |

## Example (as JSON)

```json
{
  "merchant_settings": {
    "payment_methods": {
      "apple_pay": {
        "enabled": false
      },
      "google_pay": {
        "enabled": false
      },
      "cash_app": {
        "enabled": false
      },
      "afterpay_clearpay": {
        "order_eligibility_range": {
          "min": {
            "amount": 34,
            "currency": "ISK"
          },
          "max": {
            "amount": 140,
            "currency": "OMR"
          }
        },
        "item_eligibility_range": {
          "min": {
            "amount": 34,
            "currency": "ISK"
          },
          "max": {
            "amount": 140,
            "currency": "OMR"
          }
        },
        "enabled": false
      }
    },
    "updated_at": "updated_at6"
  }
}
```

