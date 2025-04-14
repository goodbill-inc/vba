# Vba::ProcedureCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_procedure_category**](ProcedureCategoriesApi.md#create_procedure_category) | **POST** /procedure-categories | Create ProcedureCategory |
| [**delete_procedure_category**](ProcedureCategoriesApi.md#delete_procedure_category) | **DELETE** /procedure-categories/{categoryID} | Delete ProcedureCategory |
| [**get_procedure_category**](ProcedureCategoriesApi.md#get_procedure_category) | **GET** /procedure-categories/{categoryID} | Get ProcedureCategory |
| [**list_procedure_category**](ProcedureCategoriesApi.md#list_procedure_category) | **GET** /procedure-categories | List ProcedureCategory |
| [**update_batch_procedure_category**](ProcedureCategoriesApi.md#update_batch_procedure_category) | **PUT** /procedure-categories-batch | Create or Update Batch ProcedureCategory |
| [**update_procedure_category**](ProcedureCategoriesApi.md#update_procedure_category) | **PUT** /procedure-categories/{categoryID} | Update ProcedureCategory |


## create_procedure_category

> <ProcedureCategoryVBAResponse> create_procedure_category(vbasoftware_database, procedure_category)

Create ProcedureCategory

Creates a new ProcedureCategory

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

api_instance = Vba::ProcedureCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_category = Vba::ProcedureCategory.new({category_id: 'category_id_example'}) # ProcedureCategory | 

begin
  # Create ProcedureCategory
  result = api_instance.create_procedure_category(vbasoftware_database, procedure_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->create_procedure_category: #{e}"
end
```

#### Using the create_procedure_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCategoryVBAResponse>, Integer, Hash)> create_procedure_category_with_http_info(vbasoftware_database, procedure_category)

```ruby
begin
  # Create ProcedureCategory
  data, status_code, headers = api_instance.create_procedure_category_with_http_info(vbasoftware_database, procedure_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->create_procedure_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_category** | [**ProcedureCategory**](ProcedureCategory.md) |  |  |

### Return type

[**ProcedureCategoryVBAResponse**](ProcedureCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_procedure_category

> delete_procedure_category(vbasoftware_database, category_id)

Delete ProcedureCategory

Deletes an ProcedureCategory

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

api_instance = Vba::ProcedureCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category_id = 'category_id_example' # String | Category ID

begin
  # Delete ProcedureCategory
  api_instance.delete_procedure_category(vbasoftware_database, category_id)
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->delete_procedure_category: #{e}"
end
```

#### Using the delete_procedure_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_procedure_category_with_http_info(vbasoftware_database, category_id)

```ruby
begin
  # Delete ProcedureCategory
  data, status_code, headers = api_instance.delete_procedure_category_with_http_info(vbasoftware_database, category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->delete_procedure_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category_id** | **String** | Category ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_procedure_category

> <ProcedureCategoryVBAResponse> get_procedure_category(vbasoftware_database, category_id)

Get ProcedureCategory

Gets ProcedureCategory

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

api_instance = Vba::ProcedureCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category_id = 'category_id_example' # String | Category ID

begin
  # Get ProcedureCategory
  result = api_instance.get_procedure_category(vbasoftware_database, category_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->get_procedure_category: #{e}"
end
```

#### Using the get_procedure_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCategoryVBAResponse>, Integer, Hash)> get_procedure_category_with_http_info(vbasoftware_database, category_id)

```ruby
begin
  # Get ProcedureCategory
  data, status_code, headers = api_instance.get_procedure_category_with_http_info(vbasoftware_database, category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->get_procedure_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category_id** | **String** | Category ID |  |

### Return type

[**ProcedureCategoryVBAResponse**](ProcedureCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_procedure_category

> <ProcedureCategoryListVBAResponse> list_procedure_category(vbasoftware_database)

List ProcedureCategory

Lists all ProcedureCategory given a specific 

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

api_instance = Vba::ProcedureCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List ProcedureCategory
  result = api_instance.list_procedure_category(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->list_procedure_category: #{e}"
end
```

#### Using the list_procedure_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCategoryListVBAResponse>, Integer, Hash)> list_procedure_category_with_http_info(vbasoftware_database)

```ruby
begin
  # List ProcedureCategory
  data, status_code, headers = api_instance.list_procedure_category_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->list_procedure_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ProcedureCategoryListVBAResponse**](ProcedureCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_procedure_category

> <MultiCodeResponseListVBAResponse> update_batch_procedure_category(vbasoftware_database, procedure_category)

Create or Update Batch ProcedureCategory

Create or Update multiple ProcedureCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProcedureCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
procedure_category = [Vba::ProcedureCategory.new({category_id: 'category_id_example'})] # Array<ProcedureCategory> | 

begin
  # Create or Update Batch ProcedureCategory
  result = api_instance.update_batch_procedure_category(vbasoftware_database, procedure_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->update_batch_procedure_category: #{e}"
end
```

#### Using the update_batch_procedure_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_procedure_category_with_http_info(vbasoftware_database, procedure_category)

```ruby
begin
  # Create or Update Batch ProcedureCategory
  data, status_code, headers = api_instance.update_batch_procedure_category_with_http_info(vbasoftware_database, procedure_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->update_batch_procedure_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **procedure_category** | [**Array&lt;ProcedureCategory&gt;**](ProcedureCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_procedure_category

> <ProcedureCategoryVBAResponse> update_procedure_category(vbasoftware_database, category_id, procedure_category)

Update ProcedureCategory

Updates a specific ProcedureCategory.

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

api_instance = Vba::ProcedureCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
category_id = 'category_id_example' # String | Category ID
procedure_category = Vba::ProcedureCategory.new({category_id: 'category_id_example'}) # ProcedureCategory | 

begin
  # Update ProcedureCategory
  result = api_instance.update_procedure_category(vbasoftware_database, category_id, procedure_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->update_procedure_category: #{e}"
end
```

#### Using the update_procedure_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProcedureCategoryVBAResponse>, Integer, Hash)> update_procedure_category_with_http_info(vbasoftware_database, category_id, procedure_category)

```ruby
begin
  # Update ProcedureCategory
  data, status_code, headers = api_instance.update_procedure_category_with_http_info(vbasoftware_database, category_id, procedure_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProcedureCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProcedureCategoriesApi->update_procedure_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **category_id** | **String** | Category ID |  |
| **procedure_category** | [**ProcedureCategory**](ProcedureCategory.md) |  |  |

### Return type

[**ProcedureCategoryVBAResponse**](ProcedureCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

