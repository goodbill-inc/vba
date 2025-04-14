# Vba::ReinsuranceContractLevelsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_level**](ReinsuranceContractLevelsApi.md#create_reins_level) | **POST** /reinsurance-contracts/{reinsContractKey}/levels | Create ReinsLevel |
| [**delete_reins_level**](ReinsuranceContractLevelsApi.md#delete_reins_level) | **DELETE** /reinsurance-contracts/{reinsContractKey}/levels/{reinsLevelSeq} | Delete ReinsLevel |
| [**generate_reins_level_trans**](ReinsuranceContractLevelsApi.md#generate_reins_level_trans) | **POST** /reinsurance-contracts/{reinsContractKey}/generate-reins-level | Generate ReinsLevel Transactions |
| [**get_reins_level**](ReinsuranceContractLevelsApi.md#get_reins_level) | **GET** /reinsurance-contracts/{reinsContractKey}/levels/{reinsLevelSeq} | Get ReinsLevel |
| [**list_reins_level**](ReinsuranceContractLevelsApi.md#list_reins_level) | **GET** /reinsurance-contracts/{reinsContractKey}/levels | List ReinsLevel |
| [**update_batch_reins_level**](ReinsuranceContractLevelsApi.md#update_batch_reins_level) | **PUT** /reinsurance-contracts/{reinsContractKey}/levels-batch | Create or Update Batch ReinsLevel |
| [**update_reins_level**](ReinsuranceContractLevelsApi.md#update_reins_level) | **PUT** /reinsurance-contracts/{reinsContractKey}/levels/{reinsLevelSeq} | Update ReinsLevel |


## create_reins_level

> <ReinsLevelVBAResponse> create_reins_level(vbasoftware_database, reins_contract_key, reins_level)

Create ReinsLevel

Creates a new ReinsLevel

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_level = Vba::ReinsLevel.new({reins_contract_key: 37, reins_level_seq: 37}) # ReinsLevel | 

begin
  # Create ReinsLevel
  result = api_instance.create_reins_level(vbasoftware_database, reins_contract_key, reins_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->create_reins_level: #{e}"
end
```

#### Using the create_reins_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsLevelVBAResponse>, Integer, Hash)> create_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level)

```ruby
begin
  # Create ReinsLevel
  data, status_code, headers = api_instance.create_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->create_reins_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_level** | [**ReinsLevel**](ReinsLevel.md) |  |  |

### Return type

[**ReinsLevelVBAResponse**](ReinsLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_level

> delete_reins_level(vbasoftware_database, reins_contract_key, reins_level_seq)

Delete ReinsLevel

Deletes an ReinsLevel

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_level_seq = 56 # Integer | ReinsLevel Seq

begin
  # Delete ReinsLevel
  api_instance.delete_reins_level(vbasoftware_database, reins_contract_key, reins_level_seq)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->delete_reins_level: #{e}"
end
```

#### Using the delete_reins_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level_seq)

```ruby
begin
  # Delete ReinsLevel
  data, status_code, headers = api_instance.delete_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->delete_reins_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_level_seq** | **Integer** | ReinsLevel Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## generate_reins_level_trans

> <Int32VBAResponse> generate_reins_level_trans(vbasoftware_database, reins_contract_key)

Generate ReinsLevel Transactions

Creates new Reinsurance Transactions based on Reinsurance Level configurations.

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key

begin
  # Generate ReinsLevel Transactions
  result = api_instance.generate_reins_level_trans(vbasoftware_database, reins_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->generate_reins_level_trans: #{e}"
end
```

#### Using the generate_reins_level_trans_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32VBAResponse>, Integer, Hash)> generate_reins_level_trans_with_http_info(vbasoftware_database, reins_contract_key)

```ruby
begin
  # Generate ReinsLevel Transactions
  data, status_code, headers = api_instance.generate_reins_level_trans_with_http_info(vbasoftware_database, reins_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32VBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->generate_reins_level_trans_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |

### Return type

[**Int32VBAResponse**](Int32VBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## get_reins_level

> <ReinsLevelVBAResponse> get_reins_level(vbasoftware_database, reins_contract_key, reins_level_seq)

Get ReinsLevel

Gets ReinsLevel

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_level_seq = 56 # Integer | ReinsLevel Seq

begin
  # Get ReinsLevel
  result = api_instance.get_reins_level(vbasoftware_database, reins_contract_key, reins_level_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->get_reins_level: #{e}"
end
```

#### Using the get_reins_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsLevelVBAResponse>, Integer, Hash)> get_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level_seq)

```ruby
begin
  # Get ReinsLevel
  data, status_code, headers = api_instance.get_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->get_reins_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_level_seq** | **Integer** | ReinsLevel Seq |  |

### Return type

[**ReinsLevelVBAResponse**](ReinsLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_level

> <ReinsLevelListVBAResponse> list_reins_level(vbasoftware_database, reins_contract_key, opts)

List ReinsLevel

Lists all ReinsLevel for the given reinsContractKey

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsLevel
  result = api_instance.list_reins_level(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->list_reins_level: #{e}"
end
```

#### Using the list_reins_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsLevelListVBAResponse>, Integer, Hash)> list_reins_level_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsLevel
  data, status_code, headers = api_instance.list_reins_level_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsLevelListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->list_reins_level_with_http_info: #{e}"
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

[**ReinsLevelListVBAResponse**](ReinsLevelListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_level

> <MultiCodeResponseListVBAResponse> update_batch_reins_level(vbasoftware_database, reins_contract_key, reins_level)

Create or Update Batch ReinsLevel

Create or Update multiple ReinsLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_level = [Vba::ReinsLevel.new({reins_contract_key: 37, reins_level_seq: 37})] # Array<ReinsLevel> | 

begin
  # Create or Update Batch ReinsLevel
  result = api_instance.update_batch_reins_level(vbasoftware_database, reins_contract_key, reins_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->update_batch_reins_level: #{e}"
end
```

#### Using the update_batch_reins_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level)

```ruby
begin
  # Create or Update Batch ReinsLevel
  data, status_code, headers = api_instance.update_batch_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->update_batch_reins_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_level** | [**Array&lt;ReinsLevel&gt;**](ReinsLevel.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_level

> <ReinsLevelVBAResponse> update_reins_level(vbasoftware_database, reins_contract_key, reins_level_seq, reins_level)

Update ReinsLevel

Updates a specific ReinsLevel.

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

api_instance = Vba::ReinsuranceContractLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_level_seq = 56 # Integer | ReinsLevel Seq
reins_level = Vba::ReinsLevel.new({reins_contract_key: 37, reins_level_seq: 37}) # ReinsLevel | 

begin
  # Update ReinsLevel
  result = api_instance.update_reins_level(vbasoftware_database, reins_contract_key, reins_level_seq, reins_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->update_reins_level: #{e}"
end
```

#### Using the update_reins_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsLevelVBAResponse>, Integer, Hash)> update_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level_seq, reins_level)

```ruby
begin
  # Update ReinsLevel
  data, status_code, headers = api_instance.update_reins_level_with_http_info(vbasoftware_database, reins_contract_key, reins_level_seq, reins_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractLevelsApi->update_reins_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_level_seq** | **Integer** | ReinsLevel Seq |  |
| **reins_level** | [**ReinsLevel**](ReinsLevel.md) |  |  |

### Return type

[**ReinsLevelVBAResponse**](ReinsLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

