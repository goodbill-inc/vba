# Vba::InsurancePrioritiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_insurance_priorities**](InsurancePrioritiesApi.md#list_insurance_priorities) | **GET** /insurance-priorities | List Insurance Priorities |


## list_insurance_priorities

> <Int32StaticOptionListVBAResponse> list_insurance_priorities(vbasoftware_database)

List Insurance Priorities

List of key/value pairs for Insurance Priorities.

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

api_instance = Vba::InsurancePrioritiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Insurance Priorities
  result = api_instance.list_insurance_priorities(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling InsurancePrioritiesApi->list_insurance_priorities: #{e}"
end
```

#### Using the list_insurance_priorities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_insurance_priorities_with_http_info(vbasoftware_database)

```ruby
begin
  # List Insurance Priorities
  data, status_code, headers = api_instance.list_insurance_priorities_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling InsurancePrioritiesApi->list_insurance_priorities_with_http_info: #{e}"
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

