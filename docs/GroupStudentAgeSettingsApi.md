# Vba::GroupStudentAgeSettingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_student_age**](GroupStudentAgeSettingsApi.md#create_group_student_age) | **POST** /groups/{groupID}/student-ages | Create GroupStudentAge |
| [**delete_group_student_age**](GroupStudentAgeSettingsApi.md#delete_group_student_age) | **DELETE** /groups/{groupID}/student-ages/{groupStudentAgeKey} | Delete GroupStudentAge |
| [**get_group_student_age**](GroupStudentAgeSettingsApi.md#get_group_student_age) | **GET** /groups/{groupID}/student-ages/{groupStudentAgeKey} | Get GroupStudentAge |
| [**list_group_student_age**](GroupStudentAgeSettingsApi.md#list_group_student_age) | **GET** /groups/{groupID}/student-ages | List GroupStudentAge |
| [**update_batch_group_student_age**](GroupStudentAgeSettingsApi.md#update_batch_group_student_age) | **PUT** /groups/{groupID}/student-ages-batch | Create or Update Batch GroupStudentAge |
| [**update_group_student_age**](GroupStudentAgeSettingsApi.md#update_group_student_age) | **PUT** /groups/{groupID}/student-ages/{groupStudentAgeKey} | Update GroupStudentAge |


## create_group_student_age

> <GroupStudentAgeVBAResponse> create_group_student_age(vbasoftware_database, group_id, group_student_age)

Create GroupStudentAge

Creates a new GroupStudentAge

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

api_instance = Vba::GroupStudentAgeSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_student_age = Vba::GroupStudentAge.new({group_student_age_key: 37}) # GroupStudentAge | 

begin
  # Create GroupStudentAge
  result = api_instance.create_group_student_age(vbasoftware_database, group_id, group_student_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->create_group_student_age: #{e}"
end
```

#### Using the create_group_student_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupStudentAgeVBAResponse>, Integer, Hash)> create_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age)

```ruby
begin
  # Create GroupStudentAge
  data, status_code, headers = api_instance.create_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupStudentAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->create_group_student_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_student_age** | [**GroupStudentAge**](GroupStudentAge.md) |  |  |

### Return type

[**GroupStudentAgeVBAResponse**](GroupStudentAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_student_age

> delete_group_student_age(vbasoftware_database, group_id, group_student_age_key)

Delete GroupStudentAge

Deletes an GroupStudentAge

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

api_instance = Vba::GroupStudentAgeSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_student_age_key = 56 # Integer | GroupStudentAge Key

begin
  # Delete GroupStudentAge
  api_instance.delete_group_student_age(vbasoftware_database, group_id, group_student_age_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->delete_group_student_age: #{e}"
end
```

#### Using the delete_group_student_age_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age_key)

```ruby
begin
  # Delete GroupStudentAge
  data, status_code, headers = api_instance.delete_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->delete_group_student_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_student_age_key** | **Integer** | GroupStudentAge Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_student_age

> <GroupStudentAgeVBAResponse> get_group_student_age(vbasoftware_database, group_id, group_student_age_key)

Get GroupStudentAge

Gets GroupStudentAge

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

api_instance = Vba::GroupStudentAgeSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_student_age_key = 56 # Integer | GroupStudentAge Key

begin
  # Get GroupStudentAge
  result = api_instance.get_group_student_age(vbasoftware_database, group_id, group_student_age_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->get_group_student_age: #{e}"
end
```

#### Using the get_group_student_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupStudentAgeVBAResponse>, Integer, Hash)> get_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age_key)

```ruby
begin
  # Get GroupStudentAge
  data, status_code, headers = api_instance.get_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupStudentAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->get_group_student_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_student_age_key** | **Integer** | GroupStudentAge Key |  |

### Return type

[**GroupStudentAgeVBAResponse**](GroupStudentAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_student_age

> <GroupStudentAgeListVBAResponse> list_group_student_age(vbasoftware_database, group_id, opts)

List GroupStudentAge

Lists all GroupStudentAge for the given groupID

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

api_instance = Vba::GroupStudentAgeSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupStudentAge
  result = api_instance.list_group_student_age(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->list_group_student_age: #{e}"
end
```

#### Using the list_group_student_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupStudentAgeListVBAResponse>, Integer, Hash)> list_group_student_age_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupStudentAge
  data, status_code, headers = api_instance.list_group_student_age_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupStudentAgeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->list_group_student_age_with_http_info: #{e}"
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

[**GroupStudentAgeListVBAResponse**](GroupStudentAgeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_student_age

> <MultiCodeResponseListVBAResponse> update_batch_group_student_age(vbasoftware_database, group_id, group_student_age)

Create or Update Batch GroupStudentAge

Create or Update multiple GroupStudentAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupStudentAgeSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_student_age = [Vba::GroupStudentAge.new({group_student_age_key: 37})] # Array<GroupStudentAge> | 

begin
  # Create or Update Batch GroupStudentAge
  result = api_instance.update_batch_group_student_age(vbasoftware_database, group_id, group_student_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->update_batch_group_student_age: #{e}"
end
```

#### Using the update_batch_group_student_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age)

```ruby
begin
  # Create or Update Batch GroupStudentAge
  data, status_code, headers = api_instance.update_batch_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->update_batch_group_student_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_student_age** | [**Array&lt;GroupStudentAge&gt;**](GroupStudentAge.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_student_age

> <GroupStudentAgeVBAResponse> update_group_student_age(vbasoftware_database, group_id, group_student_age_key, group_student_age)

Update GroupStudentAge

Updates a specific GroupStudentAge.

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

api_instance = Vba::GroupStudentAgeSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_student_age_key = 56 # Integer | GroupStudentAge Key
group_student_age = Vba::GroupStudentAge.new({group_student_age_key: 37}) # GroupStudentAge | 

begin
  # Update GroupStudentAge
  result = api_instance.update_group_student_age(vbasoftware_database, group_id, group_student_age_key, group_student_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->update_group_student_age: #{e}"
end
```

#### Using the update_group_student_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupStudentAgeVBAResponse>, Integer, Hash)> update_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age_key, group_student_age)

```ruby
begin
  # Update GroupStudentAge
  data, status_code, headers = api_instance.update_group_student_age_with_http_info(vbasoftware_database, group_id, group_student_age_key, group_student_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupStudentAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupStudentAgeSettingsApi->update_group_student_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_student_age_key** | **Integer** | GroupStudentAge Key |  |
| **group_student_age** | [**GroupStudentAge**](GroupStudentAge.md) |  |  |

### Return type

[**GroupStudentAgeVBAResponse**](GroupStudentAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

