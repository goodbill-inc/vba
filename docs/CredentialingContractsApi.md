# Vba::CredentialingContractsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_contract**](CredentialingContractsApi.md#create_cred_contract) | **POST** /credentialing-contracts | Create CredContract |
| [**delete_cred_contract**](CredentialingContractsApi.md#delete_cred_contract) | **DELETE** /credentialing-contracts/{credContractKey} | Delete CredContract |
| [**get_cred_contract**](CredentialingContractsApi.md#get_cred_contract) | **GET** /credentialing-contracts/{credContractKey} | Get CredContract |
| [**list_cred_contract**](CredentialingContractsApi.md#list_cred_contract) | **GET** /credentialing-contracts | List CredContract |
| [**update_batch_cred_contract**](CredentialingContractsApi.md#update_batch_cred_contract) | **PUT** /credentialing-contracts-batch | Create or Update Batch CredContract |
| [**update_cred_contract**](CredentialingContractsApi.md#update_cred_contract) | **PUT** /credentialing-contracts/{credContractKey} | Update CredContract |


## create_cred_contract

> <CredContractVBAResponse> create_cred_contract(vbasoftware_database, cred_contract)

Create CredContract

Creates a new CredContract

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

api_instance = Vba::CredentialingContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_contract = Vba::CredContract.new({cred_contract_key: 37}) # CredContract | 

begin
  # Create CredContract
  result = api_instance.create_cred_contract(vbasoftware_database, cred_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->create_cred_contract: #{e}"
end
```

#### Using the create_cred_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredContractVBAResponse>, Integer, Hash)> create_cred_contract_with_http_info(vbasoftware_database, cred_contract)

```ruby
begin
  # Create CredContract
  data, status_code, headers = api_instance.create_cred_contract_with_http_info(vbasoftware_database, cred_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->create_cred_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_contract** | [**CredContract**](CredContract.md) |  |  |

### Return type

[**CredContractVBAResponse**](CredContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_contract

> delete_cred_contract(vbasoftware_database, cred_contract_key)

Delete CredContract

Deletes an CredContract

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

api_instance = Vba::CredentialingContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_contract_key = 56 # Integer | CredContract Key

begin
  # Delete CredContract
  api_instance.delete_cred_contract(vbasoftware_database, cred_contract_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->delete_cred_contract: #{e}"
end
```

#### Using the delete_cred_contract_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_contract_with_http_info(vbasoftware_database, cred_contract_key)

```ruby
begin
  # Delete CredContract
  data, status_code, headers = api_instance.delete_cred_contract_with_http_info(vbasoftware_database, cred_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->delete_cred_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_contract_key** | **Integer** | CredContract Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_contract

> <CredContractVBAResponse> get_cred_contract(vbasoftware_database, cred_contract_key)

Get CredContract

Gets CredContract

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

api_instance = Vba::CredentialingContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_contract_key = 56 # Integer | CredContract Key

begin
  # Get CredContract
  result = api_instance.get_cred_contract(vbasoftware_database, cred_contract_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->get_cred_contract: #{e}"
end
```

#### Using the get_cred_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredContractVBAResponse>, Integer, Hash)> get_cred_contract_with_http_info(vbasoftware_database, cred_contract_key)

```ruby
begin
  # Get CredContract
  data, status_code, headers = api_instance.get_cred_contract_with_http_info(vbasoftware_database, cred_contract_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->get_cred_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_contract_key** | **Integer** | CredContract Key |  |

### Return type

[**CredContractVBAResponse**](CredContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_contract

> <CredContractListVBAResponse> list_cred_contract(vbasoftware_database, opts)

List CredContract

Lists all CredContract

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

api_instance = Vba::CredentialingContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredContract
  result = api_instance.list_cred_contract(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->list_cred_contract: #{e}"
end
```

#### Using the list_cred_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredContractListVBAResponse>, Integer, Hash)> list_cred_contract_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredContract
  data, status_code, headers = api_instance.list_cred_contract_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredContractListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->list_cred_contract_with_http_info: #{e}"
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

[**CredContractListVBAResponse**](CredContractListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_contract

> <MultiCodeResponseListVBAResponse> update_batch_cred_contract(vbasoftware_database, cred_contract)

Create or Update Batch CredContract

Create or Update multiple CredContract at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_contract = [Vba::CredContract.new({cred_contract_key: 37})] # Array<CredContract> | 

begin
  # Create or Update Batch CredContract
  result = api_instance.update_batch_cred_contract(vbasoftware_database, cred_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->update_batch_cred_contract: #{e}"
end
```

#### Using the update_batch_cred_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_contract_with_http_info(vbasoftware_database, cred_contract)

```ruby
begin
  # Create or Update Batch CredContract
  data, status_code, headers = api_instance.update_batch_cred_contract_with_http_info(vbasoftware_database, cred_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->update_batch_cred_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_contract** | [**Array&lt;CredContract&gt;**](CredContract.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_contract

> <CredContractVBAResponse> update_cred_contract(vbasoftware_database, cred_contract_key, cred_contract)

Update CredContract

Updates a specific CredContract.

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

api_instance = Vba::CredentialingContractsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_contract_key = 56 # Integer | CredContract Key
cred_contract = Vba::CredContract.new({cred_contract_key: 37}) # CredContract | 

begin
  # Update CredContract
  result = api_instance.update_cred_contract(vbasoftware_database, cred_contract_key, cred_contract)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->update_cred_contract: #{e}"
end
```

#### Using the update_cred_contract_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredContractVBAResponse>, Integer, Hash)> update_cred_contract_with_http_info(vbasoftware_database, cred_contract_key, cred_contract)

```ruby
begin
  # Update CredContract
  data, status_code, headers = api_instance.update_cred_contract_with_http_info(vbasoftware_database, cred_contract_key, cred_contract)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredContractVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingContractsApi->update_cred_contract_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_contract_key** | **Integer** | CredContract Key |  |
| **cred_contract** | [**CredContract**](CredContract.md) |  |  |

### Return type

[**CredContractVBAResponse**](CredContractVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

