# Vba::ObjectsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_functional_areas**](ObjectsApi.md#list_functional_areas) | **GET** /functional-areas | List Functional Areas |
| [**list_objects**](ObjectsApi.md#list_objects) | **GET** /objects | List Objects |
| [**list_purposes**](ObjectsApi.md#list_purposes) | **GET** /purposes | List Purposes |


## list_functional_areas

> <FunctionalAreaListVBAResponse> list_functional_areas(vbasoftware_database)

List Functional Areas

Gets a list of all Functional Areas

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

api_instance = Vba::ObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Functional Areas
  result = api_instance.list_functional_areas(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ObjectsApi->list_functional_areas: #{e}"
end
```

#### Using the list_functional_areas_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FunctionalAreaListVBAResponse>, Integer, Hash)> list_functional_areas_with_http_info(vbasoftware_database)

```ruby
begin
  # List Functional Areas
  data, status_code, headers = api_instance.list_functional_areas_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FunctionalAreaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ObjectsApi->list_functional_areas_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**FunctionalAreaListVBAResponse**](FunctionalAreaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_objects

> <ObjectListListVBAResponse> list_objects(vbasoftware_database, opts)

List Objects

Gets a list of Objects with optional Functional Area and Purpose filters.

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

api_instance = Vba::ObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  functional_area: 'functional_area_example', # String | Functional Area filter
  purpose: 'purpose_example' # String | PurposeArea filter
}

begin
  # List Objects
  result = api_instance.list_objects(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ObjectsApi->list_objects: #{e}"
end
```

#### Using the list_objects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ObjectListListVBAResponse>, Integer, Hash)> list_objects_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Objects
  data, status_code, headers = api_instance.list_objects_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ObjectListListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ObjectsApi->list_objects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **functional_area** | **String** | Functional Area filter | [optional] |
| **purpose** | **String** | PurposeArea filter | [optional] |

### Return type

[**ObjectListListVBAResponse**](ObjectListListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_purposes

> <PurposeListVBAResponse> list_purposes(vbasoftware_database)

List Purposes

Gets a list of all Purposes

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

api_instance = Vba::ObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Purposes
  result = api_instance.list_purposes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ObjectsApi->list_purposes: #{e}"
end
```

#### Using the list_purposes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurposeListVBAResponse>, Integer, Hash)> list_purposes_with_http_info(vbasoftware_database)

```ruby
begin
  # List Purposes
  data, status_code, headers = api_instance.list_purposes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurposeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ObjectsApi->list_purposes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**PurposeListVBAResponse**](PurposeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

