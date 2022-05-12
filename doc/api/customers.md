# Customers

```ruby
customers_api = client.customers
```

## Class Name

`CustomersApi`

## Methods

* [List Customers](../../doc/api/customers.md#list-customers)
* [Create Customer](../../doc/api/customers.md#create-customer)
* [Search Customers](../../doc/api/customers.md#search-customers)
* [Delete Customer](../../doc/api/customers.md#delete-customer)
* [Retrieve Customer](../../doc/api/customers.md#retrieve-customer)
* [Update Customer](../../doc/api/customers.md#update-customer)
* [Create Customer Card](../../doc/api/customers.md#create-customer-card)
* [Delete Customer Card](../../doc/api/customers.md#delete-customer-card)
* [Remove Group From Customer](../../doc/api/customers.md#remove-group-from-customer)
* [Add Group to Customer](../../doc/api/customers.md#add-group-to-customer)


# List Customers

Lists customer profiles associated with a Square account.

Under normal operating conditions, newly created or updated customer profiles become available
for the listing operation in well under 30 seconds. Occasionally, propagation of the new or updated
profiles can take closer to one minute or longer, especially during network incidents and outages.

```ruby
def list_customers(cursor: nil,
                   limit: nil,
                   sort_field: nil,
                   sort_order: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cursor` | `String` | Query, Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for your original query.<br><br>For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). |
| `limit` | `Integer` | Query, Optional | The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results.<br>If the specified limit is less than 1 or greater than 100, Square returns a `400 VALUE_TOO_LOW` or `400 VALUE_TOO_HIGH` error. The default value is 100.<br><br>For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). |
| `sort_field` | [`String (Customer Sort Field)`](../../doc/models/customer-sort-field.md) | Query, Optional | Indicates how customers should be sorted.<br><br>The default value is `DEFAULT`. |
| `sort_order` | [`String (Sort Order)`](../../doc/models/sort-order.md) | Query, Optional | Indicates whether customers should be sorted in ascending (`ASC`) or<br>descending (`DESC`) order.<br><br>The default value is `ASC`. |

## Response Type

[`List Customers Response Hash`](../../doc/models/list-customers-response.md)

## Example Usage

```ruby
result = customers_api.list_customers()

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Customer

Creates a new customer for a business.

You must provide at least one of the following values in your request to this
endpoint:

- `given_name`
- `family_name`
- `company_name`
- `email_address`
- `phone_number`

```ruby
def create_customer(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Create Customer Request Hash`](../../doc/models/create-customer-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Customer Response Hash`](../../doc/models/create-customer-response.md)

## Example Usage

```ruby
body = {}
body[:given_name] = 'Amelia'
body[:family_name] = 'Earhart'
body[:email_address] = 'Amelia.Earhart@example.com'
body[:address] = {}
body[:address][:address_line_1] = '500 Electric Ave'
body[:address][:address_line_2] = 'Suite 600'
body[:address][:locality] = 'New York'
body[:address][:administrative_district_level_1] = 'NY'
body[:address][:postal_code] = '10003'
body[:address][:country] = 'US'
body[:phone_number] = '1-212-555-4240'
body[:reference_id] = 'YOUR_REFERENCE_ID'
body[:note] = 'a customer'

result = customers_api.create_customer(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Search Customers

Searches the customer profiles associated with a Square account using a supported query filter.

Calling `SearchCustomers` without any explicit query filter returns all
customer profiles ordered alphabetically based on `given_name` and
`family_name`.

Under normal operating conditions, newly created or updated customer profiles become available
for the search operation in well under 30 seconds. Occasionally, propagation of the new or updated
profiles can take closer to one minute or longer, especially during network incidents and outages.

```ruby
def search_customers(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Search Customers Request Hash`](../../doc/models/search-customers-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Search Customers Response Hash`](../../doc/models/search-customers-response.md)

## Example Usage

```ruby
body = {}
body[:limit] = 2
body[:query] = {}
body[:query][:filter] = {}
body[:query][:filter][:creation_source] = {}
body[:query][:filter][:creation_source][:values] = ['THIRD_PARTY']
body[:query][:filter][:creation_source][:rule] = 'INCLUDE'
body[:query][:filter][:created_at] = {}
body[:query][:filter][:created_at][:start_at] = '2018-01-01T00:00:00-00:00'
body[:query][:filter][:created_at][:end_at] = '2018-02-01T00:00:00-00:00'
body[:query][:filter][:email_address] = {}
body[:query][:filter][:email_address][:fuzzy] = 'example.com'
body[:query][:filter][:group_ids] = {}
body[:query][:filter][:group_ids][:all] = ['545AXB44B4XXWMVQ4W8SBT3HHF']
body[:query][:sort] = {}
body[:query][:sort][:field] = 'CREATED_AT'
body[:query][:sort][:order] = 'ASC'

result = customers_api.search_customers(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Customer

Deletes a customer profile from a business. This operation also unlinks any associated cards on file.

As a best practice, you should include the `version` field in the request to enable [optimistic concurrency](https://developer.squareup.com/docs/working-with-apis/optimistic-concurrency) control. The value must be set to the current version of the customer profile.

To delete a customer profile that was created by merging existing profiles, you must use the ID of the newly created profile.

```ruby
def delete_customer(customer_id:,
                    version: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The ID of the customer to delete. |
| `version` | `Long` | Query, Optional | The current version of the customer profile.<br><br>As a best practice, you should include this parameter to enable [optimistic concurrency](https://developer.squareup.com/docs/build-basics/common-api-patterns/optimistic-concurrency) control.  For more information, see [Delete a customer profile](https://developer.squareup.com/docs/customers-api/use-the-api/keep-records#delete-customer-profile). |

## Response Type

[`Delete Customer Response Hash`](../../doc/models/delete-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_api.delete_customer(customer_id: customer_id, )

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Retrieve Customer

Returns details for a single customer.

```ruby
def retrieve_customer(customer_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The ID of the customer to retrieve. |

## Response Type

[`Retrieve Customer Response Hash`](../../doc/models/retrieve-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'

result = customers_api.retrieve_customer(customer_id: customer_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Customer

Updates a customer profile. To change an attribute, specify the new value. To remove an attribute, specify the value as an empty string or empty object.

As a best practice, you should include the `version` field in the request to enable [optimistic concurrency](https://developer.squareup.com/docs/working-with-apis/optimistic-concurrency) control. The value must be set to the current version of the customer profile.

To update a customer profile that was created by merging existing profiles, you must use the ID of the newly created profile.

You cannot use this endpoint to change cards on file. To make changes, use the [Cards API](../../doc/api/cards.md) or [Gift Cards API](../../doc/api/gift-cards.md).

```ruby
def update_customer(customer_id:,
                    body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The ID of the customer to update. |
| `body` | [`Update Customer Request Hash`](../../doc/models/update-customer-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Update Customer Response Hash`](../../doc/models/update-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'
body = {}
body[:email_address] = 'New.Amelia.Earhart@example.com'
body[:phone_number] = ''
body[:note] = 'updated customer note'
body[:version] = 2

result = customers_api.update_customer(customer_id: customer_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Customer Card

**This endpoint is deprecated.**

Adds a card on file to an existing customer.

As with charges, calls to `CreateCustomerCard` are idempotent. Multiple
calls with the same card nonce return the same card record that was created
with the provided nonce during the _first_ call.

```ruby
def create_customer_card(customer_id:,
                         body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The Square ID of the customer profile the card is linked to. |
| `body` | [`Create Customer Card Request Hash`](../../doc/models/create-customer-card-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

[`Create Customer Card Response Hash`](../../doc/models/create-customer-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'
body = {}
body[:card_nonce] = 'YOUR_CARD_NONCE'
body[:billing_address] = {}
body[:billing_address][:address_line_1] = '500 Electric Ave'
body[:billing_address][:address_line_2] = 'Suite 600'
body[:billing_address][:locality] = 'New York'
body[:billing_address][:administrative_district_level_1] = 'NY'
body[:billing_address][:postal_code] = '10003'
body[:billing_address][:country] = 'US'
body[:cardholder_name] = 'Amelia Earhart'

result = customers_api.create_customer_card(customer_id: customer_id, body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Customer Card

**This endpoint is deprecated.**

Removes a card on file from a customer.

```ruby
def delete_customer_card(customer_id:,
                         card_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The ID of the customer that the card on file belongs to. |
| `card_id` | `String` | Template, Required | The ID of the card on file to delete. |

## Response Type

[`Delete Customer Card Response Hash`](../../doc/models/delete-customer-card-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'
card_id = 'card_id4'

result = customers_api.delete_customer_card(customer_id: customer_id, card_id: card_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Remove Group From Customer

Removes a group membership from a customer.

The customer is identified by the `customer_id` value
and the customer group is identified by the `group_id` value.

```ruby
def remove_group_from_customer(customer_id:,
                               group_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The ID of the customer to remove from the group. |
| `group_id` | `String` | Template, Required | The ID of the customer group to remove the customer from. |

## Response Type

[`Remove Group From Customer Response Hash`](../../doc/models/remove-group-from-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'
group_id = 'group_id0'

result = customers_api.remove_group_from_customer(customer_id: customer_id, group_id: group_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Add Group to Customer

Adds a group membership to a customer.

The customer is identified by the `customer_id` value
and the customer group is identified by the `group_id` value.

```ruby
def add_group_to_customer(customer_id:,
                          group_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_id` | `String` | Template, Required | The ID of the customer to add to a group. |
| `group_id` | `String` | Template, Required | The ID of the customer group to add the customer to. |

## Response Type

[`Add Group to Customer Response Hash`](../../doc/models/add-group-to-customer-response.md)

## Example Usage

```ruby
customer_id = 'customer_id8'
group_id = 'group_id0'

result = customers_api.add_group_to_customer(customer_id: customer_id, group_id: group_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

