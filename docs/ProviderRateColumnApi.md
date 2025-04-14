# Vba::ProviderRateColumnApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_provider_rate_column**](ProviderRateColumnApi.md#get_provider_rate_column) | **GET** /provider-rate-columns/{providerRateColumnKey} | Get Provider Rate Column |
| [**list_provider_rate_columns**](ProviderRateColumnApi.md#list_provider_rate_columns) | **GET** /provider-rate-columns | List Provider Rate Columns |


## get_provider_rate_column

> <ProviderRateColumnVBAResponse> get_provider_rate_column(vbasoftware_database, provider_rate_column_key)

Get Provider Rate Column

Gets Provider Rate Column

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

api_instance = Vba::ProviderRateColumnApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_rate_column_key = 56 # Integer | Provider Rate Column Key

begin
  # Get Provider Rate Column
  result = api_instance.get_provider_rate_column(vbasoftware_database, provider_rate_column_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateColumnApi->get_provider_rate_column: #{e}"
end
```

#### Using the get_provider_rate_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateColumnVBAResponse>, Integer, Hash)> get_provider_rate_column_with_http_info(vbasoftware_database, provider_rate_column_key)

```ruby
begin
  # Get Provider Rate Column
  data, status_code, headers = api_instance.get_provider_rate_column_with_http_info(vbasoftware_database, provider_rate_column_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateColumnApi->get_provider_rate_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_rate_column_key** | **Integer** | Provider Rate Column Key |  |

### Return type

[**ProviderRateColumnVBAResponse**](ProviderRateColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_rate_columns

> <ProviderRateColumnListVBAResponse> list_provider_rate_columns(vbasoftware_database)

List Provider Rate Columns

List all Provider Rate Columns

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

api_instance = Vba::ProviderRateColumnApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Provider Rate Columns
  result = api_instance.list_provider_rate_columns(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateColumnApi->list_provider_rate_columns: #{e}"
end
```

#### Using the list_provider_rate_columns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateColumnListVBAResponse>, Integer, Hash)> list_provider_rate_columns_with_http_info(vbasoftware_database)

```ruby
begin
  # List Provider Rate Columns
  data, status_code, headers = api_instance.list_provider_rate_columns_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateColumnListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateColumnApi->list_provider_rate_columns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ProviderRateColumnListVBAResponse**](ProviderRateColumnListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

