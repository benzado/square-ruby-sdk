
# Loyalty Program Accrual Rule

Defines an accrual rule, which is how buyers can earn points.

## Structure

`Loyalty Program Accrual Rule`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `accrual_type` | [`String (Loyalty Program Accrual Rule Type)`](../../doc/models/loyalty-program-accrual-rule-type.md) | Required | The type of the accrual rule that defines how buyers can earn points. |
| `points` | `Integer` | Optional | The number of points that<br>buyers earn based on the `accrual_type`.<br>**Constraints**: `>= 1` |
| `visit_data` | [`Loyalty Program Accrual Rule Visit Data Hash`](../../doc/models/loyalty-program-accrual-rule-visit-data.md) | Optional | Represents additional data for rules with the `VISIT` accrual type. |
| `spend_data` | [`Loyalty Program Accrual Rule Spend Data Hash`](../../doc/models/loyalty-program-accrual-rule-spend-data.md) | Optional | Represents additional data for rules with the `SPEND` accrual type. |
| `item_variation_data` | [`Loyalty Program Accrual Rule Item Variation Data Hash`](../../doc/models/loyalty-program-accrual-rule-item-variation-data.md) | Optional | Represents additional data for rules with the `ITEM_VARIATION` accrual type. |
| `category_data` | [`Loyalty Program Accrual Rule Category Data Hash`](../../doc/models/loyalty-program-accrual-rule-category-data.md) | Optional | Represents additional data for rules with the `CATEGORY` accrual type. |

## Example (as JSON)

```json
{
  "accrual_type": "ITEM_VARIATION",
  "points": null,
  "visit_data": null,
  "spend_data": null,
  "item_variation_data": null,
  "category_data": null
}
```

