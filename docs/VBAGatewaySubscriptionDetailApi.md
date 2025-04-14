# Vba::VBAGatewaySubscriptionDetailApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_gateway_subscription_detail**](VBAGatewaySubscriptionDetailApi.md#create_vba_gateway_subscription_detail) | **POST** /vbagateway-subscription-details | Create VBAGatewaySubscriptionDetail |
| [**delete_vba_gateway_subscription_detail**](VBAGatewaySubscriptionDetailApi.md#delete_vba_gateway_subscription_detail) | **DELETE** /vbagateway-subscription-details/{VBAGatewaySubscriptionDetail_Key} | Delete VBAGatewaySubscriptionDetail |
| [**get_vba_gateway_subscription_detail**](VBAGatewaySubscriptionDetailApi.md#get_vba_gateway_subscription_detail) | **GET** /vbagateway-subscription-details/{VBAGatewaySubscriptionDetail_Key} | Get VBAGatewaySubscriptionDetail |
| [**list_vba_gateway_subscription_detail**](VBAGatewaySubscriptionDetailApi.md#list_vba_gateway_subscription_detail) | **GET** /vbagateway-subscription-details | List VBAGatewaySubscriptionDetail |
| [**update_batch_vba_gateway_subscription_detail**](VBAGatewaySubscriptionDetailApi.md#update_batch_vba_gateway_subscription_detail) | **PUT** /vbagateway-subscription-details-batch | Create or Update Batch VBAGatewaySubscriptionDetail |
| [**update_vba_gateway_subscription_detail**](VBAGatewaySubscriptionDetailApi.md#update_vba_gateway_subscription_detail) | **PUT** /vbagateway-subscription-details/{VBAGatewaySubscriptionDetail_Key} | Update VBAGatewaySubscriptionDetail |


## create_vba_gateway_subscription_detail

> <VBAGatewaySubscriptionDetailVBAResponse> create_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail)

Create VBAGatewaySubscriptionDetail

Creates a new VBAGatewaySubscriptionDetail

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

api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_detail = Vba::VBAGatewaySubscriptionDetail.new({vba_gateway_subscription_detail_key: 37, vba_gateway_subscription_key: 37}) # VBAGatewaySubscriptionDetail | 

begin
  # Create VBAGatewaySubscriptionDetail
  result = api_instance.create_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->create_vba_gateway_subscription_detail: #{e}"
end
```

#### Using the create_vba_gateway_subscription_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionDetailVBAResponse>, Integer, Hash)> create_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail)

```ruby
begin
  # Create VBAGatewaySubscriptionDetail
  data, status_code, headers = api_instance.create_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->create_vba_gateway_subscription_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_detail** | [**VBAGatewaySubscriptionDetail**](VBAGatewaySubscriptionDetail.md) |  |  |

### Return type

[**VBAGatewaySubscriptionDetailVBAResponse**](VBAGatewaySubscriptionDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_gateway_subscription_detail

> delete_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail_key)

Delete VBAGatewaySubscriptionDetail

Deletes an VBAGatewaySubscriptionDetail

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

api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_detail_key = 56 # Integer | VBAGatewaySubscriptionDetail Key

begin
  # Delete VBAGatewaySubscriptionDetail
  api_instance.delete_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->delete_vba_gateway_subscription_detail: #{e}"
end
```

#### Using the delete_vba_gateway_subscription_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail_key)

```ruby
begin
  # Delete VBAGatewaySubscriptionDetail
  data, status_code, headers = api_instance.delete_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->delete_vba_gateway_subscription_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_detail_key** | **Integer** | VBAGatewaySubscriptionDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_gateway_subscription_detail

> <VBAGatewaySubscriptionDetailVBAResponse> get_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail_key)

Get VBAGatewaySubscriptionDetail

Gets VBAGatewaySubscriptionDetail

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

api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_detail_key = 56 # Integer | VBAGatewaySubscriptionDetail Key

begin
  # Get VBAGatewaySubscriptionDetail
  result = api_instance.get_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->get_vba_gateway_subscription_detail: #{e}"
end
```

#### Using the get_vba_gateway_subscription_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionDetailVBAResponse>, Integer, Hash)> get_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail_key)

```ruby
begin
  # Get VBAGatewaySubscriptionDetail
  data, status_code, headers = api_instance.get_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->get_vba_gateway_subscription_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_detail_key** | **Integer** | VBAGatewaySubscriptionDetail Key |  |

### Return type

[**VBAGatewaySubscriptionDetailVBAResponse**](VBAGatewaySubscriptionDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_gateway_subscription_detail

> <VBAGatewaySubscriptionDetailListVBAResponse> list_vba_gateway_subscription_detail(vbasoftware_database, opts)

List VBAGatewaySubscriptionDetail

Lists all VBAGatewaySubscriptionDetail

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

api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List VBAGatewaySubscriptionDetail
  result = api_instance.list_vba_gateway_subscription_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->list_vba_gateway_subscription_detail: #{e}"
end
```

#### Using the list_vba_gateway_subscription_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionDetailListVBAResponse>, Integer, Hash)> list_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List VBAGatewaySubscriptionDetail
  data, status_code, headers = api_instance.list_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->list_vba_gateway_subscription_detail_with_http_info: #{e}"
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

[**VBAGatewaySubscriptionDetailListVBAResponse**](VBAGatewaySubscriptionDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_gateway_subscription_detail

> <MultiCodeResponseListVBAResponse> update_batch_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail)

Create or Update Batch VBAGatewaySubscriptionDetail

Create or Update multiple VBAGatewaySubscriptionDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_detail = [Vba::VBAGatewaySubscriptionDetail.new({vba_gateway_subscription_detail_key: 37, vba_gateway_subscription_key: 37})] # Array<VBAGatewaySubscriptionDetail> | 

begin
  # Create or Update Batch VBAGatewaySubscriptionDetail
  result = api_instance.update_batch_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->update_batch_vba_gateway_subscription_detail: #{e}"
end
```

#### Using the update_batch_vba_gateway_subscription_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail)

```ruby
begin
  # Create or Update Batch VBAGatewaySubscriptionDetail
  data, status_code, headers = api_instance.update_batch_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->update_batch_vba_gateway_subscription_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_detail** | [**Array&lt;VBAGatewaySubscriptionDetail&gt;**](VBAGatewaySubscriptionDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_gateway_subscription_detail

> <VBAGatewaySubscriptionDetailVBAResponse> update_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail_key, vba_gateway_subscription_detail)

Update VBAGatewaySubscriptionDetail

Updates a specific VBAGatewaySubscriptionDetail.

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

api_instance = Vba::VBAGatewaySubscriptionDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_gateway_subscription_detail_key = 56 # Integer | VBAGatewaySubscriptionDetail Key
vba_gateway_subscription_detail = Vba::VBAGatewaySubscriptionDetail.new({vba_gateway_subscription_detail_key: 37, vba_gateway_subscription_key: 37}) # VBAGatewaySubscriptionDetail | 

begin
  # Update VBAGatewaySubscriptionDetail
  result = api_instance.update_vba_gateway_subscription_detail(vbasoftware_database, vba_gateway_subscription_detail_key, vba_gateway_subscription_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->update_vba_gateway_subscription_detail: #{e}"
end
```

#### Using the update_vba_gateway_subscription_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAGatewaySubscriptionDetailVBAResponse>, Integer, Hash)> update_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail_key, vba_gateway_subscription_detail)

```ruby
begin
  # Update VBAGatewaySubscriptionDetail
  data, status_code, headers = api_instance.update_vba_gateway_subscription_detail_with_http_info(vbasoftware_database, vba_gateway_subscription_detail_key, vba_gateway_subscription_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAGatewaySubscriptionDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAGatewaySubscriptionDetailApi->update_vba_gateway_subscription_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_gateway_subscription_detail_key** | **Integer** | VBAGatewaySubscriptionDetail Key |  |
| **vba_gateway_subscription_detail** | [**VBAGatewaySubscriptionDetail**](VBAGatewaySubscriptionDetail.md) |  |  |

### Return type

[**VBAGatewaySubscriptionDetailVBAResponse**](VBAGatewaySubscriptionDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

