
# Catalog Info Response Limits

## Structure

`Catalog Info Response Limits`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_upsert_max_objects_per_batch` | `Integer` | Optional | The maximum number of objects that may appear within a single batch in a<br>`/v2/catalog/batch-upsert` request. |
| `batch_upsert_max_total_objects` | `Integer` | Optional | The maximum number of objects that may appear across all batches in a<br>`/v2/catalog/batch-upsert` request. |
| `batch_retrieve_max_object_ids` | `Integer` | Optional | The maximum number of object IDs that may appear in a `/v2/catalog/batch-retrieve`<br>request. |
| `search_max_page_limit` | `Integer` | Optional | The maximum number of results that may be returned in a page of a<br>`/v2/catalog/search` response. |
| `batch_delete_max_object_ids` | `Integer` | Optional | The maximum number of object IDs that may be included in a single<br>`/v2/catalog/batch-delete` request. |
| `update_item_taxes_max_item_ids` | `Integer` | Optional | The maximum number of item IDs that may be included in a single<br>`/v2/catalog/update-item-taxes` request. |
| `update_item_taxes_max_taxes_to_enable` | `Integer` | Optional | The maximum number of tax IDs to be enabled that may be included in a single<br>`/v2/catalog/update-item-taxes` request. |
| `update_item_taxes_max_taxes_to_disable` | `Integer` | Optional | The maximum number of tax IDs to be disabled that may be included in a single<br>`/v2/catalog/update-item-taxes` request. |
| `update_item_modifier_lists_max_item_ids` | `Integer` | Optional | The maximum number of item IDs that may be included in a single<br>`/v2/catalog/update-item-modifier-lists` request. |
| `update_item_modifier_lists_max_modifier_lists_to_enable` | `Integer` | Optional | The maximum number of modifier list IDs to be enabled that may be included in<br>a single `/v2/catalog/update-item-modifier-lists` request. |
| `update_item_modifier_lists_max_modifier_lists_to_disable` | `Integer` | Optional | The maximum number of modifier list IDs to be disabled that may be included in<br>a single `/v2/catalog/update-item-modifier-lists` request. |

## Example (as JSON)

```json
{
  "batch_upsert_max_objects_per_batch": null,
  "batch_upsert_max_total_objects": null,
  "batch_retrieve_max_object_ids": null,
  "search_max_page_limit": null,
  "batch_delete_max_object_ids": null,
  "update_item_taxes_max_item_ids": null,
  "update_item_taxes_max_taxes_to_enable": null,
  "update_item_taxes_max_taxes_to_disable": null,
  "update_item_modifier_lists_max_item_ids": null,
  "update_item_modifier_lists_max_modifier_lists_to_enable": null,
  "update_item_modifier_lists_max_modifier_lists_to_disable": null
}
```

