# Vba::GroupDivisionIDCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_division_id_code**](GroupDivisionIDCodesApi.md#create_group_division_id_code) | **POST** /groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode} | Create GroupDivisionIDCode |
| [**delete_group_division_id_code**](GroupDivisionIDCodesApi.md#delete_group_division_id_code) | **DELETE** /groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode} | Delete GroupDivisionIDCode |
| [**get_group_division_id_code**](GroupDivisionIDCodesApi.md#get_group_division_id_code) | **GET** /groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode} | Get GroupDivisionIDCode |
| [**list_group_division_id_code**](GroupDivisionIDCodesApi.md#list_group_division_id_code) | **GET** /groups/{groupID}/divisions/{divisionID}/id-codes | List GroupDivisionIDCode |
| [**update_batch_group_division_id_code**](GroupDivisionIDCodesApi.md#update_batch_group_division_id_code) | **PUT** /groups/{groupID}/divisions/{divisionID}/id-codes-batch | Create or Update Batch GroupDivisionIDCode |
| [**update_group_division_id_code**](GroupDivisionIDCodesApi.md#update_group_division_id_code) | **PUT** /groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode} | Update GroupDivisionIDCode |


## create_group_division_id_code

> <GroupDivisionIDCodeVBAResponse> create_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)

Create GroupDivisionIDCode

Creates a new GroupDivisionIDCode

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

api_instance = Vba::GroupDivisionIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
i_d_code = 'i_d_code_example' # String | ID Code
group_division_id_code = Vba::GroupDivisionIDCode.new({group_id: 'group_id_example', division_id: 'division_id_example', i_d_code: 'i_d_code_example'}) # GroupDivisionIDCode | 

begin
  # Create GroupDivisionIDCode
  result = api_instance.create_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->create_group_division_id_code: #{e}"
end
```

#### Using the create_group_division_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionIDCodeVBAResponse>, Integer, Hash)> create_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)

```ruby
begin
  # Create GroupDivisionIDCode
  data, status_code, headers = api_instance.create_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->create_group_division_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **i_d_code** | **String** | ID Code |  |
| **group_division_id_code** | [**GroupDivisionIDCode**](GroupDivisionIDCode.md) |  |  |

### Return type

[**GroupDivisionIDCodeVBAResponse**](GroupDivisionIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_division_id_code

> delete_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code)

Delete GroupDivisionIDCode

Deletes an GroupDivisionIDCode

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

api_instance = Vba::GroupDivisionIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
i_d_code = 'i_d_code_example' # String | ID Code

begin
  # Delete GroupDivisionIDCode
  api_instance.delete_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code)
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->delete_group_division_id_code: #{e}"
end
```

#### Using the delete_group_division_id_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code)

```ruby
begin
  # Delete GroupDivisionIDCode
  data, status_code, headers = api_instance.delete_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->delete_group_division_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **i_d_code** | **String** | ID Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_division_id_code

> <GroupDivisionIDCodeVBAResponse> get_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code)

Get GroupDivisionIDCode

Gets GroupDivisionIDCode

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

api_instance = Vba::GroupDivisionIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
i_d_code = 'i_d_code_example' # String | ID Code

begin
  # Get GroupDivisionIDCode
  result = api_instance.get_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->get_group_division_id_code: #{e}"
end
```

#### Using the get_group_division_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionIDCodeVBAResponse>, Integer, Hash)> get_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code)

```ruby
begin
  # Get GroupDivisionIDCode
  data, status_code, headers = api_instance.get_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->get_group_division_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **i_d_code** | **String** | ID Code |  |

### Return type

[**GroupDivisionIDCodeVBAResponse**](GroupDivisionIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_division_id_code

> <GroupDivisionIDCodeListVBAResponse> list_group_division_id_code(vbasoftware_database, group_id, division_id, opts)

List GroupDivisionIDCode

Lists all GroupDivisionIDCode for the given groupID and divisionID

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

api_instance = Vba::GroupDivisionIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupDivisionIDCode
  result = api_instance.list_group_division_id_code(vbasoftware_database, group_id, division_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->list_group_division_id_code: #{e}"
end
```

#### Using the list_group_division_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionIDCodeListVBAResponse>, Integer, Hash)> list_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, opts)

```ruby
begin
  # List GroupDivisionIDCode
  data, status_code, headers = api_instance.list_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionIDCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->list_group_division_id_code_with_http_info: #{e}"
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

[**GroupDivisionIDCodeListVBAResponse**](GroupDivisionIDCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_division_id_code

> <MultiCodeResponseListVBAResponse> update_batch_group_division_id_code(vbasoftware_database, group_id, division_id, group_division_id_code)

Create or Update Batch GroupDivisionIDCode

Create or Update multiple GroupDivisionIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupDivisionIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_division_id_code = [Vba::GroupDivisionIDCode.new({group_id: 'group_id_example', division_id: 'division_id_example', i_d_code: 'i_d_code_example'})] # Array<GroupDivisionIDCode> | 

begin
  # Create or Update Batch GroupDivisionIDCode
  result = api_instance.update_batch_group_division_id_code(vbasoftware_database, group_id, division_id, group_division_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->update_batch_group_division_id_code: #{e}"
end
```

#### Using the update_batch_group_division_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, group_division_id_code)

```ruby
begin
  # Create or Update Batch GroupDivisionIDCode
  data, status_code, headers = api_instance.update_batch_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, group_division_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->update_batch_group_division_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_division_id_code** | [**Array&lt;GroupDivisionIDCode&gt;**](GroupDivisionIDCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_division_id_code

> <GroupDivisionIDCodeVBAResponse> update_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)

Update GroupDivisionIDCode

Updates a specific GroupDivisionIDCode.

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

api_instance = Vba::GroupDivisionIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
i_d_code = 'i_d_code_example' # String | ID Code
group_division_id_code = Vba::GroupDivisionIDCode.new({group_id: 'group_id_example', division_id: 'division_id_example', i_d_code: 'i_d_code_example'}) # GroupDivisionIDCode | 

begin
  # Update GroupDivisionIDCode
  result = api_instance.update_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->update_group_division_id_code: #{e}"
end
```

#### Using the update_group_division_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionIDCodeVBAResponse>, Integer, Hash)> update_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)

```ruby
begin
  # Update GroupDivisionIDCode
  data, status_code, headers = api_instance.update_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionIDCodesApi->update_group_division_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **i_d_code** | **String** | ID Code |  |
| **group_division_id_code** | [**GroupDivisionIDCode**](GroupDivisionIDCode.md) |  |  |

### Return type

[**GroupDivisionIDCodeVBAResponse**](GroupDivisionIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

