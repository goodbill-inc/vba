# Vba::CheckEditsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_check_edit**](CheckEditsApi.md#get_check_edit) | **GET** /check-edits/{checkEditKey} | Get CheckEdit |
| [**list_check_edit**](CheckEditsApi.md#list_check_edit) | **GET** /check-edits | List CheckEdit |


## get_check_edit

> <CheckEditVBAResponse> get_check_edit(vbasoftware_database, check_edit_key)

Get CheckEdit

Gets CheckEdit

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

api_instance = Vba::CheckEditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_edit_key = 56 # Integer | CheckEdit Key

begin
  # Get CheckEdit
  result = api_instance.get_check_edit(vbasoftware_database, check_edit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditsApi->get_check_edit: #{e}"
end
```

#### Using the get_check_edit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditVBAResponse>, Integer, Hash)> get_check_edit_with_http_info(vbasoftware_database, check_edit_key)

```ruby
begin
  # Get CheckEdit
  data, status_code, headers = api_instance.get_check_edit_with_http_info(vbasoftware_database, check_edit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditsApi->get_check_edit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_edit_key** | **Integer** | CheckEdit Key |  |

### Return type

[**CheckEditVBAResponse**](CheckEditVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_check_edit

> <CheckEditListVBAResponse> list_check_edit(vbasoftware_database, opts)

List CheckEdit

Lists all CheckEdit

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

api_instance = Vba::CheckEditsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CheckEdit
  result = api_instance.list_check_edit(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckEditsApi->list_check_edit: #{e}"
end
```

#### Using the list_check_edit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditListVBAResponse>, Integer, Hash)> list_check_edit_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CheckEdit
  data, status_code, headers = api_instance.list_check_edit_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckEditsApi->list_check_edit_with_http_info: #{e}"
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

[**CheckEditListVBAResponse**](CheckEditListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

