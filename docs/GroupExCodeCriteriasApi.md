# Vba::GroupExCodeCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_ex_code_criteria**](GroupExCodeCriteriasApi.md#create_group_ex_code_criteria) | **POST** /group-ex-code-criterias | Create GroupExCodeCriteria |
| [**delete_group_ex_code_criteria**](GroupExCodeCriteriasApi.md#delete_group_ex_code_criteria) | **DELETE** /group-ex-code-criterias/{groupExCodeCriteriaKey} | Delete GroupExCodeCriteria |
| [**get_group_ex_code_criteria**](GroupExCodeCriteriasApi.md#get_group_ex_code_criteria) | **GET** /group-ex-code-criterias/{groupExCodeCriteriaKey} | Get GroupExCodeCriteria |
| [**list_group_ex_code_criteria**](GroupExCodeCriteriasApi.md#list_group_ex_code_criteria) | **GET** /group-ex-code-criterias | List GroupExCodeCriteria |
| [**update_batch_group_ex_code_criteria**](GroupExCodeCriteriasApi.md#update_batch_group_ex_code_criteria) | **PUT** /group-ex-code-criterias-batch | Create or Update Batch GroupExCodeCriteria |
| [**update_group_ex_code_criteria**](GroupExCodeCriteriasApi.md#update_group_ex_code_criteria) | **PUT** /group-ex-code-criterias/{groupExCodeCriteriaKey} | Update GroupExCodeCriteria |


## create_group_ex_code_criteria

> <GroupExCodeCriteriaVBAResponse> create_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria)

Create GroupExCodeCriteria

Creates a new GroupExCodeCriteria

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

api_instance = Vba::GroupExCodeCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_ex_code_criteria = Vba::GroupExCodeCriteria.new({group_ex_code_criteria_key: 37}) # GroupExCodeCriteria | 

begin
  # Create GroupExCodeCriteria
  result = api_instance.create_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->create_group_ex_code_criteria: #{e}"
end
```

#### Using the create_group_ex_code_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupExCodeCriteriaVBAResponse>, Integer, Hash)> create_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria)

```ruby
begin
  # Create GroupExCodeCriteria
  data, status_code, headers = api_instance.create_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupExCodeCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->create_group_ex_code_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_ex_code_criteria** | [**GroupExCodeCriteria**](GroupExCodeCriteria.md) |  |  |

### Return type

[**GroupExCodeCriteriaVBAResponse**](GroupExCodeCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_ex_code_criteria

> delete_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key)

Delete GroupExCodeCriteria

Deletes an GroupExCodeCriteria

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

api_instance = Vba::GroupExCodeCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_ex_code_criteria_key = 56 # Integer | GroupExCodeCriteria Key

begin
  # Delete GroupExCodeCriteria
  api_instance.delete_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->delete_group_ex_code_criteria: #{e}"
end
```

#### Using the delete_group_ex_code_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key)

```ruby
begin
  # Delete GroupExCodeCriteria
  data, status_code, headers = api_instance.delete_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->delete_group_ex_code_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_ex_code_criteria_key** | **Integer** | GroupExCodeCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_ex_code_criteria

> <GroupExCodeCriteriaVBAResponse> get_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key)

Get GroupExCodeCriteria

Gets GroupExCodeCriteria

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

api_instance = Vba::GroupExCodeCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_ex_code_criteria_key = 56 # Integer | GroupExCodeCriteria Key

begin
  # Get GroupExCodeCriteria
  result = api_instance.get_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->get_group_ex_code_criteria: #{e}"
end
```

#### Using the get_group_ex_code_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupExCodeCriteriaVBAResponse>, Integer, Hash)> get_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key)

```ruby
begin
  # Get GroupExCodeCriteria
  data, status_code, headers = api_instance.get_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupExCodeCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->get_group_ex_code_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_ex_code_criteria_key** | **Integer** | GroupExCodeCriteria Key |  |

### Return type

[**GroupExCodeCriteriaVBAResponse**](GroupExCodeCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_ex_code_criteria

> <GroupExCodeCriteriaListVBAResponse> list_group_ex_code_criteria(vbasoftware_database, opts)

List GroupExCodeCriteria

Lists all GroupExCodeCriteria

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

api_instance = Vba::GroupExCodeCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupExCodeCriteria
  result = api_instance.list_group_ex_code_criteria(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->list_group_ex_code_criteria: #{e}"
end
```

#### Using the list_group_ex_code_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupExCodeCriteriaListVBAResponse>, Integer, Hash)> list_group_ex_code_criteria_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupExCodeCriteria
  data, status_code, headers = api_instance.list_group_ex_code_criteria_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupExCodeCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->list_group_ex_code_criteria_with_http_info: #{e}"
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

[**GroupExCodeCriteriaListVBAResponse**](GroupExCodeCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_ex_code_criteria

> <MultiCodeResponseListVBAResponse> update_batch_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria)

Create or Update Batch GroupExCodeCriteria

Create or Update multiple GroupExCodeCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupExCodeCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_ex_code_criteria = [Vba::GroupExCodeCriteria.new({group_ex_code_criteria_key: 37})] # Array<GroupExCodeCriteria> | 

begin
  # Create or Update Batch GroupExCodeCriteria
  result = api_instance.update_batch_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->update_batch_group_ex_code_criteria: #{e}"
end
```

#### Using the update_batch_group_ex_code_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria)

```ruby
begin
  # Create or Update Batch GroupExCodeCriteria
  data, status_code, headers = api_instance.update_batch_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->update_batch_group_ex_code_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_ex_code_criteria** | [**Array&lt;GroupExCodeCriteria&gt;**](GroupExCodeCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_ex_code_criteria

> <GroupExCodeCriteriaVBAResponse> update_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria)

Update GroupExCodeCriteria

Updates a specific GroupExCodeCriteria.

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

api_instance = Vba::GroupExCodeCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_ex_code_criteria_key = 56 # Integer | GroupExCodeCriteria Key
group_ex_code_criteria = Vba::GroupExCodeCriteria.new({group_ex_code_criteria_key: 37}) # GroupExCodeCriteria | 

begin
  # Update GroupExCodeCriteria
  result = api_instance.update_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->update_group_ex_code_criteria: #{e}"
end
```

#### Using the update_group_ex_code_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupExCodeCriteriaVBAResponse>, Integer, Hash)> update_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria)

```ruby
begin
  # Update GroupExCodeCriteria
  data, status_code, headers = api_instance.update_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupExCodeCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupExCodeCriteriasApi->update_group_ex_code_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_ex_code_criteria_key** | **Integer** | GroupExCodeCriteria Key |  |
| **group_ex_code_criteria** | [**GroupExCodeCriteria**](GroupExCodeCriteria.md) |  |  |

### Return type

[**GroupExCodeCriteriaVBAResponse**](GroupExCodeCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

