# Vba::VBAPlanTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_vba_plan_type**](VBAPlanTypesApi.md#get_vba_plan_type) | **GET** /vba-plan-types/{id} | Get VBA Plan Type |
| [**list_vba_plan_types**](VBAPlanTypesApi.md#list_vba_plan_types) | **GET** /vba-plan-types | List VBA Plan Types |


## get_vba_plan_type

> <StringStaticOptionVBAResponse> get_vba_plan_type(vbasoftware_database, id)

Get VBA Plan Type

Gets a single VBA Plan Types by ID

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

api_instance = Vba::VBAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 'id_example' # String | ID

begin
  # Get VBA Plan Type
  result = api_instance.get_vba_plan_type(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAPlanTypesApi->get_vba_plan_type: #{e}"
end
```

#### Using the get_vba_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionVBAResponse>, Integer, Hash)> get_vba_plan_type_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get VBA Plan Type
  data, status_code, headers = api_instance.get_vba_plan_type_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAPlanTypesApi->get_vba_plan_type_with_http_info: #{e}"
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


## list_vba_plan_types

> <StringStaticOptionListVBAResponse> list_vba_plan_types(vbasoftware_database)

List VBA Plan Types

Lists all VBA Plan Types

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

api_instance = Vba::VBAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List VBA Plan Types
  result = api_instance.list_vba_plan_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAPlanTypesApi->list_vba_plan_types: #{e}"
end
```

#### Using the list_vba_plan_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_vba_plan_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List VBA Plan Types
  data, status_code, headers = api_instance.list_vba_plan_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAPlanTypesApi->list_vba_plan_types_with_http_info: #{e}"
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

