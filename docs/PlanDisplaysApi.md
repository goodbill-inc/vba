# Vba::PlanDisplaysApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_display**](PlanDisplaysApi.md#create_plan_display) | **POST** /plans/{planID}/displays | Create PlanDisplay |
| [**delete_plan_display**](PlanDisplaysApi.md#delete_plan_display) | **DELETE** /plans/{planID}/displays/{planDisplayKey} | Delete PlanDisplay |
| [**get_plan_display**](PlanDisplaysApi.md#get_plan_display) | **GET** /plans/{planID}/displays/{planDisplayKey} | Get PlanDisplay |
| [**list_plan_display**](PlanDisplaysApi.md#list_plan_display) | **GET** /plans/{planID}/displays | List PlanDisplay |
| [**update_batch_plan_display**](PlanDisplaysApi.md#update_batch_plan_display) | **PUT** /plans/{planID}/displays-batch | Create or Update Batch PlanDisplay |
| [**update_plan_display**](PlanDisplaysApi.md#update_plan_display) | **PUT** /plans/{planID}/displays/{planDisplayKey} | Update PlanDisplay |


## create_plan_display

> <PlanDisplayVBAResponse> create_plan_display(vbasoftware_database, plan_id, plan_display)

Create PlanDisplay

Creates a new PlanDisplay

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

api_instance = Vba::PlanDisplaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_display = Vba::PlanDisplay.new({plan_display_key: 37, display_type: 'display_type_example', plan_id: 'plan_id_example'}) # PlanDisplay | 

begin
  # Create PlanDisplay
  result = api_instance.create_plan_display(vbasoftware_database, plan_id, plan_display)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->create_plan_display: #{e}"
end
```

#### Using the create_plan_display_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayVBAResponse>, Integer, Hash)> create_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display)

```ruby
begin
  # Create PlanDisplay
  data, status_code, headers = api_instance.create_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->create_plan_display_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_display** | [**PlanDisplay**](PlanDisplay.md) |  |  |

### Return type

[**PlanDisplayVBAResponse**](PlanDisplayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_display

> delete_plan_display(vbasoftware_database, plan_id, plan_display_key)

Delete PlanDisplay

Deletes an PlanDisplay

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

api_instance = Vba::PlanDisplaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_display_key = 56 # Integer | PlanDisplay Key

begin
  # Delete PlanDisplay
  api_instance.delete_plan_display(vbasoftware_database, plan_id, plan_display_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->delete_plan_display: #{e}"
end
```

#### Using the delete_plan_display_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display_key)

```ruby
begin
  # Delete PlanDisplay
  data, status_code, headers = api_instance.delete_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->delete_plan_display_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_display_key** | **Integer** | PlanDisplay Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_display

> <PlanDisplayVBAResponse> get_plan_display(vbasoftware_database, plan_id, plan_display_key)

Get PlanDisplay

Gets PlanDisplay

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

api_instance = Vba::PlanDisplaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_display_key = 56 # Integer | PlanDisplay Key

begin
  # Get PlanDisplay
  result = api_instance.get_plan_display(vbasoftware_database, plan_id, plan_display_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->get_plan_display: #{e}"
end
```

#### Using the get_plan_display_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayVBAResponse>, Integer, Hash)> get_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display_key)

```ruby
begin
  # Get PlanDisplay
  data, status_code, headers = api_instance.get_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->get_plan_display_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_display_key** | **Integer** | PlanDisplay Key |  |

### Return type

[**PlanDisplayVBAResponse**](PlanDisplayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_display

> <PlanDisplayListVBAResponse> list_plan_display(vbasoftware_database, plan_id)

List PlanDisplay

Lists all PlanDisplay

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

api_instance = Vba::PlanDisplaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanDisplay
  result = api_instance.list_plan_display(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->list_plan_display: #{e}"
end
```

#### Using the list_plan_display_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayListVBAResponse>, Integer, Hash)> list_plan_display_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanDisplay
  data, status_code, headers = api_instance.list_plan_display_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->list_plan_display_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanDisplayListVBAResponse**](PlanDisplayListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_display

> <MultiCodeResponseListVBAResponse> update_batch_plan_display(vbasoftware_database, plan_id, plan_display)

Create or Update Batch PlanDisplay

Create or Update multiple PlanDisplay at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanDisplaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_display = [Vba::PlanDisplay.new({plan_display_key: 37, display_type: 'display_type_example', plan_id: 'plan_id_example'})] # Array<PlanDisplay> | 

begin
  # Create or Update Batch PlanDisplay
  result = api_instance.update_batch_plan_display(vbasoftware_database, plan_id, plan_display)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->update_batch_plan_display: #{e}"
end
```

#### Using the update_batch_plan_display_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display)

```ruby
begin
  # Create or Update Batch PlanDisplay
  data, status_code, headers = api_instance.update_batch_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->update_batch_plan_display_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_display** | [**Array&lt;PlanDisplay&gt;**](PlanDisplay.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_display

> <PlanDisplayVBAResponse> update_plan_display(vbasoftware_database, plan_id, plan_display_key, plan_display)

Update PlanDisplay

Updates a specific PlanDisplay.

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

api_instance = Vba::PlanDisplaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_display_key = 56 # Integer | PlanDisplay Key
plan_display = Vba::PlanDisplay.new({plan_display_key: 37, display_type: 'display_type_example', plan_id: 'plan_id_example'}) # PlanDisplay | 

begin
  # Update PlanDisplay
  result = api_instance.update_plan_display(vbasoftware_database, plan_id, plan_display_key, plan_display)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->update_plan_display: #{e}"
end
```

#### Using the update_plan_display_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayVBAResponse>, Integer, Hash)> update_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display_key, plan_display)

```ruby
begin
  # Update PlanDisplay
  data, status_code, headers = api_instance.update_plan_display_with_http_info(vbasoftware_database, plan_id, plan_display_key, plan_display)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplaysApi->update_plan_display_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_display_key** | **Integer** | PlanDisplay Key |  |
| **plan_display** | [**PlanDisplay**](PlanDisplay.md) |  |  |

### Return type

[**PlanDisplayVBAResponse**](PlanDisplayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

