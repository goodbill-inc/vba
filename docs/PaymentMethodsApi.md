# Vba::PaymentMethodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_method**](PaymentMethodsApi.md#create_payment_method) | **POST** /payment-methods | Create PaymentMethod |
| [**delete_payment_method**](PaymentMethodsApi.md#delete_payment_method) | **DELETE** /payment-methods/{Payment_Method} | Delete PaymentMethod |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /payment-methods/{Payment_Method} | Get PaymentMethod |
| [**list_payment_method**](PaymentMethodsApi.md#list_payment_method) | **GET** /payment-methods | List PaymentMethod |
| [**list_payment_method_by_subscriber**](PaymentMethodsApi.md#list_payment_method_by_subscriber) | **GET** /payment-methods-by-subscriber/{subscriberId} | List Payment Methods by Subscriber |
| [**update_batch_payment_method**](PaymentMethodsApi.md#update_batch_payment_method) | **PUT** /payment-methods-batch | Create or Update Batch PaymentMethod |
| [**update_payment_method**](PaymentMethodsApi.md#update_payment_method) | **PUT** /payment-methods/{Payment_Method} | Update PaymentMethod |


## create_payment_method

> <PaymentMethodVBAResponse> create_payment_method(vbasoftware_database, payment_method)

Create PaymentMethod

Creates a new PaymentMethod

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_method = Vba::PaymentMethod.new({payment_method: 'payment_method_example', payment_method_ach: false, payment_method_check: false}) # PaymentMethod | 

begin
  # Create PaymentMethod
  result = api_instance.create_payment_method(vbasoftware_database, payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method: #{e}"
end
```

#### Using the create_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodVBAResponse>, Integer, Hash)> create_payment_method_with_http_info(vbasoftware_database, payment_method)

```ruby
begin
  # Create PaymentMethod
  data, status_code, headers = api_instance.create_payment_method_with_http_info(vbasoftware_database, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->create_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_method** | [**PaymentMethod**](PaymentMethod.md) |  |  |

### Return type

[**PaymentMethodVBAResponse**](PaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payment_method

> delete_payment_method(vbasoftware_database, payment_method)

Delete PaymentMethod

Deletes an PaymentMethod

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_method = 'payment_method_example' # String | Payment Method

begin
  # Delete PaymentMethod
  api_instance.delete_payment_method(vbasoftware_database, payment_method)
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method: #{e}"
end
```

#### Using the delete_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_method_with_http_info(vbasoftware_database, payment_method)

```ruby
begin
  # Delete PaymentMethod
  data, status_code, headers = api_instance.delete_payment_method_with_http_info(vbasoftware_database, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_method** | **String** | Payment Method |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payment_method

> <PaymentMethodVBAResponse> get_payment_method(vbasoftware_database, payment_method)

Get PaymentMethod

Gets PaymentMethod

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_method = 'payment_method_example' # String | Payment Method

begin
  # Get PaymentMethod
  result = api_instance.get_payment_method(vbasoftware_database, payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodVBAResponse>, Integer, Hash)> get_payment_method_with_http_info(vbasoftware_database, payment_method)

```ruby
begin
  # Get PaymentMethod
  data, status_code, headers = api_instance.get_payment_method_with_http_info(vbasoftware_database, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_method** | **String** | Payment Method |  |

### Return type

[**PaymentMethodVBAResponse**](PaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payment_method

> <PaymentMethodListVBAResponse> list_payment_method(vbasoftware_database, opts)

List PaymentMethod

Lists all PaymentMethod

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List PaymentMethod
  result = api_instance.list_payment_method(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_method: #{e}"
end
```

#### Using the list_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodListVBAResponse>, Integer, Hash)> list_payment_method_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PaymentMethod
  data, status_code, headers = api_instance.list_payment_method_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**PaymentMethodListVBAResponse**](PaymentMethodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payment_method_by_subscriber

> <PaymentMethodListVBAResponse> list_payment_method_by_subscriber(vbasoftware_database, subscriber_id)

List Payment Methods by Subscriber

Based on the submitted Subscriber ID, list Payment Methods for that Subscribers latest enrollment and Billing Cycle.

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # List Payment Methods by Subscriber
  result = api_instance.list_payment_method_by_subscriber(vbasoftware_database, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_method_by_subscriber: #{e}"
end
```

#### Using the list_payment_method_by_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodListVBAResponse>, Integer, Hash)> list_payment_method_by_subscriber_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # List Payment Methods by Subscriber
  data, status_code, headers = api_instance.list_payment_method_by_subscriber_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->list_payment_method_by_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**PaymentMethodListVBAResponse**](PaymentMethodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payment_method

> <MultiCodeResponseListVBAResponse> update_batch_payment_method(vbasoftware_database, payment_method)

Create or Update Batch PaymentMethod

Create or Update multiple PaymentMethod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_method = [Vba::PaymentMethod.new({payment_method: 'payment_method_example', payment_method_ach: false, payment_method_check: false})] # Array<PaymentMethod> | 

begin
  # Create or Update Batch PaymentMethod
  result = api_instance.update_batch_payment_method(vbasoftware_database, payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_batch_payment_method: #{e}"
end
```

#### Using the update_batch_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payment_method_with_http_info(vbasoftware_database, payment_method)

```ruby
begin
  # Create or Update Batch PaymentMethod
  data, status_code, headers = api_instance.update_batch_payment_method_with_http_info(vbasoftware_database, payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_batch_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_method** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payment_method

> <PaymentMethodVBAResponse> update_payment_method(vbasoftware_database, payment_method, payment_method2)

Update PaymentMethod

Updates a specific PaymentMethod.

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

api_instance = Vba::PaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payment_method = 'payment_method_example' # String | Payment Method
payment_method2 = Vba::PaymentMethod.new({payment_method: 'payment_method_example', payment_method_ach: false, payment_method_check: false}) # PaymentMethod | 

begin
  # Update PaymentMethod
  result = api_instance.update_payment_method(vbasoftware_database, payment_method, payment_method2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

#### Using the update_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethodVBAResponse>, Integer, Hash)> update_payment_method_with_http_info(vbasoftware_database, payment_method, payment_method2)

```ruby
begin
  # Update PaymentMethod
  data, status_code, headers = api_instance.update_payment_method_with_http_info(vbasoftware_database, payment_method, payment_method2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payment_method** | **String** | Payment Method |  |
| **payment_method2** | [**PaymentMethod**](PaymentMethod.md) |  |  |

### Return type

[**PaymentMethodVBAResponse**](PaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

