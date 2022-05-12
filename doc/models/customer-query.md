
# Customer Query

Represents a query (including filtering criteria, sorting criteria, or both) used to search
for customer profiles.

## Structure

`Customer Query`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `filter` | [`Customer Filter Hash`](../../doc/models/customer-filter.md) | Optional | Represents a set of `CustomerQuery` filters used to limit the set of<br>customers returned by the [SearchCustomers](../../doc/api/customers.md#search-customers) endpoint. |
| `sort` | [`Customer Sort Hash`](../../doc/models/customer-sort.md) | Optional | Specifies how searched customers profiles are sorted, including the sort key and sort order. |

## Example (as JSON)

```json
{
  "filter": null,
  "sort": null
}
```

