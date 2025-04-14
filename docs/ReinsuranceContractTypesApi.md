# Vba::ReinsuranceContractTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_type**](ReinsuranceContractTypesApi.md#create_reins_contract_type) | **POST** /reinsurance-contract-types | Create ReinsContractType |
| [**delete_reins_contract_type**](ReinsuranceContractTypesApi.md#delete_reins_contract_type) | **DELETE** /reinsurance-contract-types/{contractType} | Delete ReinsContractType |
| [**get_reins_contract_type**](ReinsuranceContractTypesApi.md#get_reins_contract_type) | **GET** /reinsurance-contract-types/{contractType} | Get ReinsContractType |
| [**list_reins_contract_type**](ReinsuranceContractTypesApi.md#list_reins_contract_type) | **GET** /reinsurance-contract-types | List ReinsContractType |
| [**update_batch_reins_contract_type**](ReinsuranceContractTypesApi.md#update_batch_reins_contract_type) | **PUT** /reinsurance-contract-types-batch | Create or Update Batch ReinsContractType |
| [**update_reins_contract_type**](ReinsuranceContractTypesApi.md#update_reins_contract_type) | **PUT** /reinsurance-contract-types/{contractType} | Update ReinsContractType |


## create_reins_contract_type

> <ReinsContractTypeVBAResponse> create_reins_contract_type(vbasoftware_database, reins_contract_type)

Create ReinsContractType

Creates a new ReinsContractType

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

api_instance = Vba::ReinsuranceContractTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_type = Vba::ReinsContractType.new({contract_type: 'contract_type_example'}) # ReinsContractType | 

begin
  # Create ReinsContractType
  result = api_instance.create_reins_contract_type(vbasoftware_database, reins_contract_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->create_reins_contract_type: #{e}"
end
```

#### Using the create_reins_contract_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTypeVBAResponse>, Integer, Hash)> create_reins_contract_type_with_http_info(vbasoftware_database, reins_contract_type)

```ruby
begin
  # Create ReinsContractType
  data, status_code, headers = api_instance.create_reins_contract_type_with_http_info(vbasoftware_database, reins_contract_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->create_reins_contract_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_type** | [**ReinsContractType**](ReinsContractType.md) |  |  |

### Return type

[**ReinsContractTypeVBAResponse**](ReinsContractTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_type

> delete_reins_contract_type(vbasoftware_database, contract_type)

Delete ReinsContractType

Deletes an ReinsContractType

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

api_instance = Vba::ReinsuranceContractTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_type = 'contract_type_example' # String | Contract Type

begin
  # Delete ReinsContractType
  api_instance.delete_reins_contract_type(vbasoftware_database, contract_type)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->delete_reins_contract_type: #{e}"
end
```

#### Using the delete_reins_contract_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_type_with_http_info(vbasoftware_database, contract_type)

```ruby
begin
  # Delete ReinsContractType
  data, status_code, headers = api_instance.delete_reins_contract_type_with_http_info(vbasoftware_database, contract_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->delete_reins_contract_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_type** | **String** | Contract Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_type

> <ReinsContractTypeVBAResponse> get_reins_contract_type(vbasoftware_database, contract_type)

Get ReinsContractType

Gets ReinsContractType

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

api_instance = Vba::ReinsuranceContractTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_type = 'contract_type_example' # String | Contract Type

begin
  # Get ReinsContractType
  result = api_instance.get_reins_contract_type(vbasoftware_database, contract_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->get_reins_contract_type: #{e}"
end
```

#### Using the get_reins_contract_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTypeVBAResponse>, Integer, Hash)> get_reins_contract_type_with_http_info(vbasoftware_database, contract_type)

```ruby
begin
  # Get ReinsContractType
  data, status_code, headers = api_instance.get_reins_contract_type_with_http_info(vbasoftware_database, contract_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->get_reins_contract_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_type** | **String** | Contract Type |  |

### Return type

[**ReinsContractTypeVBAResponse**](ReinsContractTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_type

> <ReinsContractTypeListVBAResponse> list_reins_contract_type(vbasoftware_database, opts)

List ReinsContractType

Lists all ReinsContractType

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

api_instance = Vba::ReinsuranceContractTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractType
  result = api_instance.list_reins_contract_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->list_reins_contract_type: #{e}"
end
```

#### Using the list_reins_contract_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTypeListVBAResponse>, Integer, Hash)> list_reins_contract_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsContractType
  data, status_code, headers = api_instance.list_reins_contract_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->list_reins_contract_type_with_http_info: #{e}"
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

[**ReinsContractTypeListVBAResponse**](ReinsContractTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_type

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_type(vbasoftware_database, reins_contract_type)

Create or Update Batch ReinsContractType

Create or Update multiple ReinsContractType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_type = [Vba::ReinsContractType.new({contract_type: 'contract_type_example'})] # Array<ReinsContractType> | 

begin
  # Create or Update Batch ReinsContractType
  result = api_instance.update_batch_reins_contract_type(vbasoftware_database, reins_contract_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->update_batch_reins_contract_type: #{e}"
end
```

#### Using the update_batch_reins_contract_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_type_with_http_info(vbasoftware_database, reins_contract_type)

```ruby
begin
  # Create or Update Batch ReinsContractType
  data, status_code, headers = api_instance.update_batch_reins_contract_type_with_http_info(vbasoftware_database, reins_contract_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->update_batch_reins_contract_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_type** | [**Array&lt;ReinsContractType&gt;**](ReinsContractType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_type

> <ReinsContractTypeVBAResponse> update_reins_contract_type(vbasoftware_database, contract_type, reins_contract_type)

Update ReinsContractType

Updates a specific ReinsContractType.

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

api_instance = Vba::ReinsuranceContractTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_type = 'contract_type_example' # String | Contract Type
reins_contract_type = Vba::ReinsContractType.new({contract_type: 'contract_type_example'}) # ReinsContractType | 

begin
  # Update ReinsContractType
  result = api_instance.update_reins_contract_type(vbasoftware_database, contract_type, reins_contract_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->update_reins_contract_type: #{e}"
end
```

#### Using the update_reins_contract_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractTypeVBAResponse>, Integer, Hash)> update_reins_contract_type_with_http_info(vbasoftware_database, contract_type, reins_contract_type)

```ruby
begin
  # Update ReinsContractType
  data, status_code, headers = api_instance.update_reins_contract_type_with_http_info(vbasoftware_database, contract_type, reins_contract_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractTypesApi->update_reins_contract_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_type** | **String** | Contract Type |  |
| **reins_contract_type** | [**ReinsContractType**](ReinsContractType.md) |  |  |

### Return type

[**ReinsContractTypeVBAResponse**](ReinsContractTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

