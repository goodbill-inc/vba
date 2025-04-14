# Vba::PlanAccumulatorBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_added_accum_benefits**](PlanAccumulatorBenefitsApi.md#create_plan_added_accum_benefits) | **POST** /plans/{planID}/accumulators/{accumName}/benefits/{benefitCode} | Create PlanAddedAccumBenefits |
| [**delete_plan_added_accum_benefits**](PlanAccumulatorBenefitsApi.md#delete_plan_added_accum_benefits) | **DELETE** /plans/{planID}/accumulators/{accumName}/benefits/{benefitCode} | Delete PlanAddedAccumBenefits |
| [**get_plan_added_accum_benefits**](PlanAccumulatorBenefitsApi.md#get_plan_added_accum_benefits) | **GET** /plans/{planID}/accumulators/{accumName}/benefits/{benefitCode} | Get PlanAddedAccumBenefits |
| [**list_plan_added_accum_benefits**](PlanAccumulatorBenefitsApi.md#list_plan_added_accum_benefits) | **GET** /plans/{planID}/accumulators/{accumName}/benefits | List PlanAddedAccumBenefits |
| [**update_batch_plan_added_accum_benefits**](PlanAccumulatorBenefitsApi.md#update_batch_plan_added_accum_benefits) | **PUT** /plans/{planID}/accumulators/{accumName}/benefits-batch | Create Batch PlanAddedAccumBenefits |


## create_plan_added_accum_benefits

> <PlanAddedAccumBenefitsVBAResponse> create_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, benefit_code, plan_added_accum_benefits)

Create PlanAddedAccumBenefits

Creates a new PlanAddedAccumBenefits

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

api_instance = Vba::PlanAccumulatorBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_added_accum_benefits = Vba::PlanAddedAccumBenefits.new({plan_id: 'plan_id_example', accum_name: 'accum_name_example', benefit_code: 'benefit_code_example'}) # PlanAddedAccumBenefits | 

begin
  # Create PlanAddedAccumBenefits
  result = api_instance.create_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, benefit_code, plan_added_accum_benefits)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->create_plan_added_accum_benefits: #{e}"
end
```

#### Using the create_plan_added_accum_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumBenefitsVBAResponse>, Integer, Hash)> create_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, benefit_code, plan_added_accum_benefits)

```ruby
begin
  # Create PlanAddedAccumBenefits
  data, status_code, headers = api_instance.create_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, benefit_code, plan_added_accum_benefits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumBenefitsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->create_plan_added_accum_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_added_accum_benefits** | [**PlanAddedAccumBenefits**](PlanAddedAccumBenefits.md) |  |  |

### Return type

[**PlanAddedAccumBenefitsVBAResponse**](PlanAddedAccumBenefitsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_added_accum_benefits

> delete_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, benefit_code)

Delete PlanAddedAccumBenefits

Deletes an PlanAddedAccumBenefits

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

api_instance = Vba::PlanAccumulatorBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete PlanAddedAccumBenefits
  api_instance.delete_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->delete_plan_added_accum_benefits: #{e}"
end
```

#### Using the delete_plan_added_accum_benefits_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, benefit_code)

```ruby
begin
  # Delete PlanAddedAccumBenefits
  data, status_code, headers = api_instance.delete_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->delete_plan_added_accum_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_added_accum_benefits

> <PlanAddedAccumBenefitsVBAResponse> get_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, benefit_code)

Get PlanAddedAccumBenefits

Gets PlanAddedAccumBenefits

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

api_instance = Vba::PlanAccumulatorBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get PlanAddedAccumBenefits
  result = api_instance.get_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->get_plan_added_accum_benefits: #{e}"
end
```

#### Using the get_plan_added_accum_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumBenefitsVBAResponse>, Integer, Hash)> get_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, benefit_code)

```ruby
begin
  # Get PlanAddedAccumBenefits
  data, status_code, headers = api_instance.get_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumBenefitsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->get_plan_added_accum_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanAddedAccumBenefitsVBAResponse**](PlanAddedAccumBenefitsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_added_accum_benefits

> <PlanAddedAccumBenefitsListVBAResponse> list_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name)

List PlanAddedAccumBenefits

Lists all PlanAddedAccumBenefits planID,accumName

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

api_instance = Vba::PlanAccumulatorBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name

begin
  # List PlanAddedAccumBenefits
  result = api_instance.list_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->list_plan_added_accum_benefits: #{e}"
end
```

#### Using the list_plan_added_accum_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAddedAccumBenefitsListVBAResponse>, Integer, Hash)> list_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name)

```ruby
begin
  # List PlanAddedAccumBenefits
  data, status_code, headers = api_instance.list_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAddedAccumBenefitsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->list_plan_added_accum_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |

### Return type

[**PlanAddedAccumBenefitsListVBAResponse**](PlanAddedAccumBenefitsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_added_accum_benefits

> <MultiCodeResponseListVBAResponse> update_batch_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, plan_added_accum_benefits)

Create Batch PlanAddedAccumBenefits

Create multiple PlanAddedAccumBenefits at once.  If the entity exists, an error message will be added to the response.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanAccumulatorBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
accum_name = 'accum_name_example' # String | Accum Name
plan_added_accum_benefits = [Vba::PlanAddedAccumBenefits.new({plan_id: 'plan_id_example', accum_name: 'accum_name_example', benefit_code: 'benefit_code_example'})] # Array<PlanAddedAccumBenefits> | 

begin
  # Create Batch PlanAddedAccumBenefits
  result = api_instance.update_batch_plan_added_accum_benefits(vbasoftware_database, plan_id, accum_name, plan_added_accum_benefits)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->update_batch_plan_added_accum_benefits: #{e}"
end
```

#### Using the update_batch_plan_added_accum_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, plan_added_accum_benefits)

```ruby
begin
  # Create Batch PlanAddedAccumBenefits
  data, status_code, headers = api_instance.update_batch_plan_added_accum_benefits_with_http_info(vbasoftware_database, plan_id, accum_name, plan_added_accum_benefits)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAccumulatorBenefitsApi->update_batch_plan_added_accum_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **accum_name** | **String** | Accum Name |  |
| **plan_added_accum_benefits** | [**Array&lt;PlanAddedAccumBenefits&gt;**](PlanAddedAccumBenefits.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

