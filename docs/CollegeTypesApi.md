# Vba::CollegeTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_college_type**](CollegeTypesApi.md#create_college_type) | **POST** /college-types | Create CollegeType |
| [**delete_college_type**](CollegeTypesApi.md#delete_college_type) | **DELETE** /college-types/{collegeType} | Delete CollegeType |
| [**get_college_type**](CollegeTypesApi.md#get_college_type) | **GET** /college-types/{collegeType} | Get CollegeType |
| [**list_college_type**](CollegeTypesApi.md#list_college_type) | **GET** /college-types | List CollegeType |
| [**update_batch_college_type**](CollegeTypesApi.md#update_batch_college_type) | **PUT** /college-types-batch | Create or Update Batch CollegeType |
| [**update_college_type**](CollegeTypesApi.md#update_college_type) | **PUT** /college-types/{collegeType} | Update CollegeType |


## create_college_type

> <CollegeTypeVBAResponse> create_college_type(vbasoftware_database, college_type)

Create CollegeType

Creates a new CollegeType

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

api_instance = Vba::CollegeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_type = Vba::CollegeType.new({college_type: 'college_type_example'}) # CollegeType | 

begin
  # Create CollegeType
  result = api_instance.create_college_type(vbasoftware_database, college_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->create_college_type: #{e}"
end
```

#### Using the create_college_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeTypeVBAResponse>, Integer, Hash)> create_college_type_with_http_info(vbasoftware_database, college_type)

```ruby
begin
  # Create CollegeType
  data, status_code, headers = api_instance.create_college_type_with_http_info(vbasoftware_database, college_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->create_college_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_type** | [**CollegeType**](CollegeType.md) |  |  |

### Return type

[**CollegeTypeVBAResponse**](CollegeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_college_type

> delete_college_type(vbasoftware_database, college_type)

Delete CollegeType

Deletes an CollegeType

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

api_instance = Vba::CollegeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_type = 'college_type_example' # String | College Type

begin
  # Delete CollegeType
  api_instance.delete_college_type(vbasoftware_database, college_type)
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->delete_college_type: #{e}"
end
```

#### Using the delete_college_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_college_type_with_http_info(vbasoftware_database, college_type)

```ruby
begin
  # Delete CollegeType
  data, status_code, headers = api_instance.delete_college_type_with_http_info(vbasoftware_database, college_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->delete_college_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_type** | **String** | College Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_college_type

> <CollegeTypeVBAResponse> get_college_type(vbasoftware_database, college_type)

Get CollegeType

Gets CollegeType

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

api_instance = Vba::CollegeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_type = 'college_type_example' # String | College Type

begin
  # Get CollegeType
  result = api_instance.get_college_type(vbasoftware_database, college_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->get_college_type: #{e}"
end
```

#### Using the get_college_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeTypeVBAResponse>, Integer, Hash)> get_college_type_with_http_info(vbasoftware_database, college_type)

```ruby
begin
  # Get CollegeType
  data, status_code, headers = api_instance.get_college_type_with_http_info(vbasoftware_database, college_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->get_college_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_type** | **String** | College Type |  |

### Return type

[**CollegeTypeVBAResponse**](CollegeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_college_type

> <CollegeTypeListVBAResponse> list_college_type(vbasoftware_database, opts)

List CollegeType

Lists all CollegeType

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

api_instance = Vba::CollegeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CollegeType
  result = api_instance.list_college_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->list_college_type: #{e}"
end
```

#### Using the list_college_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeTypeListVBAResponse>, Integer, Hash)> list_college_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CollegeType
  data, status_code, headers = api_instance.list_college_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->list_college_type_with_http_info: #{e}"
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

[**CollegeTypeListVBAResponse**](CollegeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_college_type

> <MultiCodeResponseListVBAResponse> update_batch_college_type(vbasoftware_database, college_type)

Create or Update Batch CollegeType

Create or Update multiple CollegeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CollegeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_type = [Vba::CollegeType.new({college_type: 'college_type_example'})] # Array<CollegeType> | 

begin
  # Create or Update Batch CollegeType
  result = api_instance.update_batch_college_type(vbasoftware_database, college_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->update_batch_college_type: #{e}"
end
```

#### Using the update_batch_college_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_college_type_with_http_info(vbasoftware_database, college_type)

```ruby
begin
  # Create or Update Batch CollegeType
  data, status_code, headers = api_instance.update_batch_college_type_with_http_info(vbasoftware_database, college_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->update_batch_college_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_type** | [**Array&lt;CollegeType&gt;**](CollegeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_college_type

> <CollegeTypeVBAResponse> update_college_type(vbasoftware_database, college_type, college_type2)

Update CollegeType

Updates a specific CollegeType.

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

api_instance = Vba::CollegeTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
college_type = 'college_type_example' # String | College Type
college_type2 = Vba::CollegeType.new({college_type: 'college_type_example'}) # CollegeType | 

begin
  # Update CollegeType
  result = api_instance.update_college_type(vbasoftware_database, college_type, college_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->update_college_type: #{e}"
end
```

#### Using the update_college_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CollegeTypeVBAResponse>, Integer, Hash)> update_college_type_with_http_info(vbasoftware_database, college_type, college_type2)

```ruby
begin
  # Update CollegeType
  data, status_code, headers = api_instance.update_college_type_with_http_info(vbasoftware_database, college_type, college_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CollegeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CollegeTypesApi->update_college_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **college_type** | **String** | College Type |  |
| **college_type2** | [**CollegeType**](CollegeType.md) |  |  |

### Return type

[**CollegeTypeVBAResponse**](CollegeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

