# Vba::RoundingPrecisionApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_rounding_precision**](RoundingPrecisionApi.md#get_rounding_precision) | **GET** /rounding-precision/{id} | Get Rounding Precision |
| [**list_rounding_precision**](RoundingPrecisionApi.md#list_rounding_precision) | **GET** /rounding-precision | List Rounding Precisions |


## get_rounding_precision

> <Int32StaticOptionVBAResponse> get_rounding_precision(vbasoftware_database, id)

Get Rounding Precision

Gets a single Rounding Precision by ID

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

api_instance = Vba::RoundingPrecisionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 56 # Integer | ID

begin
  # Get Rounding Precision
  result = api_instance.get_rounding_precision(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RoundingPrecisionApi->get_rounding_precision: #{e}"
end
```

#### Using the get_rounding_precision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionVBAResponse>, Integer, Hash)> get_rounding_precision_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get Rounding Precision
  data, status_code, headers = api_instance.get_rounding_precision_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RoundingPrecisionApi->get_rounding_precision_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id** | **Integer** | ID |  |

### Return type

[**Int32StaticOptionVBAResponse**](Int32StaticOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_rounding_precision

> <Int32StaticOptionListVBAResponse> list_rounding_precision(vbasoftware_database)

List Rounding Precisions

Lists all Rounding Precisions

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

api_instance = Vba::RoundingPrecisionApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Rounding Precisions
  result = api_instance.list_rounding_precision(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RoundingPrecisionApi->list_rounding_precision: #{e}"
end
```

#### Using the list_rounding_precision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_rounding_precision_with_http_info(vbasoftware_database)

```ruby
begin
  # List Rounding Precisions
  data, status_code, headers = api_instance.list_rounding_precision_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RoundingPrecisionApi->list_rounding_precision_with_http_info: #{e}"
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

