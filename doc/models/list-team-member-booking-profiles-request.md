
# List Team Member Booking Profiles Request

## Structure

`List Team Member Booking Profiles Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bookable_only` | `Boolean` | Optional | Indicates whether to include only bookable team members in the returned result (`true`) or not (`false`). |
| `limit` | `Integer` | Optional | The maximum number of results to return in a paged response.<br>**Constraints**: `>= 1`, `<= 100` |
| `cursor` | `String` | Optional | The pagination cursor from the preceding response to return the next page of the results. Do not set this when retrieving the first page of the results. |
| `location_id` | `String` | Optional | Indicates whether to include only team members enabled at the given location in the returned result. |

## Example (as JSON)

```json
{
  "bookable_only": false,
  "limit": 172,
  "cursor": "cursor6",
  "location_id": "location_id4"
}
```

