# Vba::GroupPayThroughDayOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_pay_through_day_options**](GroupPayThroughDayOptionsApi.md#list_pay_through_day_options) | **GET** /pay-through-day-options | Pay Through Day Options |


## list_pay_through_day_options

> <Int32StaticOptionListVBAResponse> list_pay_through_day_options(vbasoftware_database)

Pay Through Day Options

List of key/value pairs for Pay Through Day Options

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

api_instance = Vba::GroupPayThroughDayOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # Pay Through Day Options
  result = api_instance.list_pay_through_day_options(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayThroughDayOptionsApi->list_pay_through_day_options: #{e}"
end
```

#### Using the list_pay_through_day_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_pay_through_day_options_with_http_info(vbasoftware_database)

```ruby
begin
  # Pay Through Day Options
  data, status_code, headers = api_instance.list_pay_through_day_options_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayThroughDayOptionsApi->list_pay_through_day_options_with_http_info: #{e}"
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

