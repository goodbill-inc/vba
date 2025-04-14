# Vba::CriteriaApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_criteria**](CriteriaApi.md#create_criteria) | **POST** /criterias | Create a search Criteria |
| [**create_or_update_batch_criteria**](CriteriaApi.md#create_or_update_batch_criteria) | **PUT** /criterias-batch | Create or Update Batch Criteria |
| [**delete_criteria**](CriteriaApi.md#delete_criteria) | **DELETE** /criterias/{criteriaKey} | Delete Criteria |
| [**get_criteria**](CriteriaApi.md#get_criteria) | **GET** /criterias/{criteriaKey} | Get Criteria |
| [**get_criteria_where_clause**](CriteriaApi.md#get_criteria_where_clause) | **GET** /criterias-where-clause/{criteriaKey} | Get this Criteria Where Clause |
| [**list_criteria**](CriteriaApi.md#list_criteria) | **GET** /criterias | List Criteria |
| [**update_criteria**](CriteriaApi.md#update_criteria) | **PUT** /criterias/{criteriaKey} | Update Criteria |


## create_criteria

> <CriteriaVBAResponse> create_criteria(vbasoftware_database, criteria)

Create a search Criteria

Creates a new search Criteria.

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
criteria = Vba::Criteria.new # Criteria | 

begin
  # Create a search Criteria
  result = api_instance.create_criteria(vbasoftware_database, criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->create_criteria: #{e}"
end
```

#### Using the create_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CriteriaVBAResponse>, Integer, Hash)> create_criteria_with_http_info(vbasoftware_database, criteria)

```ruby
begin
  # Create a search Criteria
  data, status_code, headers = api_instance.create_criteria_with_http_info(vbasoftware_database, criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->create_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria** | [**Criteria**](Criteria.md) |  |  |

### Return type

[**CriteriaVBAResponse**](CriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_or_update_batch_criteria

> <MultiCodeResponseListVBAResponse> create_or_update_batch_criteria(vbasoftware_database, criteria)

Create or Update Batch Criteria

Creates or Updates multiple Criteria.

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
criteria = [Vba::Criteria.new] # Array<Criteria> | 

begin
  # Create or Update Batch Criteria
  result = api_instance.create_or_update_batch_criteria(vbasoftware_database, criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->create_or_update_batch_criteria: #{e}"
end
```

#### Using the create_or_update_batch_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_or_update_batch_criteria_with_http_info(vbasoftware_database, criteria)

```ruby
begin
  # Create or Update Batch Criteria
  data, status_code, headers = api_instance.create_or_update_batch_criteria_with_http_info(vbasoftware_database, criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->create_or_update_batch_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria** | [**Array&lt;Criteria&gt;**](Criteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_criteria

> delete_criteria(vbasoftware_database, criteria_key)

Delete Criteria

Deletes a Criteria

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
criteria_key = 56 # Integer | Criteria Key

begin
  # Delete Criteria
  api_instance.delete_criteria(vbasoftware_database, criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->delete_criteria: #{e}"
end
```

#### Using the delete_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_criteria_with_http_info(vbasoftware_database, criteria_key)

```ruby
begin
  # Delete Criteria
  data, status_code, headers = api_instance.delete_criteria_with_http_info(vbasoftware_database, criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->delete_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria_key** | **Integer** | Criteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_criteria

> <CriteriaVBAResponse> get_criteria(vbasoftware_database, criteria_key)

Get Criteria

Gets Criteria

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
criteria_key = 56 # Integer | Criteria Key

begin
  # Get Criteria
  result = api_instance.get_criteria(vbasoftware_database, criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->get_criteria: #{e}"
end
```

#### Using the get_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CriteriaVBAResponse>, Integer, Hash)> get_criteria_with_http_info(vbasoftware_database, criteria_key)

```ruby
begin
  # Get Criteria
  data, status_code, headers = api_instance.get_criteria_with_http_info(vbasoftware_database, criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->get_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria_key** | **Integer** | Criteria Key |  |

### Return type

[**CriteriaVBAResponse**](CriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_criteria_where_clause

> <StringVBAResponse> get_criteria_where_clause(vbasoftware_database, criteria_key)

Get this Criteria Where Clause

Helper function to take an existing list of Criteria Detail and merge it all together into a single WHERE Clause to be used with other services.

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
criteria_key = 56 # Integer | Criteria Key

begin
  # Get this Criteria Where Clause
  result = api_instance.get_criteria_where_clause(vbasoftware_database, criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->get_criteria_where_clause: #{e}"
end
```

#### Using the get_criteria_where_clause_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringVBAResponse>, Integer, Hash)> get_criteria_where_clause_with_http_info(vbasoftware_database, criteria_key)

```ruby
begin
  # Get this Criteria Where Clause
  data, status_code, headers = api_instance.get_criteria_where_clause_with_http_info(vbasoftware_database, criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->get_criteria_where_clause_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria_key** | **Integer** | Criteria Key |  |

### Return type

[**StringVBAResponse**](StringVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_criteria

> <CriteriaListVBAResponse> list_criteria(vbasoftware_database, opts)

List Criteria

List Criteria. Optional 

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  search_config_id: 'search_config_id_example', # String | Search Config Id
  criteria_user: 'criteria_user_example', # String | Criteria User
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Criteria
  result = api_instance.list_criteria(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->list_criteria: #{e}"
end
```

#### Using the list_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CriteriaListVBAResponse>, Integer, Hash)> list_criteria_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Criteria
  data, status_code, headers = api_instance.list_criteria_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->list_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **search_config_id** | **String** | Search Config Id | [optional] |
| **criteria_user** | **String** | Criteria User | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CriteriaListVBAResponse**](CriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_criteria

> <CriteriaVBAResponse> update_criteria(vbasoftware_database, criteria_key, criteria)

Update Criteria

Updates a specific Criteria.

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

api_instance = Vba::CriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
criteria_key = 56 # Integer | Criteria Key
criteria = Vba::Criteria.new # Criteria | 

begin
  # Update Criteria
  result = api_instance.update_criteria(vbasoftware_database, criteria_key, criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->update_criteria: #{e}"
end
```

#### Using the update_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CriteriaVBAResponse>, Integer, Hash)> update_criteria_with_http_info(vbasoftware_database, criteria_key, criteria)

```ruby
begin
  # Update Criteria
  data, status_code, headers = api_instance.update_criteria_with_http_info(vbasoftware_database, criteria_key, criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaApi->update_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria_key** | **Integer** | Criteria Key |  |
| **criteria** | [**Criteria**](Criteria.md) |  |  |

### Return type

[**CriteriaVBAResponse**](CriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

