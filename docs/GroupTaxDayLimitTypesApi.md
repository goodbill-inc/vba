# Vba::GroupTaxDayLimitTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_tax_day_limit_types**](GroupTaxDayLimitTypesApi.md#list_tax_day_limit_types) | **GET** /tax-day-limit-types | Tax Day Limit Types |


## list_tax_day_limit_types

> <Int32StaticOptionListVBAResponse> list_tax_day_limit_types(vbasoftware_database)

Tax Day Limit Types

List of key/value pairs for Tax Day Limit Types

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

api_instance = Vba::GroupTaxDayLimitTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Tax Day Limit Types
  result = api_instance.list_tax_day_limit_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupTaxDayLimitTypesApi->list_tax_day_limit_types: #{e}"
end
```

#### Using the list_tax_day_limit_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_tax_day_limit_types_with_http_info(vbasoftware_database)

```ruby
begin
  # Tax Day Limit Types
  data, status_code, headers = api_instance.list_tax_day_limit_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupTaxDayLimitTypesApi->list_tax_day_limit_types_with_http_info: #{e}"
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

