# Vba::ReinsuranceContractCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_criteria**](ReinsuranceContractCriteriasApi.md#create_reins_contract_criteria) | **POST** /reinsurance-contracts/{reinsContractKey}/criterias | Create ReinsContractCriteria |
| [**delete_reins_contract_criteria**](ReinsuranceContractCriteriasApi.md#delete_reins_contract_criteria) | **DELETE** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey} | Delete ReinsContractCriteria |
| [**get_reins_contract_criteria**](ReinsuranceContractCriteriasApi.md#get_reins_contract_criteria) | **GET** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey} | Get ReinsContractCriteria |
| [**list_reins_contract_criteria**](ReinsuranceContractCriteriasApi.md#list_reins_contract_criteria) | **GET** /reinsurance-contracts/{reinsContractKey}/criterias | List ReinsContractCriteria |
| [**update_batch_reins_contract_criteria**](ReinsuranceContractCriteriasApi.md#update_batch_reins_contract_criteria) | **PUT** /reinsurance-contracts/{reinsContractKey}/criterias-batch | Create or Update Batch ReinsContractCriteria |
| [**update_reins_contract_criteria**](ReinsuranceContractCriteriasApi.md#update_reins_contract_criteria) | **PUT** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey} | Update ReinsContractCriteria |


## create_reins_contract_criteria

> <ReinsContractCriteriaVBAResponse> create_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria)

Create ReinsContractCriteria

Creates a new ReinsContractCriteria

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

api_instance = Vba::ReinsuranceContractCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria = Vba::ReinsContractCriteria.new({reins_contract_criteria_key: 37, criteria_type: 'criteria_type_example', reins_contract_key: 37}) # ReinsContractCriteria | 

begin
  # Create ReinsContractCriteria
  result = api_instance.create_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->create_reins_contract_criteria: #{e}"
end
```

#### Using the create_reins_contract_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaVBAResponse>, Integer, Hash)> create_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria)

```ruby
begin
  # Create ReinsContractCriteria
  data, status_code, headers = api_instance.create_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->create_reins_contract_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria** | [**ReinsContractCriteria**](ReinsContractCriteria.md) |  |  |

### Return type

[**ReinsContractCriteriaVBAResponse**](ReinsContractCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_criteria

> delete_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)

Delete ReinsContractCriteria

Deletes an ReinsContractCriteria

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

api_instance = Vba::ReinsuranceContractCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key

begin
  # Delete ReinsContractCriteria
  api_instance.delete_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->delete_reins_contract_criteria: #{e}"
end
```

#### Using the delete_reins_contract_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)

```ruby
begin
  # Delete ReinsContractCriteria
  data, status_code, headers = api_instance.delete_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->delete_reins_contract_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_criteria

> <ReinsContractCriteriaVBAResponse> get_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)

Get ReinsContractCriteria

Gets ReinsContractCriteria

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

api_instance = Vba::ReinsuranceContractCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key

begin
  # Get ReinsContractCriteria
  result = api_instance.get_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->get_reins_contract_criteria: #{e}"
end
```

#### Using the get_reins_contract_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaVBAResponse>, Integer, Hash)> get_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)

```ruby
begin
  # Get ReinsContractCriteria
  data, status_code, headers = api_instance.get_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->get_reins_contract_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |

### Return type

[**ReinsContractCriteriaVBAResponse**](ReinsContractCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_criteria

> <ReinsContractCriteriaListVBAResponse> list_reins_contract_criteria(vbasoftware_database, reins_contract_key, opts)

List ReinsContractCriteria

Lists all ReinsContractCriteria for the given reinsContractKey

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

api_instance = Vba::ReinsuranceContractCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractCriteria
  result = api_instance.list_reins_contract_criteria(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->list_reins_contract_criteria: #{e}"
end
```

#### Using the list_reins_contract_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaListVBAResponse>, Integer, Hash)> list_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractCriteria
  data, status_code, headers = api_instance.list_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->list_reins_contract_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractCriteriaListVBAResponse**](ReinsContractCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_criteria

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria)

Create or Update Batch ReinsContractCriteria

Create or Update multiple ReinsContractCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria = [Vba::ReinsContractCriteria.new({reins_contract_criteria_key: 37, criteria_type: 'criteria_type_example', reins_contract_key: 37})] # Array<ReinsContractCriteria> | 

begin
  # Create or Update Batch ReinsContractCriteria
  result = api_instance.update_batch_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->update_batch_reins_contract_criteria: #{e}"
end
```

#### Using the update_batch_reins_contract_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria)

```ruby
begin
  # Create or Update Batch ReinsContractCriteria
  data, status_code, headers = api_instance.update_batch_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->update_batch_reins_contract_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria** | [**Array&lt;ReinsContractCriteria&gt;**](ReinsContractCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_criteria

> <ReinsContractCriteriaVBAResponse> update_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria)

Update ReinsContractCriteria

Updates a specific ReinsContractCriteria.

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

api_instance = Vba::ReinsuranceContractCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
reins_contract_criteria = Vba::ReinsContractCriteria.new({reins_contract_criteria_key: 37, criteria_type: 'criteria_type_example', reins_contract_key: 37}) # ReinsContractCriteria | 

begin
  # Update ReinsContractCriteria
  result = api_instance.update_reins_contract_criteria(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->update_reins_contract_criteria: #{e}"
end
```

#### Using the update_reins_contract_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaVBAResponse>, Integer, Hash)> update_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria)

```ruby
begin
  # Update ReinsContractCriteria
  data, status_code, headers = api_instance.update_reins_contract_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriasApi->update_reins_contract_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **reins_contract_criteria** | [**ReinsContractCriteria**](ReinsContractCriteria.md) |  |  |

### Return type

[**ReinsContractCriteriaVBAResponse**](ReinsContractCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

