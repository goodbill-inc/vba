# Vba::PlanMaximumsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_maximum**](PlanMaximumsApi.md#create_plan_maximum) | **POST** /plans/{planID}/benefits/{benefitCode}/maximums | Create PlanMaximum |
| [**delete_plan_maximum**](PlanMaximumsApi.md#delete_plan_maximum) | **DELETE** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID} | Delete PlanMaximum |
| [**get_plan_maximum**](PlanMaximumsApi.md#get_plan_maximum) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID} | Get PlanMaximum |
| [**list_plan_maximum**](PlanMaximumsApi.md#list_plan_maximum) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums | List PlanMaximum |
| [**update_batch_plan_maximum**](PlanMaximumsApi.md#update_batch_plan_maximum) | **PUT** /plans/{planID}/benefits/{benefitCode}/maximums-batch | Create or Update Batch PlanMaximum |
| [**update_plan_maximum**](PlanMaximumsApi.md#update_plan_maximum) | **PUT** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID} | Update PlanMaximum |


## create_plan_maximum

> <PlanMaximumVBAResponse> create_plan_maximum(vbasoftware_database, plan_id, benefit_code, plan_maximum)

Create PlanMaximum

Creates a new PlanMaximum

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

api_instance = Vba::PlanMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_maximum = Vba::PlanMaximum.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', member_family: 'member_family_example'}) # PlanMaximum | 

begin
  # Create PlanMaximum
  result = api_instance.create_plan_maximum(vbasoftware_database, plan_id, benefit_code, plan_maximum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->create_plan_maximum: #{e}"
end
```

#### Using the create_plan_maximum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumVBAResponse>, Integer, Hash)> create_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_maximum)

```ruby
begin
  # Create PlanMaximum
  data, status_code, headers = api_instance.create_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_maximum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->create_plan_maximum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_maximum** | [**PlanMaximum**](PlanMaximum.md) |  |  |

### Return type

[**PlanMaximumVBAResponse**](PlanMaximumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_maximum

> delete_plan_maximum(vbasoftware_database, plan_id, benefit_code, max_id)

Delete PlanMaximum

Deletes an PlanMaximum

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

api_instance = Vba::PlanMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID

begin
  # Delete PlanMaximum
  api_instance.delete_plan_maximum(vbasoftware_database, plan_id, benefit_code, max_id)
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->delete_plan_maximum: #{e}"
end
```

#### Using the delete_plan_maximum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)

```ruby
begin
  # Delete PlanMaximum
  data, status_code, headers = api_instance.delete_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->delete_plan_maximum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_maximum

> <PlanMaximumVBAResponse> get_plan_maximum(vbasoftware_database, plan_id, benefit_code, max_id)

Get PlanMaximum

Gets PlanMaximum

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

api_instance = Vba::PlanMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID

begin
  # Get PlanMaximum
  result = api_instance.get_plan_maximum(vbasoftware_database, plan_id, benefit_code, max_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->get_plan_maximum: #{e}"
end
```

#### Using the get_plan_maximum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumVBAResponse>, Integer, Hash)> get_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)

```ruby
begin
  # Get PlanMaximum
  data, status_code, headers = api_instance.get_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->get_plan_maximum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |

### Return type

[**PlanMaximumVBAResponse**](PlanMaximumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_maximum

> <PlanMaximumListVBAResponse> list_plan_maximum(vbasoftware_database, plan_id, benefit_code)

List PlanMaximum

Lists all PlanMaximum for the given planID and benefitCode

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

api_instance = Vba::PlanMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanMaximum
  result = api_instance.list_plan_maximum(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->list_plan_maximum: #{e}"
end
```

#### Using the list_plan_maximum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumListVBAResponse>, Integer, Hash)> list_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanMaximum
  data, status_code, headers = api_instance.list_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->list_plan_maximum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanMaximumListVBAResponse**](PlanMaximumListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_maximum

> <MultiCodeResponseListVBAResponse> update_batch_plan_maximum(vbasoftware_database, plan_id, benefit_code, plan_maximum)

Create or Update Batch PlanMaximum

Create or Update multiple PlanMaximum at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_maximum = [Vba::PlanMaximum.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', member_family: 'member_family_example'})] # Array<PlanMaximum> | 

begin
  # Create or Update Batch PlanMaximum
  result = api_instance.update_batch_plan_maximum(vbasoftware_database, plan_id, benefit_code, plan_maximum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->update_batch_plan_maximum: #{e}"
end
```

#### Using the update_batch_plan_maximum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_maximum)

```ruby
begin
  # Create or Update Batch PlanMaximum
  data, status_code, headers = api_instance.update_batch_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_maximum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->update_batch_plan_maximum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_maximum** | [**Array&lt;PlanMaximum&gt;**](PlanMaximum.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_maximum

> <PlanMaximumVBAResponse> update_plan_maximum(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum)

Update PlanMaximum

Updates a specific PlanMaximum.

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

api_instance = Vba::PlanMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
plan_maximum = Vba::PlanMaximum.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', member_family: 'member_family_example'}) # PlanMaximum | 

begin
  # Update PlanMaximum
  result = api_instance.update_plan_maximum(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->update_plan_maximum: #{e}"
end
```

#### Using the update_plan_maximum_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumVBAResponse>, Integer, Hash)> update_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum)

```ruby
begin
  # Update PlanMaximum
  data, status_code, headers = api_instance.update_plan_maximum_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanMaximumsApi->update_plan_maximum_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **plan_maximum** | [**PlanMaximum**](PlanMaximum.md) |  |  |

### Return type

[**PlanMaximumVBAResponse**](PlanMaximumVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

