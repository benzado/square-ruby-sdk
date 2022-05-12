
# Order Return Tax

Represents a tax being returned that applies to one or more return line items in an order.

Fixed-amount, order-scoped taxes are distributed across all non-zero return line item totals.
The amount distributed to each return line item is relative to that item’s contribution to the
order subtotal.

## Structure

`Order Return Tax`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | A unique ID that identifies the returned tax only within this order.<br>**Constraints**: *Maximum Length*: `60` |
| `source_tax_uid` | `String` | Optional | The tax `uid` from the order that contains the original tax charge.<br>**Constraints**: *Maximum Length*: `60` |
| `catalog_object_id` | `String` | Optional | The catalog object ID referencing [CatalogTax](../../doc/models/catalog-tax.md).<br>**Constraints**: *Maximum Length*: `192` |
| `catalog_version` | `Long` | Optional | The version of the catalog object that this tax references. |
| `name` | `String` | Optional | The tax's name.<br>**Constraints**: *Maximum Length*: `255` |
| `type` | [`String (Order Line Item Tax Type)`](../../doc/models/order-line-item-tax-type.md) | Optional | Indicates how the tax is applied to the associated line item or order. |
| `percentage` | `String` | Optional | The percentage of the tax, as a string representation of a decimal number.<br>For example, a value of `"7.25"` corresponds to a percentage of 7.25%.<br>**Constraints**: *Maximum Length*: `10` |
| `applied_money` | [`Money Hash`](../../doc/models/money.md) | Optional | Represents an amount of money. `Money` fields can be signed or unsigned.<br>Fields that do not explicitly define whether they are signed or unsigned are<br>considered unsigned and can only hold positive amounts. For signed fields, the<br>sign of the value indicates the purpose of the money transfer. See<br>[Working with Monetary Amounts](https://developer.squareup.com/docs/build-basics/working-with-monetary-amounts)<br>for more information. |
| `scope` | [`String (Order Line Item Tax Scope)`](../../doc/models/order-line-item-tax-scope.md) | Optional | Indicates whether this is a line-item or order-level tax. |

## Example (as JSON)

```json
{
  "uid": null,
  "source_tax_uid": null,
  "catalog_object_id": null,
  "catalog_version": null,
  "name": null,
  "type": null,
  "percentage": null,
  "applied_money": null,
  "scope": null
}
```

