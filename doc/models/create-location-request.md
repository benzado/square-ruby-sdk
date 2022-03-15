
# Create Location Request

Request object for the [CreateLocation](../../doc/api/locations.md#create-location) endpoint.

## Structure

`Create Location Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location` | [`Location Hash`](../../doc/models/location.md) | Optional | Represents one of a business's [locations](../../https://developer.squareup.com/docs/locations-api). |

## Example (as JSON)

```json
{
  "location": {
    "address": {
      "address_line_1": "1234 Peachtree St. NE",
      "administrative_district_level_1": "GA",
      "locality": "Atlanta",
      "postal_code": "30309"
    },
    "description": "Midtown Atlanta store",
    "name": "Midtown"
  }
}
```

