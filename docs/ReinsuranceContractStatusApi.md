# Vba::ReinsuranceContractStatusApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_status**](ReinsuranceContractStatusApi.md#create_reins_contract_status) | **POST** /reinsurance-contract-statuses | Create ReinsContractStatus |
| [**delete_reins_contract_status**](ReinsuranceContractStatusApi.md#delete_reins_contract_status) | **DELETE** /reinsurance-contract-statuses/{contractStatus} | Delete ReinsContractStatus |
| [**get_reins_contract_status**](ReinsuranceContractStatusApi.md#get_reins_contract_status) | **GET** /reinsurance-contract-statuses/{contractStatus} | Get ReinsContractStatus |
| [**list_reins_contract_status**](ReinsuranceContractStatusApi.md#list_reins_contract_status) | **GET** /reinsurance-contract-statuses | List ReinsContractStatus |
| [**update_batch_reins_contract_status**](ReinsuranceContractStatusApi.md#update_batch_reins_contract_status) | **PUT** /reinsurance-contract-statuses-batch | Create or Update Batch ReinsContractStatus |
| [**update_reins_contract_status**](ReinsuranceContractStatusApi.md#update_reins_contract_status) | **PUT** /reinsurance-contract-statuses/{contractStatus} | Update ReinsContractStatus |


## create_reins_contract_status

> <ReinsContractStatusVBAResponse> create_reins_contract_status(vbasoftware_database, reins_contract_status)

Create ReinsContractStatus

Creates a new ReinsContractStatus

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

api_instance = Vba::ReinsuranceContractStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_status = Vba::ReinsContractStatus.new({contract_status: 'contract_status_example'}) # ReinsContractStatus | 

begin
  # Create ReinsContractStatus
  result = api_instance.create_reins_contract_status(vbasoftware_database, reins_contract_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->create_reins_contract_status: #{e}"
end
```

#### Using the create_reins_contract_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractStatusVBAResponse>, Integer, Hash)> create_reins_contract_status_with_http_info(vbasoftware_database, reins_contract_status)

```ruby
begin
  # Create ReinsContractStatus
  data, status_code, headers = api_instance.create_reins_contract_status_with_http_info(vbasoftware_database, reins_contract_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->create_reins_contract_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_status** | [**ReinsContractStatus**](ReinsContractStatus.md) |  |  |

### Return type

[**ReinsContractStatusVBAResponse**](ReinsContractStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_status

> delete_reins_contract_status(vbasoftware_database, contract_status)

Delete ReinsContractStatus

Deletes an ReinsContractStatus

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

api_instance = Vba::ReinsuranceContractStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_status = 'contract_status_example' # String | Contract Status

begin
  # Delete ReinsContractStatus
  api_instance.delete_reins_contract_status(vbasoftware_database, contract_status)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->delete_reins_contract_status: #{e}"
end
```

#### Using the delete_reins_contract_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_status_with_http_info(vbasoftware_database, contract_status)

```ruby
begin
  # Delete ReinsContractStatus
  data, status_code, headers = api_instance.delete_reins_contract_status_with_http_info(vbasoftware_database, contract_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->delete_reins_contract_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_status** | **String** | Contract Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_status

> <ReinsContractStatusVBAResponse> get_reins_contract_status(vbasoftware_database, contract_status)

Get ReinsContractStatus

Gets ReinsContractStatus

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

api_instance = Vba::ReinsuranceContractStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_status = 'contract_status_example' # String | Contract Status

begin
  # Get ReinsContractStatus
  result = api_instance.get_reins_contract_status(vbasoftware_database, contract_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->get_reins_contract_status: #{e}"
end
```

#### Using the get_reins_contract_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractStatusVBAResponse>, Integer, Hash)> get_reins_contract_status_with_http_info(vbasoftware_database, contract_status)

```ruby
begin
  # Get ReinsContractStatus
  data, status_code, headers = api_instance.get_reins_contract_status_with_http_info(vbasoftware_database, contract_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->get_reins_contract_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_status** | **String** | Contract Status |  |

### Return type

[**ReinsContractStatusVBAResponse**](ReinsContractStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_status

> <ReinsContractStatusListVBAResponse> list_reins_contract_status(vbasoftware_database, opts)

List ReinsContractStatus

Lists all ReinsContractStatus

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

api_instance = Vba::ReinsuranceContractStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractStatus
  result = api_instance.list_reins_contract_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->list_reins_contract_status: #{e}"
end
```

#### Using the list_reins_contract_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractStatusListVBAResponse>, Integer, Hash)> list_reins_contract_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsContractStatus
  data, status_code, headers = api_instance.list_reins_contract_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->list_reins_contract_status_with_http_info: #{e}"
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

[**ReinsContractStatusListVBAResponse**](ReinsContractStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_status

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_status(vbasoftware_database, reins_contract_status)

Create or Update Batch ReinsContractStatus

Create or Update multiple ReinsContractStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_status = [Vba::ReinsContractStatus.new({contract_status: 'contract_status_example'})] # Array<ReinsContractStatus> | 

begin
  # Create or Update Batch ReinsContractStatus
  result = api_instance.update_batch_reins_contract_status(vbasoftware_database, reins_contract_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->update_batch_reins_contract_status: #{e}"
end
```

#### Using the update_batch_reins_contract_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_status_with_http_info(vbasoftware_database, reins_contract_status)

```ruby
begin
  # Create or Update Batch ReinsContractStatus
  data, status_code, headers = api_instance.update_batch_reins_contract_status_with_http_info(vbasoftware_database, reins_contract_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->update_batch_reins_contract_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_status** | [**Array&lt;ReinsContractStatus&gt;**](ReinsContractStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_status

> <ReinsContractStatusVBAResponse> update_reins_contract_status(vbasoftware_database, contract_status, reins_contract_status)

Update ReinsContractStatus

Updates a specific ReinsContractStatus.

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

api_instance = Vba::ReinsuranceContractStatusApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contract_status = 'contract_status_example' # String | Contract Status
reins_contract_status = Vba::ReinsContractStatus.new({contract_status: 'contract_status_example'}) # ReinsContractStatus | 

begin
  # Update ReinsContractStatus
  result = api_instance.update_reins_contract_status(vbasoftware_database, contract_status, reins_contract_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->update_reins_contract_status: #{e}"
end
```

#### Using the update_reins_contract_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractStatusVBAResponse>, Integer, Hash)> update_reins_contract_status_with_http_info(vbasoftware_database, contract_status, reins_contract_status)

```ruby
begin
  # Update ReinsContractStatus
  data, status_code, headers = api_instance.update_reins_contract_status_with_http_info(vbasoftware_database, contract_status, reins_contract_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractStatusApi->update_reins_contract_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contract_status** | **String** | Contract Status |  |
| **reins_contract_status** | [**ReinsContractStatus**](ReinsContractStatus.md) |  |  |

### Return type

[**ReinsContractStatusVBAResponse**](ReinsContractStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

