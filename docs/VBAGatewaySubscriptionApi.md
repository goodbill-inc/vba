# Vba::VBAGatewaySubscriptionApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_gateway_subscription**](VBAGatewaySubscriptionApi.md#create_vba_gateway_subscription) | **POST** /vbagateway-subscriptions | Create VBAGatewaySubscription |
| [**delete_vba_gateway_subscription**](VBAGatewaySubscriptionApi.md#delete_vba_gateway_subscription) | **DELETE** /vbagateway-subscriptions/{VBAGatewaySubscription_Key} | Delete VBAGatewaySubscription |
| [**get_vba_gateway_subscription**](VBAGatewaySubscriptionApi.md#get_vba_gateway_subscription) | **GET** /vbagateway-subscriptions/{VBAGatewaySubscription_Key} | Get VBAGatewaySubscription |
| [**list_vba_gateway_subscription**](VBAGatewaySubscriptionApi.md#list_vba_gateway_subscription) | **GET** /vbagateway-subscriptions | List VBAGatewaySubscription |
| [**update_batch_vba_gateway_subscription**](VBAGatewaySubscriptionApi.md#update_batch_vba_gateway_subscription) | **PUT** /vbagateway-subscriptions-batch | Create or Update Batch VBAGatewaySubscription |
| [**update_vba_gateway_subscription**](VBAGatewaySubscriptionApi.md#update_vba_gateway_subscription) | **PUT** /vbagateway-subscriptions/{VBAGatewaySubscription_Key} | Update VBAGatewaySubscription |


## create_vba_gateway_subscription

> <VBAGatewaySubscriptionVBAResponse> create_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription)

Create VBAGatewaySubscription

Creates a new VBAGatewaySubscription

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

api_instance = Vba::VBAGatewaySubscriptionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription = Vba::VBAGatewaySubscription.new({vba_gateway_subscription_key: 37, auto_process: false, notify_me: false}) # VBAGatewaySubscription | 

begin
  # Create VBAGatewaySubscription
  result = api_instance.create_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->create_vba_gateway_subscription: #{e}"
end
```

#### Using the create_vba_gateway_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionVBAResponse>, Integer, Hash)> create_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription)

```ruby
begin
  # Create VBAGatewaySubscription
  data, status_code, headers = api_instance.create_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->create_vba_gateway_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription** | [**VBAGatewaySubscription**](VBAGatewaySubscription.md) |  |  |

### Return type

[**VBAGatewaySubscriptionVBAResponse**](VBAGatewaySubscriptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_gateway_subscription

> delete_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key)

Delete VBAGatewaySubscription

Deletes an VBAGatewaySubscription

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

api_instance = Vba::VBAGatewaySubscriptionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_key = 56 # Integer | VBAGatewaySubscription Key

begin
  # Delete VBAGatewaySubscription
  api_instance.delete_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key)
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->delete_vba_gateway_subscription: #{e}"
end
```

#### Using the delete_vba_gateway_subscription_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key)

```ruby
begin
  # Delete VBAGatewaySubscription
  data, status_code, headers = api_instance.delete_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->delete_vba_gateway_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_key** | **Integer** | VBAGatewaySubscription Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_gateway_subscription

> <VBAGatewaySubscriptionVBAResponse> get_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key)

Get VBAGatewaySubscription

Gets VBAGatewaySubscription

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

api_instance = Vba::VBAGatewaySubscriptionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_key = 56 # Integer | VBAGatewaySubscription Key

begin
  # Get VBAGatewaySubscription
  result = api_instance.get_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->get_vba_gateway_subscription: #{e}"
end
```

#### Using the get_vba_gateway_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionVBAResponse>, Integer, Hash)> get_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key)

```ruby
begin
  # Get VBAGatewaySubscription
  data, status_code, headers = api_instance.get_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->get_vba_gateway_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_key** | **Integer** | VBAGatewaySubscription Key |  |

### Return type

[**VBAGatewaySubscriptionVBAResponse**](VBAGatewaySubscriptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_gateway_subscription

> <VBAGatewaySubscriptionListVBAResponse> list_vba_gateway_subscription(vbasoftware_database, opts)

List VBAGatewaySubscription

Lists all VBAGatewaySubscription

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

api_instance = Vba::VBAGatewaySubscriptionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List VBAGatewaySubscription
  result = api_instance.list_vba_gateway_subscription(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->list_vba_gateway_subscription: #{e}"
end
```

#### Using the list_vba_gateway_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionListVBAResponse>, Integer, Hash)> list_vba_gateway_subscription_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List VBAGatewaySubscription
  data, status_code, headers = api_instance.list_vba_gateway_subscription_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->list_vba_gateway_subscription_with_http_info: #{e}"
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

[**VBAGatewaySubscriptionListVBAResponse**](VBAGatewaySubscriptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_gateway_subscription

> <MultiCodeResponseListVBAResponse> update_batch_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription)

Create or Update Batch VBAGatewaySubscription

Create or Update multiple VBAGatewaySubscription at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAGatewaySubscriptionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription = [Vba::VBAGatewaySubscription.new({vba_gateway_subscription_key: 37, auto_process: false, notify_me: false})] # Array<VBAGatewaySubscription> | 

begin
  # Create or Update Batch VBAGatewaySubscription
  result = api_instance.update_batch_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->update_batch_vba_gateway_subscription: #{e}"
end
```

#### Using the update_batch_vba_gateway_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription)

```ruby
begin
  # Create or Update Batch VBAGatewaySubscription
  data, status_code, headers = api_instance.update_batch_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->update_batch_vba_gateway_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription** | [**Array&lt;VBAGatewaySubscription&gt;**](VBAGatewaySubscription.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_gateway_subscription

> <VBAGatewaySubscriptionVBAResponse> update_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription)

Update VBAGatewaySubscription

Updates a specific VBAGatewaySubscription.

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

api_instance = Vba::VBAGatewaySubscriptionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_key = 56 # Integer | VBAGatewaySubscription Key
vba_gateway_subscription = Vba::VBAGatewaySubscription.new({vba_gateway_subscription_key: 37, auto_process: false, notify_me: false}) # VBAGatewaySubscription | 

begin
  # Update VBAGatewaySubscription
  result = api_instance.update_vba_gateway_subscription(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->update_vba_gateway_subscription: #{e}"
end
```

#### Using the update_vba_gateway_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionVBAResponse>, Integer, Hash)> update_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription)

```ruby
begin
  # Update VBAGatewaySubscription
  data, status_code, headers = api_instance.update_vba_gateway_subscription_with_http_info(vbasoftware_database, vba_gateway_subscription_key, vba_gateway_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionApi->update_vba_gateway_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_key** | **Integer** | VBAGatewaySubscription Key |  |
| **vba_gateway_subscription** | [**VBAGatewaySubscription**](VBAGatewaySubscription.md) |  |  |

### Return type

[**VBAGatewaySubscriptionVBAResponse**](VBAGatewaySubscriptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

