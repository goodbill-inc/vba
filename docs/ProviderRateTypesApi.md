# Vba::ProviderRateTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_provider_rate_types**](ProviderRateTypesApi.md#list_provider_rate_types) | **GET** /provider-rate-types | List Provider Rate Types |


## list_provider_rate_types

> <StringStaticOptionListVBAResponse> list_provider_rate_types(vbasoftware_database)

List Provider Rate Types

Lists all Provider Rate Types

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

api_instance = Vba::ProviderRateTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Provider Rate Types
  result = api_instance.list_provider_rate_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateTypesApi->list_provider_rate_types: #{e}"
end
```

#### Using the list_provider_rate_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_provider_rate_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Provider Rate Types
  data, status_code, headers = api_instance.list_provider_rate_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateTypesApi->list_provider_rate_types_with_http_info: #{e}"
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

