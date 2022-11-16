
# List Order Custom Attributes Response

Represents a response from listing order custom attributes.

## Structure

`List Order Custom Attributes Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `custom_attributes` | [`Array<Custom Attribute Hash>`](../../doc/models/custom-attribute.md) | Optional | The retrieved custom attributes. If no custom attribute are found, Square returns an empty object (`{}`). |
| `cursor` | `String` | Optional | The cursor to provide in your next call to this endpoint to retrieve the next page of results for your original request.<br>This field is present only if the request succeeded and additional results are available.<br>For more information, see [Pagination](https://developer.squareup.com/docs/working-with-apis/pagination). |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Any errors that occurred during the request. |

## Example (as JSON)

```json
{
  "custom_attributes": null,
  "cursor": null,
  "errors": null
}
```

