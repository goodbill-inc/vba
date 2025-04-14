# Vba::AmountDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_amount_details**](AmountDetailsApi.md#get_amount_details) | **GET** /amount-details/{key} | Get AmountDetails |
| [**list_amount_details**](AmountDetailsApi.md#list_amount_details) | **GET** /amount-details | List AmountDetails |


## get_amount_details

> <AmountDetailsVBAResponse> get_amount_details(vbasoftware_database, key)

Get AmountDetails

Gets AmountDetails

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

api_instance = Vba::AmountDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
key = 'key_example' # String | Key

begin
  # Get AmountDetails
  result = api_instance.get_amount_details(vbasoftware_database, key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AmountDetailsApi->get_amount_details: #{e}"
end
```

#### Using the get_amount_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AmountDetailsVBAResponse>, Integer, Hash)> get_amount_details_with_http_info(vbasoftware_database, key)

```ruby
begin
  # Get AmountDetails
  data, status_code, headers = api_instance.get_amount_details_with_http_info(vbasoftware_database, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AmountDetailsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AmountDetailsApi->get_amount_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **key** | **String** | Key |  |

### Return type

[**AmountDetailsVBAResponse**](AmountDetailsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_amount_details

> <AmountDetailsListVBAResponse> list_amount_details(vbasoftware_database)

List AmountDetails

Lists all AmountDetails

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

api_instance = Vba::AmountDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List AmountDetails
  result = api_instance.list_amount_details(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AmountDetailsApi->list_amount_details: #{e}"
end
```

#### Using the list_amount_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AmountDetailsListVBAResponse>, Integer, Hash)> list_amount_details_with_http_info(vbasoftware_database)

```ruby
begin
  # List AmountDetails
  data, status_code, headers = api_instance.list_amount_details_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AmountDetailsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AmountDetailsApi->list_amount_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**AmountDetailsListVBAResponse**](AmountDetailsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

