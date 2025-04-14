# Vba::ReinsuranceContractFactorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_factor**](ReinsuranceContractFactorsApi.md#create_reins_contract_factor) | **POST** /reinsurance-contracts/{reinsContractKey}/factors | Create ReinsContractFactor |
| [**delete_reins_contract_factor**](ReinsuranceContractFactorsApi.md#delete_reins_contract_factor) | **DELETE** /reinsurance-contracts/{reinsContractKey}/factors/{reinsContractFactorKey} | Delete ReinsContractFactor |
| [**get_reins_contract_factor**](ReinsuranceContractFactorsApi.md#get_reins_contract_factor) | **GET** /reinsurance-contracts/{reinsContractKey}/factors/{reinsContractFactorKey} | Get ReinsContractFactor |
| [**list_reins_contract_factor**](ReinsuranceContractFactorsApi.md#list_reins_contract_factor) | **GET** /reinsurance-contracts/{reinsContractKey}/factors | List ReinsContractFactor |
| [**update_batch_reins_contract_factor**](ReinsuranceContractFactorsApi.md#update_batch_reins_contract_factor) | **PUT** /reinsurance-contracts/{reinsContractKey}/factors-batch | Create or Update Batch ReinsContractFactor |
| [**update_reins_contract_factor**](ReinsuranceContractFactorsApi.md#update_reins_contract_factor) | **PUT** /reinsurance-contracts/{reinsContractKey}/factors/{reinsContractFactorKey} | Update ReinsContractFactor |


## create_reins_contract_factor

> <ReinsContractFactorVBAResponse> create_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor)

Create ReinsContractFactor

Creates a new ReinsContractFactor

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

api_instance = Vba::ReinsuranceContractFactorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor = Vba::ReinsContractFactor.new({reins_contract_factor_key: 37, effective_date: Time.now, reins_contract_key: 37, tier: 'tier_example'}) # ReinsContractFactor | 

begin
  # Create ReinsContractFactor
  result = api_instance.create_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->create_reins_contract_factor: #{e}"
end
```

#### Using the create_reins_contract_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorVBAResponse>, Integer, Hash)> create_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor)

```ruby
begin
  # Create ReinsContractFactor
  data, status_code, headers = api_instance.create_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->create_reins_contract_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor** | [**ReinsContractFactor**](ReinsContractFactor.md) |  |  |

### Return type

[**ReinsContractFactorVBAResponse**](ReinsContractFactorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_factor

> delete_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor_key)

Delete ReinsContractFactor

Deletes an ReinsContractFactor

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

api_instance = Vba::ReinsuranceContractFactorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_key = 56 # Integer | ReinsContractFactor Key

begin
  # Delete ReinsContractFactor
  api_instance.delete_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->delete_reins_contract_factor: #{e}"
end
```

#### Using the delete_reins_contract_factor_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_key)

```ruby
begin
  # Delete ReinsContractFactor
  data, status_code, headers = api_instance.delete_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->delete_reins_contract_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_key** | **Integer** | ReinsContractFactor Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_factor

> <ReinsContractFactorVBAResponse> get_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor_key)

Get ReinsContractFactor

Gets ReinsContractFactor

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

api_instance = Vba::ReinsuranceContractFactorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_key = 56 # Integer | ReinsContractFactor Key

begin
  # Get ReinsContractFactor
  result = api_instance.get_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->get_reins_contract_factor: #{e}"
end
```

#### Using the get_reins_contract_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorVBAResponse>, Integer, Hash)> get_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_key)

```ruby
begin
  # Get ReinsContractFactor
  data, status_code, headers = api_instance.get_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->get_reins_contract_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_key** | **Integer** | ReinsContractFactor Key |  |

### Return type

[**ReinsContractFactorVBAResponse**](ReinsContractFactorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_factor

> <ReinsContractFactorListVBAResponse> list_reins_contract_factor(vbasoftware_database, reins_contract_key, opts)

List ReinsContractFactor

Lists all ReinsContractFactor for the given reinsContractKey

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

api_instance = Vba::ReinsuranceContractFactorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractFactor
  result = api_instance.list_reins_contract_factor(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->list_reins_contract_factor: #{e}"
end
```

#### Using the list_reins_contract_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorListVBAResponse>, Integer, Hash)> list_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractFactor
  data, status_code, headers = api_instance.list_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->list_reins_contract_factor_with_http_info: #{e}"
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

[**ReinsContractFactorListVBAResponse**](ReinsContractFactorListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_factor

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor)

Create or Update Batch ReinsContractFactor

Create or Update multiple ReinsContractFactor at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractFactorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor = [Vba::ReinsContractFactor.new({reins_contract_factor_key: 37, effective_date: Time.now, reins_contract_key: 37, tier: 'tier_example'})] # Array<ReinsContractFactor> | 

begin
  # Create or Update Batch ReinsContractFactor
  result = api_instance.update_batch_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->update_batch_reins_contract_factor: #{e}"
end
```

#### Using the update_batch_reins_contract_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor)

```ruby
begin
  # Create or Update Batch ReinsContractFactor
  data, status_code, headers = api_instance.update_batch_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->update_batch_reins_contract_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor** | [**Array&lt;ReinsContractFactor&gt;**](ReinsContractFactor.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_factor

> <ReinsContractFactorVBAResponse> update_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor_key, reins_contract_factor)

Update ReinsContractFactor

Updates a specific ReinsContractFactor.

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

api_instance = Vba::ReinsuranceContractFactorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_factor_key = 56 # Integer | ReinsContractFactor Key
reins_contract_factor = Vba::ReinsContractFactor.new({reins_contract_factor_key: 37, effective_date: Time.now, reins_contract_key: 37, tier: 'tier_example'}) # ReinsContractFactor | 

begin
  # Update ReinsContractFactor
  result = api_instance.update_reins_contract_factor(vbasoftware_database, reins_contract_key, reins_contract_factor_key, reins_contract_factor)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->update_reins_contract_factor: #{e}"
end
```

#### Using the update_reins_contract_factor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractFactorVBAResponse>, Integer, Hash)> update_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_key, reins_contract_factor)

```ruby
begin
  # Update ReinsContractFactor
  data, status_code, headers = api_instance.update_reins_contract_factor_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_factor_key, reins_contract_factor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractFactorVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractFactorsApi->update_reins_contract_factor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_factor_key** | **Integer** | ReinsContractFactor Key |  |
| **reins_contract_factor** | [**ReinsContractFactor**](ReinsContractFactor.md) |  |  |

### Return type

[**ReinsContractFactorVBAResponse**](ReinsContractFactorVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

