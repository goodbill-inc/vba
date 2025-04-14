# Vba::ReinsuranceConditionalSpecificApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_conditional_specific**](ReinsuranceConditionalSpecificApi.md#create_reins_contract_conditional_specific) | **POST** /reinsurance-contracts/{reinsContractKey}/conditional-specific | Create ReinsContractConditionalSpecific |
| [**delete_reins_contract_conditional_specific**](ReinsuranceConditionalSpecificApi.md#delete_reins_contract_conditional_specific) | **DELETE** /reinsurance-contracts/{reinsContractKey}/conditional-specific/{reinsContractConditionalSpecificKey} | Delete ReinsContractConditionalSpecific |
| [**get_reins_contract_conditional_specific**](ReinsuranceConditionalSpecificApi.md#get_reins_contract_conditional_specific) | **GET** /reinsurance-contracts/{reinsContractKey}/conditional-specific/{reinsContractConditionalSpecificKey} | Get ReinsContractConditionalSpecific |
| [**list_reins_contract_conditional_specific**](ReinsuranceConditionalSpecificApi.md#list_reins_contract_conditional_specific) | **GET** /reinsurance-contracts/{reinsContractKey}/conditional-specific | List ReinsContractConditionalSpecific |
| [**update_batch_reins_contract_conditional_specific**](ReinsuranceConditionalSpecificApi.md#update_batch_reins_contract_conditional_specific) | **PUT** /reinsurance-contracts/{reinsContractKey}/conditional-specific-batch | Create or Update Batch ReinsContractConditionalSpecific |
| [**update_reins_contract_conditional_specific**](ReinsuranceConditionalSpecificApi.md#update_reins_contract_conditional_specific) | **PUT** /reinsurance-contracts/{reinsContractKey}/conditional-specific/{reinsContractConditionalSpecificKey} | Update ReinsContractConditionalSpecific |


## create_reins_contract_conditional_specific

> <ReinsContractConditionalSpecificVBAResponse> create_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)

Create ReinsContractConditionalSpecific

Creates a new ReinsContractConditionalSpecific

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

api_instance = Vba::ReinsuranceConditionalSpecificApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_conditional_specific = Vba::ReinsContractConditionalSpecific.new({reins_contract_conditional_specific_key: 37, reins_contract_key: 37}) # ReinsContractConditionalSpecific | 

begin
  # Create ReinsContractConditionalSpecific
  result = api_instance.create_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->create_reins_contract_conditional_specific: #{e}"
end
```

#### Using the create_reins_contract_conditional_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificVBAResponse>, Integer, Hash)> create_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)

```ruby
begin
  # Create ReinsContractConditionalSpecific
  data, status_code, headers = api_instance.create_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->create_reins_contract_conditional_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_conditional_specific** | [**ReinsContractConditionalSpecific**](ReinsContractConditionalSpecific.md) |  |  |

### Return type

[**ReinsContractConditionalSpecificVBAResponse**](ReinsContractConditionalSpecificVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_conditional_specific

> delete_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)

Delete ReinsContractConditionalSpecific

Deletes an ReinsContractConditionalSpecific

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

api_instance = Vba::ReinsuranceConditionalSpecificApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key

begin
  # Delete ReinsContractConditionalSpecific
  api_instance.delete_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->delete_reins_contract_conditional_specific: #{e}"
end
```

#### Using the delete_reins_contract_conditional_specific_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)

```ruby
begin
  # Delete ReinsContractConditionalSpecific
  data, status_code, headers = api_instance.delete_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->delete_reins_contract_conditional_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_conditional_specific

> <ReinsContractConditionalSpecificVBAResponse> get_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)

Get ReinsContractConditionalSpecific

Gets ReinsContractConditionalSpecific

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

api_instance = Vba::ReinsuranceConditionalSpecificApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key

begin
  # Get ReinsContractConditionalSpecific
  result = api_instance.get_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->get_reins_contract_conditional_specific: #{e}"
end
```

#### Using the get_reins_contract_conditional_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificVBAResponse>, Integer, Hash)> get_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)

```ruby
begin
  # Get ReinsContractConditionalSpecific
  data, status_code, headers = api_instance.get_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->get_reins_contract_conditional_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |

### Return type

[**ReinsContractConditionalSpecificVBAResponse**](ReinsContractConditionalSpecificVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_conditional_specific

> <ReinsContractConditionalSpecificListVBAResponse> list_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, opts)

List ReinsContractConditionalSpecific

Lists all ReinsContractConditionalSpecific for the given reinsContractKey

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

api_instance = Vba::ReinsuranceConditionalSpecificApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ReinsContractConditionalSpecific
  result = api_instance.list_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->list_reins_contract_conditional_specific: #{e}"
end
```

#### Using the list_reins_contract_conditional_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificListVBAResponse>, Integer, Hash)> list_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, opts)

```ruby
begin
  # List ReinsContractConditionalSpecific
  data, status_code, headers = api_instance.list_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->list_reins_contract_conditional_specific_with_http_info: #{e}"
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

[**ReinsContractConditionalSpecificListVBAResponse**](ReinsContractConditionalSpecificListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_conditional_specific

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)

Create or Update Batch ReinsContractConditionalSpecific

Create or Update multiple ReinsContractConditionalSpecific at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceConditionalSpecificApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_conditional_specific = [Vba::ReinsContractConditionalSpecific.new({reins_contract_conditional_specific_key: 37, reins_contract_key: 37})] # Array<ReinsContractConditionalSpecific> | 

begin
  # Create or Update Batch ReinsContractConditionalSpecific
  result = api_instance.update_batch_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->update_batch_reins_contract_conditional_specific: #{e}"
end
```

#### Using the update_batch_reins_contract_conditional_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)

```ruby
begin
  # Create or Update Batch ReinsContractConditionalSpecific
  data, status_code, headers = api_instance.update_batch_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->update_batch_reins_contract_conditional_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_conditional_specific** | [**Array&lt;ReinsContractConditionalSpecific&gt;**](ReinsContractConditionalSpecific.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_conditional_specific

> <ReinsContractConditionalSpecificVBAResponse> update_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key, reins_contract_conditional_specific)

Update ReinsContractConditionalSpecific

Updates a specific ReinsContractConditionalSpecific.

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

api_instance = Vba::ReinsuranceConditionalSpecificApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
reins_contract_conditional_specific = Vba::ReinsContractConditionalSpecific.new({reins_contract_conditional_specific_key: 37, reins_contract_key: 37}) # ReinsContractConditionalSpecific | 

begin
  # Update ReinsContractConditionalSpecific
  result = api_instance.update_reins_contract_conditional_specific(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key, reins_contract_conditional_specific)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->update_reins_contract_conditional_specific: #{e}"
end
```

#### Using the update_reins_contract_conditional_specific_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificVBAResponse>, Integer, Hash)> update_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key, reins_contract_conditional_specific)

```ruby
begin
  # Update ReinsContractConditionalSpecific
  data, status_code, headers = api_instance.update_reins_contract_conditional_specific_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_conditional_specific_key, reins_contract_conditional_specific)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificApi->update_reins_contract_conditional_specific_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **reins_contract_conditional_specific** | [**ReinsContractConditionalSpecific**](ReinsContractConditionalSpecific.md) |  |  |

### Return type

[**ReinsContractConditionalSpecificVBAResponse**](ReinsContractConditionalSpecificVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

