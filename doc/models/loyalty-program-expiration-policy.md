
# Loyalty Program Expiration Policy

Describes when the loyalty program expires.

## Structure

`Loyalty Program Expiration Policy`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expiration_duration` | `String` | Required | The number of months before points expire, in RFC 3339 duration format. For example, a value of `P12M` represents a duration of 12 months.<br>**Constraints**: *Minimum Length*: `1` |

## Example (as JSON)

```json
{
  "expiration_duration": "expiration_duration8"
}
```

