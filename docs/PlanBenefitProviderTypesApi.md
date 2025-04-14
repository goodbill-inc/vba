# Vba::PlanBenefitProviderTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_ben_code_provider_type**](PlanBenefitProviderTypesApi.md#create_plan_ben_code_provider_type) | **POST** /plans/{planID}/benefits/{benefitCode}/provider-types | Create PlanBenCodeProviderType |
| [**delete_plan_ben_code_provider_type**](PlanBenefitProviderTypesApi.md#delete_plan_ben_code_provider_type) | **DELETE** /plans/{planID}/benefits/{benefitCode}/provider-types/{providerType} | Delete PlanBenCodeProviderType |
| [**get_plan_ben_code_provider_type**](PlanBenefitProviderTypesApi.md#get_plan_ben_code_provider_type) | **GET** /plans/{planID}/benefits/{benefitCode}/provider-types/{providerType} | Get PlanBenCodeProviderType |
| [**list_plan_ben_code_provider_type**](PlanBenefitProviderTypesApi.md#list_plan_ben_code_provider_type) | **GET** /plans/{planID}/benefits/{benefitCode}/provider-types | List PlanBenCodeProviderType |
| [**update_batch_plan_ben_code_provider_type**](PlanBenefitProviderTypesApi.md#update_batch_plan_ben_code_provider_type) | **PUT** /plans/{planID}/benefits/{benefitCode}/provider-types-batch | Create or Update Batch PlanBenCodeProviderType |
| [**update_plan_ben_code_provider_type**](PlanBenefitProviderTypesApi.md#update_plan_ben_code_provider_type) | **PUT** /plans/{planID}/benefits/{benefitCode}/provider-types/{providerType} | Update PlanBenCodeProviderType |


## create_plan_ben_code_provider_type

> <PlanBenCodeProviderTypeVBAResponse> create_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)

Create PlanBenCodeProviderType

Creates a new PlanBenCodeProviderType

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

api_instance = Vba::PlanBenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_provider_type = Vba::PlanBenCodeProviderType.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', provider_type: 'provider_type_example', exclude: false}) # PlanBenCodeProviderType | 

begin
  # Create PlanBenCodeProviderType
  result = api_instance.create_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->create_plan_ben_code_provider_type: #{e}"
end
```

#### Using the create_plan_ben_code_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProviderTypeVBAResponse>, Integer, Hash)> create_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)

```ruby
begin
  # Create PlanBenCodeProviderType
  data, status_code, headers = api_instance.create_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProviderTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->create_plan_ben_code_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_provider_type** | [**PlanBenCodeProviderType**](PlanBenCodeProviderType.md) |  |  |

### Return type

[**PlanBenCodeProviderTypeVBAResponse**](PlanBenCodeProviderTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_ben_code_provider_type

> delete_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type)

Delete PlanBenCodeProviderType

Deletes an PlanBenCodeProviderType

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

api_instance = Vba::PlanBenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Delete PlanBenCodeProviderType
  api_instance.delete_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->delete_plan_ben_code_provider_type: #{e}"
end
```

#### Using the delete_plan_ben_code_provider_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type)

```ruby
begin
  # Delete PlanBenCodeProviderType
  data, status_code, headers = api_instance.delete_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->delete_plan_ben_code_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_ben_code_provider_type

> <PlanBenCodeProviderTypeVBAResponse> get_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type)

Get PlanBenCodeProviderType

Gets PlanBenCodeProviderType

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

api_instance = Vba::PlanBenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Get PlanBenCodeProviderType
  result = api_instance.get_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->get_plan_ben_code_provider_type: #{e}"
end
```

#### Using the get_plan_ben_code_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProviderTypeVBAResponse>, Integer, Hash)> get_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type)

```ruby
begin
  # Get PlanBenCodeProviderType
  data, status_code, headers = api_instance.get_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProviderTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->get_plan_ben_code_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

[**PlanBenCodeProviderTypeVBAResponse**](PlanBenCodeProviderTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_ben_code_provider_type

> <PlanBenCodeProviderTypeListVBAResponse> list_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code)

List PlanBenCodeProviderType

Lists all PlanBenCodeProviderType for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenCodeProviderType
  result = api_instance.list_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->list_plan_ben_code_provider_type: #{e}"
end
```

#### Using the list_plan_ben_code_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProviderTypeListVBAResponse>, Integer, Hash)> list_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenCodeProviderType
  data, status_code, headers = api_instance.list_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProviderTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->list_plan_ben_code_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenCodeProviderTypeListVBAResponse**](PlanBenCodeProviderTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_ben_code_provider_type

> <MultiCodeResponseListVBAResponse> update_batch_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)

Create or Update Batch PlanBenCodeProviderType

Create or Update multiple PlanBenCodeProviderType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_provider_type = [Vba::PlanBenCodeProviderType.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', provider_type: 'provider_type_example', exclude: false})] # Array<PlanBenCodeProviderType> | 

begin
  # Create or Update Batch PlanBenCodeProviderType
  result = api_instance.update_batch_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->update_batch_plan_ben_code_provider_type: #{e}"
end
```

#### Using the update_batch_plan_ben_code_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)

```ruby
begin
  # Create or Update Batch PlanBenCodeProviderType
  data, status_code, headers = api_instance.update_batch_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->update_batch_plan_ben_code_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_provider_type** | [**Array&lt;PlanBenCodeProviderType&gt;**](PlanBenCodeProviderType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_ben_code_provider_type

> <PlanBenCodeProviderTypeVBAResponse> update_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type)

Update PlanBenCodeProviderType

Updates a specific PlanBenCodeProviderType.

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

api_instance = Vba::PlanBenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
provider_type = 'provider_type_example' # String | Provider Type
plan_ben_code_provider_type = Vba::PlanBenCodeProviderType.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', provider_type: 'provider_type_example', exclude: false}) # PlanBenCodeProviderType | 

begin
  # Update PlanBenCodeProviderType
  result = api_instance.update_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->update_plan_ben_code_provider_type: #{e}"
end
```

#### Using the update_plan_ben_code_provider_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeProviderTypeVBAResponse>, Integer, Hash)> update_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type)

```ruby
begin
  # Update PlanBenCodeProviderType
  data, status_code, headers = api_instance.update_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeProviderTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitProviderTypesApi->update_plan_ben_code_provider_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **provider_type** | **String** | Provider Type |  |
| **plan_ben_code_provider_type** | [**PlanBenCodeProviderType**](PlanBenCodeProviderType.md) |  |  |

### Return type

[**PlanBenCodeProviderTypeVBAResponse**](PlanBenCodeProviderTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

