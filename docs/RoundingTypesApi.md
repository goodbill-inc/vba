# Vba::RoundingTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_rounding_type**](RoundingTypesApi.md#get_rounding_type) | **GET** /rounding-types/{id} | Get Rounding Type |
| [**list_rounding_types**](RoundingTypesApi.md#list_rounding_types) | **GET** /rounding-types | List Rounding Types |


## get_rounding_type

> <StringStaticOptionVBAResponse> get_rounding_type(vbasoftware_database, id)

Get Rounding Type

Gets a single Rounding Type by ID

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

api_instance = Vba::RoundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 'id_example' # String | ID

begin
  # Get Rounding Type
  result = api_instance.get_rounding_type(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RoundingTypesApi->get_rounding_type: #{e}"
end
```

#### Using the get_rounding_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionVBAResponse>, Integer, Hash)> get_rounding_type_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get Rounding Type
  data, status_code, headers = api_instance.get_rounding_type_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RoundingTypesApi->get_rounding_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id** | **String** | ID |  |

### Return type

[**StringStaticOptionVBAResponse**](StringStaticOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_rounding_types

> <StringStaticOptionListVBAResponse> list_rounding_types(vbasoftware_database)

List Rounding Types

Lists all Rounding Types

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

api_instance = Vba::RoundingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Rounding Types
  result = api_instance.list_rounding_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RoundingTypesApi->list_rounding_types: #{e}"
end
```

#### Using the list_rounding_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_rounding_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Rounding Types
  data, status_code, headers = api_instance.list_rounding_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RoundingTypesApi->list_rounding_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

