# Vba::ReinsuranceContractFactorCriteriasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_factor_criteria**](ReinsuranceContractFactorCriteriasApi.md#create_reins_contract_factor_criteria) | **POST** /reinsurance-contracts/{reinsContractKey}/factor-criterias | Create ReinsContractFactorCriteria |
| [**delete_reins_contract_factor_criteria**](ReinsuranceContractFactorCriteriasApi.md#delete_reins_contract_factor_criteria) | **DELETE** /reinsurance-contracts/{reinsContractKey}/factor-criterias/{reinsContractFactorCriteriaKey} | Delete ReinsContractFactorCriteria |
| [**get_reins_contract_factor_criteria**](ReinsuranceContractFactorCriteriasApi.md#get_reins_contract_factor_criteria) | **GET** /reinsurance-contracts/{reinsContractKey}/factor-criterias/{reinsContractFactorCriteriaKey} | Get ReinsContractFactorCriteria |
| [**list_reins_contract_factor_criteria**](ReinsuranceContractFactorCriteriasApi.md#list_reins_contract_factor_criteria) | **GET** /reinsurance-contracts/{reinsContractKey}/factor-criterias | List ReinsContractFactorCriteria |
| [**update_batch_reins_contract_factor_criteria**](ReinsuranceContractFactorCriteriasApi.md#update_batch_reins_contract_factor_criteria) | **PUT** /reinsurance-contracts/{reinsContractKey}/factor-criterias-batch | Create or Update Batch ReinsContractFactorCriteria |
| [**update_reins_contract_factor_criteria**](ReinsuranceContractFactorCriteriasApi.md#update_reins_contract_factor_criteria) | **PUT** /reinsurance-contracts/{reinsContractKey}/factor-criterias/{reinsContractFactorCriteriaKey} | Update ReinsContractFactorCriteria |


## create_reins_contract_factor_criteria

> <ReinsContractFactorCriteriaVBAResponse> create_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)

Create ReinsContractFactorCriteria

Creates a new ReinsContractFactorCriteria

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

api_instance = Vba::ReinsuranceContractFactorCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_criteria = Vba::ReinsContractFactorCriteria.new({reins_contract_factor_criteria_key: 37, criteria_exclude: false, reins_contract_key: 37}) # ReinsContractFactorCriteria | 

begin
  # Create ReinsContractFactorCriteria
  result = api_instance.create_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->create_reins_contract_factor_criteria: #{e}"
end
```

#### Using the create_reins_contract_factor_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorCriteriaVBAResponse>, Integer, Hash)> create_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)

```ruby
begin
  # Create ReinsContractFactorCriteria
  data, status_code, headers = api_instance.create_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->create_reins_contract_factor_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_criteria** | [**ReinsContractFactorCriteria**](ReinsContractFactorCriteria.md) |  |  |

### Return type

[**ReinsContractFactorCriteriaVBAResponse**](ReinsContractFactorCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_factor_criteria

> delete_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)

Delete ReinsContractFactorCriteria

Deletes an ReinsContractFactorCriteria

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

api_instance = Vba::ReinsuranceContractFactorCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_criteria_key = 56 # Integer | ReinsContractFactorCriteria Key

begin
  # Delete ReinsContractFactorCriteria
  api_instance.delete_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->delete_reins_contract_factor_criteria: #{e}"
end
```

#### Using the delete_reins_contract_factor_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)

```ruby
begin
  # Delete ReinsContractFactorCriteria
  data, status_code, headers = api_instance.delete_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->delete_reins_contract_factor_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_criteria_key** | **Integer** | ReinsContractFactorCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_factor_criteria

> <ReinsContractFactorCriteriaVBAResponse> get_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)

Get ReinsContractFactorCriteria

Gets ReinsContractFactorCriteria

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

api_instance = Vba::ReinsuranceContractFactorCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_criteria_key = 56 # Integer | ReinsContractFactorCriteria Key

begin
  # Get ReinsContractFactorCriteria
  result = api_instance.get_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->get_reins_contract_factor_criteria: #{e}"
end
```

#### Using the get_reins_contract_factor_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorCriteriaVBAResponse>, Integer, Hash)> get_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)

```ruby
begin
  # Get ReinsContractFactorCriteria
  data, status_code, headers = api_instance.get_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->get_reins_contract_factor_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_criteria_key** | **Integer** | ReinsContractFactorCriteria Key |  |

### Return type

[**ReinsContractFactorCriteriaVBAResponse**](ReinsContractFactorCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_factor_criteria

> <ReinsContractFactorCriteriaListVBAResponse> list_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, opts)

List ReinsContractFactorCriteria

Lists all ReinsContractFactorCriteria for the given reinsContractKey

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

api_instance = Vba::ReinsuranceContractFactorCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractFactorCriteria
  result = api_instance.list_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->list_reins_contract_factor_criteria: #{e}"
end
```

#### Using the list_reins_contract_factor_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorCriteriaListVBAResponse>, Integer, Hash)> list_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractFactorCriteria
  data, status_code, headers = api_instance.list_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->list_reins_contract_factor_criteria_with_http_info: #{e}"
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

[**ReinsContractFactorCriteriaListVBAResponse**](ReinsContractFactorCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_factor_criteria

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)

Create or Update Batch ReinsContractFactorCriteria

Create or Update multiple ReinsContractFactorCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractFactorCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_criteria = [Vba::ReinsContractFactorCriteria.new({reins_contract_factor_criteria_key: 37, criteria_exclude: false, reins_contract_key: 37})] # Array<ReinsContractFactorCriteria> | 

begin
  # Create or Update Batch ReinsContractFactorCriteria
  result = api_instance.update_batch_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->update_batch_reins_contract_factor_criteria: #{e}"
end
```

#### Using the update_batch_reins_contract_factor_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)

```ruby
begin
  # Create or Update Batch ReinsContractFactorCriteria
  data, status_code, headers = api_instance.update_batch_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->update_batch_reins_contract_factor_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_criteria** | [**Array&lt;ReinsContractFactorCriteria&gt;**](ReinsContractFactorCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_factor_criteria

> <ReinsContractFactorCriteriaVBAResponse> update_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key, reins_contract_factor_criteria)

Update ReinsContractFactorCriteria

Updates a specific ReinsContractFactorCriteria.

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

api_instance = Vba::ReinsuranceContractFactorCriteriasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_criteria_key = 56 # Integer | ReinsContractFactorCriteria Key
reins_contract_factor_criteria = Vba::ReinsContractFactorCriteria.new({reins_contract_factor_criteria_key: 37, criteria_exclude: false, reins_contract_key: 37}) # ReinsContractFactorCriteria | 

begin
  # Update ReinsContractFactorCriteria
  result = api_instance.update_reins_contract_factor_criteria(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key, reins_contract_factor_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->update_reins_contract_factor_criteria: #{e}"
end
```

#### Using the update_reins_contract_factor_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorCriteriaVBAResponse>, Integer, Hash)> update_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key, reins_contract_factor_criteria)

```ruby
begin
  # Update ReinsContractFactorCriteria
  data, status_code, headers = api_instance.update_reins_contract_factor_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_criteria_key, reins_contract_factor_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorCriteriasApi->update_reins_contract_factor_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_criteria_key** | **Integer** | ReinsContractFactorCriteria Key |  |
| **reins_contract_factor_criteria** | [**ReinsContractFactorCriteria**](ReinsContractFactorCriteria.md) |  |  |

### Return type

[**ReinsContractFactorCriteriaVBAResponse**](ReinsContractFactorCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

