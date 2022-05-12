
# Search Availability Query

The query used to search for buyer-accessible availabilities of bookings.

## Structure

`Search Availability Query`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `filter` | [`Search Availability Filter Hash`](../../doc/models/search-availability-filter.md) | Required | A query filter to search for buyer-accessible availabilities by. |

## Example (as JSON)

```json
{
  "filter": {
    "start_at_range": {
      "start_at": null,
      "end_at": null
    },
    "location_id": null,
    "segment_filters": null,
    "booking_id": null
  }
}
```

