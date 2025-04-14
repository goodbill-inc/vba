# Vba::GroupNetworkCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_network_criteria**](GroupNetworkCriteriasApi.md#create_group_network_criteria) | **POST** /group-network-criterias | Create GroupNetworkCriteria |
| [**delete_group_network_criteria**](GroupNetworkCriteriasApi.md#delete_group_network_criteria) | **DELETE** /group-network-criterias/{groupNetworkCriteriaKey} | Delete GroupNetworkCriteria |
| [**get_group_network_criteria**](GroupNetworkCriteriasApi.md#get_group_network_criteria) | **GET** /group-network-criterias/{groupNetworkCriteriaKey} | Get GroupNetworkCriteria |
| [**list_group_network_criteria**](GroupNetworkCriteriasApi.md#list_group_network_criteria) | **GET** /group-network-criterias | List GroupNetworkCriteria |
| [**update_batch_group_network_criteria**](GroupNetworkCriteriasApi.md#update_batch_group_network_criteria) | **PUT** /group-network-criterias-batch | Create or Update Batch GroupNetworkCriteria |
| [**update_group_network_criteria**](GroupNetworkCriteriasApi.md#update_group_network_criteria) | **PUT** /group-network-criterias/{groupNetworkCriteriaKey} | Update GroupNetworkCriteria |


## create_group_network_criteria

> <GroupNetworkCriteriaVBAResponse> create_group_network_criteria(vbasoftware_database, group_network_criteria)

Create GroupNetworkCriteria

Creates a new GroupNetworkCriteria

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

api_instance = Vba::GroupNetworkCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_network_criteria = Vba::GroupNetworkCriteria.new({group_network_criteria_key: 37}) # GroupNetworkCriteria | 

begin
  # Create GroupNetworkCriteria
  result = api_instance.create_group_network_criteria(vbasoftware_database, group_network_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->create_group_network_criteria: #{e}"
end
```

#### Using the create_group_network_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkCriteriaVBAResponse>, Integer, Hash)> create_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria)

```ruby
begin
  # Create GroupNetworkCriteria
  data, status_code, headers = api_instance.create_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->create_group_network_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_network_criteria** | [**GroupNetworkCriteria**](GroupNetworkCriteria.md) |  |  |

### Return type

[**GroupNetworkCriteriaVBAResponse**](GroupNetworkCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_network_criteria

> delete_group_network_criteria(vbasoftware_database, group_network_criteria_key)

Delete GroupNetworkCriteria

Deletes an GroupNetworkCriteria

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

api_instance = Vba::GroupNetworkCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_network_criteria_key = 56 # Integer | GroupNetworkCriteria Key

begin
  # Delete GroupNetworkCriteria
  api_instance.delete_group_network_criteria(vbasoftware_database, group_network_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->delete_group_network_criteria: #{e}"
end
```

#### Using the delete_group_network_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria_key)

```ruby
begin
  # Delete GroupNetworkCriteria
  data, status_code, headers = api_instance.delete_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->delete_group_network_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_network_criteria_key** | **Integer** | GroupNetworkCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_network_criteria

> <GroupNetworkCriteriaVBAResponse> get_group_network_criteria(vbasoftware_database, group_network_criteria_key)

Get GroupNetworkCriteria

Gets GroupNetworkCriteria

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

api_instance = Vba::GroupNetworkCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_network_criteria_key = 56 # Integer | GroupNetworkCriteria Key

begin
  # Get GroupNetworkCriteria
  result = api_instance.get_group_network_criteria(vbasoftware_database, group_network_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->get_group_network_criteria: #{e}"
end
```

#### Using the get_group_network_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkCriteriaVBAResponse>, Integer, Hash)> get_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria_key)

```ruby
begin
  # Get GroupNetworkCriteria
  data, status_code, headers = api_instance.get_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->get_group_network_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_network_criteria_key** | **Integer** | GroupNetworkCriteria Key |  |

### Return type

[**GroupNetworkCriteriaVBAResponse**](GroupNetworkCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_network_criteria

> <GroupNetworkCriteriaListVBAResponse> list_group_network_criteria(vbasoftware_database, opts)

List GroupNetworkCriteria

Retrieves a paginated list of GroupNetworkCriteria with optional sorting and filtering by Group_ID and Division_ID.

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

api_instance = Vba::GroupNetworkCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  group_id: 'group_id_example', # String | Optional filter for Group_ID.
  division_id: 'division_id_example' # String | Optional filter for Division_ID.
}

begin
  # List GroupNetworkCriteria
  result = api_instance.list_group_network_criteria(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->list_group_network_criteria: #{e}"
end
```

#### Using the list_group_network_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkCriteriaListVBAResponse>, Integer, Hash)> list_group_network_criteria_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupNetworkCriteria
  data, status_code, headers = api_instance.list_group_network_criteria_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->list_group_network_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **group_id** | **String** | Optional filter for Group_ID. | [optional] |
| **division_id** | **String** | Optional filter for Division_ID. | [optional] |

### Return type

[**GroupNetworkCriteriaListVBAResponse**](GroupNetworkCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_network_criteria

> <MultiCodeResponseListVBAResponse> update_batch_group_network_criteria(vbasoftware_database, group_network_criteria)

Create or Update Batch GroupNetworkCriteria

Create or Update multiple GroupNetworkCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupNetworkCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_network_criteria = [Vba::GroupNetworkCriteria.new({group_network_criteria_key: 37})] # Array<GroupNetworkCriteria> | 

begin
  # Create or Update Batch GroupNetworkCriteria
  result = api_instance.update_batch_group_network_criteria(vbasoftware_database, group_network_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->update_batch_group_network_criteria: #{e}"
end
```

#### Using the update_batch_group_network_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria)

```ruby
begin
  # Create or Update Batch GroupNetworkCriteria
  data, status_code, headers = api_instance.update_batch_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->update_batch_group_network_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_network_criteria** | [**Array&lt;GroupNetworkCriteria&gt;**](GroupNetworkCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_network_criteria

> <GroupNetworkCriteriaVBAResponse> update_group_network_criteria(vbasoftware_database, group_network_criteria_key, group_network_criteria)

Update GroupNetworkCriteria

Updates a specific GroupNetworkCriteria.

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

api_instance = Vba::GroupNetworkCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_network_criteria_key = 56 # Integer | GroupNetworkCriteria Key
group_network_criteria = Vba::GroupNetworkCriteria.new({group_network_criteria_key: 37}) # GroupNetworkCriteria | 

begin
  # Update GroupNetworkCriteria
  result = api_instance.update_group_network_criteria(vbasoftware_database, group_network_criteria_key, group_network_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->update_group_network_criteria: #{e}"
end
```

#### Using the update_group_network_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkCriteriaVBAResponse>, Integer, Hash)> update_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria_key, group_network_criteria)

```ruby
begin
  # Update GroupNetworkCriteria
  data, status_code, headers = api_instance.update_group_network_criteria_with_http_info(vbasoftware_database, group_network_criteria_key, group_network_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriasApi->update_group_network_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_network_criteria_key** | **Integer** | GroupNetworkCriteria Key |  |
| **group_network_criteria** | [**GroupNetworkCriteria**](GroupNetworkCriteria.md) |  |  |

### Return type

[**GroupNetworkCriteriaVBAResponse**](GroupNetworkCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

