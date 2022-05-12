# Transactions

```ruby
transactions_api = client.transactions
```

## Class Name

`TransactionsApi`

## Methods

* [List Transactions](../../doc/api/transactions.md#list-transactions)
* [Retrieve Transaction](../../doc/api/transactions.md#retrieve-transaction)
* [Capture Transaction](../../doc/api/transactions.md#capture-transaction)
* [Void Transaction](../../doc/api/transactions.md#void-transaction)


# List Transactions

**This endpoint is deprecated.**

Lists transactions for a particular location.

Transactions include payment information from sales and exchanges and refund
information from returns and exchanges.

Max results per [page](https://developer.squareup.com/docs/working-with-apis/pagination): 50

```ruby
def list_transactions(location_id:,
                      begin_time: nil,
                      end_time: nil,
                      sort_order: nil,
                      cursor: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Template, Required | The ID of the location to list transactions for. |
| `begin_time` | `String` | Query, Optional | The beginning of the requested reporting period, in RFC 3339 format.<br><br>See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.<br><br>Default value: The current time minus one year. |
| `end_time` | `String` | Query, Optional | The end of the requested reporting period, in RFC 3339 format.<br><br>See [Date ranges](https://developer.squareup.com/docs/build-basics/working-with-dates) for details on date inclusivity/exclusivity.<br><br>Default value: The current time. |
| `sort_order` | [`String (Sort Order)`](../../doc/models/sort-order.md) | Query, Optional | The order in which results are listed in the response (`ASC` for<br>oldest first, `DESC` for newest first).<br><br>Default value: `DESC` |
| `cursor` | `String` | Query, Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this to retrieve the next set of results for your original query.<br><br>See [Paginating results](https://developer.squareup.com/docs/working-with-apis/pagination) for more information. |

## Response Type

[`List Transactions Response Hash`](../../doc/models/list-transactions-response.md)

## Example Usage

```ruby
location_id = 'location_id4'

result = transactions_api.list_transactions(location_id: location_id, )

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Retrieve Transaction

**This endpoint is deprecated.**

Retrieves details for a single transaction.

```ruby
def retrieve_transaction(location_id:,
                         transaction_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Template, Required | The ID of the transaction's associated location. |
| `transaction_id` | `String` | Template, Required | The ID of the transaction to retrieve. |

## Response Type

[`Retrieve Transaction Response Hash`](../../doc/models/retrieve-transaction-response.md)

## Example Usage

```ruby
location_id = 'location_id4'
transaction_id = 'transaction_id8'

result = transactions_api.retrieve_transaction(location_id: location_id, transaction_id: transaction_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Capture Transaction

**This endpoint is deprecated.**

Captures a transaction that was created with the [Charge]($e/Transactions/Charge)
endpoint with a `delay_capture` value of `true`.

See [Delayed capture transactions](https://developer.squareup.com/docs/payments/transactions/overview#delayed-capture)
for more information.

```ruby
def capture_transaction(location_id:,
                        transaction_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Template, Required | - |
| `transaction_id` | `String` | Template, Required | - |

## Response Type

[`Capture Transaction Response Hash`](../../doc/models/capture-transaction-response.md)

## Example Usage

```ruby
location_id = 'location_id4'
transaction_id = 'transaction_id8'

result = transactions_api.capture_transaction(location_id: location_id, transaction_id: transaction_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Void Transaction

**This endpoint is deprecated.**

Cancels a transaction that was created with the [Charge]($e/Transactions/Charge)
endpoint with a `delay_capture` value of `true`.

See [Delayed capture transactions](https://developer.squareup.com/docs/payments/transactions/overview#delayed-capture)
for more information.

```ruby
def void_transaction(location_id:,
                     transaction_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_id` | `String` | Template, Required | - |
| `transaction_id` | `String` | Template, Required | - |

## Response Type

[`Void Transaction Response Hash`](../../doc/models/void-transaction-response.md)

## Example Usage

```ruby
location_id = 'location_id4'
transaction_id = 'transaction_id8'

result = transactions_api.void_transaction(location_id: location_id, transaction_id: transaction_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

