# Vba::CallTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_call_tracking_call_type**](CallTypesApi.md#create_call_tracking_call_type) | **POST** /call-types | Create CallTrackingCallType |
| [**delete_call_tracking_call_type**](CallTypesApi.md#delete_call_tracking_call_type) | **DELETE** /call-types/{callType} | Delete CallTrackingCallType |
| [**get_call_tracking_call_type**](CallTypesApi.md#get_call_tracking_call_type) | **GET** /call-types/{callType} | Get CallTrackingCallType |
| [**list_call_tracking_call_type**](CallTypesApi.md#list_call_tracking_call_type) | **GET** /call-types | List CallTrackingCallType |
| [**update_batch_call_tracking_call_type**](CallTypesApi.md#update_batch_call_tracking_call_type) | **PUT** /call-types-batch | Create or Update Batch CallTrackingCallType |
| [**update_call_tracking_call_type**](CallTypesApi.md#update_call_tracking_call_type) | **PUT** /call-types/{callType} | Update CallTrackingCallType |


## create_call_tracking_call_type

> <CallTrackingCallTypeVBAResponse> create_call_tracking_call_type(vbasoftware_database, call_tracking_call_type)

Create CallTrackingCallType

Creates a new CallTrackingCallType

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

api_instance = Vba::CallTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_call_type = Vba::CallTrackingCallType.new({call_type: 'call_type_example', default_type: false}) # CallTrackingCallType | 

begin
  # Create CallTrackingCallType
  result = api_instance.create_call_tracking_call_type(vbasoftware_database, call_tracking_call_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->create_call_tracking_call_type: #{e}"
end
```

#### Using the create_call_tracking_call_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallTypeVBAResponse>, Integer, Hash)> create_call_tracking_call_type_with_http_info(vbasoftware_database, call_tracking_call_type)

```ruby
begin
  # Create CallTrackingCallType
  data, status_code, headers = api_instance.create_call_tracking_call_type_with_http_info(vbasoftware_database, call_tracking_call_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->create_call_tracking_call_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_call_type** | [**CallTrackingCallType**](CallTrackingCallType.md) |  |  |

### Return type

[**CallTrackingCallTypeVBAResponse**](CallTrackingCallTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_call_tracking_call_type

> delete_call_tracking_call_type(vbasoftware_database, call_type)

Delete CallTrackingCallType

Deletes an CallTrackingCallType

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

api_instance = Vba::CallTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_type = 'call_type_example' # String | Call Type

begin
  # Delete CallTrackingCallType
  api_instance.delete_call_tracking_call_type(vbasoftware_database, call_type)
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->delete_call_tracking_call_type: #{e}"
end
```

#### Using the delete_call_tracking_call_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_call_tracking_call_type_with_http_info(vbasoftware_database, call_type)

```ruby
begin
  # Delete CallTrackingCallType
  data, status_code, headers = api_instance.delete_call_tracking_call_type_with_http_info(vbasoftware_database, call_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->delete_call_tracking_call_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_type** | **String** | Call Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_call_tracking_call_type

> <CallTrackingCallTypeVBAResponse> get_call_tracking_call_type(vbasoftware_database, call_type)

Get CallTrackingCallType

Gets CallTrackingCallType

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

api_instance = Vba::CallTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_type = 'call_type_example' # String | Call Type

begin
  # Get CallTrackingCallType
  result = api_instance.get_call_tracking_call_type(vbasoftware_database, call_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->get_call_tracking_call_type: #{e}"
end
```

#### Using the get_call_tracking_call_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallTypeVBAResponse>, Integer, Hash)> get_call_tracking_call_type_with_http_info(vbasoftware_database, call_type)

```ruby
begin
  # Get CallTrackingCallType
  data, status_code, headers = api_instance.get_call_tracking_call_type_with_http_info(vbasoftware_database, call_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->get_call_tracking_call_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_type** | **String** | Call Type |  |

### Return type

[**CallTrackingCallTypeVBAResponse**](CallTrackingCallTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_call_tracking_call_type

> <CallTrackingCallTypeListVBAResponse> list_call_tracking_call_type(vbasoftware_database, opts)

List CallTrackingCallType

Lists all CallTrackingCallType

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

api_instance = Vba::CallTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CallTrackingCallType
  result = api_instance.list_call_tracking_call_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->list_call_tracking_call_type: #{e}"
end
```

#### Using the list_call_tracking_call_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallTypeListVBAResponse>, Integer, Hash)> list_call_tracking_call_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CallTrackingCallType
  data, status_code, headers = api_instance.list_call_tracking_call_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->list_call_tracking_call_type_with_http_info: #{e}"
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

[**CallTrackingCallTypeListVBAResponse**](CallTrackingCallTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_call_tracking_call_type

> <MultiCodeResponseListVBAResponse> update_batch_call_tracking_call_type(vbasoftware_database, call_tracking_call_type)

Create or Update Batch CallTrackingCallType

Create or Update multiple CallTrackingCallType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CallTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_tracking_call_type = [Vba::CallTrackingCallType.new({call_type: 'call_type_example', default_type: false})] # Array<CallTrackingCallType> | 

begin
  # Create or Update Batch CallTrackingCallType
  result = api_instance.update_batch_call_tracking_call_type(vbasoftware_database, call_tracking_call_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->update_batch_call_tracking_call_type: #{e}"
end
```

#### Using the update_batch_call_tracking_call_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_call_tracking_call_type_with_http_info(vbasoftware_database, call_tracking_call_type)

```ruby
begin
  # Create or Update Batch CallTrackingCallType
  data, status_code, headers = api_instance.update_batch_call_tracking_call_type_with_http_info(vbasoftware_database, call_tracking_call_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->update_batch_call_tracking_call_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_tracking_call_type** | [**Array&lt;CallTrackingCallType&gt;**](CallTrackingCallType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_call_tracking_call_type

> <CallTrackingCallTypeVBAResponse> update_call_tracking_call_type(vbasoftware_database, call_type, call_tracking_call_type)

Update CallTrackingCallType

Updates a specific CallTrackingCallType.

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

api_instance = Vba::CallTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
call_type = 'call_type_example' # String | Call Type
call_tracking_call_type = Vba::CallTrackingCallType.new({call_type: 'call_type_example', default_type: false}) # CallTrackingCallType | 

begin
  # Update CallTrackingCallType
  result = api_instance.update_call_tracking_call_type(vbasoftware_database, call_type, call_tracking_call_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->update_call_tracking_call_type: #{e}"
end
```

#### Using the update_call_tracking_call_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallTrackingCallTypeVBAResponse>, Integer, Hash)> update_call_tracking_call_type_with_http_info(vbasoftware_database, call_type, call_tracking_call_type)

```ruby
begin
  # Update CallTrackingCallType
  data, status_code, headers = api_instance.update_call_tracking_call_type_with_http_info(vbasoftware_database, call_type, call_tracking_call_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallTrackingCallTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CallTypesApi->update_call_tracking_call_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **call_type** | **String** | Call Type |  |
| **call_tracking_call_type** | [**CallTrackingCallType**](CallTrackingCallType.md) |  |  |

### Return type

[**CallTrackingCallTypeVBAResponse**](CallTrackingCallTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

