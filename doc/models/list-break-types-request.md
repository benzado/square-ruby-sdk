
# List Break Types Request

A request for a filtered set of `BreakType` objects.

## Structure

`List Break Types Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Optional | Filter the returned `BreakType` results to only those that are associated with the<br>specified location. |
| `limit` | `Integer` | Optional | The maximum number of `BreakType` results to return per page. The number can range between 1<br>and 200. The default is 200.<br>**Constraints**: `>= 1`, `<= 200` |
| `cursor` | `String` | Optional | A pointer to the next page of `BreakType` results to fetch. |

## Example (as JSON)

```json
{
  "location_id": null,
  "limit": null,
  "cursor": null
}
```

