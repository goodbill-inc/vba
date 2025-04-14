# Vba::DuplicateSetColumnsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_duplicate_set_column**](DuplicateSetColumnsApi.md#create_duplicate_set_column) | **POST** /duplicate-sets/{duplicateSetKey}/columns | Create DuplicateSetColumn |
| [**delete_duplicate_set_column**](DuplicateSetColumnsApi.md#delete_duplicate_set_column) | **DELETE** /duplicate-sets/{duplicateSetKey}/columns/{duplicateColumnKey} | Delete DuplicateSetColumn |
| [**get_duplicate_set_column**](DuplicateSetColumnsApi.md#get_duplicate_set_column) | **GET** /duplicate-sets/{duplicateSetKey}/columns/{duplicateColumnKey} | Get DuplicateSetColumn |
| [**list_duplicate_set_column**](DuplicateSetColumnsApi.md#list_duplicate_set_column) | **GET** /duplicate-sets/{duplicateSetKey}/columns | List DuplicateSetColumn |
| [**update_batch_duplicate_set_column**](DuplicateSetColumnsApi.md#update_batch_duplicate_set_column) | **PUT** /duplicate-sets/{duplicateSetKey}/columns-batch | Create or Update Batch DuplicateSetColumn |
| [**update_duplicate_set_column**](DuplicateSetColumnsApi.md#update_duplicate_set_column) | **PUT** /duplicate-sets/{duplicateSetKey}/columns/{duplicateColumnKey} | Update DuplicateSetColumn |


## create_duplicate_set_column

> <DuplicateSetColumnVBAResponse> create_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_set_column)

Create DuplicateSetColumn

Creates a new DuplicateSetColumn

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

api_instance = Vba::DuplicateSetColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_set_column = Vba::DuplicateSetColumn.new({duplicate_set_key: 37, duplicate_column_key: 37, hard_duplicate: false, soft_duplicate: false}) # DuplicateSetColumn | 

begin
  # Create DuplicateSetColumn
  result = api_instance.create_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_set_column)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->create_duplicate_set_column: #{e}"
end
```

#### Using the create_duplicate_set_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetColumnVBAResponse>, Integer, Hash)> create_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_set_column)

```ruby
begin
  # Create DuplicateSetColumn
  data, status_code, headers = api_instance.create_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_set_column)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->create_duplicate_set_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_set_column** | [**DuplicateSetColumn**](DuplicateSetColumn.md) |  |  |

### Return type

[**DuplicateSetColumnVBAResponse**](DuplicateSetColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_duplicate_set_column

> delete_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_column_key)

Delete DuplicateSetColumn

Deletes an DuplicateSetColumn

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

api_instance = Vba::DuplicateSetColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_column_key = 56 # Integer | DuplicateColumn Key

begin
  # Delete DuplicateSetColumn
  api_instance.delete_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_column_key)
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->delete_duplicate_set_column: #{e}"
end
```

#### Using the delete_duplicate_set_column_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_column_key)

```ruby
begin
  # Delete DuplicateSetColumn
  data, status_code, headers = api_instance.delete_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_column_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->delete_duplicate_set_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_column_key** | **Integer** | DuplicateColumn Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_duplicate_set_column

> <DuplicateSetColumnVBAResponse> get_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_column_key)

Get DuplicateSetColumn

Gets DuplicateSetColumn

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

api_instance = Vba::DuplicateSetColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_column_key = 56 # Integer | DuplicateColumn Key

begin
  # Get DuplicateSetColumn
  result = api_instance.get_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_column_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->get_duplicate_set_column: #{e}"
end
```

#### Using the get_duplicate_set_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetColumnVBAResponse>, Integer, Hash)> get_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_column_key)

```ruby
begin
  # Get DuplicateSetColumn
  data, status_code, headers = api_instance.get_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_column_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->get_duplicate_set_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_column_key** | **Integer** | DuplicateColumn Key |  |

### Return type

[**DuplicateSetColumnVBAResponse**](DuplicateSetColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_duplicate_set_column

> <DuplicateSetColumnListVBAResponse> list_duplicate_set_column(vbasoftware_database, duplicate_set_key, opts)

List DuplicateSetColumn

Lists all DuplicateSetColumn for the given duplicateSetKey

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

api_instance = Vba::DuplicateSetColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DuplicateSetColumn
  result = api_instance.list_duplicate_set_column(vbasoftware_database, duplicate_set_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->list_duplicate_set_column: #{e}"
end
```

#### Using the list_duplicate_set_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetColumnListVBAResponse>, Integer, Hash)> list_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, opts)

```ruby
begin
  # List DuplicateSetColumn
  data, status_code, headers = api_instance.list_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetColumnListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->list_duplicate_set_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**DuplicateSetColumnListVBAResponse**](DuplicateSetColumnListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_duplicate_set_column

> <MultiCodeResponseListVBAResponse> update_batch_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_set_column)

Create or Update Batch DuplicateSetColumn

Create or Update multiple DuplicateSetColumn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DuplicateSetColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_set_column = [Vba::DuplicateSetColumn.new({duplicate_set_key: 37, duplicate_column_key: 37, hard_duplicate: false, soft_duplicate: false})] # Array<DuplicateSetColumn> | 

begin
  # Create or Update Batch DuplicateSetColumn
  result = api_instance.update_batch_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_set_column)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->update_batch_duplicate_set_column: #{e}"
end
```

#### Using the update_batch_duplicate_set_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_set_column)

```ruby
begin
  # Create or Update Batch DuplicateSetColumn
  data, status_code, headers = api_instance.update_batch_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_set_column)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->update_batch_duplicate_set_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_set_column** | [**Array&lt;DuplicateSetColumn&gt;**](DuplicateSetColumn.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_duplicate_set_column

> <DuplicateSetColumnVBAResponse> update_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_column_key, duplicate_set_column)

Update DuplicateSetColumn

Updates a specific DuplicateSetColumn.

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

api_instance = Vba::DuplicateSetColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_column_key = 56 # Integer | DuplicateColumn Key
duplicate_set_column = Vba::DuplicateSetColumn.new({duplicate_set_key: 37, duplicate_column_key: 37, hard_duplicate: false, soft_duplicate: false}) # DuplicateSetColumn | 

begin
  # Update DuplicateSetColumn
  result = api_instance.update_duplicate_set_column(vbasoftware_database, duplicate_set_key, duplicate_column_key, duplicate_set_column)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->update_duplicate_set_column: #{e}"
end
```

#### Using the update_duplicate_set_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetColumnVBAResponse>, Integer, Hash)> update_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_column_key, duplicate_set_column)

```ruby
begin
  # Update DuplicateSetColumn
  data, status_code, headers = api_instance.update_duplicate_set_column_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_column_key, duplicate_set_column)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetColumnsApi->update_duplicate_set_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_column_key** | **Integer** | DuplicateColumn Key |  |
| **duplicate_set_column** | [**DuplicateSetColumn**](DuplicateSetColumn.md) |  |  |

### Return type

[**DuplicateSetColumnVBAResponse**](DuplicateSetColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

