# Vba::GroupUCPercentCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_uc_percent_criteria**](GroupUCPercentCriteriasApi.md#create_group_uc_percent_criteria) | **POST** /group-uc-percent-criterias | Create GroupUCPercentCriteria |
| [**delete_group_uc_percent_criteria**](GroupUCPercentCriteriasApi.md#delete_group_uc_percent_criteria) | **DELETE** /group-uc-percent-criterias/{GroupUCPercentCriteria_Key} | Delete GroupUCPercentCriteria |
| [**get_group_uc_percent_criteria**](GroupUCPercentCriteriasApi.md#get_group_uc_percent_criteria) | **GET** /group-uc-percent-criterias/{GroupUCPercentCriteria_Key} | Get GroupUCPercentCriteria |
| [**list_group_uc_percent_criteria**](GroupUCPercentCriteriasApi.md#list_group_uc_percent_criteria) | **GET** /group-uc-percent-criterias | List GroupUCPercentCriteria |
| [**update_batch_group_uc_percent_criteria**](GroupUCPercentCriteriasApi.md#update_batch_group_uc_percent_criteria) | **PUT** /group-uc-percent-criterias-batch | Create or Update Batch GroupUCPercentCriteria |
| [**update_group_uc_percent_criteria**](GroupUCPercentCriteriasApi.md#update_group_uc_percent_criteria) | **PUT** /group-uc-percent-criterias/{GroupUCPercentCriteria_Key} | Update GroupUCPercentCriteria |


## create_group_uc_percent_criteria

> <GroupUCPercentCriteriaVBAResponse> create_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria)

Create GroupUCPercentCriteria

Creates a new GroupUCPercentCriteria

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

api_instance = Vba::GroupUCPercentCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_criteria = Vba::GroupUCPercentCriteria.new({group_uc_percent_criteria_key: 37, group_uc_percent_column_key: 37, group_uc_percent_key: 37}) # GroupUCPercentCriteria | 

begin
  # Create GroupUCPercentCriteria
  result = api_instance.create_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->create_group_uc_percent_criteria: #{e}"
end
```

#### Using the create_group_uc_percent_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentCriteriaVBAResponse>, Integer, Hash)> create_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria)

```ruby
begin
  # Create GroupUCPercentCriteria
  data, status_code, headers = api_instance.create_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->create_group_uc_percent_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_criteria** | [**GroupUCPercentCriteria**](GroupUCPercentCriteria.md) |  |  |

### Return type

[**GroupUCPercentCriteriaVBAResponse**](GroupUCPercentCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_uc_percent_criteria

> delete_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria_key)

Delete GroupUCPercentCriteria

Deletes an GroupUCPercentCriteria

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

api_instance = Vba::GroupUCPercentCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_criteria_key = 56 # Integer | GroupUCPercentCriteria Key

begin
  # Delete GroupUCPercentCriteria
  api_instance.delete_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->delete_group_uc_percent_criteria: #{e}"
end
```

#### Using the delete_group_uc_percent_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria_key)

```ruby
begin
  # Delete GroupUCPercentCriteria
  data, status_code, headers = api_instance.delete_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->delete_group_uc_percent_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_criteria_key** | **Integer** | GroupUCPercentCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_uc_percent_criteria

> <GroupUCPercentCriteriaVBAResponse> get_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria_key)

Get GroupUCPercentCriteria

Gets GroupUCPercentCriteria

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

api_instance = Vba::GroupUCPercentCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_criteria_key = 56 # Integer | GroupUCPercentCriteria Key

begin
  # Get GroupUCPercentCriteria
  result = api_instance.get_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->get_group_uc_percent_criteria: #{e}"
end
```

#### Using the get_group_uc_percent_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentCriteriaVBAResponse>, Integer, Hash)> get_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria_key)

```ruby
begin
  # Get GroupUCPercentCriteria
  data, status_code, headers = api_instance.get_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->get_group_uc_percent_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_criteria_key** | **Integer** | GroupUCPercentCriteria Key |  |

### Return type

[**GroupUCPercentCriteriaVBAResponse**](GroupUCPercentCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_uc_percent_criteria

> <GroupUCPercentCriteriaListVBAResponse> list_group_uc_percent_criteria(vbasoftware_database, opts)

List GroupUCPercentCriteria

Lists all GroupUCPercentCriteria

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

api_instance = Vba::GroupUCPercentCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List GroupUCPercentCriteria
  result = api_instance.list_group_uc_percent_criteria(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->list_group_uc_percent_criteria: #{e}"
end
```

#### Using the list_group_uc_percent_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentCriteriaListVBAResponse>, Integer, Hash)> list_group_uc_percent_criteria_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupUCPercentCriteria
  data, status_code, headers = api_instance.list_group_uc_percent_criteria_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->list_group_uc_percent_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**GroupUCPercentCriteriaListVBAResponse**](GroupUCPercentCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_uc_percent_criteria

> <MultiCodeResponseListVBAResponse> update_batch_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria)

Create or Update Batch GroupUCPercentCriteria

Create or Update multiple GroupUCPercentCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupUCPercentCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_criteria = [Vba::GroupUCPercentCriteria.new({group_uc_percent_criteria_key: 37, group_uc_percent_column_key: 37, group_uc_percent_key: 37})] # Array<GroupUCPercentCriteria> | 

begin
  # Create or Update Batch GroupUCPercentCriteria
  result = api_instance.update_batch_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->update_batch_group_uc_percent_criteria: #{e}"
end
```

#### Using the update_batch_group_uc_percent_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria)

```ruby
begin
  # Create or Update Batch GroupUCPercentCriteria
  data, status_code, headers = api_instance.update_batch_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->update_batch_group_uc_percent_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_criteria** | [**Array&lt;GroupUCPercentCriteria&gt;**](GroupUCPercentCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_uc_percent_criteria

> <GroupUCPercentCriteriaVBAResponse> update_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria_key, group_uc_percent_criteria)

Update GroupUCPercentCriteria

Updates a specific GroupUCPercentCriteria.

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

api_instance = Vba::GroupUCPercentCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_uc_percent_criteria_key = 56 # Integer | GroupUCPercentCriteria Key
group_uc_percent_criteria = Vba::GroupUCPercentCriteria.new({group_uc_percent_criteria_key: 37, group_uc_percent_column_key: 37, group_uc_percent_key: 37}) # GroupUCPercentCriteria | 

begin
  # Update GroupUCPercentCriteria
  result = api_instance.update_group_uc_percent_criteria(vbasoftware_database, group_uc_percent_criteria_key, group_uc_percent_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->update_group_uc_percent_criteria: #{e}"
end
```

#### Using the update_group_uc_percent_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentCriteriaVBAResponse>, Integer, Hash)> update_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria_key, group_uc_percent_criteria)

```ruby
begin
  # Update GroupUCPercentCriteria
  data, status_code, headers = api_instance.update_group_uc_percent_criteria_with_http_info(vbasoftware_database, group_uc_percent_criteria_key, group_uc_percent_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentCriteriasApi->update_group_uc_percent_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_uc_percent_criteria_key** | **Integer** | GroupUCPercentCriteria Key |  |
| **group_uc_percent_criteria** | [**GroupUCPercentCriteria**](GroupUCPercentCriteria.md) |  |  |

### Return type

[**GroupUCPercentCriteriaVBAResponse**](GroupUCPercentCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

