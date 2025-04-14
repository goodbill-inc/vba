# Vba::ClaimBatchPlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_batch_plan**](ClaimBatchPlansApi.md#create_claim_batch_plan) | **POST** /claim-batches/{batchNumber}/claims/{batchClaim}/plans | Create ClaimBatchPlan |
| [**delete_claim_batch_plan**](ClaimBatchPlansApi.md#delete_claim_batch_plan) | **DELETE** /claim-batches/{batchNumber}/claims/{batchClaim}/plans/{planID} | Delete ClaimBatchPlan |
| [**get_claim_batch_plan**](ClaimBatchPlansApi.md#get_claim_batch_plan) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/plans/{planID} | Get ClaimBatchPlan |
| [**list_claim_batch_plan**](ClaimBatchPlansApi.md#list_claim_batch_plan) | **GET** /claim-batches/{batchNumber}/claims/{batchClaim}/plans | List ClaimBatchPlan |
| [**update_batch_claim_batch_plan**](ClaimBatchPlansApi.md#update_batch_claim_batch_plan) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/plans-batch | Create or Update Batch ClaimBatchPlan |
| [**update_claim_batch_plan**](ClaimBatchPlansApi.md#update_claim_batch_plan) | **PUT** /claim-batches/{batchNumber}/claims/{batchClaim}/plans/{planID} | Update ClaimBatchPlan |


## create_claim_batch_plan

> <ClaimBatchPlanVBAResponse> create_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)

Create ClaimBatchPlan

Creates a new ClaimBatchPlan

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

api_instance = Vba::ClaimBatchPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_batch_plan = Vba::ClaimBatchPlan.new({batch_number: 37, batch_claim: 37, plan_id: 'plan_id_example'}) # ClaimBatchPlan | 

begin
  # Create ClaimBatchPlan
  result = api_instance.create_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->create_claim_batch_plan: #{e}"
end
```

#### Using the create_claim_batch_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchPlanVBAResponse>, Integer, Hash)> create_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)

```ruby
begin
  # Create ClaimBatchPlan
  data, status_code, headers = api_instance.create_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->create_claim_batch_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_batch_plan** | [**ClaimBatchPlan**](ClaimBatchPlan.md) |  |  |

### Return type

[**ClaimBatchPlanVBAResponse**](ClaimBatchPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_batch_plan

> delete_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, plan_id)

Delete ClaimBatchPlan

Deletes an ClaimBatchPlan

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

api_instance = Vba::ClaimBatchPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Delete ClaimBatchPlan
  api_instance.delete_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, plan_id)
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->delete_claim_batch_plan: #{e}"
end
```

#### Using the delete_claim_batch_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, plan_id)

```ruby
begin
  # Delete ClaimBatchPlan
  data, status_code, headers = api_instance.delete_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->delete_claim_batch_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_batch_plan

> <ClaimBatchPlanVBAResponse> get_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, plan_id)

Get ClaimBatchPlan

Gets ClaimBatchPlan

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

api_instance = Vba::ClaimBatchPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Get ClaimBatchPlan
  result = api_instance.get_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->get_claim_batch_plan: #{e}"
end
```

#### Using the get_claim_batch_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchPlanVBAResponse>, Integer, Hash)> get_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, plan_id)

```ruby
begin
  # Get ClaimBatchPlan
  data, status_code, headers = api_instance.get_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->get_claim_batch_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**ClaimBatchPlanVBAResponse**](ClaimBatchPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_batch_plan

> <ClaimBatchPlanListVBAResponse> list_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, opts)

List ClaimBatchPlan

Lists all ClaimBatchPlan for the given batchNumber and batchClaim

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

api_instance = Vba::ClaimBatchPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimBatchPlan
  result = api_instance.list_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->list_claim_batch_plan: #{e}"
end
```

#### Using the list_claim_batch_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchPlanListVBAResponse>, Integer, Hash)> list_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)

```ruby
begin
  # List ClaimBatchPlan
  data, status_code, headers = api_instance.list_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchPlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->list_claim_batch_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimBatchPlanListVBAResponse**](ClaimBatchPlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_batch_plan

> <MultiCodeResponseListVBAResponse> update_batch_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)

Create or Update Batch ClaimBatchPlan

Create or Update multiple ClaimBatchPlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimBatchPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
claim_batch_plan = [Vba::ClaimBatchPlan.new({batch_number: 37, batch_claim: 37, plan_id: 'plan_id_example'})] # Array<ClaimBatchPlan> | 

begin
  # Create or Update Batch ClaimBatchPlan
  result = api_instance.update_batch_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->update_batch_claim_batch_plan: #{e}"
end
```

#### Using the update_batch_claim_batch_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)

```ruby
begin
  # Create or Update Batch ClaimBatchPlan
  data, status_code, headers = api_instance.update_batch_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, claim_batch_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->update_batch_claim_batch_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **claim_batch_plan** | [**Array&lt;ClaimBatchPlan&gt;**](ClaimBatchPlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_batch_plan

> <ClaimBatchPlanVBAResponse> update_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, plan_id, claim_batch_plan)

Update ClaimBatchPlan

Updates a specific ClaimBatchPlan.

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

api_instance = Vba::ClaimBatchPlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
batch_number = 56 # Integer | Batch Number
batch_claim = 56 # Integer | Batch Claim
plan_id = 'plan_id_example' # String | Plan ID
claim_batch_plan = Vba::ClaimBatchPlan.new({batch_number: 37, batch_claim: 37, plan_id: 'plan_id_example'}) # ClaimBatchPlan | 

begin
  # Update ClaimBatchPlan
  result = api_instance.update_claim_batch_plan(vbasoftware_database, batch_number, batch_claim, plan_id, claim_batch_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->update_claim_batch_plan: #{e}"
end
```

#### Using the update_claim_batch_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimBatchPlanVBAResponse>, Integer, Hash)> update_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, plan_id, claim_batch_plan)

```ruby
begin
  # Update ClaimBatchPlan
  data, status_code, headers = api_instance.update_claim_batch_plan_with_http_info(vbasoftware_database, batch_number, batch_claim, plan_id, claim_batch_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimBatchPlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimBatchPlansApi->update_claim_batch_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **batch_number** | **Integer** | Batch Number |  |
| **batch_claim** | **Integer** | Batch Claim |  |
| **plan_id** | **String** | Plan ID |  |
| **claim_batch_plan** | [**ClaimBatchPlan**](ClaimBatchPlan.md) |  |  |

### Return type

[**ClaimBatchPlanVBAResponse**](ClaimBatchPlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

