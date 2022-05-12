
# Loyalty Event Query

Represents a query used to search for loyalty events.

## Structure

`Loyalty Event Query`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `filter` | [`Loyalty Event Filter Hash`](../../doc/models/loyalty-event-filter.md) | Optional | The filtering criteria. If the request specifies multiple filters,<br>the endpoint uses a logical AND to evaluate them. |

## Example (as JSON)

```json
{
  "filter": null
}
```

