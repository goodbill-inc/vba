# Vba::ExpenseTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_expense_type**](ExpenseTypesApi.md#create_expense_type) | **POST** /expense-types | Create ExpenseType |
| [**delete_expense_type**](ExpenseTypesApi.md#delete_expense_type) | **DELETE** /expense-types/{expenseType} | Delete ExpenseType |
| [**get_expense_type**](ExpenseTypesApi.md#get_expense_type) | **GET** /expense-types/{expenseType} | Get ExpenseType |
| [**list_expense_type**](ExpenseTypesApi.md#list_expense_type) | **GET** /expense-types | List ExpenseType |
| [**update_batch_expense_type**](ExpenseTypesApi.md#update_batch_expense_type) | **PUT** /expense-types-batch | Create or Update Batch ExpenseType |
| [**update_expense_type**](ExpenseTypesApi.md#update_expense_type) | **PUT** /expense-types/{expenseType} | Update ExpenseType |


## create_expense_type

> <ExpenseTypeVBAResponse> create_expense_type(vbasoftware_database, expense_type)

Create ExpenseType

Creates a new ExpenseType

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

api_instance = Vba::ExpenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
expense_type = Vba::ExpenseType.new({expense_type: 'expense_type_example'}) # ExpenseType | 

begin
  # Create ExpenseType
  result = api_instance.create_expense_type(vbasoftware_database, expense_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->create_expense_type: #{e}"
end
```

#### Using the create_expense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpenseTypeVBAResponse>, Integer, Hash)> create_expense_type_with_http_info(vbasoftware_database, expense_type)

```ruby
begin
  # Create ExpenseType
  data, status_code, headers = api_instance.create_expense_type_with_http_info(vbasoftware_database, expense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->create_expense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **expense_type** | [**ExpenseType**](ExpenseType.md) |  |  |

### Return type

[**ExpenseTypeVBAResponse**](ExpenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_expense_type

> delete_expense_type(vbasoftware_database, expense_type)

Delete ExpenseType

Deletes an ExpenseType

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

api_instance = Vba::ExpenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
expense_type = 'expense_type_example' # String | Expense Type

begin
  # Delete ExpenseType
  api_instance.delete_expense_type(vbasoftware_database, expense_type)
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->delete_expense_type: #{e}"
end
```

#### Using the delete_expense_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_expense_type_with_http_info(vbasoftware_database, expense_type)

```ruby
begin
  # Delete ExpenseType
  data, status_code, headers = api_instance.delete_expense_type_with_http_info(vbasoftware_database, expense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->delete_expense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **expense_type** | **String** | Expense Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_expense_type

> <ExpenseTypeVBAResponse> get_expense_type(vbasoftware_database, expense_type)

Get ExpenseType

Gets ExpenseType

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

api_instance = Vba::ExpenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
expense_type = 'expense_type_example' # String | Expense Type

begin
  # Get ExpenseType
  result = api_instance.get_expense_type(vbasoftware_database, expense_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->get_expense_type: #{e}"
end
```

#### Using the get_expense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpenseTypeVBAResponse>, Integer, Hash)> get_expense_type_with_http_info(vbasoftware_database, expense_type)

```ruby
begin
  # Get ExpenseType
  data, status_code, headers = api_instance.get_expense_type_with_http_info(vbasoftware_database, expense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->get_expense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **expense_type** | **String** | Expense Type |  |

### Return type

[**ExpenseTypeVBAResponse**](ExpenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_expense_type

> <ExpenseTypeListVBAResponse> list_expense_type(vbasoftware_database, opts)

List ExpenseType

Lists all ExpenseType

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

api_instance = Vba::ExpenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ExpenseType
  result = api_instance.list_expense_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->list_expense_type: #{e}"
end
```

#### Using the list_expense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpenseTypeListVBAResponse>, Integer, Hash)> list_expense_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ExpenseType
  data, status_code, headers = api_instance.list_expense_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpenseTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->list_expense_type_with_http_info: #{e}"
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

[**ExpenseTypeListVBAResponse**](ExpenseTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_expense_type

> <MultiCodeResponseListVBAResponse> update_batch_expense_type(vbasoftware_database, expense_type)

Create or Update Batch ExpenseType

Create or Update multiple ExpenseType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ExpenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
expense_type = [Vba::ExpenseType.new({expense_type: 'expense_type_example'})] # Array<ExpenseType> | 

begin
  # Create or Update Batch ExpenseType
  result = api_instance.update_batch_expense_type(vbasoftware_database, expense_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->update_batch_expense_type: #{e}"
end
```

#### Using the update_batch_expense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_expense_type_with_http_info(vbasoftware_database, expense_type)

```ruby
begin
  # Create or Update Batch ExpenseType
  data, status_code, headers = api_instance.update_batch_expense_type_with_http_info(vbasoftware_database, expense_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->update_batch_expense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **expense_type** | [**Array&lt;ExpenseType&gt;**](ExpenseType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_expense_type

> <ExpenseTypeVBAResponse> update_expense_type(vbasoftware_database, expense_type, expense_type2)

Update ExpenseType

Updates a specific ExpenseType.

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

api_instance = Vba::ExpenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
expense_type = 'expense_type_example' # String | Expense Type
expense_type2 = Vba::ExpenseType.new({expense_type: 'expense_type_example'}) # ExpenseType | 

begin
  # Update ExpenseType
  result = api_instance.update_expense_type(vbasoftware_database, expense_type, expense_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->update_expense_type: #{e}"
end
```

#### Using the update_expense_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExpenseTypeVBAResponse>, Integer, Hash)> update_expense_type_with_http_info(vbasoftware_database, expense_type, expense_type2)

```ruby
begin
  # Update ExpenseType
  data, status_code, headers = api_instance.update_expense_type_with_http_info(vbasoftware_database, expense_type, expense_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExpenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ExpenseTypesApi->update_expense_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **expense_type** | **String** | Expense Type |  |
| **expense_type2** | [**ExpenseType**](ExpenseType.md) |  |  |

### Return type

[**ExpenseTypeVBAResponse**](ExpenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

