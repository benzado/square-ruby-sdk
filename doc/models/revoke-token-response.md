
# Revoke Token Response

## Structure

`Revoke Token Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `success` | `TrueClass \| FalseClass` | Optional | If the request is successful, this is `true`. |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. |

## Example (as JSON)

```json
{
  "success": true,
  "errors": [
    {
      "category": "MERCHANT_SUBSCRIPTION_ERROR",
      "code": "MAP_KEY_LENGTH_TOO_LONG",
      "detail": "detail6",
      "field": "field4"
    }
  ]
}
```

