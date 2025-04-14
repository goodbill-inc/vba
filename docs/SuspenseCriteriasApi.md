# Vba::SuspenseCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_suspense_criteria**](SuspenseCriteriasApi.md#create_suspense_criteria) | **POST** /suspense-criterias | Create SuspenseCriteria |
| [**delete_suspense_criteria**](SuspenseCriteriasApi.md#delete_suspense_criteria) | **DELETE** /suspense-criterias/{suspenseCriteriaKey} | Delete SuspenseCriteria |
| [**get_suspense_criteria**](SuspenseCriteriasApi.md#get_suspense_criteria) | **GET** /suspense-criterias/{suspenseCriteriaKey} | Get SuspenseCriteria |
| [**list_suspense_criteria**](SuspenseCriteriasApi.md#list_suspense_criteria) | **GET** /suspense-criterias | List SuspenseCriteria |
| [**update_batch_suspense_criteria**](SuspenseCriteriasApi.md#update_batch_suspense_criteria) | **PUT** /suspense-criterias-batch | Create or Update Batch SuspenseCriteria |
| [**update_suspense_criteria**](SuspenseCriteriasApi.md#update_suspense_criteria) | **PUT** /suspense-criterias/{suspenseCriteriaKey} | Update SuspenseCriteria |


## create_suspense_criteria

> <SuspenseCriteriaVBAResponse> create_suspense_criteria(vbasoftware_database, suspense_criteria)

Create SuspenseCriteria

Creates a new SuspenseCriteria

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

api_instance = Vba::SuspenseCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_criteria = Vba::SuspenseCriteria.new({suspense_criteria_key: 37, adjustment_suspense: false, use_reins_adj_thresh: false, use_reins_loss_thresh: false, zelis_suspense: false}) # SuspenseCriteria | 

begin
  # Create SuspenseCriteria
  result = api_instance.create_suspense_criteria(vbasoftware_database, suspense_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->create_suspense_criteria: #{e}"
end
```

#### Using the create_suspense_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseCriteriaVBAResponse>, Integer, Hash)> create_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria)

```ruby
begin
  # Create SuspenseCriteria
  data, status_code, headers = api_instance.create_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->create_suspense_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_criteria** | [**SuspenseCriteria**](SuspenseCriteria.md) |  |  |

### Return type

[**SuspenseCriteriaVBAResponse**](SuspenseCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_suspense_criteria

> delete_suspense_criteria(vbasoftware_database, suspense_criteria_key)

Delete SuspenseCriteria

Deletes an SuspenseCriteria

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

api_instance = Vba::SuspenseCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_criteria_key = 56 # Integer | SuspenseCriteria Key

begin
  # Delete SuspenseCriteria
  api_instance.delete_suspense_criteria(vbasoftware_database, suspense_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->delete_suspense_criteria: #{e}"
end
```

#### Using the delete_suspense_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key)

```ruby
begin
  # Delete SuspenseCriteria
  data, status_code, headers = api_instance.delete_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->delete_suspense_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_criteria_key** | **Integer** | SuspenseCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_suspense_criteria

> <SuspenseCriteriaVBAResponse> get_suspense_criteria(vbasoftware_database, suspense_criteria_key)

Get SuspenseCriteria

Gets SuspenseCriteria

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

api_instance = Vba::SuspenseCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_criteria_key = 56 # Integer | SuspenseCriteria Key

begin
  # Get SuspenseCriteria
  result = api_instance.get_suspense_criteria(vbasoftware_database, suspense_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->get_suspense_criteria: #{e}"
end
```

#### Using the get_suspense_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseCriteriaVBAResponse>, Integer, Hash)> get_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key)

```ruby
begin
  # Get SuspenseCriteria
  data, status_code, headers = api_instance.get_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->get_suspense_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_criteria_key** | **Integer** | SuspenseCriteria Key |  |

### Return type

[**SuspenseCriteriaVBAResponse**](SuspenseCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_suspense_criteria

> <SuspenseCriteriaListVBAResponse> list_suspense_criteria(vbasoftware_database, opts)

List SuspenseCriteria

Lists all SuspenseCriteria

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

api_instance = Vba::SuspenseCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SuspenseCriteria
  result = api_instance.list_suspense_criteria(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->list_suspense_criteria: #{e}"
end
```

#### Using the list_suspense_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseCriteriaListVBAResponse>, Integer, Hash)> list_suspense_criteria_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SuspenseCriteria
  data, status_code, headers = api_instance.list_suspense_criteria_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->list_suspense_criteria_with_http_info: #{e}"
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

[**SuspenseCriteriaListVBAResponse**](SuspenseCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_suspense_criteria

> <MultiCodeResponseListVBAResponse> update_batch_suspense_criteria(vbasoftware_database, suspense_criteria)

Create or Update Batch SuspenseCriteria

Create or Update multiple SuspenseCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SuspenseCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_criteria = [Vba::SuspenseCriteria.new({suspense_criteria_key: 37, adjustment_suspense: false, use_reins_adj_thresh: false, use_reins_loss_thresh: false, zelis_suspense: false})] # Array<SuspenseCriteria> | 

begin
  # Create or Update Batch SuspenseCriteria
  result = api_instance.update_batch_suspense_criteria(vbasoftware_database, suspense_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->update_batch_suspense_criteria: #{e}"
end
```

#### Using the update_batch_suspense_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria)

```ruby
begin
  # Create or Update Batch SuspenseCriteria
  data, status_code, headers = api_instance.update_batch_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->update_batch_suspense_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_criteria** | [**Array&lt;SuspenseCriteria&gt;**](SuspenseCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_suspense_criteria

> <SuspenseCriteriaVBAResponse> update_suspense_criteria(vbasoftware_database, suspense_criteria_key, suspense_criteria)

Update SuspenseCriteria

Updates a specific SuspenseCriteria.

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

api_instance = Vba::SuspenseCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suspense_criteria_key = 56 # Integer | SuspenseCriteria Key
suspense_criteria = Vba::SuspenseCriteria.new({suspense_criteria_key: 37, adjustment_suspense: false, use_reins_adj_thresh: false, use_reins_loss_thresh: false, zelis_suspense: false}) # SuspenseCriteria | 

begin
  # Update SuspenseCriteria
  result = api_instance.update_suspense_criteria(vbasoftware_database, suspense_criteria_key, suspense_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->update_suspense_criteria: #{e}"
end
```

#### Using the update_suspense_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuspenseCriteriaVBAResponse>, Integer, Hash)> update_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, suspense_criteria)

```ruby
begin
  # Update SuspenseCriteria
  data, status_code, headers = api_instance.update_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, suspense_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuspenseCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuspenseCriteriasApi->update_suspense_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suspense_criteria_key** | **Integer** | SuspenseCriteria Key |  |
| **suspense_criteria** | [**SuspenseCriteria**](SuspenseCriteria.md) |  |  |

### Return type

[**SuspenseCriteriaVBAResponse**](SuspenseCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

