# Vba::CheckEditHeadersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_check_edit_set_header**](CheckEditHeadersApi.md#get_check_edit_set_header) | **GET** /check-edit-headers/{checkEditSetHeaderKey} | Get CheckEditSetHeader |
| [**list_check_edit_set_header**](CheckEditHeadersApi.md#list_check_edit_set_header) | **GET** /check-edit-headers | List CheckEditSetHeader |


## get_check_edit_set_header

> <CheckEditSetHeaderVBAResponse> get_check_edit_set_header(vbasoftware_database, check_edit_set_header_key)

Get CheckEditSetHeader

Gets CheckEditSetHeader

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

api_instance = Vba::CheckEditHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_set_header_key = 56 # Integer | CheckEditSetHeader Key

begin
  # Get CheckEditSetHeader
  result = api_instance.get_check_edit_set_header(vbasoftware_database, check_edit_set_header_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditHeadersApi->get_check_edit_set_header: #{e}"
end
```

#### Using the get_check_edit_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditSetHeaderVBAResponse>, Integer, Hash)> get_check_edit_set_header_with_http_info(vbasoftware_database, check_edit_set_header_key)

```ruby
begin
  # Get CheckEditSetHeader
  data, status_code, headers = api_instance.get_check_edit_set_header_with_http_info(vbasoftware_database, check_edit_set_header_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditSetHeaderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditHeadersApi->get_check_edit_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_set_header_key** | **Integer** | CheckEditSetHeader Key |  |

### Return type

[**CheckEditSetHeaderVBAResponse**](CheckEditSetHeaderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_check_edit_set_header

> <CheckEditSetHeaderListVBAResponse> list_check_edit_set_header(vbasoftware_database, opts)

List CheckEditSetHeader

Lists all CheckEditSetHeader

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

api_instance = Vba::CheckEditHeadersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CheckEditSetHeader
  result = api_instance.list_check_edit_set_header(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditHeadersApi->list_check_edit_set_header: #{e}"
end
```

#### Using the list_check_edit_set_header_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditSetHeaderListVBAResponse>, Integer, Hash)> list_check_edit_set_header_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CheckEditSetHeader
  data, status_code, headers = api_instance.list_check_edit_set_header_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditSetHeaderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditHeadersApi->list_check_edit_set_header_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CheckEditSetHeaderListVBAResponse**](CheckEditSetHeaderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

