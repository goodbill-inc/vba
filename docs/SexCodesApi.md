# Vba::SexCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_sex_code**](SexCodesApi.md#get_sex_code) | **GET** /sex-codes/{id} | Get Sex Code |
| [**list_sex_codes**](SexCodesApi.md#list_sex_codes) | **GET** /sex-codes | List Sex Codes |


## get_sex_code

> <StringStaticOptionVBAResponse> get_sex_code(vbasoftware_database, id)

Get Sex Code

Gets a single Sex Code by ID

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

api_instance = Vba::SexCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 'id_example' # String | ID

begin
  # Get Sex Code
  result = api_instance.get_sex_code(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SexCodesApi->get_sex_code: #{e}"
end
```

#### Using the get_sex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionVBAResponse>, Integer, Hash)> get_sex_code_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get Sex Code
  data, status_code, headers = api_instance.get_sex_code_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SexCodesApi->get_sex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id** | **String** | ID |  |

### Return type

[**StringStaticOptionVBAResponse**](StringStaticOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_sex_codes

> <StringStaticOptionListVBAResponse> list_sex_codes(vbasoftware_database)

List Sex Codes

Lists all Sex Codes

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

api_instance = Vba::SexCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Sex Codes
  result = api_instance.list_sex_codes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SexCodesApi->list_sex_codes: #{e}"
end
```

#### Using the list_sex_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_sex_codes_with_http_info(vbasoftware_database)

```ruby
begin
  # List Sex Codes
  data, status_code, headers = api_instance.list_sex_codes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SexCodesApi->list_sex_codes_with_http_info: #{e}"
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

