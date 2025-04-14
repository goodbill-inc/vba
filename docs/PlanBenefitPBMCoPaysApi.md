# Vba::PlanBenefitPBMCoPaysApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefit_pbm**](PlanBenefitPBMCoPaysApi.md#create_plan_benefit_pbm) | **POST** /plans/{planID}/benefits/{benefitCode}/pbm-co-pays | Create PlanBenefitPBM |
| [**delete_plan_benefit_pbm**](PlanBenefitPBMCoPaysApi.md#delete_plan_benefit_pbm) | **DELETE** /plans/{planID}/benefits/{benefitCode}/pbm-co-pays/{pBMType} | Delete PlanBenefitPBM |
| [**get_plan_benefit_pbm**](PlanBenefitPBMCoPaysApi.md#get_plan_benefit_pbm) | **GET** /plans/{planID}/benefits/{benefitCode}/pbm-co-pays/{pBMType} | Get PlanBenefitPBM |
| [**list_plan_benefit_pbm**](PlanBenefitPBMCoPaysApi.md#list_plan_benefit_pbm) | **GET** /plans/{planID}/benefits/{benefitCode}/pbm-co-pays | List PlanBenefitPBM |
| [**update_batch_plan_benefit_pbm**](PlanBenefitPBMCoPaysApi.md#update_batch_plan_benefit_pbm) | **PUT** /plans/{planID}/benefits/{benefitCode}/pbm-co-pays-batch | Create or Update Batch PlanBenefitPBM |
| [**update_plan_benefit_pbm**](PlanBenefitPBMCoPaysApi.md#update_plan_benefit_pbm) | **PUT** /plans/{planID}/benefits/{benefitCode}/pbm-co-pays/{pBMType} | Update PlanBenefitPBM |


## create_plan_benefit_pbm

> <PlanBenefitPBMVBAResponse> create_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)

Create PlanBenefitPBM

Creates a new PlanBenefitPBM

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

api_instance = Vba::PlanBenefitPBMCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_pbm = Vba::PlanBenefitPBM.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', pb_m_type: 'pb_m_type_example'}) # PlanBenefitPBM | 

begin
  # Create PlanBenefitPBM
  result = api_instance.create_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->create_plan_benefit_pbm: #{e}"
end
```

#### Using the create_plan_benefit_pbm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitPBMVBAResponse>, Integer, Hash)> create_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)

```ruby
begin
  # Create PlanBenefitPBM
  data, status_code, headers = api_instance.create_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitPBMVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->create_plan_benefit_pbm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_pbm** | [**PlanBenefitPBM**](PlanBenefitPBM.md) |  |  |

### Return type

[**PlanBenefitPBMVBAResponse**](PlanBenefitPBMVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefit_pbm

> delete_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, p_bm_type)

Delete PlanBenefitPBM

Deletes an PlanBenefitPBM

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

api_instance = Vba::PlanBenefitPBMCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
p_bm_type = 'p_bm_type_example' # String | PBM Type

begin
  # Delete PlanBenefitPBM
  api_instance.delete_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, p_bm_type)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->delete_plan_benefit_pbm: #{e}"
end
```

#### Using the delete_plan_benefit_pbm_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, p_bm_type)

```ruby
begin
  # Delete PlanBenefitPBM
  data, status_code, headers = api_instance.delete_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, p_bm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->delete_plan_benefit_pbm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **p_bm_type** | **String** | PBM Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefit_pbm

> <PlanBenefitPBMVBAResponse> get_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, p_bm_type)

Get PlanBenefitPBM

Gets PlanBenefitPBM

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

api_instance = Vba::PlanBenefitPBMCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
p_bm_type = 'p_bm_type_example' # String | PBM Type

begin
  # Get PlanBenefitPBM
  result = api_instance.get_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, p_bm_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->get_plan_benefit_pbm: #{e}"
end
```

#### Using the get_plan_benefit_pbm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitPBMVBAResponse>, Integer, Hash)> get_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, p_bm_type)

```ruby
begin
  # Get PlanBenefitPBM
  data, status_code, headers = api_instance.get_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, p_bm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitPBMVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->get_plan_benefit_pbm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **p_bm_type** | **String** | PBM Type |  |

### Return type

[**PlanBenefitPBMVBAResponse**](PlanBenefitPBMVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_pbm

> <PlanBenefitPBMListVBAResponse> list_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitPBM

Lists all PlanBenefitPBM for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitPBMCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitPBM
  result = api_instance.list_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->list_plan_benefit_pbm: #{e}"
end
```

#### Using the list_plan_benefit_pbm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitPBMListVBAResponse>, Integer, Hash)> list_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitPBM
  data, status_code, headers = api_instance.list_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitPBMListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->list_plan_benefit_pbm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitPBMListVBAResponse**](PlanBenefitPBMListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefit_pbm

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)

Create or Update Batch PlanBenefitPBM

Create or Update multiple PlanBenefitPBM at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitPBMCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_pbm = [Vba::PlanBenefitPBM.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', pb_m_type: 'pb_m_type_example'})] # Array<PlanBenefitPBM> | 

begin
  # Create or Update Batch PlanBenefitPBM
  result = api_instance.update_batch_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->update_batch_plan_benefit_pbm: #{e}"
end
```

#### Using the update_batch_plan_benefit_pbm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)

```ruby
begin
  # Create or Update Batch PlanBenefitPBM
  data, status_code, headers = api_instance.update_batch_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_pbm)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->update_batch_plan_benefit_pbm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_pbm** | [**Array&lt;PlanBenefitPBM&gt;**](PlanBenefitPBM.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefit_pbm

> <PlanBenefitPBMVBAResponse> update_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, p_bm_type, plan_benefit_pbm)

Update PlanBenefitPBM

Updates a specific PlanBenefitPBM.

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

api_instance = Vba::PlanBenefitPBMCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
p_bm_type = 'p_bm_type_example' # String | PBM Type
plan_benefit_pbm = Vba::PlanBenefitPBM.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', pb_m_type: 'pb_m_type_example'}) # PlanBenefitPBM | 

begin
  # Update PlanBenefitPBM
  result = api_instance.update_plan_benefit_pbm(vbasoftware_database, plan_id, benefit_code, p_bm_type, plan_benefit_pbm)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->update_plan_benefit_pbm: #{e}"
end
```

#### Using the update_plan_benefit_pbm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitPBMVBAResponse>, Integer, Hash)> update_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, p_bm_type, plan_benefit_pbm)

```ruby
begin
  # Update PlanBenefitPBM
  data, status_code, headers = api_instance.update_plan_benefit_pbm_with_http_info(vbasoftware_database, plan_id, benefit_code, p_bm_type, plan_benefit_pbm)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitPBMVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPBMCoPaysApi->update_plan_benefit_pbm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **p_bm_type** | **String** | PBM Type |  |
| **plan_benefit_pbm** | [**PlanBenefitPBM**](PlanBenefitPBM.md) |  |  |

### Return type

[**PlanBenefitPBMVBAResponse**](PlanBenefitPBMVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

