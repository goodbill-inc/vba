# Vba::Context4ListsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_context4_fee_options**](Context4ListsApi.md#list_context4_fee_options) | **GET** /context4-fee-options | List Context4 Fee Options |
| [**list_context4_payor_types**](Context4ListsApi.md#list_context4_payor_types) | **GET** /context4-payor-types | List Context4 Payor Types |
| [**list_context4_ucr_percentages**](Context4ListsApi.md#list_context4_ucr_percentages) | **GET** /context4-ucr-percentages | List Context4 UCR Percentages |


## list_context4_fee_options

> <StringStaticOptionListVBAResponse> list_context4_fee_options(vbasoftware_database)

List Context4 Fee Options

List of key/value pairs

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

api_instance = Vba::Context4ListsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Context4 Fee Options
  result = api_instance.list_context4_fee_options(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4ListsApi->list_context4_fee_options: #{e}"
end
```

#### Using the list_context4_fee_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_context4_fee_options_with_http_info(vbasoftware_database)

```ruby
begin
  # List Context4 Fee Options
  data, status_code, headers = api_instance.list_context4_fee_options_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4ListsApi->list_context4_fee_options_with_http_info: #{e}"
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


## list_context4_payor_types

> <Int32StaticOptionListVBAResponse> list_context4_payor_types(vbasoftware_database)

List Context4 Payor Types

List of key/value pairs

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

api_instance = Vba::Context4ListsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Context4 Payor Types
  result = api_instance.list_context4_payor_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4ListsApi->list_context4_payor_types: #{e}"
end
```

#### Using the list_context4_payor_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_context4_payor_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Context4 Payor Types
  data, status_code, headers = api_instance.list_context4_payor_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4ListsApi->list_context4_payor_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_context4_ucr_percentages

> <Int32StaticOptionListVBAResponse> list_context4_ucr_percentages(vbasoftware_database)

List Context4 UCR Percentages

List of key/value pairs

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

api_instance = Vba::Context4ListsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Context4 UCR Percentages
  result = api_instance.list_context4_ucr_percentages(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4ListsApi->list_context4_ucr_percentages: #{e}"
end
```

#### Using the list_context4_ucr_percentages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_context4_ucr_percentages_with_http_info(vbasoftware_database)

```ruby
begin
  # List Context4 UCR Percentages
  data, status_code, headers = api_instance.list_context4_ucr_percentages_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4ListsApi->list_context4_ucr_percentages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

