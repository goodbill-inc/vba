# Vba::SubscriberPaymentMethodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sub_payment_method**](SubscriberPaymentMethodsApi.md#create_sub_payment_method) | **POST** /subscribers/{subscriberID}/payment-methods | Create SubPaymentMethod |
| [**delete_sub_payment_method**](SubscriberPaymentMethodsApi.md#delete_sub_payment_method) | **DELETE** /subscribers/{subscriberID}/payment-methods/{subPaymentMethodKey} | Delete SubPaymentMethod |
| [**get_sub_payment_method**](SubscriberPaymentMethodsApi.md#get_sub_payment_method) | **GET** /subscribers/{subscriberID}/payment-methods/{subPaymentMethodKey} | Get SubPaymentMethod |
| [**list_sub_payment_method**](SubscriberPaymentMethodsApi.md#list_sub_payment_method) | **GET** /subscribers/{subscriberID}/payment-methods | List SubPaymentMethod |
| [**update_batch_sub_payment_method**](SubscriberPaymentMethodsApi.md#update_batch_sub_payment_method) | **PUT** /subscribers/{subscriberID}/payment-methods-batch | Create or Update Batch SubPaymentMethod |
| [**update_sub_payment_method**](SubscriberPaymentMethodsApi.md#update_sub_payment_method) | **PUT** /subscribers/{subscriberID}/payment-methods/{subPaymentMethodKey} | Update SubPaymentMethod |


## create_sub_payment_method

> <SubPaymentMethodVBAResponse> create_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method)

Create SubPaymentMethod

Creates a new SubPaymentMethod

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

api_instance = Vba::SubscriberPaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_payment_method = Vba::SubPaymentMethod.new({sub_payment_method_key: 37, effective_date: Time.now, payment_method: 'payment_method_example', subscriber_id: 'subscriber_id_example'}) # SubPaymentMethod | 

begin
  # Create SubPaymentMethod
  result = api_instance.create_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->create_sub_payment_method: #{e}"
end
```

#### Using the create_sub_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubPaymentMethodVBAResponse>, Integer, Hash)> create_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method)

```ruby
begin
  # Create SubPaymentMethod
  data, status_code, headers = api_instance.create_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubPaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->create_sub_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_payment_method** | [**SubPaymentMethod**](SubPaymentMethod.md) |  |  |

### Return type

[**SubPaymentMethodVBAResponse**](SubPaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_sub_payment_method

> delete_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method_key)

Delete SubPaymentMethod

Deletes an SubPaymentMethod

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

api_instance = Vba::SubscriberPaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_payment_method_key = 56 # Integer | Sub Payment Method Key

begin
  # Delete SubPaymentMethod
  api_instance.delete_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method_key)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->delete_sub_payment_method: #{e}"
end
```

#### Using the delete_sub_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method_key)

```ruby
begin
  # Delete SubPaymentMethod
  data, status_code, headers = api_instance.delete_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->delete_sub_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_payment_method_key** | **Integer** | Sub Payment Method Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_sub_payment_method

> <SubPaymentMethodVBAResponse> get_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method_key)

Get SubPaymentMethod

Gets SubPaymentMethod

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

api_instance = Vba::SubscriberPaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_payment_method_key = 56 # Integer | Sub Payment Method Key

begin
  # Get SubPaymentMethod
  result = api_instance.get_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->get_sub_payment_method: #{e}"
end
```

#### Using the get_sub_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubPaymentMethodVBAResponse>, Integer, Hash)> get_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method_key)

```ruby
begin
  # Get SubPaymentMethod
  data, status_code, headers = api_instance.get_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubPaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->get_sub_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_payment_method_key** | **Integer** | Sub Payment Method Key |  |

### Return type

[**SubPaymentMethodVBAResponse**](SubPaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_sub_payment_method

> <SubPaymentMethodListVBAResponse> list_sub_payment_method(vbasoftware_database, subscriber_id, opts)

List SubPaymentMethod

Lists all SubPaymentMethod for the given subscriberID

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

api_instance = Vba::SubscriberPaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubPaymentMethod
  result = api_instance.list_sub_payment_method(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->list_sub_payment_method: #{e}"
end
```

#### Using the list_sub_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubPaymentMethodListVBAResponse>, Integer, Hash)> list_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List SubPaymentMethod
  data, status_code, headers = api_instance.list_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubPaymentMethodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->list_sub_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubPaymentMethodListVBAResponse**](SubPaymentMethodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_sub_payment_method

> <MultiCodeResponseListVBAResponse> update_batch_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method)

Create or Update Batch SubPaymentMethod

Create or Update multiple SubPaymentMethod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberPaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_payment_method = [Vba::SubPaymentMethod.new({sub_payment_method_key: 37, effective_date: Time.now, payment_method: 'payment_method_example', subscriber_id: 'subscriber_id_example'})] # Array<SubPaymentMethod> | 

begin
  # Create or Update Batch SubPaymentMethod
  result = api_instance.update_batch_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->update_batch_sub_payment_method: #{e}"
end
```

#### Using the update_batch_sub_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method)

```ruby
begin
  # Create or Update Batch SubPaymentMethod
  data, status_code, headers = api_instance.update_batch_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->update_batch_sub_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_payment_method** | [**Array&lt;SubPaymentMethod&gt;**](SubPaymentMethod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_sub_payment_method

> <SubPaymentMethodVBAResponse> update_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method_key, sub_payment_method)

Update SubPaymentMethod

Updates a specific SubPaymentMethod.

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

api_instance = Vba::SubscriberPaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
sub_payment_method_key = 56 # Integer | Sub Payment Method Key
sub_payment_method = Vba::SubPaymentMethod.new({sub_payment_method_key: 37, effective_date: Time.now, payment_method: 'payment_method_example', subscriber_id: 'subscriber_id_example'}) # SubPaymentMethod | 

begin
  # Update SubPaymentMethod
  result = api_instance.update_sub_payment_method(vbasoftware_database, subscriber_id, sub_payment_method_key, sub_payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->update_sub_payment_method: #{e}"
end
```

#### Using the update_sub_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubPaymentMethodVBAResponse>, Integer, Hash)> update_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method_key, sub_payment_method)

```ruby
begin
  # Update SubPaymentMethod
  data, status_code, headers = api_instance.update_sub_payment_method_with_http_info(vbasoftware_database, subscriber_id, sub_payment_method_key, sub_payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubPaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberPaymentMethodsApi->update_sub_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sub_payment_method_key** | **Integer** | Sub Payment Method Key |  |
| **sub_payment_method** | [**SubPaymentMethod**](SubPaymentMethod.md) |  |  |

### Return type

[**SubPaymentMethodVBAResponse**](SubPaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

