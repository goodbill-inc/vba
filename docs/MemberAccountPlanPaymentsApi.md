# Vba::MemberAccountPlanPaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_account_plan_payment**](MemberAccountPlanPaymentsApi.md#create_member_account_plan_payment) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments | Create MemberAccountPlanPayment |
| [**delete_member_account_plan_payment**](MemberAccountPlanPaymentsApi.md#delete_member_account_plan_payment) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments/{paymentKey} | Delete MemberAccountPlanPayment |
| [**get_member_account_plan_payment**](MemberAccountPlanPaymentsApi.md#get_member_account_plan_payment) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments/{paymentKey} | Get MemberAccountPlanPayment |
| [**list_member_account_plan_payment**](MemberAccountPlanPaymentsApi.md#list_member_account_plan_payment) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments | List MemberAccountPlanPayment |
| [**update_batch_member_account_plan_payment**](MemberAccountPlanPaymentsApi.md#update_batch_member_account_plan_payment) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments-batch | Create or Update Batch MemberAccountPlanPayment |
| [**update_member_account_plan_payment**](MemberAccountPlanPaymentsApi.md#update_member_account_plan_payment) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/accounts/{memberAccountKey}/plans/{planID}/payments/{paymentKey} | Update MemberAccountPlanPayment |


## create_member_account_plan_payment

> <MemberAccountPlanPaymentVBAResponse> create_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)

Create MemberAccountPlanPayment

Creates a new MemberAccountPlanPayment

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::MemberAccountPlanPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
member_account_plan_payment = Vba::MemberAccountPlanPayment.new({payment_key: 37, member_account_key: 37, plan_id: 'plan_id_example'}) # MemberAccountPlanPayment | 

begin
  # Create MemberAccountPlanPayment
  result = api_instance.create_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->create_member_account_plan_payment: #{e}"
end
```

#### Using the create_member_account_plan_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanPaymentVBAResponse>, Integer, Hash)> create_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)

```ruby
begin
  # Create MemberAccountPlanPayment
  data, status_code, headers = api_instance.create_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->create_member_account_plan_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **member_account_plan_payment** | [**MemberAccountPlanPayment**](MemberAccountPlanPayment.md) |  |  |

### Return type

[**MemberAccountPlanPaymentVBAResponse**](MemberAccountPlanPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_account_plan_payment

> delete_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)

Delete MemberAccountPlanPayment

Deletes an MemberAccountPlanPayment

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::MemberAccountPlanPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
payment_key = 56 # Integer | Payment Key

begin
  # Delete MemberAccountPlanPayment
  api_instance.delete_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->delete_member_account_plan_payment: #{e}"
end
```

#### Using the delete_member_account_plan_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)

```ruby
begin
  # Delete MemberAccountPlanPayment
  data, status_code, headers = api_instance.delete_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->delete_member_account_plan_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **payment_key** | **Integer** | Payment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_account_plan_payment

> <MemberAccountPlanPaymentVBAResponse> get_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)

Get MemberAccountPlanPayment

Gets MemberAccountPlanPayment

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::MemberAccountPlanPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
payment_key = 56 # Integer | Payment Key

begin
  # Get MemberAccountPlanPayment
  result = api_instance.get_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->get_member_account_plan_payment: #{e}"
end
```

#### Using the get_member_account_plan_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanPaymentVBAResponse>, Integer, Hash)> get_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)

```ruby
begin
  # Get MemberAccountPlanPayment
  data, status_code, headers = api_instance.get_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->get_member_account_plan_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **payment_key** | **Integer** | Payment Key |  |

### Return type

[**MemberAccountPlanPaymentVBAResponse**](MemberAccountPlanPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_account_plan_payment

> <MemberAccountPlanPaymentListVBAResponse> list_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts)

List MemberAccountPlanPayment

Lists all MemberAccountPlanPayment for the given memberAccountKey and planID

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::MemberAccountPlanPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberAccountPlanPayment
  result = api_instance.list_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->list_member_account_plan_payment: #{e}"
end
```

#### Using the list_member_account_plan_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanPaymentListVBAResponse>, Integer, Hash)> list_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts)

```ruby
begin
  # List MemberAccountPlanPayment
  data, status_code, headers = api_instance.list_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanPaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->list_member_account_plan_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberAccountPlanPaymentListVBAResponse**](MemberAccountPlanPaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_account_plan_payment

> <MultiCodeResponseListVBAResponse> update_batch_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)

Create or Update Batch MemberAccountPlanPayment

Create or Update multiple MemberAccountPlanPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::MemberAccountPlanPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
member_account_plan_payment = [Vba::MemberAccountPlanPayment.new({payment_key: 37, member_account_key: 37, plan_id: 'plan_id_example'})] # Array<MemberAccountPlanPayment> | 

begin
  # Create or Update Batch MemberAccountPlanPayment
  result = api_instance.update_batch_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->update_batch_member_account_plan_payment: #{e}"
end
```

#### Using the update_batch_member_account_plan_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)

```ruby
begin
  # Create or Update Batch MemberAccountPlanPayment
  data, status_code, headers = api_instance.update_batch_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, member_account_plan_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->update_batch_member_account_plan_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **member_account_plan_payment** | [**Array&lt;MemberAccountPlanPayment&gt;**](MemberAccountPlanPayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_account_plan_payment

> <MemberAccountPlanPaymentVBAResponse> update_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment)

Update MemberAccountPlanPayment

Updates a specific MemberAccountPlanPayment.

### Examples

```ruby
require 'time'
require 'vba'
# setup authorization
Vba.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['x-api-key'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Vba::MemberAccountPlanPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_account_key = 56 # Integer | MemberAccount Key
plan_id = 'plan_id_example' # String | Plan ID
payment_key = 56 # Integer | Payment Key
member_account_plan_payment = Vba::MemberAccountPlanPayment.new({payment_key: 37, member_account_key: 37, plan_id: 'plan_id_example'}) # MemberAccountPlanPayment | 

begin
  # Update MemberAccountPlanPayment
  result = api_instance.update_member_account_plan_payment(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->update_member_account_plan_payment: #{e}"
end
```

#### Using the update_member_account_plan_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAccountPlanPaymentVBAResponse>, Integer, Hash)> update_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment)

```ruby
begin
  # Update MemberAccountPlanPayment
  data, status_code, headers = api_instance.update_member_account_plan_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_account_key, plan_id, payment_key, member_account_plan_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAccountPlanPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAccountPlanPaymentsApi->update_member_account_plan_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_account_key** | **Integer** | MemberAccount Key |  |
| **plan_id** | **String** | Plan ID |  |
| **payment_key** | **Integer** | Payment Key |  |
| **member_account_plan_payment** | [**MemberAccountPlanPayment**](MemberAccountPlanPayment.md) |  |  |

### Return type

[**MemberAccountPlanPaymentVBAResponse**](MemberAccountPlanPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

