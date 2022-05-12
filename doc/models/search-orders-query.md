
# Search Orders Query

Contains query criteria for the search.

## Structure

`Search Orders Query`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `filter` | [`Search Orders Filter Hash`](../../doc/models/search-orders-filter.md) | Optional | Filtering criteria to use for a `SearchOrders` request. Multiple filters<br>are ANDed together. |
| `sort` | [`Search Orders Sort Hash`](../../doc/models/search-orders-sort.md) | Optional | Sorting criteria for a `SearchOrders` request. Results can only be sorted<br>by a timestamp field. |

## Example (as JSON)

```json
{
  "filter": null,
  "sort": null
}
```

