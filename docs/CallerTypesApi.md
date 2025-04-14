# Vba::CallerTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_caller_type**](CallerTypesApi.md#create_call_tracking_caller_type) | **POST** /caller-types | Create CallTrackingCallerType |
| [**delete_call_tracking_caller_type**](CallerTypesApi.md#delete_call_tracking_caller_type) | **DELETE** /caller-types/{callerType} | Delete CallTrackingCallerType |
| [**get_call_tracking_caller_type**](CallerTypesApi.md#get_call_tracking_caller_type) | **GET** /caller-types/{callerType} | Get CallTrackingCallerType |
| [**list_call_tracking_caller_type**](CallerTypesApi.md#list_call_tracking_caller_type) | **GET** /caller-types | List CallTrackingCallerType |
| [**update_batch_call_tracking_caller_type**](CallerTypesApi.md#update_batch_call_tracking_caller_type) | **PUT** /caller-types-batch | Create or Update Batch CallTrackingCallerType |
| [**update_call_tracking_caller_type**](CallerTypesApi.md#update_call_tracking_caller_type) | **PUT** /caller-types/{callerType} | Update CallTrackingCallerType |


## create_call_tracking_caller_type

> <CallTrackingCallerTypeVBAResponse> create_call_tracking_caller_type(vbasoftware_database, call_tracking_caller_type)

Create CallTrackingCallerType

Creates a new CallTrackingCallerType

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

api_instance = Vba::CallerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_caller_type = Vba::CallTrackingCallerType.new({caller_type: 'caller_type_example', default_type: false}) # CallTrackingCallerType | 

begin
  # Create CallTrackingCallerType
  result = api_instance.create_call_tracking_caller_type(vbasoftware_database, call_tracking_caller_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->create_call_tracking_caller_type: #{e}"
end
```

#### Using the create_call_tracking_caller_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallerTypeVBAResponse>, Integer, Hash)> create_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type)

```ruby
begin
  # Create CallTrackingCallerType
  data, status_code, headers = api_instance.create_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallerTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->create_call_tracking_caller_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_caller_type** | [**CallTrackingCallerType**](CallTrackingCallerType.md) |  |  |

### Return type

[**CallTrackingCallerTypeVBAResponse**](CallTrackingCallerTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_caller_type

> delete_call_tracking_caller_type(vbasoftware_database, caller_type)

Delete CallTrackingCallerType

Deletes an CallTrackingCallerType

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

api_instance = Vba::CallerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
caller_type = 'caller_type_example' # String | Caller Type

begin
  # Delete CallTrackingCallerType
  api_instance.delete_call_tracking_caller_type(vbasoftware_database, caller_type)
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->delete_call_tracking_caller_type: #{e}"
end
```

#### Using the delete_call_tracking_caller_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type)

```ruby
begin
  # Delete CallTrackingCallerType
  data, status_code, headers = api_instance.delete_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->delete_call_tracking_caller_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **caller_type** | **String** | Caller Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_caller_type

> <CallTrackingCallerTypeVBAResponse> get_call_tracking_caller_type(vbasoftware_database, caller_type)

Get CallTrackingCallerType

Gets CallTrackingCallerType

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

api_instance = Vba::CallerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
caller_type = 'caller_type_example' # String | Caller Type

begin
  # Get CallTrackingCallerType
  result = api_instance.get_call_tracking_caller_type(vbasoftware_database, caller_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->get_call_tracking_caller_type: #{e}"
end
```

#### Using the get_call_tracking_caller_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallerTypeVBAResponse>, Integer, Hash)> get_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type)

```ruby
begin
  # Get CallTrackingCallerType
  data, status_code, headers = api_instance.get_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallerTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->get_call_tracking_caller_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **caller_type** | **String** | Caller Type |  |

### Return type

[**CallTrackingCallerTypeVBAResponse**](CallTrackingCallerTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_caller_type

> <CallTrackingCallerTypeListVBAResponse> list_call_tracking_caller_type(vbasoftware_database, opts)

List CallTrackingCallerType

Lists all CallTrackingCallerType

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

api_instance = Vba::CallerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingCallerType
  result = api_instance.list_call_tracking_caller_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->list_call_tracking_caller_type: #{e}"
end
```

#### Using the list_call_tracking_caller_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallerTypeListVBAResponse>, Integer, Hash)> list_call_tracking_caller_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTrackingCallerType
  data, status_code, headers = api_instance.list_call_tracking_caller_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallerTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->list_call_tracking_caller_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CallTrackingCallerTypeListVBAResponse**](CallTrackingCallerTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_caller_type

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_caller_type(vbasoftware_database, call_tracking_caller_type)

Create or Update Batch CallTrackingCallerType

Create or Update multiple CallTrackingCallerType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_caller_type = [Vba::CallTrackingCallerType.new({caller_type: 'caller_type_example', default_type: false})] # Array<CallTrackingCallerType> | 

begin
  # Create or Update Batch CallTrackingCallerType
  result = api_instance.update_batch_call_tracking_caller_type(vbasoftware_database, call_tracking_caller_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->update_batch_call_tracking_caller_type: #{e}"
end
```

#### Using the update_batch_call_tracking_caller_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type)

```ruby
begin
  # Create or Update Batch CallTrackingCallerType
  data, status_code, headers = api_instance.update_batch_call_tracking_caller_type_with_http_info(vbasoftware_database, call_tracking_caller_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->update_batch_call_tracking_caller_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_caller_type** | [**Array&lt;CallTrackingCallerType&gt;**](CallTrackingCallerType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking_caller_type

> <CallTrackingCallerTypeVBAResponse> update_call_tracking_caller_type(vbasoftware_database, caller_type, call_tracking_caller_type)

Update CallTrackingCallerType

Updates a specific CallTrackingCallerType.

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

api_instance = Vba::CallerTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
caller_type = 'caller_type_example' # String | Caller Type
call_tracking_caller_type = Vba::CallTrackingCallerType.new({caller_type: 'caller_type_example', default_type: false}) # CallTrackingCallerType | 

begin
  # Update CallTrackingCallerType
  result = api_instance.update_call_tracking_caller_type(vbasoftware_database, caller_type, call_tracking_caller_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->update_call_tracking_caller_type: #{e}"
end
```

#### Using the update_call_tracking_caller_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallerTypeVBAResponse>, Integer, Hash)> update_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, call_tracking_caller_type)

```ruby
begin
  # Update CallTrackingCallerType
  data, status_code, headers = api_instance.update_call_tracking_caller_type_with_http_info(vbasoftware_database, caller_type, call_tracking_caller_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallerTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallerTypesApi->update_call_tracking_caller_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **caller_type** | **String** | Caller Type |  |
| **call_tracking_caller_type** | [**CallTrackingCallerType**](CallTrackingCallerType.md) |  |  |

### Return type

[**CallTrackingCallerTypeVBAResponse**](CallTrackingCallerTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

