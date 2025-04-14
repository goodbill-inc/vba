# Vba::DuplicateColumnsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_duplicate_column**](DuplicateColumnsApi.md#create_duplicate_column) | **POST** /duplicate-columns | Create DuplicateColumn |
| [**delete_duplicate_column**](DuplicateColumnsApi.md#delete_duplicate_column) | **DELETE** /duplicate-columns/{duplicateColumnKey} | Delete DuplicateColumn |
| [**get_duplicate_column**](DuplicateColumnsApi.md#get_duplicate_column) | **GET** /duplicate-columns/{duplicateColumnKey} | Get DuplicateColumn |
| [**list_duplicate_column**](DuplicateColumnsApi.md#list_duplicate_column) | **GET** /duplicate-columns | List DuplicateColumn |
| [**update_batch_duplicate_column**](DuplicateColumnsApi.md#update_batch_duplicate_column) | **PUT** /duplicate-columns-batch | Create or Update Batch DuplicateColumn |
| [**update_duplicate_column**](DuplicateColumnsApi.md#update_duplicate_column) | **PUT** /duplicate-columns/{duplicateColumnKey} | Update DuplicateColumn |


## create_duplicate_column

> <DuplicateColumnVBAResponse> create_duplicate_column(vbasoftware_database, duplicate_column)

Create DuplicateColumn

Creates a new DuplicateColumn

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

api_instance = Vba::DuplicateColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_column = Vba::DuplicateColumn.new({duplicate_column_key: 37, column_name: 'column_name_example', table_name: 'table_name_example'}) # DuplicateColumn | 

begin
  # Create DuplicateColumn
  result = api_instance.create_duplicate_column(vbasoftware_database, duplicate_column)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->create_duplicate_column: #{e}"
end
```

#### Using the create_duplicate_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateColumnVBAResponse>, Integer, Hash)> create_duplicate_column_with_http_info(vbasoftware_database, duplicate_column)

```ruby
begin
  # Create DuplicateColumn
  data, status_code, headers = api_instance.create_duplicate_column_with_http_info(vbasoftware_database, duplicate_column)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->create_duplicate_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_column** | [**DuplicateColumn**](DuplicateColumn.md) |  |  |

### Return type

[**DuplicateColumnVBAResponse**](DuplicateColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_duplicate_column

> delete_duplicate_column(vbasoftware_database, duplicate_column_key)

Delete DuplicateColumn

Deletes an DuplicateColumn

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

api_instance = Vba::DuplicateColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_column_key = 56 # Integer | DuplicateColumn Key

begin
  # Delete DuplicateColumn
  api_instance.delete_duplicate_column(vbasoftware_database, duplicate_column_key)
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->delete_duplicate_column: #{e}"
end
```

#### Using the delete_duplicate_column_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_duplicate_column_with_http_info(vbasoftware_database, duplicate_column_key)

```ruby
begin
  # Delete DuplicateColumn
  data, status_code, headers = api_instance.delete_duplicate_column_with_http_info(vbasoftware_database, duplicate_column_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->delete_duplicate_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_column_key** | **Integer** | DuplicateColumn Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_duplicate_column

> <DuplicateColumnVBAResponse> get_duplicate_column(vbasoftware_database, duplicate_column_key)

Get DuplicateColumn

Gets DuplicateColumn

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

api_instance = Vba::DuplicateColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_column_key = 56 # Integer | DuplicateColumn Key

begin
  # Get DuplicateColumn
  result = api_instance.get_duplicate_column(vbasoftware_database, duplicate_column_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->get_duplicate_column: #{e}"
end
```

#### Using the get_duplicate_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateColumnVBAResponse>, Integer, Hash)> get_duplicate_column_with_http_info(vbasoftware_database, duplicate_column_key)

```ruby
begin
  # Get DuplicateColumn
  data, status_code, headers = api_instance.get_duplicate_column_with_http_info(vbasoftware_database, duplicate_column_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->get_duplicate_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_column_key** | **Integer** | DuplicateColumn Key |  |

### Return type

[**DuplicateColumnVBAResponse**](DuplicateColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_duplicate_column

> <DuplicateColumnListVBAResponse> list_duplicate_column(vbasoftware_database, opts)

List DuplicateColumn

Lists all DuplicateColumn

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

api_instance = Vba::DuplicateColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DuplicateColumn
  result = api_instance.list_duplicate_column(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->list_duplicate_column: #{e}"
end
```

#### Using the list_duplicate_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateColumnListVBAResponse>, Integer, Hash)> list_duplicate_column_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DuplicateColumn
  data, status_code, headers = api_instance.list_duplicate_column_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateColumnListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->list_duplicate_column_with_http_info: #{e}"
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

[**DuplicateColumnListVBAResponse**](DuplicateColumnListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_duplicate_column

> <MultiCodeResponseListVBAResponse> update_batch_duplicate_column(vbasoftware_database, duplicate_column)

Create or Update Batch DuplicateColumn

Create or Update multiple DuplicateColumn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DuplicateColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_column = [Vba::DuplicateColumn.new({duplicate_column_key: 37, column_name: 'column_name_example', table_name: 'table_name_example'})] # Array<DuplicateColumn> | 

begin
  # Create or Update Batch DuplicateColumn
  result = api_instance.update_batch_duplicate_column(vbasoftware_database, duplicate_column)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->update_batch_duplicate_column: #{e}"
end
```

#### Using the update_batch_duplicate_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_duplicate_column_with_http_info(vbasoftware_database, duplicate_column)

```ruby
begin
  # Create or Update Batch DuplicateColumn
  data, status_code, headers = api_instance.update_batch_duplicate_column_with_http_info(vbasoftware_database, duplicate_column)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->update_batch_duplicate_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_column** | [**Array&lt;DuplicateColumn&gt;**](DuplicateColumn.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_duplicate_column

> <DuplicateColumnVBAResponse> update_duplicate_column(vbasoftware_database, duplicate_column_key, duplicate_column)

Update DuplicateColumn

Updates a specific DuplicateColumn.

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

api_instance = Vba::DuplicateColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_column_key = 56 # Integer | DuplicateColumn Key
duplicate_column = Vba::DuplicateColumn.new({duplicate_column_key: 37, column_name: 'column_name_example', table_name: 'table_name_example'}) # DuplicateColumn | 

begin
  # Update DuplicateColumn
  result = api_instance.update_duplicate_column(vbasoftware_database, duplicate_column_key, duplicate_column)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->update_duplicate_column: #{e}"
end
```

#### Using the update_duplicate_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateColumnVBAResponse>, Integer, Hash)> update_duplicate_column_with_http_info(vbasoftware_database, duplicate_column_key, duplicate_column)

```ruby
begin
  # Update DuplicateColumn
  data, status_code, headers = api_instance.update_duplicate_column_with_http_info(vbasoftware_database, duplicate_column_key, duplicate_column)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateColumnsApi->update_duplicate_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_column_key** | **Integer** | DuplicateColumn Key |  |
| **duplicate_column** | [**DuplicateColumn**](DuplicateColumn.md) |  |  |

### Return type

[**DuplicateColumnVBAResponse**](DuplicateColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

