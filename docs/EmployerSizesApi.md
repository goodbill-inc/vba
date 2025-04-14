# Vba::EmployerSizesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_employer_size**](EmployerSizesApi.md#get_employer_size) | **GET** /employer-sizes/{id} | Get Employer Size |
| [**list_employer_sizes**](EmployerSizesApi.md#list_employer_sizes) | **GET** /employer-sizes | List Employer Sizes |


## get_employer_size

> <Int32StaticOptionVBAResponse> get_employer_size(vbasoftware_database, id)

Get Employer Size

Gets a single Employer Size by ID

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

api_instance = Vba::EmployerSizesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 56 # Integer | ID

begin
  # Get Employer Size
  result = api_instance.get_employer_size(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EmployerSizesApi->get_employer_size: #{e}"
end
```

#### Using the get_employer_size_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionVBAResponse>, Integer, Hash)> get_employer_size_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get Employer Size
  data, status_code, headers = api_instance.get_employer_size_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EmployerSizesApi->get_employer_size_with_http_info: #{e}"
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


## list_employer_sizes

> <Int32StaticOptionListVBAResponse> list_employer_sizes(vbasoftware_database)

List Employer Sizes

Lists all Employer Sizes

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

api_instance = Vba::EmployerSizesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Employer Sizes
  result = api_instance.list_employer_sizes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EmployerSizesApi->list_employer_sizes: #{e}"
end
```

#### Using the list_employer_sizes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_employer_sizes_with_http_info(vbasoftware_database)

```ruby
begin
  # List Employer Sizes
  data, status_code, headers = api_instance.list_employer_sizes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EmployerSizesApi->list_employer_sizes_with_http_info: #{e}"
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

