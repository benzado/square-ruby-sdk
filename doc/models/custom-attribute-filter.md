
# Custom Attribute Filter

Supported custom attribute query expressions for calling the
[SearchCatalogItems](../../doc/api/catalog.md#search-catalog-items)
endpoint to search for items or item variations.

## Structure

`Custom Attribute Filter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `custom_attribute_definition_id` | `String` | Optional | A query expression to filter items or item variations by matching their custom attributes'<br>`custom_attribute_definition_id` property value against the the specified id.<br>Exactly one of `custom_attribute_definition_id` or `key` must be specified. |
| `key` | `String` | Optional | A query expression to filter items or item variations by matching their custom attributes'<br>`key` property value against the specified key.<br>Exactly one of `custom_attribute_definition_id` or `key` must be specified. |
| `string_filter` | `String` | Optional | A query expression to filter items or item variations by matching their custom attributes'<br>`string_value`  property value against the specified text.<br>Exactly one of `string_filter`, `number_filter`, `selection_uids_filter`, or `bool_filter` must be specified. |
| `number_filter` | [`Range Hash`](../../doc/models/range.md) | Optional | The range of a number value between the specified lower and upper bounds. |
| `selection_uids_filter` | `Array<String>` | Optional | A query expression to filter items or item variations by matching  their custom attributes'<br>`selection_uid_values` values against the specified selection uids.<br>Exactly one of `string_filter`, `number_filter`, `selection_uids_filter`, or `bool_filter` must be specified. |
| `bool_filter` | `Boolean` | Optional | A query expression to filter items or item variations by matching their custom attributes'<br>`boolean_value` property values against the specified Boolean expression.<br>Exactly one of `string_filter`, `number_filter`, `selection_uids_filter`, or `bool_filter` must be specified. |

## Example (as JSON)

```json
{
  "custom_attribute_definition_id": null,
  "key": null,
  "string_filter": null,
  "number_filter": null,
  "selection_uids_filter": null,
  "bool_filter": null
}
```

