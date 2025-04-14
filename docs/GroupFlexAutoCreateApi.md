# Vba::GroupFlexAutoCreateApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_flex_create**](GroupFlexAutoCreateApi.md#create_group_flex_create) | **POST** /groups/{groupID}/flex-auto-creates | Create GroupFlexCreate |
| [**delete_group_flex_create**](GroupFlexAutoCreateApi.md#delete_group_flex_create) | **DELETE** /groups/{groupID}/flex-auto-creates/{groupFlexCreateKey} | Delete GroupFlexCreate |
| [**get_group_flex_create**](GroupFlexAutoCreateApi.md#get_group_flex_create) | **GET** /groups/{groupID}/flex-auto-creates/{groupFlexCreateKey} | Get GroupFlexCreate |
| [**list_group_flex_create**](GroupFlexAutoCreateApi.md#list_group_flex_create) | **GET** /groups/{groupID}/flex-auto-creates | List GroupFlexCreate |
| [**update_batch_group_flex_create**](GroupFlexAutoCreateApi.md#update_batch_group_flex_create) | **PUT** /groups/{groupID}/flex-auto-creates-batch | Create or Update Batch GroupFlexCreate |
| [**update_group_flex_create**](GroupFlexAutoCreateApi.md#update_group_flex_create) | **PUT** /groups/{groupID}/flex-auto-creates/{groupFlexCreateKey} | Update GroupFlexCreate |


## create_group_flex_create

> <GroupFlexCreateVBAResponse> create_group_flex_create(vbasoftware_database, group_id, group_flex_create)

Create GroupFlexCreate

Creates a new GroupFlexCreate

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

api_instance = Vba::GroupFlexAutoCreateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_create = Vba::GroupFlexCreate.new({group_flex_create_key: 37, co_ins: false, co_pay: false, combine: false, deductible: false, employee_only: false, group_id: 'group_id_example', not_covered: false}) # GroupFlexCreate | 

begin
  # Create GroupFlexCreate
  result = api_instance.create_group_flex_create(vbasoftware_database, group_id, group_flex_create)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->create_group_flex_create: #{e}"
end
```

#### Using the create_group_flex_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexCreateVBAResponse>, Integer, Hash)> create_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create)

```ruby
begin
  # Create GroupFlexCreate
  data, status_code, headers = api_instance.create_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexCreateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->create_group_flex_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_create** | [**GroupFlexCreate**](GroupFlexCreate.md) |  |  |

### Return type

[**GroupFlexCreateVBAResponse**](GroupFlexCreateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_flex_create

> delete_group_flex_create(vbasoftware_database, group_id, group_flex_create_key)

Delete GroupFlexCreate

Deletes an GroupFlexCreate

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

api_instance = Vba::GroupFlexAutoCreateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_create_key = 56 # Integer | GroupFlexCreate Key

begin
  # Delete GroupFlexCreate
  api_instance.delete_group_flex_create(vbasoftware_database, group_id, group_flex_create_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->delete_group_flex_create: #{e}"
end
```

#### Using the delete_group_flex_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create_key)

```ruby
begin
  # Delete GroupFlexCreate
  data, status_code, headers = api_instance.delete_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->delete_group_flex_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_create_key** | **Integer** | GroupFlexCreate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_flex_create

> <GroupFlexCreateVBAResponse> get_group_flex_create(vbasoftware_database, group_id, group_flex_create_key)

Get GroupFlexCreate

Gets GroupFlexCreate

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

api_instance = Vba::GroupFlexAutoCreateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_create_key = 56 # Integer | GroupFlexCreate Key

begin
  # Get GroupFlexCreate
  result = api_instance.get_group_flex_create(vbasoftware_database, group_id, group_flex_create_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->get_group_flex_create: #{e}"
end
```

#### Using the get_group_flex_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexCreateVBAResponse>, Integer, Hash)> get_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create_key)

```ruby
begin
  # Get GroupFlexCreate
  data, status_code, headers = api_instance.get_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexCreateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->get_group_flex_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_create_key** | **Integer** | GroupFlexCreate Key |  |

### Return type

[**GroupFlexCreateVBAResponse**](GroupFlexCreateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_flex_create

> <GroupFlexCreateListVBAResponse> list_group_flex_create(vbasoftware_database, group_id, opts)

List GroupFlexCreate

Lists all GroupFlexCreate for the given groupID

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

api_instance = Vba::GroupFlexAutoCreateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupFlexCreate
  result = api_instance.list_group_flex_create(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->list_group_flex_create: #{e}"
end
```

#### Using the list_group_flex_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexCreateListVBAResponse>, Integer, Hash)> list_group_flex_create_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupFlexCreate
  data, status_code, headers = api_instance.list_group_flex_create_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexCreateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->list_group_flex_create_with_http_info: #{e}"
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

[**GroupFlexCreateListVBAResponse**](GroupFlexCreateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_flex_create

> <MultiCodeResponseListVBAResponse> update_batch_group_flex_create(vbasoftware_database, group_id, group_flex_create)

Create or Update Batch GroupFlexCreate

Create or Update multiple GroupFlexCreate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupFlexAutoCreateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_create = [Vba::GroupFlexCreate.new({group_flex_create_key: 37, co_ins: false, co_pay: false, combine: false, deductible: false, employee_only: false, group_id: 'group_id_example', not_covered: false})] # Array<GroupFlexCreate> | 

begin
  # Create or Update Batch GroupFlexCreate
  result = api_instance.update_batch_group_flex_create(vbasoftware_database, group_id, group_flex_create)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->update_batch_group_flex_create: #{e}"
end
```

#### Using the update_batch_group_flex_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create)

```ruby
begin
  # Create or Update Batch GroupFlexCreate
  data, status_code, headers = api_instance.update_batch_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->update_batch_group_flex_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_create** | [**Array&lt;GroupFlexCreate&gt;**](GroupFlexCreate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_flex_create

> <GroupFlexCreateVBAResponse> update_group_flex_create(vbasoftware_database, group_id, group_flex_create_key, group_flex_create)

Update GroupFlexCreate

Updates a specific GroupFlexCreate.

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

api_instance = Vba::GroupFlexAutoCreateApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_flex_create_key = 56 # Integer | GroupFlexCreate Key
group_flex_create = Vba::GroupFlexCreate.new({group_flex_create_key: 37, co_ins: false, co_pay: false, combine: false, deductible: false, employee_only: false, group_id: 'group_id_example', not_covered: false}) # GroupFlexCreate | 

begin
  # Update GroupFlexCreate
  result = api_instance.update_group_flex_create(vbasoftware_database, group_id, group_flex_create_key, group_flex_create)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->update_group_flex_create: #{e}"
end
```

#### Using the update_group_flex_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupFlexCreateVBAResponse>, Integer, Hash)> update_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create_key, group_flex_create)

```ruby
begin
  # Update GroupFlexCreate
  data, status_code, headers = api_instance.update_group_flex_create_with_http_info(vbasoftware_database, group_id, group_flex_create_key, group_flex_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupFlexCreateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupFlexAutoCreateApi->update_group_flex_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_flex_create_key** | **Integer** | GroupFlexCreate Key |  |
| **group_flex_create** | [**GroupFlexCreate**](GroupFlexCreate.md) |  |  |

### Return type

[**GroupFlexCreateVBAResponse**](GroupFlexCreateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

