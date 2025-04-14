# Vba::GroupClassesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_class**](GroupClassesApi.md#create_group_class) | **POST** /groups/{groupID}/classes | Create GroupClass |
| [**delete_group_class**](GroupClassesApi.md#delete_group_class) | **DELETE** /groups/{groupID}/classes/{groupDivisionClassKey} | Delete GroupClass |
| [**get_group_class**](GroupClassesApi.md#get_group_class) | **GET** /groups/{groupID}/classes/{groupDivisionClassKey} | Get GroupClass |
| [**list_group_class**](GroupClassesApi.md#list_group_class) | **GET** /groups/{groupID}/classes | List GroupClass |
| [**update_batch_group_class**](GroupClassesApi.md#update_batch_group_class) | **PUT** /groups/{groupID}/classes-batch | Create or Update Batch GroupClass |
| [**update_group_class**](GroupClassesApi.md#update_group_class) | **PUT** /groups/{groupID}/classes/{groupDivisionClassKey} | Update GroupClass |


## create_group_class

> <GroupClassVBAResponse> create_group_class(vbasoftware_database, group_id, group_class)

Create GroupClass

Creates a new GroupClass

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

api_instance = Vba::GroupClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_class = Vba::GroupClass.new({group_division_class_key: 37, cobra: false, class_code: 'class_code_example', group_id: 'group_id_example', smart_flex: false}) # GroupClass | 

begin
  # Create GroupClass
  result = api_instance.create_group_class(vbasoftware_database, group_id, group_class)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->create_group_class: #{e}"
end
```

#### Using the create_group_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupClassVBAResponse>, Integer, Hash)> create_group_class_with_http_info(vbasoftware_database, group_id, group_class)

```ruby
begin
  # Create GroupClass
  data, status_code, headers = api_instance.create_group_class_with_http_info(vbasoftware_database, group_id, group_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupClassVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->create_group_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_class** | [**GroupClass**](GroupClass.md) |  |  |

### Return type

[**GroupClassVBAResponse**](GroupClassVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_class

> delete_group_class(vbasoftware_database, group_id, group_division_class_key)

Delete GroupClass

Deletes an GroupClass

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

api_instance = Vba::GroupClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_division_class_key = 56 # Integer | GroupDivisionClass Key

begin
  # Delete GroupClass
  api_instance.delete_group_class(vbasoftware_database, group_id, group_division_class_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->delete_group_class: #{e}"
end
```

#### Using the delete_group_class_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_class_with_http_info(vbasoftware_database, group_id, group_division_class_key)

```ruby
begin
  # Delete GroupClass
  data, status_code, headers = api_instance.delete_group_class_with_http_info(vbasoftware_database, group_id, group_division_class_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->delete_group_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_division_class_key** | **Integer** | GroupDivisionClass Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_class

> <GroupClassVBAResponse> get_group_class(vbasoftware_database, group_id, group_division_class_key)

Get GroupClass

Gets GroupClass

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

api_instance = Vba::GroupClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_division_class_key = 56 # Integer | GroupDivisionClass Key

begin
  # Get GroupClass
  result = api_instance.get_group_class(vbasoftware_database, group_id, group_division_class_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->get_group_class: #{e}"
end
```

#### Using the get_group_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupClassVBAResponse>, Integer, Hash)> get_group_class_with_http_info(vbasoftware_database, group_id, group_division_class_key)

```ruby
begin
  # Get GroupClass
  data, status_code, headers = api_instance.get_group_class_with_http_info(vbasoftware_database, group_id, group_division_class_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupClassVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->get_group_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_division_class_key** | **Integer** | GroupDivisionClass Key |  |

### Return type

[**GroupClassVBAResponse**](GroupClassVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_class

> <GroupClassListVBAResponse> list_group_class(vbasoftware_database, group_id, opts)

List GroupClass

Lists all GroupClass for the given groupID

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

api_instance = Vba::GroupClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupClass
  result = api_instance.list_group_class(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->list_group_class: #{e}"
end
```

#### Using the list_group_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupClassListVBAResponse>, Integer, Hash)> list_group_class_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupClass
  data, status_code, headers = api_instance.list_group_class_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupClassListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->list_group_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupClassListVBAResponse**](GroupClassListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_class

> <MultiCodeResponseListVBAResponse> update_batch_group_class(vbasoftware_database, group_id, group_class)

Create or Update Batch GroupClass

Create or Update multiple GroupClass at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_class = [Vba::GroupClass.new({group_division_class_key: 37, cobra: false, class_code: 'class_code_example', group_id: 'group_id_example', smart_flex: false})] # Array<GroupClass> | 

begin
  # Create or Update Batch GroupClass
  result = api_instance.update_batch_group_class(vbasoftware_database, group_id, group_class)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->update_batch_group_class: #{e}"
end
```

#### Using the update_batch_group_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_class_with_http_info(vbasoftware_database, group_id, group_class)

```ruby
begin
  # Create or Update Batch GroupClass
  data, status_code, headers = api_instance.update_batch_group_class_with_http_info(vbasoftware_database, group_id, group_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->update_batch_group_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_class** | [**Array&lt;GroupClass&gt;**](GroupClass.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_class

> <GroupClassVBAResponse> update_group_class(vbasoftware_database, group_id, group_division_class_key, group_class)

Update GroupClass

Updates a specific GroupClass.

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

api_instance = Vba::GroupClassesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_division_class_key = 56 # Integer | GroupDivisionClass Key
group_class = Vba::GroupClass.new({group_division_class_key: 37, cobra: false, class_code: 'class_code_example', group_id: 'group_id_example', smart_flex: false}) # GroupClass | 

begin
  # Update GroupClass
  result = api_instance.update_group_class(vbasoftware_database, group_id, group_division_class_key, group_class)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->update_group_class: #{e}"
end
```

#### Using the update_group_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupClassVBAResponse>, Integer, Hash)> update_group_class_with_http_info(vbasoftware_database, group_id, group_division_class_key, group_class)

```ruby
begin
  # Update GroupClass
  data, status_code, headers = api_instance.update_group_class_with_http_info(vbasoftware_database, group_id, group_division_class_key, group_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupClassVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupClassesApi->update_group_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_division_class_key** | **Integer** | GroupDivisionClass Key |  |
| **group_class** | [**GroupClass**](GroupClass.md) |  |  |

### Return type

[**GroupClassVBAResponse**](GroupClassVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

