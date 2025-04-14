# Vba::GroupDivisionDeductionTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_division_deduction_type**](GroupDivisionDeductionTypesApi.md#create_group_division_deduction_type) | **POST** /groups/{groupID}/divisions/{divisionID}/deduction-types/{deductionType} | Create GroupDivisionDeductionType |
| [**delete_group_division_deduction_type**](GroupDivisionDeductionTypesApi.md#delete_group_division_deduction_type) | **DELETE** /groups/{groupID}/divisions/{divisionID}/deduction-types/{deductionType} | Delete GroupDivisionDeductionType |
| [**get_group_division_deduction_type**](GroupDivisionDeductionTypesApi.md#get_group_division_deduction_type) | **GET** /groups/{groupID}/divisions/{divisionID}/deduction-types/{deductionType} | Get GroupDivisionDeductionType |
| [**list_group_division_deduction_type**](GroupDivisionDeductionTypesApi.md#list_group_division_deduction_type) | **GET** /groups/{groupID}/divisions/{divisionID}/deduction-types | List GroupDivisionDeductionType |
| [**update_batch_group_division_deduction_type**](GroupDivisionDeductionTypesApi.md#update_batch_group_division_deduction_type) | **PUT** /groups/{groupID}/divisions/{divisionID}/deduction-types-batch | Create or Update Batch GroupDivisionDeductionType |


## create_group_division_deduction_type

> <GroupDivisionDeductionTypeVBAResponse> create_group_division_deduction_type(vbasoftware_database, group_id, division_id, deduction_type)

Create GroupDivisionDeductionType

Creates a new GroupDivisionDeductionType

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

api_instance = Vba::GroupDivisionDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
deduction_type = 'deduction_type_example' # String | Deduction Type

begin
  # Create GroupDivisionDeductionType
  result = api_instance.create_group_division_deduction_type(vbasoftware_database, group_id, division_id, deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->create_group_division_deduction_type: #{e}"
end
```

#### Using the create_group_division_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionDeductionTypeVBAResponse>, Integer, Hash)> create_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, deduction_type)

```ruby
begin
  # Create GroupDivisionDeductionType
  data, status_code, headers = api_instance.create_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionDeductionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->create_group_division_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **deduction_type** | **String** | Deduction Type |  |

### Return type

[**GroupDivisionDeductionTypeVBAResponse**](GroupDivisionDeductionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_group_division_deduction_type

> delete_group_division_deduction_type(vbasoftware_database, group_id, division_id, deduction_type)

Delete GroupDivisionDeductionType

Deletes an GroupDivisionDeductionType

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

api_instance = Vba::GroupDivisionDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
deduction_type = 'deduction_type_example' # String | Deduction Type

begin
  # Delete GroupDivisionDeductionType
  api_instance.delete_group_division_deduction_type(vbasoftware_database, group_id, division_id, deduction_type)
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->delete_group_division_deduction_type: #{e}"
end
```

#### Using the delete_group_division_deduction_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, deduction_type)

```ruby
begin
  # Delete GroupDivisionDeductionType
  data, status_code, headers = api_instance.delete_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->delete_group_division_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **deduction_type** | **String** | Deduction Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_division_deduction_type

> <GroupDivisionDeductionTypeVBAResponse> get_group_division_deduction_type(vbasoftware_database, group_id, division_id, deduction_type)

Get GroupDivisionDeductionType

Gets GroupDivisionDeductionType

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

api_instance = Vba::GroupDivisionDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
deduction_type = 'deduction_type_example' # String | Deduction Type

begin
  # Get GroupDivisionDeductionType
  result = api_instance.get_group_division_deduction_type(vbasoftware_database, group_id, division_id, deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->get_group_division_deduction_type: #{e}"
end
```

#### Using the get_group_division_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionDeductionTypeVBAResponse>, Integer, Hash)> get_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, deduction_type)

```ruby
begin
  # Get GroupDivisionDeductionType
  data, status_code, headers = api_instance.get_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionDeductionTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->get_group_division_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **deduction_type** | **String** | Deduction Type |  |

### Return type

[**GroupDivisionDeductionTypeVBAResponse**](GroupDivisionDeductionTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_division_deduction_type

> <GroupDivisionDeductionTypeListVBAResponse> list_group_division_deduction_type(vbasoftware_database, group_id, division_id, opts)

List GroupDivisionDeductionType

Lists all GroupDivisionDeductionType for the given groupID and divisionID

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

api_instance = Vba::GroupDivisionDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupDivisionDeductionType
  result = api_instance.list_group_division_deduction_type(vbasoftware_database, group_id, division_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->list_group_division_deduction_type: #{e}"
end
```

#### Using the list_group_division_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionDeductionTypeListVBAResponse>, Integer, Hash)> list_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, opts)

```ruby
begin
  # List GroupDivisionDeductionType
  data, status_code, headers = api_instance.list_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionDeductionTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->list_group_division_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupDivisionDeductionTypeListVBAResponse**](GroupDivisionDeductionTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_division_deduction_type

> <MultiCodeResponseListVBAResponse> update_batch_group_division_deduction_type(vbasoftware_database, group_id, division_id, group_division_deduction_type)

Create or Update Batch GroupDivisionDeductionType

Create or Update multiple GroupDivisionDeductionType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupDivisionDeductionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_division_deduction_type = [Vba::GroupDivisionDeductionType.new({group_id: 'group_id_example', division_id: 'division_id_example', deduction_type: 'deduction_type_example'})] # Array<GroupDivisionDeductionType> | 

begin
  # Create or Update Batch GroupDivisionDeductionType
  result = api_instance.update_batch_group_division_deduction_type(vbasoftware_database, group_id, division_id, group_division_deduction_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->update_batch_group_division_deduction_type: #{e}"
end
```

#### Using the update_batch_group_division_deduction_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, group_division_deduction_type)

```ruby
begin
  # Create or Update Batch GroupDivisionDeductionType
  data, status_code, headers = api_instance.update_batch_group_division_deduction_type_with_http_info(vbasoftware_database, group_id, division_id, group_division_deduction_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionDeductionTypesApi->update_batch_group_division_deduction_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_division_deduction_type** | [**Array&lt;GroupDivisionDeductionType&gt;**](GroupDivisionDeductionType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

