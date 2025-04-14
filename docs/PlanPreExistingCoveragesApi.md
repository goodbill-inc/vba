# Vba::PlanPreExistingCoveragesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_pre_ex**](PlanPreExistingCoveragesApi.md#create_plan_pre_ex) | **POST** /plans/{planID}/pre-existing-coverages | Create PlanPreEx |
| [**delete_plan_pre_ex**](PlanPreExistingCoveragesApi.md#delete_plan_pre_ex) | **DELETE** /plans/{planID}/pre-existing-coverages/{coverageType} | Delete PlanPreEx |
| [**get_plan_pre_ex**](PlanPreExistingCoveragesApi.md#get_plan_pre_ex) | **GET** /plans/{planID}/pre-existing-coverages/{coverageType} | Get PlanPreEx |
| [**list_plan_pre_ex**](PlanPreExistingCoveragesApi.md#list_plan_pre_ex) | **GET** /plans/{planID}/pre-existing-coverages | List PlanPreEx |
| [**update_batch_plan_pre_ex**](PlanPreExistingCoveragesApi.md#update_batch_plan_pre_ex) | **PUT** /plans/{planID}/pre-existing-coverages-batch | Create or Update Batch PlanPreEx |
| [**update_plan_pre_ex**](PlanPreExistingCoveragesApi.md#update_plan_pre_ex) | **PUT** /plans/{planID}/pre-existing-coverages/{coverageType} | Update PlanPreEx |


## create_plan_pre_ex

> <PlanPreExVBAResponse> create_plan_pre_ex(vbasoftware_database, plan_id, plan_pre_ex)

Create PlanPreEx

Creates a new PlanPreEx

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

api_instance = Vba::PlanPreExistingCoveragesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_pre_ex = Vba::PlanPreEx.new({plan_id: 'plan_id_example', coverage_type: 'coverage_type_example'}) # PlanPreEx | 

begin
  # Create PlanPreEx
  result = api_instance.create_plan_pre_ex(vbasoftware_database, plan_id, plan_pre_ex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->create_plan_pre_ex: #{e}"
end
```

#### Using the create_plan_pre_ex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanPreExVBAResponse>, Integer, Hash)> create_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, plan_pre_ex)

```ruby
begin
  # Create PlanPreEx
  data, status_code, headers = api_instance.create_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, plan_pre_ex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanPreExVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->create_plan_pre_ex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_pre_ex** | [**PlanPreEx**](PlanPreEx.md) |  |  |

### Return type

[**PlanPreExVBAResponse**](PlanPreExVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_pre_ex

> delete_plan_pre_ex(vbasoftware_database, plan_id, coverage_type)

Delete PlanPreEx

Deletes an PlanPreEx

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

api_instance = Vba::PlanPreExistingCoveragesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
coverage_type = 'coverage_type_example' # String | Coverage Type

begin
  # Delete PlanPreEx
  api_instance.delete_plan_pre_ex(vbasoftware_database, plan_id, coverage_type)
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->delete_plan_pre_ex: #{e}"
end
```

#### Using the delete_plan_pre_ex_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, coverage_type)

```ruby
begin
  # Delete PlanPreEx
  data, status_code, headers = api_instance.delete_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, coverage_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->delete_plan_pre_ex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **coverage_type** | **String** | Coverage Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_pre_ex

> <PlanPreExVBAResponse> get_plan_pre_ex(vbasoftware_database, plan_id, coverage_type)

Get PlanPreEx

Gets PlanPreEx

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

api_instance = Vba::PlanPreExistingCoveragesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
coverage_type = 'coverage_type_example' # String | Coverage Type

begin
  # Get PlanPreEx
  result = api_instance.get_plan_pre_ex(vbasoftware_database, plan_id, coverage_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->get_plan_pre_ex: #{e}"
end
```

#### Using the get_plan_pre_ex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanPreExVBAResponse>, Integer, Hash)> get_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, coverage_type)

```ruby
begin
  # Get PlanPreEx
  data, status_code, headers = api_instance.get_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, coverage_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanPreExVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->get_plan_pre_ex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **coverage_type** | **String** | Coverage Type |  |

### Return type

[**PlanPreExVBAResponse**](PlanPreExVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_pre_ex

> <PlanPreExListVBAResponse> list_plan_pre_ex(vbasoftware_database, plan_id)

List PlanPreEx

Lists all PlanPreEx for the given planID

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

api_instance = Vba::PlanPreExistingCoveragesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanPreEx
  result = api_instance.list_plan_pre_ex(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->list_plan_pre_ex: #{e}"
end
```

#### Using the list_plan_pre_ex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanPreExListVBAResponse>, Integer, Hash)> list_plan_pre_ex_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanPreEx
  data, status_code, headers = api_instance.list_plan_pre_ex_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanPreExListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->list_plan_pre_ex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanPreExListVBAResponse**](PlanPreExListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_pre_ex

> <MultiCodeResponseListVBAResponse> update_batch_plan_pre_ex(vbasoftware_database, plan_id, plan_pre_ex)

Create or Update Batch PlanPreEx

Create or Update multiple PlanPreEx at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanPreExistingCoveragesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_pre_ex = [Vba::PlanPreEx.new({plan_id: 'plan_id_example', coverage_type: 'coverage_type_example'})] # Array<PlanPreEx> | 

begin
  # Create or Update Batch PlanPreEx
  result = api_instance.update_batch_plan_pre_ex(vbasoftware_database, plan_id, plan_pre_ex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->update_batch_plan_pre_ex: #{e}"
end
```

#### Using the update_batch_plan_pre_ex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, plan_pre_ex)

```ruby
begin
  # Create or Update Batch PlanPreEx
  data, status_code, headers = api_instance.update_batch_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, plan_pre_ex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->update_batch_plan_pre_ex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_pre_ex** | [**Array&lt;PlanPreEx&gt;**](PlanPreEx.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_pre_ex

> <PlanPreExVBAResponse> update_plan_pre_ex(vbasoftware_database, plan_id, coverage_type, plan_pre_ex)

Update PlanPreEx

Updates a specific PlanPreEx.

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

api_instance = Vba::PlanPreExistingCoveragesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
coverage_type = 'coverage_type_example' # String | Coverage Type
plan_pre_ex = Vba::PlanPreEx.new({plan_id: 'plan_id_example', coverage_type: 'coverage_type_example'}) # PlanPreEx | 

begin
  # Update PlanPreEx
  result = api_instance.update_plan_pre_ex(vbasoftware_database, plan_id, coverage_type, plan_pre_ex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->update_plan_pre_ex: #{e}"
end
```

#### Using the update_plan_pre_ex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanPreExVBAResponse>, Integer, Hash)> update_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, coverage_type, plan_pre_ex)

```ruby
begin
  # Update PlanPreEx
  data, status_code, headers = api_instance.update_plan_pre_ex_with_http_info(vbasoftware_database, plan_id, coverage_type, plan_pre_ex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanPreExVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanPreExistingCoveragesApi->update_plan_pre_ex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **coverage_type** | **String** | Coverage Type |  |
| **plan_pre_ex** | [**PlanPreEx**](PlanPreEx.md) |  |  |

### Return type

[**PlanPreExVBAResponse**](PlanPreExVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

