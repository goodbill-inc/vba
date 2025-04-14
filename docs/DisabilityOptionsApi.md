# Vba::DisabilityOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_disability_interval_types**](DisabilityOptionsApi.md#list_disability_interval_types) | **GET** /disability-interval-types | List Disability Interval Types |


## list_disability_interval_types

> <Int32StaticOptionListVBAResponse> list_disability_interval_types(vbasoftware_database)

List Disability Interval Types

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

api_instance = Vba::DisabilityOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Disability Interval Types
  result = api_instance.list_disability_interval_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityOptionsApi->list_disability_interval_types: #{e}"
end
```

#### Using the list_disability_interval_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_disability_interval_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Disability Interval Types
  data, status_code, headers = api_instance.list_disability_interval_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityOptionsApi->list_disability_interval_types_with_http_info: #{e}"
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

