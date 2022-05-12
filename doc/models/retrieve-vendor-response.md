
# Retrieve Vendor Response

Represents an output from a call to [RetrieveVendor](../../doc/api/vendors.md#retrieve-vendor).

## Structure

`Retrieve Vendor Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array<Error Hash>`](../../doc/models/error.md) | Optional | Errors encountered when the request fails. |
| `vendor` | [`Vendor Hash`](../../doc/models/vendor.md) | Optional | Represents a supplier to a seller. |

## Example (as JSON)

```json
{
  "errors": null,
  "vendor": null
}
```

