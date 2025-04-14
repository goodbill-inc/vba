# Vba::ReinsuranceContractCriteriaDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reins_contract_criteria_detail**](ReinsuranceContractCriteriaDetailsApi.md#create_reins_contract_criteria_detail) | **POST** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey}/details | Create ReinsContractCriteriaDetail |
| [**delete_reins_contract_criteria_detail**](ReinsuranceContractCriteriaDetailsApi.md#delete_reins_contract_criteria_detail) | **DELETE** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey}/details/{reinsContractCriteriaDetailKey} | Delete ReinsContractCriteriaDetail |
| [**get_reins_contract_criteria_detail**](ReinsuranceContractCriteriaDetailsApi.md#get_reins_contract_criteria_detail) | **GET** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey}/details/{reinsContractCriteriaDetailKey} | Get ReinsContractCriteriaDetail |
| [**list_reins_contract_criteria_detail**](ReinsuranceContractCriteriaDetailsApi.md#list_reins_contract_criteria_detail) | **GET** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey}/details | List ReinsContractCriteriaDetail |
| [**update_batch_reins_contract_criteria_detail**](ReinsuranceContractCriteriaDetailsApi.md#update_batch_reins_contract_criteria_detail) | **PUT** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey}/details-batch | Create or Update Batch ReinsContractCriteriaDetail |
| [**update_reins_contract_criteria_detail**](ReinsuranceContractCriteriaDetailsApi.md#update_reins_contract_criteria_detail) | **PUT** /reinsurance-contracts/{reinsContractKey}/criterias/{reinsContractCriteriaKey}/details/{reinsContractCriteriaDetailKey} | Update ReinsContractCriteriaDetail |


## create_reins_contract_criteria_detail

> <ReinsContractCriteriaDetailVBAResponse> create_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)

Create ReinsContractCriteriaDetail

Creates a new ReinsContractCriteriaDetail

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

api_instance = Vba::ReinsuranceContractCriteriaDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
reins_contract_criteria_detail = Vba::ReinsContractCriteriaDetail.new({reins_contract_criteria_detail_key: 37, criteria_exclude: false, reins_contract_criteria_key: 37}) # ReinsContractCriteriaDetail | 

begin
  # Create ReinsContractCriteriaDetail
  result = api_instance.create_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->create_reins_contract_criteria_detail: #{e}"
end
```

#### Using the create_reins_contract_criteria_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaDetailVBAResponse>, Integer, Hash)> create_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)

```ruby
begin
  # Create ReinsContractCriteriaDetail
  data, status_code, headers = api_instance.create_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->create_reins_contract_criteria_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **reins_contract_criteria_detail** | [**ReinsContractCriteriaDetail**](ReinsContractCriteriaDetail.md) |  |  |

### Return type

[**ReinsContractCriteriaDetailVBAResponse**](ReinsContractCriteriaDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reins_contract_criteria_detail

> delete_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)

Delete ReinsContractCriteriaDetail

Deletes an ReinsContractCriteriaDetail

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

api_instance = Vba::ReinsuranceContractCriteriaDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
reins_contract_criteria_detail_key = 56 # Integer | ReinsContractCriteriaDetail Key

begin
  # Delete ReinsContractCriteriaDetail
  api_instance.delete_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->delete_reins_contract_criteria_detail: #{e}"
end
```

#### Using the delete_reins_contract_criteria_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)

```ruby
begin
  # Delete ReinsContractCriteriaDetail
  data, status_code, headers = api_instance.delete_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->delete_reins_contract_criteria_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **reins_contract_criteria_detail_key** | **Integer** | ReinsContractCriteriaDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reins_contract_criteria_detail

> <ReinsContractCriteriaDetailVBAResponse> get_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)

Get ReinsContractCriteriaDetail

Gets ReinsContractCriteriaDetail

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

api_instance = Vba::ReinsuranceContractCriteriaDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
reins_contract_criteria_detail_key = 56 # Integer | ReinsContractCriteriaDetail Key

begin
  # Get ReinsContractCriteriaDetail
  result = api_instance.get_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->get_reins_contract_criteria_detail: #{e}"
end
```

#### Using the get_reins_contract_criteria_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaDetailVBAResponse>, Integer, Hash)> get_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)

```ruby
begin
  # Get ReinsContractCriteriaDetail
  data, status_code, headers = api_instance.get_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->get_reins_contract_criteria_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **reins_contract_criteria_detail_key** | **Integer** | ReinsContractCriteriaDetail Key |  |

### Return type

[**ReinsContractCriteriaDetailVBAResponse**](ReinsContractCriteriaDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reins_contract_criteria_detail

> <ReinsContractCriteriaDetailListVBAResponse> list_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, opts)

List ReinsContractCriteriaDetail

Lists all ReinsContractCriteriaDetail for the given reinsContractCriteriaKey

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

api_instance = Vba::ReinsuranceContractCriteriaDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsContractCriteriaDetail
  result = api_instance.list_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->list_reins_contract_criteria_detail: #{e}"
end
```

#### Using the list_reins_contract_criteria_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaDetailListVBAResponse>, Integer, Hash)> list_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, opts)

```ruby
begin
  # List ReinsContractCriteriaDetail
  data, status_code, headers = api_instance.list_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->list_reins_contract_criteria_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReinsContractCriteriaDetailListVBAResponse**](ReinsContractCriteriaDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reins_contract_criteria_detail

> <MultiCodeResponseListVBAResponse> update_batch_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)

Create or Update Batch ReinsContractCriteriaDetail

Create or Update multiple ReinsContractCriteriaDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceContractCriteriaDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
reins_contract_criteria_detail = [Vba::ReinsContractCriteriaDetail.new({reins_contract_criteria_detail_key: 37, criteria_exclude: false, reins_contract_criteria_key: 37})] # Array<ReinsContractCriteriaDetail> | 

begin
  # Create or Update Batch ReinsContractCriteriaDetail
  result = api_instance.update_batch_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->update_batch_reins_contract_criteria_detail: #{e}"
end
```

#### Using the update_batch_reins_contract_criteria_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)

```ruby
begin
  # Create or Update Batch ReinsContractCriteriaDetail
  data, status_code, headers = api_instance.update_batch_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->update_batch_reins_contract_criteria_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **reins_contract_criteria_detail** | [**Array&lt;ReinsContractCriteriaDetail&gt;**](ReinsContractCriteriaDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reins_contract_criteria_detail

> <ReinsContractCriteriaDetailVBAResponse> update_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key, reins_contract_criteria_detail)

Update ReinsContractCriteriaDetail

Updates a specific ReinsContractCriteriaDetail.

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

api_instance = Vba::ReinsuranceContractCriteriaDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reins_contract_key = 56 # Integer | ReinsContract Key
reins_contract_criteria_key = 56 # Integer | ReinsContractCriteria Key
reins_contract_criteria_detail_key = 56 # Integer | ReinsContractCriteriaDetail Key
reins_contract_criteria_detail = Vba::ReinsContractCriteriaDetail.new({reins_contract_criteria_detail_key: 37, criteria_exclude: false, reins_contract_criteria_key: 37}) # ReinsContractCriteriaDetail | 

begin
  # Update ReinsContractCriteriaDetail
  result = api_instance.update_reins_contract_criteria_detail(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key, reins_contract_criteria_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->update_reins_contract_criteria_detail: #{e}"
end
```

#### Using the update_reins_contract_criteria_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsContractCriteriaDetailVBAResponse>, Integer, Hash)> update_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key, reins_contract_criteria_detail)

```ruby
begin
  # Update ReinsContractCriteriaDetail
  data, status_code, headers = api_instance.update_reins_contract_criteria_detail_with_http_info(vbasoftware_database, reins_contract_key, reins_contract_criteria_key, reins_contract_criteria_detail_key, reins_contract_criteria_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsContractCriteriaDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceContractCriteriaDetailsApi->update_reins_contract_criteria_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reins_contract_key** | **Integer** | ReinsContract Key |  |
| **reins_contract_criteria_key** | **Integer** | ReinsContractCriteria Key |  |
| **reins_contract_criteria_detail_key** | **Integer** | ReinsContractCriteriaDetail Key |  |
| **reins_contract_criteria_detail** | [**ReinsContractCriteriaDetail**](ReinsContractCriteriaDetail.md) |  |  |

### Return type

[**ReinsContractCriteriaDetailVBAResponse**](ReinsContractCriteriaDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

