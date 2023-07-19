
# Retrieve Token Status Response

Defines the fields that are included in the response body of
a request to the `RetrieveTokenStatus` endpoint.

## Structure

`Retrieve Token Status Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scopes` | `Array<String>` | Optional | The list of scopes associated with an access token. |
| `expires_at` | `String` | Optional | The date and time when the `access_token` expires, in RFC 3339 format. Empty if the token never expires. |
| `client_id` | `String` | Optional | The Square-issued application ID associated with the access token. This is the same application ID used to obtain the token.<br>**Constraints**: *Maximum Length*: `191` |
| `merchant_id` | `String` | Optional | The ID of the authorizing merchant's business.<br>**Constraints**: *Minimum Length*: `8`, *Maximum Length*: `191` |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. |

## Example (as JSON)

```json
{
  "client_id": "CLIENT_ID",
  "expires_at": "2022-10-14T14:44:00Z",
  "merchant_id": "MERCHANT_ID",
  "scopes": [
    "PAYMENTS_READ",
    "PAYMENTS_WRITE"
  ],
  "errors": [
    {
      "category": "REFUND_ERROR",
      "code": "MERCHANT_SUBSCRIPTION_NOT_FOUND",
      "detail": "detail1",
      "field": "field9"
    },
    {
      "category": "MERCHANT_SUBSCRIPTION_ERROR",
      "code": "BAD_REQUEST",
      "detail": "detail2",
      "field": "field0"
    },
    {
      "category": "EXTERNAL_VENDOR_ERROR",
      "code": "MISSING_REQUIRED_PARAMETER",
      "detail": "detail3",
      "field": "field1"
    }
  ]
}
```

