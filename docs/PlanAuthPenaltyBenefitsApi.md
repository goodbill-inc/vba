# Vba::PlanAuthPenaltyBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_auth_penalty_benefit**](PlanAuthPenaltyBenefitsApi.md#create_plan_auth_penalty_benefit) | **POST** /plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits | Create PlanAuthPenaltyBenefit |
| [**delete_plan_auth_penalty_benefit**](PlanAuthPenaltyBenefitsApi.md#delete_plan_auth_penalty_benefit) | **DELETE** /plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits/{benefitCode} | Delete PlanAuthPenaltyBenefit |
| [**get_plan_auth_penalty_benefit**](PlanAuthPenaltyBenefitsApi.md#get_plan_auth_penalty_benefit) | **GET** /plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits/{benefitCode} | Get PlanAuthPenaltyBenefit |
| [**list_plan_auth_penalty_benefit**](PlanAuthPenaltyBenefitsApi.md#list_plan_auth_penalty_benefit) | **GET** /plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits | List PlanAuthPenaltyBenefit |
| [**update_batch_plan_auth_penalty_benefit**](PlanAuthPenaltyBenefitsApi.md#update_batch_plan_auth_penalty_benefit) | **PUT** /plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits-batch | Create or Update Batch PlanAuthPenaltyBenefit |
| [**update_plan_auth_penalty_benefit**](PlanAuthPenaltyBenefitsApi.md#update_plan_auth_penalty_benefit) | **PUT** /plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits/{benefitCode} | Update PlanAuthPenaltyBenefit |


## create_plan_auth_penalty_benefit

> <PlanAuthPenaltyBenefitVBAResponse> create_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)

Create PlanAuthPenaltyBenefit

Creates a new PlanAuthPenaltyBenefit

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

api_instance = Vba::PlanAuthPenaltyBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
plan_auth_penalty_benefit = Vba::PlanAuthPenaltyBenefit.new({plan_auth_penalty_key: 37, benefit_code: 'benefit_code_example'}) # PlanAuthPenaltyBenefit | 

begin
  # Create PlanAuthPenaltyBenefit
  result = api_instance.create_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->create_plan_auth_penalty_benefit: #{e}"
end
```

#### Using the create_plan_auth_penalty_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyBenefitVBAResponse>, Integer, Hash)> create_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)

```ruby
begin
  # Create PlanAuthPenaltyBenefit
  data, status_code, headers = api_instance.create_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->create_plan_auth_penalty_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **plan_auth_penalty_benefit** | [**PlanAuthPenaltyBenefit**](PlanAuthPenaltyBenefit.md) |  |  |

### Return type

[**PlanAuthPenaltyBenefitVBAResponse**](PlanAuthPenaltyBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_auth_penalty_benefit

> delete_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)

Delete PlanAuthPenaltyBenefit

Deletes an PlanAuthPenaltyBenefit

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

api_instance = Vba::PlanAuthPenaltyBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete PlanAuthPenaltyBenefit
  api_instance.delete_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->delete_plan_auth_penalty_benefit: #{e}"
end
```

#### Using the delete_plan_auth_penalty_benefit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)

```ruby
begin
  # Delete PlanAuthPenaltyBenefit
  data, status_code, headers = api_instance.delete_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->delete_plan_auth_penalty_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_auth_penalty_benefit

> <PlanAuthPenaltyBenefitVBAResponse> get_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)

Get PlanAuthPenaltyBenefit

Gets PlanAuthPenaltyBenefit

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

api_instance = Vba::PlanAuthPenaltyBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get PlanAuthPenaltyBenefit
  result = api_instance.get_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->get_plan_auth_penalty_benefit: #{e}"
end
```

#### Using the get_plan_auth_penalty_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyBenefitVBAResponse>, Integer, Hash)> get_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)

```ruby
begin
  # Get PlanAuthPenaltyBenefit
  data, status_code, headers = api_instance.get_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->get_plan_auth_penalty_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanAuthPenaltyBenefitVBAResponse**](PlanAuthPenaltyBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_auth_penalty_benefit

> <PlanAuthPenaltyBenefitListVBAResponse> list_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, opts)

List PlanAuthPenaltyBenefit

Lists all PlanAuthPenaltyBenefit for the given planAuthPenaltyKey

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

api_instance = Vba::PlanAuthPenaltyBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PlanAuthPenaltyBenefit
  result = api_instance.list_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->list_plan_auth_penalty_benefit: #{e}"
end
```

#### Using the list_plan_auth_penalty_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyBenefitListVBAResponse>, Integer, Hash)> list_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, opts)

```ruby
begin
  # List PlanAuthPenaltyBenefit
  data, status_code, headers = api_instance.list_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyBenefitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->list_plan_auth_penalty_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PlanAuthPenaltyBenefitListVBAResponse**](PlanAuthPenaltyBenefitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_auth_penalty_benefit

> <MultiCodeResponseListVBAResponse> update_batch_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)

Create or Update Batch PlanAuthPenaltyBenefit

Create or Update multiple PlanAuthPenaltyBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanAuthPenaltyBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
plan_auth_penalty_benefit = [Vba::PlanAuthPenaltyBenefit.new({plan_auth_penalty_key: 37, benefit_code: 'benefit_code_example'})] # Array<PlanAuthPenaltyBenefit> | 

begin
  # Create or Update Batch PlanAuthPenaltyBenefit
  result = api_instance.update_batch_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->update_batch_plan_auth_penalty_benefit: #{e}"
end
```

#### Using the update_batch_plan_auth_penalty_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)

```ruby
begin
  # Create or Update Batch PlanAuthPenaltyBenefit
  data, status_code, headers = api_instance.update_batch_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->update_batch_plan_auth_penalty_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **plan_auth_penalty_benefit** | [**Array&lt;PlanAuthPenaltyBenefit&gt;**](PlanAuthPenaltyBenefit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_auth_penalty_benefit

> <PlanAuthPenaltyBenefitVBAResponse> update_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit)

Update PlanAuthPenaltyBenefit

Updates a specific PlanAuthPenaltyBenefit.

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

api_instance = Vba::PlanAuthPenaltyBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_auth_penalty_benefit = Vba::PlanAuthPenaltyBenefit.new({plan_auth_penalty_key: 37, benefit_code: 'benefit_code_example'}) # PlanAuthPenaltyBenefit | 

begin
  # Update PlanAuthPenaltyBenefit
  result = api_instance.update_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->update_plan_auth_penalty_benefit: #{e}"
end
```

#### Using the update_plan_auth_penalty_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyBenefitVBAResponse>, Integer, Hash)> update_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit)

```ruby
begin
  # Update PlanAuthPenaltyBenefit
  data, status_code, headers = api_instance.update_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyBenefitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltyBenefitsApi->update_plan_auth_penalty_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_auth_penalty_benefit** | [**PlanAuthPenaltyBenefit**](PlanAuthPenaltyBenefit.md) |  |  |

### Return type

[**PlanAuthPenaltyBenefitVBAResponse**](PlanAuthPenaltyBenefitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

