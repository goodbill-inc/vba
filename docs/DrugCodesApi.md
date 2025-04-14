# Vba::DrugCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drug_code**](DrugCodesApi.md#create_drug_code) | **POST** /drug-codes | Create DrugCode |
| [**delete_drug_code**](DrugCodesApi.md#delete_drug_code) | **DELETE** /drug-codes/{drugCodeKey} | Delete DrugCode |
| [**get_drug_code**](DrugCodesApi.md#get_drug_code) | **GET** /drug-codes/{drugCodeKey} | Get DrugCode |
| [**list_drug_code**](DrugCodesApi.md#list_drug_code) | **GET** /drug-codes | List DrugCode |
| [**update_batch_drug_code**](DrugCodesApi.md#update_batch_drug_code) | **PUT** /drug-codes-batch | Create or Update Batch DrugCode |
| [**update_drug_code**](DrugCodesApi.md#update_drug_code) | **PUT** /drug-codes/{drugCodeKey} | Update DrugCode |


## create_drug_code

> <DrugCodeVBAResponse> create_drug_code(vbasoftware_database, drug_code)

Create DrugCode

Creates a new DrugCode

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

api_instance = Vba::DrugCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code = Vba::DrugCode.new({drug_code_key: 37, drug_code: 'drug_code_example'}) # DrugCode | 

begin
  # Create DrugCode
  result = api_instance.create_drug_code(vbasoftware_database, drug_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->create_drug_code: #{e}"
end
```

#### Using the create_drug_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeVBAResponse>, Integer, Hash)> create_drug_code_with_http_info(vbasoftware_database, drug_code)

```ruby
begin
  # Create DrugCode
  data, status_code, headers = api_instance.create_drug_code_with_http_info(vbasoftware_database, drug_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->create_drug_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code** | [**DrugCode**](DrugCode.md) |  |  |

### Return type

[**DrugCodeVBAResponse**](DrugCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drug_code

> delete_drug_code(vbasoftware_database, drug_code_key)

Delete DrugCode

Deletes an DrugCode

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

api_instance = Vba::DrugCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_key = 56 # Integer | DrugCode Key

begin
  # Delete DrugCode
  api_instance.delete_drug_code(vbasoftware_database, drug_code_key)
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->delete_drug_code: #{e}"
end
```

#### Using the delete_drug_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drug_code_with_http_info(vbasoftware_database, drug_code_key)

```ruby
begin
  # Delete DrugCode
  data, status_code, headers = api_instance.delete_drug_code_with_http_info(vbasoftware_database, drug_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->delete_drug_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_key** | **Integer** | DrugCode Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drug_code

> <DrugCodeVBAResponse> get_drug_code(vbasoftware_database, drug_code_key)

Get DrugCode

Gets DrugCode

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

api_instance = Vba::DrugCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_key = 56 # Integer | DrugCode Key

begin
  # Get DrugCode
  result = api_instance.get_drug_code(vbasoftware_database, drug_code_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->get_drug_code: #{e}"
end
```

#### Using the get_drug_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeVBAResponse>, Integer, Hash)> get_drug_code_with_http_info(vbasoftware_database, drug_code_key)

```ruby
begin
  # Get DrugCode
  data, status_code, headers = api_instance.get_drug_code_with_http_info(vbasoftware_database, drug_code_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->get_drug_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_key** | **Integer** | DrugCode Key |  |

### Return type

[**DrugCodeVBAResponse**](DrugCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_drug_code

> <DrugCodeListVBAResponse> list_drug_code(vbasoftware_database, opts)

List DrugCode

Lists all DrugCode

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

api_instance = Vba::DrugCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DrugCode
  result = api_instance.list_drug_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->list_drug_code: #{e}"
end
```

#### Using the list_drug_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeListVBAResponse>, Integer, Hash)> list_drug_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DrugCode
  data, status_code, headers = api_instance.list_drug_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->list_drug_code_with_http_info: #{e}"
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

[**DrugCodeListVBAResponse**](DrugCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drug_code

> <MultiCodeResponseListVBAResponse> update_batch_drug_code(vbasoftware_database, drug_code)

Create or Update Batch DrugCode

Create or Update multiple DrugCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DrugCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code = [Vba::DrugCode.new({drug_code_key: 37, drug_code: 'drug_code_example'})] # Array<DrugCode> | 

begin
  # Create or Update Batch DrugCode
  result = api_instance.update_batch_drug_code(vbasoftware_database, drug_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->update_batch_drug_code: #{e}"
end
```

#### Using the update_batch_drug_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drug_code_with_http_info(vbasoftware_database, drug_code)

```ruby
begin
  # Create or Update Batch DrugCode
  data, status_code, headers = api_instance.update_batch_drug_code_with_http_info(vbasoftware_database, drug_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->update_batch_drug_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code** | [**Array&lt;DrugCode&gt;**](DrugCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drug_code

> <DrugCodeVBAResponse> update_drug_code(vbasoftware_database, drug_code_key, drug_code)

Update DrugCode

Updates a specific DrugCode.

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

api_instance = Vba::DrugCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drug_code_key = 56 # Integer | DrugCode Key
drug_code = Vba::DrugCode.new({drug_code_key: 37, drug_code: 'drug_code_example'}) # DrugCode | 

begin
  # Update DrugCode
  result = api_instance.update_drug_code(vbasoftware_database, drug_code_key, drug_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->update_drug_code: #{e}"
end
```

#### Using the update_drug_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DrugCodeVBAResponse>, Integer, Hash)> update_drug_code_with_http_info(vbasoftware_database, drug_code_key, drug_code)

```ruby
begin
  # Update DrugCode
  data, status_code, headers = api_instance.update_drug_code_with_http_info(vbasoftware_database, drug_code_key, drug_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DrugCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DrugCodesApi->update_drug_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drug_code_key** | **Integer** | DrugCode Key |  |
| **drug_code** | [**DrugCode**](DrugCode.md) |  |  |

### Return type

[**DrugCodeVBAResponse**](DrugCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

