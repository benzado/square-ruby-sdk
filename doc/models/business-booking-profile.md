
# Business Booking Profile

## Structure

`Business Booking Profile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `seller_id` | `String` | Optional | The ID of the seller, obtainable using the Merchants API.<br>**Constraints**: *Maximum Length*: `32` |
| `created_at` | `String` | Optional | The RFC 3339 timestamp specifying the booking's creation time. |
| `booking_enabled` | `Boolean` | Optional | Indicates whether the seller is open for booking. |
| `customer_timezone_choice` | [`String (Business Booking Profile Customer Timezone Choice)`](../../doc/models/business-booking-profile-customer-timezone-choice.md) | Optional | Choices of customer-facing time zone used for bookings. |
| `booking_policy` | [`String (Business Booking Profile Booking Policy)`](../../doc/models/business-booking-profile-booking-policy.md) | Optional | Policies for accepting bookings. |
| `allow_user_cancel` | `Boolean` | Optional | Indicates whether customers can cancel or reschedule their own bookings (`true`) or not (`false`). |
| `business_appointment_settings` | [`Business Appointment Settings Hash`](../../doc/models/business-appointment-settings.md) | Optional | The service appointment settings, including where and how the service is provided. |
| `support_seller_level_writes` | `Boolean` | Optional | Indicates whether the seller's subscription to Square Appointments supports creating, updating or canceling an appointment through the API (`true`) or not (`false`) using seller permission. |

## Example (as JSON)

```json
{
  "seller_id": null,
  "created_at": null,
  "booking_enabled": null,
  "customer_timezone_choice": null,
  "booking_policy": null,
  "allow_user_cancel": null,
  "business_appointment_settings": null,
  "support_seller_level_writes": null
}
```

