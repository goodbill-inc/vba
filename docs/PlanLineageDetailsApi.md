# Vba::PlanLineageDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_lineage_detail**](PlanLineageDetailsApi.md#create_plan_lineage_detail) | **POST** /plans/{planID}/lineages/{planLineageID}/details | Create PlanLineageDetail |
| [**delete_plan_lineage_detail**](PlanLineageDetailsApi.md#delete_plan_lineage_detail) | **DELETE** /plans/{planID}/lineages/{planLineageID}/details/{planLineageDetailKey} | Delete PlanLineageDetail |
| [**get_plan_lineage_detail**](PlanLineageDetailsApi.md#get_plan_lineage_detail) | **GET** /plans/{planID}/lineages/{planLineageID}/details/{planLineageDetailKey} | Get PlanLineageDetail |
| [**list_plan_lineage_detail**](PlanLineageDetailsApi.md#list_plan_lineage_detail) | **GET** /plans/{planID}/lineages/{planLineageID}/details | List PlanLineageDetail |
| [**update_batch_plan_lineage_detail**](PlanLineageDetailsApi.md#update_batch_plan_lineage_detail) | **PUT** /plans/{planID}/lineages/{planLineageID}/details-batch | Create or Update Batch PlanLineageDetail |
| [**update_plan_lineage_detail**](PlanLineageDetailsApi.md#update_plan_lineage_detail) | **PUT** /plans/{planID}/lineages/{planLineageID}/details/{planLineageDetailKey} | Update PlanLineageDetail |


## create_plan_lineage_detail

> <PlanLineageDetailVBAResponse> create_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)

Create PlanLineageDetail

Creates a new PlanLineageDetail

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

api_instance = Vba::PlanLineageDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID
plan_lineage_detail = Vba::PlanLineageDetail.new({plan_lineage_detail_key: 37, plan_id: 'plan_id_example', plan_lineage_id: 'plan_lineage_id_example', plan_rank: 37}) # PlanLineageDetail | 

begin
  # Create PlanLineageDetail
  result = api_instance.create_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->create_plan_lineage_detail: #{e}"
end
```

#### Using the create_plan_lineage_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageDetailVBAResponse>, Integer, Hash)> create_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)

```ruby
begin
  # Create PlanLineageDetail
  data, status_code, headers = api_instance.create_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->create_plan_lineage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |
| **plan_lineage_detail** | [**PlanLineageDetail**](PlanLineageDetail.md) |  |  |

### Return type

[**PlanLineageDetailVBAResponse**](PlanLineageDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_lineage_detail

> delete_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)

Delete PlanLineageDetail

Deletes an PlanLineageDetail

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

api_instance = Vba::PlanLineageDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID
plan_lineage_detail_key = 56 # Integer | PlanLineageDetail Key

begin
  # Delete PlanLineageDetail
  api_instance.delete_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->delete_plan_lineage_detail: #{e}"
end
```

#### Using the delete_plan_lineage_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)

```ruby
begin
  # Delete PlanLineageDetail
  data, status_code, headers = api_instance.delete_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->delete_plan_lineage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |
| **plan_lineage_detail_key** | **Integer** | PlanLineageDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_lineage_detail

> <PlanLineageDetailVBAResponse> get_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)

Get PlanLineageDetail

Gets PlanLineageDetail

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

api_instance = Vba::PlanLineageDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID
plan_lineage_detail_key = 56 # Integer | PlanLineageDetail Key

begin
  # Get PlanLineageDetail
  result = api_instance.get_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->get_plan_lineage_detail: #{e}"
end
```

#### Using the get_plan_lineage_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageDetailVBAResponse>, Integer, Hash)> get_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)

```ruby
begin
  # Get PlanLineageDetail
  data, status_code, headers = api_instance.get_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->get_plan_lineage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |
| **plan_lineage_detail_key** | **Integer** | PlanLineageDetail Key |  |

### Return type

[**PlanLineageDetailVBAResponse**](PlanLineageDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_lineage_detail

> <PlanLineageDetailListVBAResponse> list_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id)

List PlanLineageDetail

Lists all PlanLineageDetail for the given planID and planLineageID

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

api_instance = Vba::PlanLineageDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID

begin
  # List PlanLineageDetail
  result = api_instance.list_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->list_plan_lineage_detail: #{e}"
end
```

#### Using the list_plan_lineage_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageDetailListVBAResponse>, Integer, Hash)> list_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id)

```ruby
begin
  # List PlanLineageDetail
  data, status_code, headers = api_instance.list_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->list_plan_lineage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |

### Return type

[**PlanLineageDetailListVBAResponse**](PlanLineageDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_lineage_detail

> <MultiCodeResponseListVBAResponse> update_batch_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)

Create or Update Batch PlanLineageDetail

Create or Update multiple PlanLineageDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanLineageDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID
plan_lineage_detail = [Vba::PlanLineageDetail.new({plan_lineage_detail_key: 37, plan_id: 'plan_id_example', plan_lineage_id: 'plan_lineage_id_example', plan_rank: 37})] # Array<PlanLineageDetail> | 

begin
  # Create or Update Batch PlanLineageDetail
  result = api_instance.update_batch_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->update_batch_plan_lineage_detail: #{e}"
end
```

#### Using the update_batch_plan_lineage_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)

```ruby
begin
  # Create or Update Batch PlanLineageDetail
  data, status_code, headers = api_instance.update_batch_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->update_batch_plan_lineage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |
| **plan_lineage_detail** | [**Array&lt;PlanLineageDetail&gt;**](PlanLineageDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_lineage_detail

> <PlanLineageDetailVBAResponse> update_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail)

Update PlanLineageDetail

Updates a specific PlanLineageDetail.

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

api_instance = Vba::PlanLineageDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID
plan_lineage_detail_key = 56 # Integer | PlanLineageDetail Key
plan_lineage_detail = Vba::PlanLineageDetail.new({plan_lineage_detail_key: 37, plan_id: 'plan_id_example', plan_lineage_id: 'plan_lineage_id_example', plan_rank: 37}) # PlanLineageDetail | 

begin
  # Update PlanLineageDetail
  result = api_instance.update_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->update_plan_lineage_detail: #{e}"
end
```

#### Using the update_plan_lineage_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageDetailVBAResponse>, Integer, Hash)> update_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail)

```ruby
begin
  # Update PlanLineageDetail
  data, status_code, headers = api_instance.update_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineageDetailsApi->update_plan_lineage_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |
| **plan_lineage_detail_key** | **Integer** | PlanLineageDetail Key |  |
| **plan_lineage_detail** | [**PlanLineageDetail**](PlanLineageDetail.md) |  |  |

### Return type

[**PlanLineageDetailVBAResponse**](PlanLineageDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

