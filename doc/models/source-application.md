
# Source Application

Represents information about the application used to generate a change.

## Structure

`Source Application`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product` | [`String (Product)`](../../doc/models/product.md) | Optional | Indicates the Square product used to generate a change. |
| `application_id` | `String` | Optional | __Read only__ The Square-assigned ID of the application. This field is used only if the<br>[product](../../doc/models/product.md) type is `EXTERNAL_API`. |
| `name` | `String` | Optional | __Read only__ The display name of the application<br>(for example, `"Custom Application"` or `"Square POS 4.74 for Android"`). |

## Example (as JSON)

```json
{
  "product": null,
  "application_id": null,
  "name": null
}
```

