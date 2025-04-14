# Vba::PlanBenefitLevelsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefit_level**](PlanBenefitLevelsApi.md#create_plan_benefit_level) | **POST** /plans/{planID}/benefits/{benefitCode}/levels | Create PlanBenefitLevel |
| [**delete_plan_benefit_level**](PlanBenefitLevelsApi.md#delete_plan_benefit_level) | **DELETE** /plans/{planID}/benefits/{benefitCode}/levels/{planBenefitLevelKey} | Delete PlanBenefitLevel |
| [**get_plan_benefit_level**](PlanBenefitLevelsApi.md#get_plan_benefit_level) | **GET** /plans/{planID}/benefits/{benefitCode}/levels/{planBenefitLevelKey} | Get PlanBenefitLevel |
| [**list_plan_benefit_level**](PlanBenefitLevelsApi.md#list_plan_benefit_level) | **GET** /plans/{planID}/benefits/{benefitCode}/levels | List PlanBenefitLevel |
| [**update_batch_plan_benefit_level**](PlanBenefitLevelsApi.md#update_batch_plan_benefit_level) | **PUT** /plans/{planID}/benefits/{benefitCode}/levels-batch | Create or Update Batch PlanBenefitLevel |
| [**update_plan_benefit_level**](PlanBenefitLevelsApi.md#update_plan_benefit_level) | **PUT** /plans/{planID}/benefits/{benefitCode}/levels/{planBenefitLevelKey} | Update PlanBenefitLevel |


## create_plan_benefit_level

> <PlanBenefitLevelVBAResponse> create_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)

Create PlanBenefitLevel

Creates a new PlanBenefitLevel

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

api_instance = Vba::PlanBenefitLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_level = Vba::PlanBenefitLevel.new({plan_benefit_level_key: 37, benefit_code: 'benefit_code_example', benefit_level: 'benefit_level_example', exclude: false}) # PlanBenefitLevel | 

begin
  # Create PlanBenefitLevel
  result = api_instance.create_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->create_plan_benefit_level: #{e}"
end
```

#### Using the create_plan_benefit_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitLevelVBAResponse>, Integer, Hash)> create_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)

```ruby
begin
  # Create PlanBenefitLevel
  data, status_code, headers = api_instance.create_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->create_plan_benefit_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_level** | [**PlanBenefitLevel**](PlanBenefitLevel.md) |  |  |

### Return type

[**PlanBenefitLevelVBAResponse**](PlanBenefitLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefit_level

> delete_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)

Delete PlanBenefitLevel

Deletes an PlanBenefitLevel

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

api_instance = Vba::PlanBenefitLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_level_key = 56 # Integer | PlanBenefitLevel Key

begin
  # Delete PlanBenefitLevel
  api_instance.delete_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->delete_plan_benefit_level: #{e}"
end
```

#### Using the delete_plan_benefit_level_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)

```ruby
begin
  # Delete PlanBenefitLevel
  data, status_code, headers = api_instance.delete_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->delete_plan_benefit_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_level_key** | **Integer** | PlanBenefitLevel Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefit_level

> <PlanBenefitLevelVBAResponse> get_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)

Get PlanBenefitLevel

Gets PlanBenefitLevel

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

api_instance = Vba::PlanBenefitLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_level_key = 56 # Integer | PlanBenefitLevel Key

begin
  # Get PlanBenefitLevel
  result = api_instance.get_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->get_plan_benefit_level: #{e}"
end
```

#### Using the get_plan_benefit_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitLevelVBAResponse>, Integer, Hash)> get_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)

```ruby
begin
  # Get PlanBenefitLevel
  data, status_code, headers = api_instance.get_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->get_plan_benefit_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_level_key** | **Integer** | PlanBenefitLevel Key |  |

### Return type

[**PlanBenefitLevelVBAResponse**](PlanBenefitLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_level

> <PlanBenefitLevelListVBAResponse> list_plan_benefit_level(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitLevel

Lists all PlanBenefitLevel for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitLevel
  result = api_instance.list_plan_benefit_level(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->list_plan_benefit_level: #{e}"
end
```

#### Using the list_plan_benefit_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitLevelListVBAResponse>, Integer, Hash)> list_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitLevel
  data, status_code, headers = api_instance.list_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitLevelListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->list_plan_benefit_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitLevelListVBAResponse**](PlanBenefitLevelListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefit_level

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)

Create or Update Batch PlanBenefitLevel

Create or Update multiple PlanBenefitLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_level = [Vba::PlanBenefitLevel.new({plan_benefit_level_key: 37, benefit_code: 'benefit_code_example', benefit_level: 'benefit_level_example', exclude: false})] # Array<PlanBenefitLevel> | 

begin
  # Create or Update Batch PlanBenefitLevel
  result = api_instance.update_batch_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->update_batch_plan_benefit_level: #{e}"
end
```

#### Using the update_batch_plan_benefit_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)

```ruby
begin
  # Create or Update Batch PlanBenefitLevel
  data, status_code, headers = api_instance.update_batch_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->update_batch_plan_benefit_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_level** | [**Array&lt;PlanBenefitLevel&gt;**](PlanBenefitLevel.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefit_level

> <PlanBenefitLevelVBAResponse> update_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level)

Update PlanBenefitLevel

Updates a specific PlanBenefitLevel.

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

api_instance = Vba::PlanBenefitLevelsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_level_key = 56 # Integer | PlanBenefitLevel Key
plan_benefit_level = Vba::PlanBenefitLevel.new({plan_benefit_level_key: 37, benefit_code: 'benefit_code_example', benefit_level: 'benefit_level_example', exclude: false}) # PlanBenefitLevel | 

begin
  # Update PlanBenefitLevel
  result = api_instance.update_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->update_plan_benefit_level: #{e}"
end
```

#### Using the update_plan_benefit_level_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitLevelVBAResponse>, Integer, Hash)> update_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level)

```ruby
begin
  # Update PlanBenefitLevel
  data, status_code, headers = api_instance.update_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitLevelVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitLevelsApi->update_plan_benefit_level_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_level_key** | **Integer** | PlanBenefitLevel Key |  |
| **plan_benefit_level** | [**PlanBenefitLevel**](PlanBenefitLevel.md) |  |  |

### Return type

[**PlanBenefitLevelVBAResponse**](PlanBenefitLevelVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

