# Vba::PlanAccumulatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_added_accum**](PlanAccumulatorsApi.md#create_plan_added_accum) | **POST** /plans/{planID}/accumulators | Create Plan Accumulator |
| [**delete_plan_added_accum**](PlanAccumulatorsApi.md#delete_plan_added_accum) | **DELETE** /plans/{planID}/accumulators/{accumName} | Delete Plan Accumulator |
| [**get_plan_added_accum**](PlanAccumulatorsApi.md#get_plan_added_accum) | **GET** /plans/{planID}/accumulators/{accumName} | Get Plan Accumulator |
| [**list_plan_added_accum**](PlanAccumulatorsApi.md#list_plan_added_accum) | **GET** /plans/{planID}/accumulators | List Plan Accumulator |
| [**update_batch_plan_added_accum**](PlanAccumulatorsApi.md#update_batch_plan_added_accum) | **PUT** /plans/{planID}/accumulators-batch | Create or Update Batch Plan Accumulator |
| [**update_plan_added_accum**](PlanAccumulatorsApi.md#update_plan_added_accum) | **PUT** /plans/{planID}/accumulators/{accumName} | Update Plan Accumulator |


## create_plan_added_accum

> <PlanAddedAccumVBAResponse> create_plan_added_accum(vbasoftware_database, plan_id, plan_added_accum)

Create Plan Accumulator

Creates a new Plan Accumulator

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

api_instance = Vba::PlanAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_added_accum = Vba::PlanAddedAccum.new({plan_id: 'plan_id_example', accum_name: 'accum_name_example'}) # PlanAddedAccum | 

begin
  # Create Plan Accumulator
  result = api_instance.create_plan_added_accum(vbasoftware_database, plan_id, plan_added_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->create_plan_added_accum: #{e}"
end
```

#### Using the create_plan_added_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumVBAResponse>, Integer, Hash)> create_plan_added_accum_with_http_info(vbasoftware_database, plan_id, plan_added_accum)

```ruby
begin
  # Create Plan Accumulator
  data, status_code, headers = api_instance.create_plan_added_accum_with_http_info(vbasoftware_database, plan_id, plan_added_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->create_plan_added_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_added_accum** | [**PlanAddedAccum**](PlanAddedAccum.md) |  |  |

### Return type

[**PlanAddedAccumVBAResponse**](PlanAddedAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_added_accum

> delete_plan_added_accum(vbasoftware_database, plan_id, accum_name)

Delete Plan Accumulator

Deletes an Plan Accumulator

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

api_instance = Vba::PlanAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name

begin
  # Delete Plan Accumulator
  api_instance.delete_plan_added_accum(vbasoftware_database, plan_id, accum_name)
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->delete_plan_added_accum: #{e}"
end
```

#### Using the delete_plan_added_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_added_accum_with_http_info(vbasoftware_database, plan_id, accum_name)

```ruby
begin
  # Delete Plan Accumulator
  data, status_code, headers = api_instance.delete_plan_added_accum_with_http_info(vbasoftware_database, plan_id, accum_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->delete_plan_added_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_added_accum

> <PlanAddedAccumVBAResponse> get_plan_added_accum(vbasoftware_database, plan_id, accum_name)

Get Plan Accumulator

Gets Plan Accumulator

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

api_instance = Vba::PlanAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name

begin
  # Get Plan Accumulator
  result = api_instance.get_plan_added_accum(vbasoftware_database, plan_id, accum_name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->get_plan_added_accum: #{e}"
end
```

#### Using the get_plan_added_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumVBAResponse>, Integer, Hash)> get_plan_added_accum_with_http_info(vbasoftware_database, plan_id, accum_name)

```ruby
begin
  # Get Plan Accumulator
  data, status_code, headers = api_instance.get_plan_added_accum_with_http_info(vbasoftware_database, plan_id, accum_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->get_plan_added_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |

### Return type

[**PlanAddedAccumVBAResponse**](PlanAddedAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_added_accum

> <PlanAddedAccumListVBAResponse> list_plan_added_accum(vbasoftware_database, plan_id)

List Plan Accumulator

Lists all Plan Accumulator given a specific Plan ID

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

api_instance = Vba::PlanAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List Plan Accumulator
  result = api_instance.list_plan_added_accum(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->list_plan_added_accum: #{e}"
end
```

#### Using the list_plan_added_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumListVBAResponse>, Integer, Hash)> list_plan_added_accum_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List Plan Accumulator
  data, status_code, headers = api_instance.list_plan_added_accum_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->list_plan_added_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanAddedAccumListVBAResponse**](PlanAddedAccumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_added_accum

> <MultiCodeResponseListVBAResponse> update_batch_plan_added_accum(vbasoftware_database, plan_id, plan_added_accum)

Create or Update Batch Plan Accumulator

Create or Update multiple Plan Accumulator at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_added_accum = [Vba::PlanAddedAccum.new({plan_id: 'plan_id_example', accum_name: 'accum_name_example'})] # Array<PlanAddedAccum> | 

begin
  # Create or Update Batch Plan Accumulator
  result = api_instance.update_batch_plan_added_accum(vbasoftware_database, plan_id, plan_added_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->update_batch_plan_added_accum: #{e}"
end
```

#### Using the update_batch_plan_added_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_added_accum_with_http_info(vbasoftware_database, plan_id, plan_added_accum)

```ruby
begin
  # Create or Update Batch Plan Accumulator
  data, status_code, headers = api_instance.update_batch_plan_added_accum_with_http_info(vbasoftware_database, plan_id, plan_added_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->update_batch_plan_added_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_added_accum** | [**Array&lt;PlanAddedAccum&gt;**](PlanAddedAccum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_added_accum

> <PlanAddedAccumVBAResponse> update_plan_added_accum(vbasoftware_database, plan_id, accum_name, plan_added_accum)

Update Plan Accumulator

Updates a specific Plan Accumulator.

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

api_instance = Vba::PlanAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name
plan_added_accum = Vba::PlanAddedAccum.new({plan_id: 'plan_id_example', accum_name: 'accum_name_example'}) # PlanAddedAccum | 

begin
  # Update Plan Accumulator
  result = api_instance.update_plan_added_accum(vbasoftware_database, plan_id, accum_name, plan_added_accum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->update_plan_added_accum: #{e}"
end
```

#### Using the update_plan_added_accum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumVBAResponse>, Integer, Hash)> update_plan_added_accum_with_http_info(vbasoftware_database, plan_id, accum_name, plan_added_accum)

```ruby
begin
  # Update Plan Accumulator
  data, status_code, headers = api_instance.update_plan_added_accum_with_http_info(vbasoftware_database, plan_id, accum_name, plan_added_accum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorsApi->update_plan_added_accum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |
| **plan_added_accum** | [**PlanAddedAccum**](PlanAddedAccum.md) |  |  |

### Return type

[**PlanAddedAccumVBAResponse**](PlanAddedAccumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

