# Vba::PlanDisplayTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_display_type**](PlanDisplayTypesApi.md#create_plan_display_type) | **POST** /plan-display-types | Create PlanDisplayType |
| [**delete_plan_display_type**](PlanDisplayTypesApi.md#delete_plan_display_type) | **DELETE** /plan-display-types/{displayType} | Delete PlanDisplayType |
| [**get_plan_display_type**](PlanDisplayTypesApi.md#get_plan_display_type) | **GET** /plan-display-types/{displayType} | Get PlanDisplayType |
| [**list_plan_display_type**](PlanDisplayTypesApi.md#list_plan_display_type) | **GET** /plan-display-types | List PlanDisplayType |
| [**update_batch_plan_display_type**](PlanDisplayTypesApi.md#update_batch_plan_display_type) | **PUT** /plan-display-types-batch | Create or Update Batch PlanDisplayType |
| [**update_plan_display_type**](PlanDisplayTypesApi.md#update_plan_display_type) | **PUT** /plan-display-types/{displayType} | Update PlanDisplayType |


## create_plan_display_type

> <PlanDisplayTypeVBAResponse> create_plan_display_type(vbasoftware_database, plan_display_type)

Create PlanDisplayType

Creates a new PlanDisplayType

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

api_instance = Vba::PlanDisplayTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_display_type = Vba::PlanDisplayType.new({display_type: 'display_type_example'}) # PlanDisplayType | 

begin
  # Create PlanDisplayType
  result = api_instance.create_plan_display_type(vbasoftware_database, plan_display_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->create_plan_display_type: #{e}"
end
```

#### Using the create_plan_display_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayTypeVBAResponse>, Integer, Hash)> create_plan_display_type_with_http_info(vbasoftware_database, plan_display_type)

```ruby
begin
  # Create PlanDisplayType
  data, status_code, headers = api_instance.create_plan_display_type_with_http_info(vbasoftware_database, plan_display_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->create_plan_display_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_display_type** | [**PlanDisplayType**](PlanDisplayType.md) |  |  |

### Return type

[**PlanDisplayTypeVBAResponse**](PlanDisplayTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_display_type

> delete_plan_display_type(vbasoftware_database, display_type)

Delete PlanDisplayType

Deletes an PlanDisplayType

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

api_instance = Vba::PlanDisplayTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
display_type = 'display_type_example' # String | Display Type

begin
  # Delete PlanDisplayType
  api_instance.delete_plan_display_type(vbasoftware_database, display_type)
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->delete_plan_display_type: #{e}"
end
```

#### Using the delete_plan_display_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_display_type_with_http_info(vbasoftware_database, display_type)

```ruby
begin
  # Delete PlanDisplayType
  data, status_code, headers = api_instance.delete_plan_display_type_with_http_info(vbasoftware_database, display_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->delete_plan_display_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **display_type** | **String** | Display Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_display_type

> <PlanDisplayTypeVBAResponse> get_plan_display_type(vbasoftware_database, display_type)

Get PlanDisplayType

Gets PlanDisplayType

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

api_instance = Vba::PlanDisplayTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
display_type = 'display_type_example' # String | Display Type

begin
  # Get PlanDisplayType
  result = api_instance.get_plan_display_type(vbasoftware_database, display_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->get_plan_display_type: #{e}"
end
```

#### Using the get_plan_display_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayTypeVBAResponse>, Integer, Hash)> get_plan_display_type_with_http_info(vbasoftware_database, display_type)

```ruby
begin
  # Get PlanDisplayType
  data, status_code, headers = api_instance.get_plan_display_type_with_http_info(vbasoftware_database, display_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->get_plan_display_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **display_type** | **String** | Display Type |  |

### Return type

[**PlanDisplayTypeVBAResponse**](PlanDisplayTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_display_type

> <PlanDisplayTypeListVBAResponse> list_plan_display_type(vbasoftware_database)

List PlanDisplayType

Lists all PlanDisplayType 

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

api_instance = Vba::PlanDisplayTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List PlanDisplayType
  result = api_instance.list_plan_display_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->list_plan_display_type: #{e}"
end
```

#### Using the list_plan_display_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayTypeListVBAResponse>, Integer, Hash)> list_plan_display_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List PlanDisplayType
  data, status_code, headers = api_instance.list_plan_display_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->list_plan_display_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**PlanDisplayTypeListVBAResponse**](PlanDisplayTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_display_type

> <MultiCodeResponseListVBAResponse> update_batch_plan_display_type(vbasoftware_database, plan_display_type)

Create or Update Batch PlanDisplayType

Create or Update multiple PlanDisplayType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanDisplayTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_display_type = [Vba::PlanDisplayType.new({display_type: 'display_type_example'})] # Array<PlanDisplayType> | 

begin
  # Create or Update Batch PlanDisplayType
  result = api_instance.update_batch_plan_display_type(vbasoftware_database, plan_display_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->update_batch_plan_display_type: #{e}"
end
```

#### Using the update_batch_plan_display_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_display_type_with_http_info(vbasoftware_database, plan_display_type)

```ruby
begin
  # Create or Update Batch PlanDisplayType
  data, status_code, headers = api_instance.update_batch_plan_display_type_with_http_info(vbasoftware_database, plan_display_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->update_batch_plan_display_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_display_type** | [**Array&lt;PlanDisplayType&gt;**](PlanDisplayType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_display_type

> <PlanDisplayTypeVBAResponse> update_plan_display_type(vbasoftware_database, display_type, plan_display_type)

Update PlanDisplayType

Updates a specific PlanDisplayType.

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

api_instance = Vba::PlanDisplayTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
display_type = 'display_type_example' # String | Display Type
plan_display_type = Vba::PlanDisplayType.new({display_type: 'display_type_example'}) # PlanDisplayType | 

begin
  # Update PlanDisplayType
  result = api_instance.update_plan_display_type(vbasoftware_database, display_type, plan_display_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->update_plan_display_type: #{e}"
end
```

#### Using the update_plan_display_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDisplayTypeVBAResponse>, Integer, Hash)> update_plan_display_type_with_http_info(vbasoftware_database, display_type, plan_display_type)

```ruby
begin
  # Update PlanDisplayType
  data, status_code, headers = api_instance.update_plan_display_type_with_http_info(vbasoftware_database, display_type, plan_display_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDisplayTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisplayTypesApi->update_plan_display_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **display_type** | **String** | Display Type |  |
| **plan_display_type** | [**PlanDisplayType**](PlanDisplayType.md) |  |  |

### Return type

[**PlanDisplayTypeVBAResponse**](PlanDisplayTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

