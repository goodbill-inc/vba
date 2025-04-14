# Vba::PlanBenefitModifierExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_modifiers**](PlanBenefitModifierExCodesApi.md#create_plan_benefits_modifiers) | **POST** /plans/{planID}/benefits/{benefitCode}/modifier-ex-codes | Create PlanBenefitsModifiers |
| [**delete_plan_benefits_modifiers**](PlanBenefitModifierExCodesApi.md#delete_plan_benefits_modifiers) | **DELETE** /plans/{planID}/benefits/{benefitCode}/modifier-ex-codes/{modifier} | Delete PlanBenefitsModifiers |
| [**get_plan_benefits_modifiers**](PlanBenefitModifierExCodesApi.md#get_plan_benefits_modifiers) | **GET** /plans/{planID}/benefits/{benefitCode}/modifier-ex-codes/{modifier} | Get PlanBenefitsModifiers |
| [**list_plan_benefits_modifiers**](PlanBenefitModifierExCodesApi.md#list_plan_benefits_modifiers) | **GET** /plans/{planID}/benefits/{benefitCode}/modifier-ex-codes | List PlanBenefitsModifiers |
| [**update_batch_plan_benefits_modifiers**](PlanBenefitModifierExCodesApi.md#update_batch_plan_benefits_modifiers) | **PUT** /plans/{planID}/benefits/{benefitCode}/modifier-ex-codes-batch | Create or Update Batch PlanBenefitsModifiers |
| [**update_plan_benefits_modifiers**](PlanBenefitModifierExCodesApi.md#update_plan_benefits_modifiers) | **PUT** /plans/{planID}/benefits/{benefitCode}/modifier-ex-codes/{modifier} | Update PlanBenefitsModifiers |


## create_plan_benefits_modifiers

> <PlanBenefitsModifiersVBAResponse> create_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)

Create PlanBenefitsModifiers

Creates a new PlanBenefitsModifiers

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

api_instance = Vba::PlanBenefitModifierExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_modifiers = Vba::PlanBenefitsModifiers.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', modifier: 'modifier_example', ex_code: 'ex_code_example'}) # PlanBenefitsModifiers | 

begin
  # Create PlanBenefitsModifiers
  result = api_instance.create_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->create_plan_benefits_modifiers: #{e}"
end
```

#### Using the create_plan_benefits_modifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsModifiersVBAResponse>, Integer, Hash)> create_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)

```ruby
begin
  # Create PlanBenefitsModifiers
  data, status_code, headers = api_instance.create_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsModifiersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->create_plan_benefits_modifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_modifiers** | [**PlanBenefitsModifiers**](PlanBenefitsModifiers.md) |  |  |

### Return type

[**PlanBenefitsModifiersVBAResponse**](PlanBenefitsModifiersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_modifiers

> delete_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, modifier)

Delete PlanBenefitsModifiers

Deletes an PlanBenefitsModifiers

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

api_instance = Vba::PlanBenefitModifierExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
modifier = 'modifier_example' # String | Modifier

begin
  # Delete PlanBenefitsModifiers
  api_instance.delete_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, modifier)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->delete_plan_benefits_modifiers: #{e}"
end
```

#### Using the delete_plan_benefits_modifiers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, modifier)

```ruby
begin
  # Delete PlanBenefitsModifiers
  data, status_code, headers = api_instance.delete_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->delete_plan_benefits_modifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **modifier** | **String** | Modifier |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefits_modifiers

> <PlanBenefitsModifiersVBAResponse> get_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, modifier)

Get PlanBenefitsModifiers

Gets PlanBenefitsModifiers

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

api_instance = Vba::PlanBenefitModifierExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
modifier = 'modifier_example' # String | Modifier

begin
  # Get PlanBenefitsModifiers
  result = api_instance.get_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->get_plan_benefits_modifiers: #{e}"
end
```

#### Using the get_plan_benefits_modifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsModifiersVBAResponse>, Integer, Hash)> get_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, modifier)

```ruby
begin
  # Get PlanBenefitsModifiers
  data, status_code, headers = api_instance.get_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsModifiersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->get_plan_benefits_modifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **modifier** | **String** | Modifier |  |

### Return type

[**PlanBenefitsModifiersVBAResponse**](PlanBenefitsModifiersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_modifiers

> <PlanBenefitsModifiersListVBAResponse> list_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsModifiers

Lists all PlanBenefitsModifiers for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitModifierExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsModifiers
  result = api_instance.list_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->list_plan_benefits_modifiers: #{e}"
end
```

#### Using the list_plan_benefits_modifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsModifiersListVBAResponse>, Integer, Hash)> list_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsModifiers
  data, status_code, headers = api_instance.list_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsModifiersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->list_plan_benefits_modifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsModifiersListVBAResponse**](PlanBenefitsModifiersListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_modifiers

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)

Create or Update Batch PlanBenefitsModifiers

Create or Update multiple PlanBenefitsModifiers at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitModifierExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_modifiers = [Vba::PlanBenefitsModifiers.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', modifier: 'modifier_example', ex_code: 'ex_code_example'})] # Array<PlanBenefitsModifiers> | 

begin
  # Create or Update Batch PlanBenefitsModifiers
  result = api_instance.update_batch_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->update_batch_plan_benefits_modifiers: #{e}"
end
```

#### Using the update_batch_plan_benefits_modifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)

```ruby
begin
  # Create or Update Batch PlanBenefitsModifiers
  data, status_code, headers = api_instance.update_batch_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_modifiers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->update_batch_plan_benefits_modifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_modifiers** | [**Array&lt;PlanBenefitsModifiers&gt;**](PlanBenefitsModifiers.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_modifiers

> <PlanBenefitsModifiersVBAResponse> update_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, modifier, plan_benefits_modifiers)

Update PlanBenefitsModifiers

Updates a specific PlanBenefitsModifiers.

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

api_instance = Vba::PlanBenefitModifierExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
modifier = 'modifier_example' # String | Modifier
plan_benefits_modifiers = Vba::PlanBenefitsModifiers.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', modifier: 'modifier_example', ex_code: 'ex_code_example'}) # PlanBenefitsModifiers | 

begin
  # Update PlanBenefitsModifiers
  result = api_instance.update_plan_benefits_modifiers(vbasoftware_database, plan_id, benefit_code, modifier, plan_benefits_modifiers)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->update_plan_benefits_modifiers: #{e}"
end
```

#### Using the update_plan_benefits_modifiers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsModifiersVBAResponse>, Integer, Hash)> update_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, modifier, plan_benefits_modifiers)

```ruby
begin
  # Update PlanBenefitsModifiers
  data, status_code, headers = api_instance.update_plan_benefits_modifiers_with_http_info(vbasoftware_database, plan_id, benefit_code, modifier, plan_benefits_modifiers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsModifiersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitModifierExCodesApi->update_plan_benefits_modifiers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **modifier** | **String** | Modifier |  |
| **plan_benefits_modifiers** | [**PlanBenefitsModifiers**](PlanBenefitsModifiers.md) |  |  |

### Return type

[**PlanBenefitsModifiersVBAResponse**](PlanBenefitsModifiersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

