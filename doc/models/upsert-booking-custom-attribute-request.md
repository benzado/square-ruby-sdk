
# Upsert Booking Custom Attribute Request

Represents an [UpsertBookingCustomAttribute](../../doc/api/booking-custom-attributes.md#upsert-booking-custom-attribute) request.

## Structure

`Upsert Booking Custom Attribute Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `custom_attribute` | [`Custom Attribute Hash`](../../doc/models/custom-attribute.md) | Required | A custom attribute value. Each custom attribute value has a corresponding<br>`CustomAttributeDefinition` object. |
| `idempotency_key` | `String` | Optional | A unique identifier for this request, used to ensure idempotency. For more information,<br>see [Idempotency](https://developer.squareup.com/docs/build-basics/common-api-patterns/idempotency).<br>**Constraints**: *Maximum Length*: `45` |

## Example (as JSON)

```json
{
  "custom_attribute": {
    "key": null,
    "value": null,
    "version": null,
    "visibility": null,
    "definition": null
  },
  "idempotency_key": null
}
```

