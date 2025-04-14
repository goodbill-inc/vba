# Vba::SubscriberFlexPaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_flex_payment**](SubscriberFlexPaymentsApi.md#create_subscriber_flex_payment) | **POST** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flex-payments | Create SubscriberFlexPayment |
| [**delete_subscriber_flex_payment**](SubscriberFlexPaymentsApi.md#delete_subscriber_flex_payment) | **DELETE** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flex-payments/{subscriberFlexPaymentKey} | Delete SubscriberFlexPayment |
| [**get_subscriber_flex_payment**](SubscriberFlexPaymentsApi.md#get_subscriber_flex_payment) | **GET** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flex-payments/{subscriberFlexPaymentKey} | Get SubscriberFlexPayment |
| [**list_subscriber_flex_payment**](SubscriberFlexPaymentsApi.md#list_subscriber_flex_payment) | **GET** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flex-payments | List SubscriberFlexPayment |
| [**update_batch_subscriber_flex_payment**](SubscriberFlexPaymentsApi.md#update_batch_subscriber_flex_payment) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flex-payments-batch | Create or Update Batch SubscriberFlexPayment |
| [**update_subscriber_flex_payment**](SubscriberFlexPaymentsApi.md#update_subscriber_flex_payment) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flex-payments/{subscriberFlexPaymentKey} | Update SubscriberFlexPayment |


## create_subscriber_flex_payment

> <SubscriberFlexPaymentVBAResponse> create_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)

Create SubscriberFlexPayment

Creates a new SubscriberFlexPayment

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

api_instance = Vba::SubscriberFlexPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex_payment = Vba::SubscriberFlexPayment.new({subscriber_flex_payment_key: 37}) # SubscriberFlexPayment | 

begin
  # Create SubscriberFlexPayment
  result = api_instance.create_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->create_subscriber_flex_payment: #{e}"
end
```

#### Using the create_subscriber_flex_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexPaymentVBAResponse>, Integer, Hash)> create_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)

```ruby
begin
  # Create SubscriberFlexPayment
  data, status_code, headers = api_instance.create_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->create_subscriber_flex_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex_payment** | [**SubscriberFlexPayment**](SubscriberFlexPayment.md) |  |  |

### Return type

[**SubscriberFlexPaymentVBAResponse**](SubscriberFlexPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_flex_payment

> delete_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)

Delete SubscriberFlexPayment

Deletes an SubscriberFlexPayment

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

api_instance = Vba::SubscriberFlexPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex_payment_key = 56 # Integer | SubscriberFlexPayment Key

begin
  # Delete SubscriberFlexPayment
  api_instance.delete_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->delete_subscriber_flex_payment: #{e}"
end
```

#### Using the delete_subscriber_flex_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)

```ruby
begin
  # Delete SubscriberFlexPayment
  data, status_code, headers = api_instance.delete_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->delete_subscriber_flex_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex_payment_key** | **Integer** | SubscriberFlexPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_flex_payment

> <SubscriberFlexPaymentVBAResponse> get_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)

Get SubscriberFlexPayment

Gets SubscriberFlexPayment

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

api_instance = Vba::SubscriberFlexPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex_payment_key = 56 # Integer | SubscriberFlexPayment Key

begin
  # Get SubscriberFlexPayment
  result = api_instance.get_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->get_subscriber_flex_payment: #{e}"
end
```

#### Using the get_subscriber_flex_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexPaymentVBAResponse>, Integer, Hash)> get_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)

```ruby
begin
  # Get SubscriberFlexPayment
  data, status_code, headers = api_instance.get_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->get_subscriber_flex_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex_payment_key** | **Integer** | SubscriberFlexPayment Key |  |

### Return type

[**SubscriberFlexPaymentVBAResponse**](SubscriberFlexPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_flex_payment

> <SubscriberFlexPaymentListVBAResponse> list_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, opts)

List SubscriberFlexPayment

Lists all SubscriberFlexPayment for the given subscriberID and groupID and planID

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

api_instance = Vba::SubscriberFlexPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberFlexPayment
  result = api_instance.list_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->list_subscriber_flex_payment: #{e}"
end
```

#### Using the list_subscriber_flex_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexPaymentListVBAResponse>, Integer, Hash)> list_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, opts)

```ruby
begin
  # List SubscriberFlexPayment
  data, status_code, headers = api_instance.list_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexPaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->list_subscriber_flex_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberFlexPaymentListVBAResponse**](SubscriberFlexPaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_flex_payment

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)

Create or Update Batch SubscriberFlexPayment

Create or Update multiple SubscriberFlexPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberFlexPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex_payment = [Vba::SubscriberFlexPayment.new({subscriber_flex_payment_key: 37})] # Array<SubscriberFlexPayment> | 

begin
  # Create or Update Batch SubscriberFlexPayment
  result = api_instance.update_batch_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->update_batch_subscriber_flex_payment: #{e}"
end
```

#### Using the update_batch_subscriber_flex_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)

```ruby
begin
  # Create or Update Batch SubscriberFlexPayment
  data, status_code, headers = api_instance.update_batch_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->update_batch_subscriber_flex_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex_payment** | [**Array&lt;SubscriberFlexPayment&gt;**](SubscriberFlexPayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_flex_payment

> <SubscriberFlexPaymentVBAResponse> update_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key, subscriber_flex_payment)

Update SubscriberFlexPayment

Updates a specific SubscriberFlexPayment.

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

api_instance = Vba::SubscriberFlexPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex_payment_key = 56 # Integer | SubscriberFlexPayment Key
subscriber_flex_payment = Vba::SubscriberFlexPayment.new({subscriber_flex_payment_key: 37}) # SubscriberFlexPayment | 

begin
  # Update SubscriberFlexPayment
  result = api_instance.update_subscriber_flex_payment(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key, subscriber_flex_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->update_subscriber_flex_payment: #{e}"
end
```

#### Using the update_subscriber_flex_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexPaymentVBAResponse>, Integer, Hash)> update_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key, subscriber_flex_payment)

```ruby
begin
  # Update SubscriberFlexPayment
  data, status_code, headers = api_instance.update_subscriber_flex_payment_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex_payment_key, subscriber_flex_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexPaymentsApi->update_subscriber_flex_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex_payment_key** | **Integer** | SubscriberFlexPayment Key |  |
| **subscriber_flex_payment** | [**SubscriberFlexPayment**](SubscriberFlexPayment.md) |  |  |

### Return type

[**SubscriberFlexPaymentVBAResponse**](SubscriberFlexPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

