
# Bulk Delete Order Custom Attributes Request Delete Custom Attribute

Represents one delete within the bulk operation.

## Structure

`Bulk Delete Order Custom Attributes Request Delete Custom Attribute`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `key` | `String` | Optional | The key of the custom attribute to delete.  This key must match the key<br>of an existing custom attribute definition.<br>**Constraints**: *Pattern*: `^([a-zA-Z0-9_-]+:)?[a-zA-Z0-9_-]{1,60}$` |
| `order_id` | `String` | Required | The ID of the target [order](../../doc/models/order.md). |

## Example (as JSON)

```json
{
  "key": null,
  "order_id": "order_id6"
}
```

