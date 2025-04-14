# Vba::FilterTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_filter_type**](FilterTypesApi.md#create_filter_type) | **POST** /filter-types | Create FilterType |
| [**delete_filter_type**](FilterTypesApi.md#delete_filter_type) | **DELETE** /filter-types/{filterType} | Delete FilterType |
| [**get_filter_type**](FilterTypesApi.md#get_filter_type) | **GET** /filter-types/{filterType} | Get FilterType |
| [**list_filter_type**](FilterTypesApi.md#list_filter_type) | **GET** /filter-types | List FilterType |
| [**update_batch_filter_type**](FilterTypesApi.md#update_batch_filter_type) | **PUT** /filter-types-batch | Create or Update Batch FilterType |
| [**update_filter_type**](FilterTypesApi.md#update_filter_type) | **PUT** /filter-types/{filterType} | Update FilterType |


## create_filter_type

> <FilterTypeVBAResponse> create_filter_type(vbasoftware_database, filter_type)

Create FilterType

Creates a new FilterType

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

api_instance = Vba::FilterTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_type = Vba::FilterType.new({filter_type: 'filter_type_example'}) # FilterType | 

begin
  # Create FilterType
  result = api_instance.create_filter_type(vbasoftware_database, filter_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->create_filter_type: #{e}"
end
```

#### Using the create_filter_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterTypeVBAResponse>, Integer, Hash)> create_filter_type_with_http_info(vbasoftware_database, filter_type)

```ruby
begin
  # Create FilterType
  data, status_code, headers = api_instance.create_filter_type_with_http_info(vbasoftware_database, filter_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->create_filter_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_type** | [**FilterType**](FilterType.md) |  |  |

### Return type

[**FilterTypeVBAResponse**](FilterTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_filter_type

> delete_filter_type(vbasoftware_database, filter_type)

Delete FilterType

Deletes an FilterType

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

api_instance = Vba::FilterTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_type = 'filter_type_example' # String | Filter Type

begin
  # Delete FilterType
  api_instance.delete_filter_type(vbasoftware_database, filter_type)
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->delete_filter_type: #{e}"
end
```

#### Using the delete_filter_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_filter_type_with_http_info(vbasoftware_database, filter_type)

```ruby
begin
  # Delete FilterType
  data, status_code, headers = api_instance.delete_filter_type_with_http_info(vbasoftware_database, filter_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->delete_filter_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_type** | **String** | Filter Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_filter_type

> <FilterTypeVBAResponse> get_filter_type(vbasoftware_database, filter_type)

Get FilterType

Gets FilterType

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

api_instance = Vba::FilterTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_type = 'filter_type_example' # String | Filter Type

begin
  # Get FilterType
  result = api_instance.get_filter_type(vbasoftware_database, filter_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->get_filter_type: #{e}"
end
```

#### Using the get_filter_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterTypeVBAResponse>, Integer, Hash)> get_filter_type_with_http_info(vbasoftware_database, filter_type)

```ruby
begin
  # Get FilterType
  data, status_code, headers = api_instance.get_filter_type_with_http_info(vbasoftware_database, filter_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->get_filter_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_type** | **String** | Filter Type |  |

### Return type

[**FilterTypeVBAResponse**](FilterTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_filter_type

> <FilterTypeListVBAResponse> list_filter_type(vbasoftware_database, opts)

List FilterType

Lists all FilterType

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

api_instance = Vba::FilterTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FilterType
  result = api_instance.list_filter_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->list_filter_type: #{e}"
end
```

#### Using the list_filter_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterTypeListVBAResponse>, Integer, Hash)> list_filter_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FilterType
  data, status_code, headers = api_instance.list_filter_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->list_filter_type_with_http_info: #{e}"
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

[**FilterTypeListVBAResponse**](FilterTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_filter_type

> <MultiCodeResponseListVBAResponse> update_batch_filter_type(vbasoftware_database, filter_type)

Create or Update Batch FilterType

Create or Update multiple FilterType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FilterTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_type = [Vba::FilterType.new({filter_type: 'filter_type_example'})] # Array<FilterType> | 

begin
  # Create or Update Batch FilterType
  result = api_instance.update_batch_filter_type(vbasoftware_database, filter_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->update_batch_filter_type: #{e}"
end
```

#### Using the update_batch_filter_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_filter_type_with_http_info(vbasoftware_database, filter_type)

```ruby
begin
  # Create or Update Batch FilterType
  data, status_code, headers = api_instance.update_batch_filter_type_with_http_info(vbasoftware_database, filter_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->update_batch_filter_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_type** | [**Array&lt;FilterType&gt;**](FilterType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_filter_type

> <FilterTypeVBAResponse> update_filter_type(vbasoftware_database, filter_type, filter_type2)

Update FilterType

Updates a specific FilterType.

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

api_instance = Vba::FilterTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
filter_type = 'filter_type_example' # String | Filter Type
filter_type2 = Vba::FilterType.new({filter_type: 'filter_type_example'}) # FilterType | 

begin
  # Update FilterType
  result = api_instance.update_filter_type(vbasoftware_database, filter_type, filter_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->update_filter_type: #{e}"
end
```

#### Using the update_filter_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilterTypeVBAResponse>, Integer, Hash)> update_filter_type_with_http_info(vbasoftware_database, filter_type, filter_type2)

```ruby
begin
  # Update FilterType
  data, status_code, headers = api_instance.update_filter_type_with_http_info(vbasoftware_database, filter_type, filter_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilterTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FilterTypesApi->update_filter_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **filter_type** | **String** | Filter Type |  |
| **filter_type2** | [**FilterType**](FilterType.md) |  |  |

### Return type

[**FilterTypeVBAResponse**](FilterTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

