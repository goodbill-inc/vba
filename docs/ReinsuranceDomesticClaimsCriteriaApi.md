# Vba::ReinsuranceDomesticClaimsCriteriaApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_domestic_claim_criteria**](ReinsuranceDomesticClaimsCriteriaApi.md#create_reins_domestic_claim_criteria) | **POST** /reinsurance-contracts/{reinsContractKey}/domestic-claim-criterias | Create ReinsDomesticClaimCriteria |
| [**delete_reins_domestic_claim_criteria**](ReinsuranceDomesticClaimsCriteriaApi.md#delete_reins_domestic_claim_criteria) | **DELETE** /reinsurance-contracts/{reinsContractKey}/domestic-claim-criterias/{reinsDomesticClaimCriteriaKey} | Delete ReinsDomesticClaimCriteria |
| [**get_reins_domestic_claim_criteria**](ReinsuranceDomesticClaimsCriteriaApi.md#get_reins_domestic_claim_criteria) | **GET** /reinsurance-contracts/{reinsContractKey}/domestic-claim-criterias/{reinsDomesticClaimCriteriaKey} | Get ReinsDomesticClaimCriteria |
| [**list_reins_domestic_claim_criteria**](ReinsuranceDomesticClaimsCriteriaApi.md#list_reins_domestic_claim_criteria) | **GET** /reinsurance-contracts/{reinsContractKey}/domestic-claim-criterias | List ReinsDomesticClaimCriteria |
| [**update_batch_reins_domestic_claim_criteria**](ReinsuranceDomesticClaimsCriteriaApi.md#update_batch_reins_domestic_claim_criteria) | **PUT** /reinsurance-contracts/{reinsContractKey}/domestic-claim-criterias-batch | Create or Update Batch ReinsDomesticClaimCriteria |
| [**update_reins_domestic_claim_criteria**](ReinsuranceDomesticClaimsCriteriaApi.md#update_reins_domestic_claim_criteria) | **PUT** /reinsurance-contracts/{reinsContractKey}/domestic-claim-criterias/{reinsDomesticClaimCriteriaKey} | Update ReinsDomesticClaimCriteria |


## create_reins_domestic_claim_criteria

> <ReinsDomesticClaimCriteriaVBAResponse> create_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)

Create ReinsDomesticClaimCriteria

Creates a new ReinsDomesticClaimCriteria

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

api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_domestic_claim_criteria = Vba::ReinsDomesticClaimCriteria.new({reins_domestic_claim_criteria_key: 37}) # ReinsDomesticClaimCriteria | 

begin
  # Create ReinsDomesticClaimCriteria
  result = api_instance.create_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->create_reins_domestic_claim_criteria: #{e}"
end
```

#### Using the create_reins_domestic_claim_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsDomesticClaimCriteriaVBAResponse>, Integer, Hash)> create_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)

```ruby
begin
  # Create ReinsDomesticClaimCriteria
  data, status_code, headers = api_instance.create_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsDomesticClaimCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->create_reins_domestic_claim_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_domestic_claim_criteria** | [**ReinsDomesticClaimCriteria**](ReinsDomesticClaimCriteria.md) |  |  |

### Return type

[**ReinsDomesticClaimCriteriaVBAResponse**](ReinsDomesticClaimCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_domestic_claim_criteria

> delete_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)

Delete ReinsDomesticClaimCriteria

Deletes an ReinsDomesticClaimCriteria

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

api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_domestic_claim_criteria_key = 56 # Integer | ReinsDomesticClaimCriteria Key

begin
  # Delete ReinsDomesticClaimCriteria
  api_instance.delete_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->delete_reins_domestic_claim_criteria: #{e}"
end
```

#### Using the delete_reins_domestic_claim_criteria_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)

```ruby
begin
  # Delete ReinsDomesticClaimCriteria
  data, status_code, headers = api_instance.delete_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->delete_reins_domestic_claim_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_domestic_claim_criteria_key** | **Integer** | ReinsDomesticClaimCriteria Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_domestic_claim_criteria

> <ReinsDomesticClaimCriteriaVBAResponse> get_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)

Get ReinsDomesticClaimCriteria

Gets ReinsDomesticClaimCriteria

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

api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_domestic_claim_criteria_key = 56 # Integer | ReinsDomesticClaimCriteria Key

begin
  # Get ReinsDomesticClaimCriteria
  result = api_instance.get_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->get_reins_domestic_claim_criteria: #{e}"
end
```

#### Using the get_reins_domestic_claim_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsDomesticClaimCriteriaVBAResponse>, Integer, Hash)> get_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)

```ruby
begin
  # Get ReinsDomesticClaimCriteria
  data, status_code, headers = api_instance.get_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsDomesticClaimCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->get_reins_domestic_claim_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_domestic_claim_criteria_key** | **Integer** | ReinsDomesticClaimCriteria Key |  |

### Return type

[**ReinsDomesticClaimCriteriaVBAResponse**](ReinsDomesticClaimCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_domestic_claim_criteria

> <ReinsDomesticClaimCriteriaListVBAResponse> list_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, opts)

List ReinsDomesticClaimCriteria

Lists all ReinsDomesticClaimCriteria for the given reinsContractKey

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

api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ReinsDomesticClaimCriteria
  result = api_instance.list_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->list_reins_domestic_claim_criteria: #{e}"
end
```

#### Using the list_reins_domestic_claim_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsDomesticClaimCriteriaListVBAResponse>, Integer, Hash)> list_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsDomesticClaimCriteria
  data, status_code, headers = api_instance.list_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsDomesticClaimCriteriaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->list_reins_domestic_claim_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ReinsDomesticClaimCriteriaListVBAResponse**](ReinsDomesticClaimCriteriaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_domestic_claim_criteria

> <MultiCodeResponseListVBAResponse> update_batch_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)

Create or Update Batch ReinsDomesticClaimCriteria

Create or Update multiple ReinsDomesticClaimCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_domestic_claim_criteria = [Vba::ReinsDomesticClaimCriteria.new({reins_domestic_claim_criteria_key: 37})] # Array<ReinsDomesticClaimCriteria> | 

begin
  # Create or Update Batch ReinsDomesticClaimCriteria
  result = api_instance.update_batch_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->update_batch_reins_domestic_claim_criteria: #{e}"
end
```

#### Using the update_batch_reins_domestic_claim_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)

```ruby
begin
  # Create or Update Batch ReinsDomesticClaimCriteria
  data, status_code, headers = api_instance.update_batch_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->update_batch_reins_domestic_claim_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_domestic_claim_criteria** | [**Array&lt;ReinsDomesticClaimCriteria&gt;**](ReinsDomesticClaimCriteria.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_domestic_claim_criteria

> <ReinsDomesticClaimCriteriaVBAResponse> update_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key, reins_domestic_claim_criteria)

Update ReinsDomesticClaimCriteria

Updates a specific ReinsDomesticClaimCriteria.

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

api_instance = Vba::ReinsuranceDomesticClaimsCriteriaApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_domestic_claim_criteria_key = 56 # Integer | ReinsDomesticClaimCriteria Key
reins_domestic_claim_criteria = Vba::ReinsDomesticClaimCriteria.new({reins_domestic_claim_criteria_key: 37}) # ReinsDomesticClaimCriteria | 

begin
  # Update ReinsDomesticClaimCriteria
  result = api_instance.update_reins_domestic_claim_criteria(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key, reins_domestic_claim_criteria)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->update_reins_domestic_claim_criteria: #{e}"
end
```

#### Using the update_reins_domestic_claim_criteria_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsDomesticClaimCriteriaVBAResponse>, Integer, Hash)> update_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key, reins_domestic_claim_criteria)

```ruby
begin
  # Update ReinsDomesticClaimCriteria
  data, status_code, headers = api_instance.update_reins_domestic_claim_criteria_with_http_info(vbasoftware_database, reins_contract_key, reins_domestic_claim_criteria_key, reins_domestic_claim_criteria)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsDomesticClaimCriteriaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceDomesticClaimsCriteriaApi->update_reins_domestic_claim_criteria_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_domestic_claim_criteria_key** | **Integer** | ReinsDomesticClaimCriteria Key |  |
| **reins_domestic_claim_criteria** | [**ReinsDomesticClaimCriteria**](ReinsDomesticClaimCriteria.md) |  |  |

### Return type

[**ReinsDomesticClaimCriteriaVBAResponse**](ReinsDomesticClaimCriteriaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

