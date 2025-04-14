# Vba::ReinsuranceConditionalSpecificDetailApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_conditional_specific_detail**](ReinsuranceConditionalSpecificDetailApi.md#create_reins_contract_conditional_specific_detail) | **POST** /reinsurance-contract-conditional-specifics/{reinsContractConditionalSpecificKey}/detail | Create ReinsContractConditionalSpecificDetail |
| [**delete_reins_contract_conditional_specific_detail**](ReinsuranceConditionalSpecificDetailApi.md#delete_reins_contract_conditional_specific_detail) | **DELETE** /reinsurance-contract-conditional-specifics/{reinsContractConditionalSpecificKey}/detail/{reinsContractConditionalSpecificDetailKey} | Delete ReinsContractConditionalSpecificDetail |
| [**get_reins_contract_conditional_specific_detail**](ReinsuranceConditionalSpecificDetailApi.md#get_reins_contract_conditional_specific_detail) | **GET** /reinsurance-contract-conditional-specifics/{reinsContractConditionalSpecificKey}/detail/{reinsContractConditionalSpecificDetailKey} | Get ReinsContractConditionalSpecificDetail |
| [**list_reins_contract_conditional_specific_detail**](ReinsuranceConditionalSpecificDetailApi.md#list_reins_contract_conditional_specific_detail) | **GET** /reinsurance-contract-conditional-specifics/{reinsContractConditionalSpecificKey}/detail | List ReinsContractConditionalSpecificDetail |
| [**update_batch_reins_contract_conditional_specific_detail**](ReinsuranceConditionalSpecificDetailApi.md#update_batch_reins_contract_conditional_specific_detail) | **PUT** /reinsurance-contract-conditional-specifics/{reinsContractConditionalSpecificKey}/detail-batch | Create or Update Batch ReinsContractConditionalSpecificDetail |
| [**update_reins_contract_conditional_specific_detail**](ReinsuranceConditionalSpecificDetailApi.md#update_reins_contract_conditional_specific_detail) | **PUT** /reinsurance-contract-conditional-specifics/{reinsContractConditionalSpecificKey}/detail/{reinsContractConditionalSpecificDetailKey} | Update ReinsContractConditionalSpecificDetail |


## create_reins_contract_conditional_specific_detail

> <ReinsContractConditionalSpecificDetailVBAResponse> create_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)

Create ReinsContractConditionalSpecificDetail

Creates a new ReinsContractConditionalSpecificDetail

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

api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
reins_contract_conditional_specific_detail = Vba::ReinsContractConditionalSpecificDetail.new({reins_contract_conditional_specific_detail_key: 37, exclude: false, reins_contract_conditional_specific_key: 37, use_diagnostic_group: false}) # ReinsContractConditionalSpecificDetail | 

begin
  # Create ReinsContractConditionalSpecificDetail
  result = api_instance.create_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->create_reins_contract_conditional_specific_detail: #{e}"
end
```

#### Using the create_reins_contract_conditional_specific_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificDetailVBAResponse>, Integer, Hash)> create_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)

```ruby
begin
  # Create ReinsContractConditionalSpecificDetail
  data, status_code, headers = api_instance.create_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->create_reins_contract_conditional_specific_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **reins_contract_conditional_specific_detail** | [**ReinsContractConditionalSpecificDetail**](ReinsContractConditionalSpecificDetail.md) |  |  |

### Return type

[**ReinsContractConditionalSpecificDetailVBAResponse**](ReinsContractConditionalSpecificDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_conditional_specific_detail

> delete_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)

Delete ReinsContractConditionalSpecificDetail

Deletes an ReinsContractConditionalSpecificDetail

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

api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
reins_contract_conditional_specific_detail_key = 56 # Integer | ReinsContractConditionalSpecificDetail Key

begin
  # Delete ReinsContractConditionalSpecificDetail
  api_instance.delete_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->delete_reins_contract_conditional_specific_detail: #{e}"
end
```

#### Using the delete_reins_contract_conditional_specific_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)

```ruby
begin
  # Delete ReinsContractConditionalSpecificDetail
  data, status_code, headers = api_instance.delete_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->delete_reins_contract_conditional_specific_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **reins_contract_conditional_specific_detail_key** | **Integer** | ReinsContractConditionalSpecificDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_conditional_specific_detail

> <ReinsContractConditionalSpecificDetailVBAResponse> get_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)

Get ReinsContractConditionalSpecificDetail

Gets ReinsContractConditionalSpecificDetail

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

api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
reins_contract_conditional_specific_detail_key = 56 # Integer | ReinsContractConditionalSpecificDetail Key

begin
  # Get ReinsContractConditionalSpecificDetail
  result = api_instance.get_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->get_reins_contract_conditional_specific_detail: #{e}"
end
```

#### Using the get_reins_contract_conditional_specific_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificDetailVBAResponse>, Integer, Hash)> get_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)

```ruby
begin
  # Get ReinsContractConditionalSpecificDetail
  data, status_code, headers = api_instance.get_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->get_reins_contract_conditional_specific_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **reins_contract_conditional_specific_detail_key** | **Integer** | ReinsContractConditionalSpecificDetail Key |  |

### Return type

[**ReinsContractConditionalSpecificDetailVBAResponse**](ReinsContractConditionalSpecificDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_conditional_specific_detail

> <ReinsContractConditionalSpecificDetailListVBAResponse> list_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, opts)

List ReinsContractConditionalSpecificDetail

Lists all ReinsContractConditionalSpecificDetail for the given reinsContractConditionalSpecificKey

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

api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List ReinsContractConditionalSpecificDetail
  result = api_instance.list_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->list_reins_contract_conditional_specific_detail: #{e}"
end
```

#### Using the list_reins_contract_conditional_specific_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificDetailListVBAResponse>, Integer, Hash)> list_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, opts)

```ruby
begin
  # List ReinsContractConditionalSpecificDetail
  data, status_code, headers = api_instance.list_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->list_reins_contract_conditional_specific_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ReinsContractConditionalSpecificDetailListVBAResponse**](ReinsContractConditionalSpecificDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_conditional_specific_detail

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)

Create or Update Batch ReinsContractConditionalSpecificDetail

Create or Update multiple ReinsContractConditionalSpecificDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
reins_contract_conditional_specific_detail = [Vba::ReinsContractConditionalSpecificDetail.new({reins_contract_conditional_specific_detail_key: 37, exclude: false, reins_contract_conditional_specific_key: 37, use_diagnostic_group: false})] # Array<ReinsContractConditionalSpecificDetail> | 

begin
  # Create or Update Batch ReinsContractConditionalSpecificDetail
  result = api_instance.update_batch_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->update_batch_reins_contract_conditional_specific_detail: #{e}"
end
```

#### Using the update_batch_reins_contract_conditional_specific_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)

```ruby
begin
  # Create or Update Batch ReinsContractConditionalSpecificDetail
  data, status_code, headers = api_instance.update_batch_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->update_batch_reins_contract_conditional_specific_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **reins_contract_conditional_specific_detail** | [**Array&lt;ReinsContractConditionalSpecificDetail&gt;**](ReinsContractConditionalSpecificDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_conditional_specific_detail

> <ReinsContractConditionalSpecificDetailVBAResponse> update_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key, reins_contract_conditional_specific_detail)

Update ReinsContractConditionalSpecificDetail

Updates a specific ReinsContractConditionalSpecificDetail.

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

api_instance = Vba::ReinsuranceConditionalSpecificDetailApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_conditional_specific_key = 56 # Integer | ReinsContractConditionalSpecific Key
reins_contract_conditional_specific_detail_key = 56 # Integer | ReinsContractConditionalSpecificDetail Key
reins_contract_conditional_specific_detail = Vba::ReinsContractConditionalSpecificDetail.new({reins_contract_conditional_specific_detail_key: 37, exclude: false, reins_contract_conditional_specific_key: 37, use_diagnostic_group: false}) # ReinsContractConditionalSpecificDetail | 

begin
  # Update ReinsContractConditionalSpecificDetail
  result = api_instance.update_reins_contract_conditional_specific_detail(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key, reins_contract_conditional_specific_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->update_reins_contract_conditional_specific_detail: #{e}"
end
```

#### Using the update_reins_contract_conditional_specific_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractConditionalSpecificDetailVBAResponse>, Integer, Hash)> update_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key, reins_contract_conditional_specific_detail)

```ruby
begin
  # Update ReinsContractConditionalSpecificDetail
  data, status_code, headers = api_instance.update_reins_contract_conditional_specific_detail_with_http_info(vbasoftware_database, reins_contract_conditional_specific_key, reins_contract_conditional_specific_detail_key, reins_contract_conditional_specific_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractConditionalSpecificDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceConditionalSpecificDetailApi->update_reins_contract_conditional_specific_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_conditional_specific_key** | **Integer** | ReinsContractConditionalSpecific Key |  |
| **reins_contract_conditional_specific_detail_key** | **Integer** | ReinsContractConditionalSpecificDetail Key |  |
| **reins_contract_conditional_specific_detail** | [**ReinsContractConditionalSpecificDetail**](ReinsContractConditionalSpecificDetail.md) |  |  |

### Return type

[**ReinsContractConditionalSpecificDetailVBAResponse**](ReinsContractConditionalSpecificDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

