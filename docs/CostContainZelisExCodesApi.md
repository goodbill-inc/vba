# Vba::CostContainZelisExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_zelis_ex_code**](CostContainZelisExCodesApi.md#create_cost_contain_zelis_ex_code) | **POST** /cost-contain-zelis-ex-codes | Create CostContainZelisExCode |
| [**delete_cost_contain_zelis_ex_code**](CostContainZelisExCodesApi.md#delete_cost_contain_zelis_ex_code) | **DELETE** /cost-contain-zelis-ex-codes/{exCode} | Delete CostContainZelisExCode |
| [**get_cost_contain_zelis_ex_code**](CostContainZelisExCodesApi.md#get_cost_contain_zelis_ex_code) | **GET** /cost-contain-zelis-ex-codes/{exCode} | Get CostContainZelisExCode |
| [**list_cost_contain_zelis_ex_code**](CostContainZelisExCodesApi.md#list_cost_contain_zelis_ex_code) | **GET** /cost-contain-zelis-ex-codes | List CostContainZelisExCode |
| [**update_batch_cost_contain_zelis_ex_code**](CostContainZelisExCodesApi.md#update_batch_cost_contain_zelis_ex_code) | **PUT** /cost-contain-zelis-ex-codes-batch | Create or Update Batch CostContainZelisExCode |
| [**update_cost_contain_zelis_ex_code**](CostContainZelisExCodesApi.md#update_cost_contain_zelis_ex_code) | **PUT** /cost-contain-zelis-ex-codes/{exCode} | Update CostContainZelisExCode |


## create_cost_contain_zelis_ex_code

> <CostContainZelisExCodeVBAResponse> create_cost_contain_zelis_ex_code(vbasoftware_database, cost_contain_zelis_ex_code)

Create CostContainZelisExCode

Creates a new CostContainZelisExCode

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

api_instance = Vba::CostContainZelisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_ex_code = Vba::CostContainZelisExCode.new({ex_code: 'ex_code_example', in_network: false, oon: false}) # CostContainZelisExCode | 

begin
  # Create CostContainZelisExCode
  result = api_instance.create_cost_contain_zelis_ex_code(vbasoftware_database, cost_contain_zelis_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->create_cost_contain_zelis_ex_code: #{e}"
end
```

#### Using the create_cost_contain_zelis_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisExCodeVBAResponse>, Integer, Hash)> create_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, cost_contain_zelis_ex_code)

```ruby
begin
  # Create CostContainZelisExCode
  data, status_code, headers = api_instance.create_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, cost_contain_zelis_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->create_cost_contain_zelis_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_ex_code** | [**CostContainZelisExCode**](CostContainZelisExCode.md) |  |  |

### Return type

[**CostContainZelisExCodeVBAResponse**](CostContainZelisExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_zelis_ex_code

> delete_cost_contain_zelis_ex_code(vbasoftware_database, ex_code)

Delete CostContainZelisExCode

Deletes an CostContainZelisExCode

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

api_instance = Vba::CostContainZelisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Delete CostContainZelisExCode
  api_instance.delete_cost_contain_zelis_ex_code(vbasoftware_database, ex_code)
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->delete_cost_contain_zelis_ex_code: #{e}"
end
```

#### Using the delete_cost_contain_zelis_ex_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, ex_code)

```ruby
begin
  # Delete CostContainZelisExCode
  data, status_code, headers = api_instance.delete_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->delete_cost_contain_zelis_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_zelis_ex_code

> <CostContainZelisExCodeVBAResponse> get_cost_contain_zelis_ex_code(vbasoftware_database, ex_code)

Get CostContainZelisExCode

Gets CostContainZelisExCode

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

api_instance = Vba::CostContainZelisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code

begin
  # Get CostContainZelisExCode
  result = api_instance.get_cost_contain_zelis_ex_code(vbasoftware_database, ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->get_cost_contain_zelis_ex_code: #{e}"
end
```

#### Using the get_cost_contain_zelis_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisExCodeVBAResponse>, Integer, Hash)> get_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, ex_code)

```ruby
begin
  # Get CostContainZelisExCode
  data, status_code, headers = api_instance.get_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->get_cost_contain_zelis_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |

### Return type

[**CostContainZelisExCodeVBAResponse**](CostContainZelisExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_zelis_ex_code

> <CostContainZelisExCodeListVBAResponse> list_cost_contain_zelis_ex_code(vbasoftware_database, opts)

List CostContainZelisExCode

Lists all CostContainZelisExCode

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

api_instance = Vba::CostContainZelisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainZelisExCode
  result = api_instance.list_cost_contain_zelis_ex_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->list_cost_contain_zelis_ex_code: #{e}"
end
```

#### Using the list_cost_contain_zelis_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisExCodeListVBAResponse>, Integer, Hash)> list_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainZelisExCode
  data, status_code, headers = api_instance.list_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisExCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->list_cost_contain_zelis_ex_code_with_http_info: #{e}"
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

[**CostContainZelisExCodeListVBAResponse**](CostContainZelisExCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_zelis_ex_code

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_zelis_ex_code(vbasoftware_database, cost_contain_zelis_ex_code)

Create or Update Batch CostContainZelisExCode

Create or Update multiple CostContainZelisExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CostContainZelisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_ex_code = [Vba::CostContainZelisExCode.new({ex_code: 'ex_code_example', in_network: false, oon: false})] # Array<CostContainZelisExCode> | 

begin
  # Create or Update Batch CostContainZelisExCode
  result = api_instance.update_batch_cost_contain_zelis_ex_code(vbasoftware_database, cost_contain_zelis_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->update_batch_cost_contain_zelis_ex_code: #{e}"
end
```

#### Using the update_batch_cost_contain_zelis_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, cost_contain_zelis_ex_code)

```ruby
begin
  # Create or Update Batch CostContainZelisExCode
  data, status_code, headers = api_instance.update_batch_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, cost_contain_zelis_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->update_batch_cost_contain_zelis_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_ex_code** | [**Array&lt;CostContainZelisExCode&gt;**](CostContainZelisExCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_zelis_ex_code

> <CostContainZelisExCodeVBAResponse> update_cost_contain_zelis_ex_code(vbasoftware_database, ex_code, cost_contain_zelis_ex_code)

Update CostContainZelisExCode

Updates a specific CostContainZelisExCode.

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

api_instance = Vba::CostContainZelisExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ex_code = 'ex_code_example' # String | Ex Code
cost_contain_zelis_ex_code = Vba::CostContainZelisExCode.new({ex_code: 'ex_code_example', in_network: false, oon: false}) # CostContainZelisExCode | 

begin
  # Update CostContainZelisExCode
  result = api_instance.update_cost_contain_zelis_ex_code(vbasoftware_database, ex_code, cost_contain_zelis_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->update_cost_contain_zelis_ex_code: #{e}"
end
```

#### Using the update_cost_contain_zelis_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisExCodeVBAResponse>, Integer, Hash)> update_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, ex_code, cost_contain_zelis_ex_code)

```ruby
begin
  # Update CostContainZelisExCode
  data, status_code, headers = api_instance.update_cost_contain_zelis_ex_code_with_http_info(vbasoftware_database, ex_code, cost_contain_zelis_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CostContainZelisExCodesApi->update_cost_contain_zelis_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ex_code** | **String** | Ex Code |  |
| **cost_contain_zelis_ex_code** | [**CostContainZelisExCode**](CostContainZelisExCode.md) |  |  |

### Return type

[**CostContainZelisExCodeVBAResponse**](CostContainZelisExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

