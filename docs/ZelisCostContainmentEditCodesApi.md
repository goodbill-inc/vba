# Vba::ZelisCostContainmentEditCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_zelis_edit_code**](ZelisCostContainmentEditCodesApi.md#create_cost_contain_zelis_edit_code) | **POST** /zelis-edit-codes | Create CostContainZelisEditCode |
| [**delete_cost_contain_zelis_edit_code**](ZelisCostContainmentEditCodesApi.md#delete_cost_contain_zelis_edit_code) | **DELETE** /zelis-edit-codes/{editCode} | Delete CostContainZelisEditCode |
| [**get_cost_contain_zelis_edit_code**](ZelisCostContainmentEditCodesApi.md#get_cost_contain_zelis_edit_code) | **GET** /zelis-edit-codes/{editCode} | Get CostContainZelisEditCode |
| [**list_cost_contain_zelis_edit_code**](ZelisCostContainmentEditCodesApi.md#list_cost_contain_zelis_edit_code) | **GET** /zelis-edit-codes | List CostContainZelisEditCode |
| [**update_batch_cost_contain_zelis_edit_code**](ZelisCostContainmentEditCodesApi.md#update_batch_cost_contain_zelis_edit_code) | **PUT** /zelis-edit-codes-batch | Create or Update Batch CostContainZelisEditCode |
| [**update_cost_contain_zelis_edit_code**](ZelisCostContainmentEditCodesApi.md#update_cost_contain_zelis_edit_code) | **PUT** /zelis-edit-codes/{editCode} | Update CostContainZelisEditCode |


## create_cost_contain_zelis_edit_code

> <CostContainZelisEditCodeVBAResponse> create_cost_contain_zelis_edit_code(vbasoftware_database, cost_contain_zelis_edit_code)

Create CostContainZelisEditCode

Creates a new CostContainZelisEditCode

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

api_instance = Vba::ZelisCostContainmentEditCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_edit_code = Vba::CostContainZelisEditCode.new({edit_code: 'edit_code_example'}) # CostContainZelisEditCode | 

begin
  # Create CostContainZelisEditCode
  result = api_instance.create_cost_contain_zelis_edit_code(vbasoftware_database, cost_contain_zelis_edit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->create_cost_contain_zelis_edit_code: #{e}"
end
```

#### Using the create_cost_contain_zelis_edit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEditCodeVBAResponse>, Integer, Hash)> create_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, cost_contain_zelis_edit_code)

```ruby
begin
  # Create CostContainZelisEditCode
  data, status_code, headers = api_instance.create_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, cost_contain_zelis_edit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEditCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->create_cost_contain_zelis_edit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_edit_code** | [**CostContainZelisEditCode**](CostContainZelisEditCode.md) |  |  |

### Return type

[**CostContainZelisEditCodeVBAResponse**](CostContainZelisEditCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_zelis_edit_code

> delete_cost_contain_zelis_edit_code(vbasoftware_database, edit_code)

Delete CostContainZelisEditCode

Deletes an CostContainZelisEditCode

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

api_instance = Vba::ZelisCostContainmentEditCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edit_code = 'edit_code_example' # String | EditCode

begin
  # Delete CostContainZelisEditCode
  api_instance.delete_cost_contain_zelis_edit_code(vbasoftware_database, edit_code)
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->delete_cost_contain_zelis_edit_code: #{e}"
end
```

#### Using the delete_cost_contain_zelis_edit_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, edit_code)

```ruby
begin
  # Delete CostContainZelisEditCode
  data, status_code, headers = api_instance.delete_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, edit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->delete_cost_contain_zelis_edit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edit_code** | **String** | EditCode |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_zelis_edit_code

> <CostContainZelisEditCodeVBAResponse> get_cost_contain_zelis_edit_code(vbasoftware_database, edit_code)

Get CostContainZelisEditCode

Gets CostContainZelisEditCode

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

api_instance = Vba::ZelisCostContainmentEditCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edit_code = 'edit_code_example' # String | EditCode

begin
  # Get CostContainZelisEditCode
  result = api_instance.get_cost_contain_zelis_edit_code(vbasoftware_database, edit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->get_cost_contain_zelis_edit_code: #{e}"
end
```

#### Using the get_cost_contain_zelis_edit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEditCodeVBAResponse>, Integer, Hash)> get_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, edit_code)

```ruby
begin
  # Get CostContainZelisEditCode
  data, status_code, headers = api_instance.get_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, edit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEditCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->get_cost_contain_zelis_edit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edit_code** | **String** | EditCode |  |

### Return type

[**CostContainZelisEditCodeVBAResponse**](CostContainZelisEditCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_zelis_edit_code

> <CostContainZelisEditCodeListVBAResponse> list_cost_contain_zelis_edit_code(vbasoftware_database, opts)

List CostContainZelisEditCode

Lists all CostContainZelisEditCode

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

api_instance = Vba::ZelisCostContainmentEditCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainZelisEditCode
  result = api_instance.list_cost_contain_zelis_edit_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->list_cost_contain_zelis_edit_code: #{e}"
end
```

#### Using the list_cost_contain_zelis_edit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEditCodeListVBAResponse>, Integer, Hash)> list_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainZelisEditCode
  data, status_code, headers = api_instance.list_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEditCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->list_cost_contain_zelis_edit_code_with_http_info: #{e}"
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

[**CostContainZelisEditCodeListVBAResponse**](CostContainZelisEditCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_zelis_edit_code

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_zelis_edit_code(vbasoftware_database, cost_contain_zelis_edit_code)

Create or Update Batch CostContainZelisEditCode

Create or Update multiple CostContainZelisEditCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ZelisCostContainmentEditCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_edit_code = [Vba::CostContainZelisEditCode.new({edit_code: 'edit_code_example'})] # Array<CostContainZelisEditCode> | 

begin
  # Create or Update Batch CostContainZelisEditCode
  result = api_instance.update_batch_cost_contain_zelis_edit_code(vbasoftware_database, cost_contain_zelis_edit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->update_batch_cost_contain_zelis_edit_code: #{e}"
end
```

#### Using the update_batch_cost_contain_zelis_edit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, cost_contain_zelis_edit_code)

```ruby
begin
  # Create or Update Batch CostContainZelisEditCode
  data, status_code, headers = api_instance.update_batch_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, cost_contain_zelis_edit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->update_batch_cost_contain_zelis_edit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_edit_code** | [**Array&lt;CostContainZelisEditCode&gt;**](CostContainZelisEditCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_zelis_edit_code

> <CostContainZelisEditCodeVBAResponse> update_cost_contain_zelis_edit_code(vbasoftware_database, edit_code, cost_contain_zelis_edit_code)

Update CostContainZelisEditCode

Updates a specific CostContainZelisEditCode.

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

api_instance = Vba::ZelisCostContainmentEditCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edit_code = 'edit_code_example' # String | EditCode
cost_contain_zelis_edit_code = Vba::CostContainZelisEditCode.new({edit_code: 'edit_code_example'}) # CostContainZelisEditCode | 

begin
  # Update CostContainZelisEditCode
  result = api_instance.update_cost_contain_zelis_edit_code(vbasoftware_database, edit_code, cost_contain_zelis_edit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->update_cost_contain_zelis_edit_code: #{e}"
end
```

#### Using the update_cost_contain_zelis_edit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisEditCodeVBAResponse>, Integer, Hash)> update_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, edit_code, cost_contain_zelis_edit_code)

```ruby
begin
  # Update CostContainZelisEditCode
  data, status_code, headers = api_instance.update_cost_contain_zelis_edit_code_with_http_info(vbasoftware_database, edit_code, cost_contain_zelis_edit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisEditCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentEditCodesApi->update_cost_contain_zelis_edit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edit_code** | **String** | EditCode |  |
| **cost_contain_zelis_edit_code** | [**CostContainZelisEditCode**](CostContainZelisEditCode.md) |  |  |

### Return type

[**CostContainZelisEditCodeVBAResponse**](CostContainZelisEditCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

