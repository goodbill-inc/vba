# Vba::GroupCoverageCalculationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_coverage_calculations**](GroupCoverageCalculationsApi.md#list_coverage_calculations) | **GET** /coverage-calculations | List Coverage Calculations |


## list_coverage_calculations

> <StringStaticOptionListVBAResponse> list_coverage_calculations(vbasoftware_database)

List Coverage Calculations

List of key/value pairs for Coverage Calculations

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

api_instance = Vba::GroupCoverageCalculationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Coverage Calculations
  result = api_instance.list_coverage_calculations(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupCoverageCalculationsApi->list_coverage_calculations: #{e}"
end
```

#### Using the list_coverage_calculations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_coverage_calculations_with_http_info(vbasoftware_database)

```ruby
begin
  # List Coverage Calculations
  data, status_code, headers = api_instance.list_coverage_calculations_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupCoverageCalculationsApi->list_coverage_calculations_with_http_info: #{e}"
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

