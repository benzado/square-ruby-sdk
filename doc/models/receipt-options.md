
# Receipt Options

Describes receipt action fields.

## Structure

`Receipt Options`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_id` | `String` | Required | The reference to the Square payment ID for the receipt. |
| `print_only` | `TrueClass \| FalseClass` | Optional | Instructs the device to print the receipt without displaying the receipt selection screen.<br>Requires `printer_enabled` set to true.<br>Defaults to false. |
| `is_duplicate` | `TrueClass \| FalseClass` | Optional | Identify the receipt as a reprint rather than an original receipt.<br>Defaults to false. |

## Example (as JSON)

```json
{
  "payment_id": "payment_id0",
  "print_only": false,
  "is_duplicate": false
}
```

