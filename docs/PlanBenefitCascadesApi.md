# Vba::PlanBenefitCascadesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefit_cascade**](PlanBenefitCascadesApi.md#create_plan_benefit_cascade) | **POST** /plans/{planID}/parent-benefits/{parentBenefitCode}/cascade-benefits/{cascadeBenefitCode} | Create PlanBenefitCascade |
| [**delete_plan_benefit_cascade**](PlanBenefitCascadesApi.md#delete_plan_benefit_cascade) | **DELETE** /plans/{planID}/parent-benefits/{parentBenefitCode}/cascade-benefits/{cascadeBenefitCode} | Delete PlanBenefitCascade |
| [**get_plan_benefit_cascade**](PlanBenefitCascadesApi.md#get_plan_benefit_cascade) | **GET** /plans/{planID}/parent-benefits/{parentBenefitCode}/cascade-benefits/{cascadeBenefitCode} | Get PlanBenefitCascade |
| [**list_plan_benefit_cascade**](PlanBenefitCascadesApi.md#list_plan_benefit_cascade) | **GET** /plans/{planID}/cascade-benefits | List PlanBenefitCascade |
| [**update_batch_plan_benefit_cascade**](PlanBenefitCascadesApi.md#update_batch_plan_benefit_cascade) | **PUT** /plans/{planID}/parent-benefits/{parentBenefitCode}/cascade-benefits | Create or Update Batch PlanBenefitCascade |


## create_plan_benefit_cascade

> <PlanBenefitCascadeVBAResponse> create_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code, plan_benefit_cascade)

Create PlanBenefitCascade

Creates a new PlanBenefitCascade

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

api_instance = Vba::PlanBenefitCascadesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
parent_benefit_code = 'parent_benefit_code_example' # String | Parent Benefit Code
cascade_benefit_code = 'cascade_benefit_code_example' # String | 
plan_benefit_cascade = Vba::PlanBenefitCascade.new({plan_id: 'plan_id_example', parent_benefit_code: 'parent_benefit_code_example', cascade_benefit_code: 'cascade_benefit_code_example'}) # PlanBenefitCascade | 

begin
  # Create PlanBenefitCascade
  result = api_instance.create_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code, plan_benefit_cascade)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->create_plan_benefit_cascade: #{e}"
end
```

#### Using the create_plan_benefit_cascade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitCascadeVBAResponse>, Integer, Hash)> create_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code, plan_benefit_cascade)

```ruby
begin
  # Create PlanBenefitCascade
  data, status_code, headers = api_instance.create_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code, plan_benefit_cascade)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitCascadeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->create_plan_benefit_cascade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **parent_benefit_code** | **String** | Parent Benefit Code |  |
| **cascade_benefit_code** | **String** |  |  |
| **plan_benefit_cascade** | [**PlanBenefitCascade**](PlanBenefitCascade.md) |  |  |

### Return type

[**PlanBenefitCascadeVBAResponse**](PlanBenefitCascadeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefit_cascade

> delete_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)

Delete PlanBenefitCascade

Deletes an PlanBenefitCascade

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

api_instance = Vba::PlanBenefitCascadesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
parent_benefit_code = 'parent_benefit_code_example' # String | Parent Benefit Code
cascade_benefit_code = 'cascade_benefit_code_example' # String | Cascade Benefit Code

begin
  # Delete PlanBenefitCascade
  api_instance.delete_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->delete_plan_benefit_cascade: #{e}"
end
```

#### Using the delete_plan_benefit_cascade_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)

```ruby
begin
  # Delete PlanBenefitCascade
  data, status_code, headers = api_instance.delete_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->delete_plan_benefit_cascade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **parent_benefit_code** | **String** | Parent Benefit Code |  |
| **cascade_benefit_code** | **String** | Cascade Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefit_cascade

> <PlanBenefitCascadeVBAResponse> get_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)

Get PlanBenefitCascade

Gets PlanBenefitCascade

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

api_instance = Vba::PlanBenefitCascadesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
parent_benefit_code = 'parent_benefit_code_example' # String | Parent Benefit Code
cascade_benefit_code = 'cascade_benefit_code_example' # String | Cascade Benefit Code

begin
  # Get PlanBenefitCascade
  result = api_instance.get_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->get_plan_benefit_cascade: #{e}"
end
```

#### Using the get_plan_benefit_cascade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitCascadeVBAResponse>, Integer, Hash)> get_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)

```ruby
begin
  # Get PlanBenefitCascade
  data, status_code, headers = api_instance.get_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, cascade_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitCascadeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->get_plan_benefit_cascade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **parent_benefit_code** | **String** | Parent Benefit Code |  |
| **cascade_benefit_code** | **String** | Cascade Benefit Code |  |

### Return type

[**PlanBenefitCascadeVBAResponse**](PlanBenefitCascadeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_cascade

> <PlanBenefitCascadeListVBAResponse> list_plan_benefit_cascade(vbasoftware_database, plan_id)

List PlanBenefitCascade

Lists all PlanBenefitCascade for the given planID

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

api_instance = Vba::PlanBenefitCascadesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanBenefitCascade
  result = api_instance.list_plan_benefit_cascade(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->list_plan_benefit_cascade: #{e}"
end
```

#### Using the list_plan_benefit_cascade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitCascadeListVBAResponse>, Integer, Hash)> list_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanBenefitCascade
  data, status_code, headers = api_instance.list_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitCascadeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->list_plan_benefit_cascade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanBenefitCascadeListVBAResponse**](PlanBenefitCascadeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefit_cascade

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, plan_benefit_cascade)

Create or Update Batch PlanBenefitCascade

Create or Update multiple PlanBenefitCascade at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitCascadesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
parent_benefit_code = 'parent_benefit_code_example' # String | Parent Benefit Code
plan_benefit_cascade = [Vba::PlanBenefitCascade.new({plan_id: 'plan_id_example', parent_benefit_code: 'parent_benefit_code_example', cascade_benefit_code: 'cascade_benefit_code_example'})] # Array<PlanBenefitCascade> | 

begin
  # Create or Update Batch PlanBenefitCascade
  result = api_instance.update_batch_plan_benefit_cascade(vbasoftware_database, plan_id, parent_benefit_code, plan_benefit_cascade)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->update_batch_plan_benefit_cascade: #{e}"
end
```

#### Using the update_batch_plan_benefit_cascade_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, plan_benefit_cascade)

```ruby
begin
  # Create or Update Batch PlanBenefitCascade
  data, status_code, headers = api_instance.update_batch_plan_benefit_cascade_with_http_info(vbasoftware_database, plan_id, parent_benefit_code, plan_benefit_cascade)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitCascadesApi->update_batch_plan_benefit_cascade_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **parent_benefit_code** | **String** | Parent Benefit Code |  |
| **plan_benefit_cascade** | [**Array&lt;PlanBenefitCascade&gt;**](PlanBenefitCascade.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

