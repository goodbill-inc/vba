# Vba::InterfaceTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_interface_types**](InterfaceTypesApi.md#list_interface_types) | **GET** /interface-types | Interface Types |


## list_interface_types

> <StringStaticOptionListVBAResponse> list_interface_types(vbasoftware_database)

Interface Types

List of key/value pairs for Interface Types

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

api_instance = Vba::InterfaceTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Interface Types
  result = api_instance.list_interface_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InterfaceTypesApi->list_interface_types: #{e}"
end
```

#### Using the list_interface_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_interface_types_with_http_info(vbasoftware_database)

```ruby
begin
  # Interface Types
  data, status_code, headers = api_instance.list_interface_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InterfaceTypesApi->list_interface_types_with_http_info: #{e}"
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

