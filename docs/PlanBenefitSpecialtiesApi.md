# Vba::PlanBenefitSpecialtiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_ben_code_specialty**](PlanBenefitSpecialtiesApi.md#create_plan_ben_code_specialty) | **POST** /plans/{planID}/benefits/{benefitCode}/specialties | Create PlanBenCodeSpecialty |
| [**delete_plan_ben_code_specialty**](PlanBenefitSpecialtiesApi.md#delete_plan_ben_code_specialty) | **DELETE** /plans/{planID}/benefits/{benefitCode}/specialties/{specialtyCode} | Delete PlanBenCodeSpecialty |
| [**get_plan_ben_code_specialty**](PlanBenefitSpecialtiesApi.md#get_plan_ben_code_specialty) | **GET** /plans/{planID}/benefits/{benefitCode}/specialties/{specialtyCode} | Get PlanBenCodeSpecialty |
| [**list_plan_ben_code_specialty**](PlanBenefitSpecialtiesApi.md#list_plan_ben_code_specialty) | **GET** /plans/{planID}/benefits/{benefitCode}/specialties | List PlanBenCodeSpecialty |
| [**update_batch_plan_ben_code_specialty**](PlanBenefitSpecialtiesApi.md#update_batch_plan_ben_code_specialty) | **PUT** /plans/{planID}/benefits/{benefitCode}/specialties-batch | Create or Update Batch PlanBenCodeSpecialty |
| [**update_plan_ben_code_specialty**](PlanBenefitSpecialtiesApi.md#update_plan_ben_code_specialty) | **PUT** /plans/{planID}/benefits/{benefitCode}/specialties/{specialtyCode} | Update PlanBenCodeSpecialty |


## create_plan_ben_code_specialty

> <PlanBenCodeSpecialtyVBAResponse> create_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)

Create PlanBenCodeSpecialty

Creates a new PlanBenCodeSpecialty

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

api_instance = Vba::PlanBenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_specialty = Vba::PlanBenCodeSpecialty.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', specialty_code: 'specialty_code_example', exclude: false}) # PlanBenCodeSpecialty | 

begin
  # Create PlanBenCodeSpecialty
  result = api_instance.create_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->create_plan_ben_code_specialty: #{e}"
end
```

#### Using the create_plan_ben_code_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeSpecialtyVBAResponse>, Integer, Hash)> create_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)

```ruby
begin
  # Create PlanBenCodeSpecialty
  data, status_code, headers = api_instance.create_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->create_plan_ben_code_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_specialty** | [**PlanBenCodeSpecialty**](PlanBenCodeSpecialty.md) |  |  |

### Return type

[**PlanBenCodeSpecialtyVBAResponse**](PlanBenCodeSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_ben_code_specialty

> delete_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, specialty_code)

Delete PlanBenCodeSpecialty

Deletes an PlanBenCodeSpecialty

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

api_instance = Vba::PlanBenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Delete PlanBenCodeSpecialty
  api_instance.delete_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, specialty_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->delete_plan_ben_code_specialty: #{e}"
end
```

#### Using the delete_plan_ben_code_specialty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, specialty_code)

```ruby
begin
  # Delete PlanBenCodeSpecialty
  data, status_code, headers = api_instance.delete_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->delete_plan_ben_code_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_ben_code_specialty

> <PlanBenCodeSpecialtyVBAResponse> get_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, specialty_code)

Get PlanBenCodeSpecialty

Gets PlanBenCodeSpecialty

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

api_instance = Vba::PlanBenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Get PlanBenCodeSpecialty
  result = api_instance.get_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, specialty_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->get_plan_ben_code_specialty: #{e}"
end
```

#### Using the get_plan_ben_code_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeSpecialtyVBAResponse>, Integer, Hash)> get_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, specialty_code)

```ruby
begin
  # Get PlanBenCodeSpecialty
  data, status_code, headers = api_instance.get_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->get_plan_ben_code_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

[**PlanBenCodeSpecialtyVBAResponse**](PlanBenCodeSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_ben_code_specialty

> <PlanBenCodeSpecialtyListVBAResponse> list_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code)

List PlanBenCodeSpecialty

Lists all PlanBenCodeSpecialty for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenCodeSpecialty
  result = api_instance.list_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->list_plan_ben_code_specialty: #{e}"
end
```

#### Using the list_plan_ben_code_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeSpecialtyListVBAResponse>, Integer, Hash)> list_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenCodeSpecialty
  data, status_code, headers = api_instance.list_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeSpecialtyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->list_plan_ben_code_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenCodeSpecialtyListVBAResponse**](PlanBenCodeSpecialtyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_ben_code_specialty

> <MultiCodeResponseListVBAResponse> update_batch_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)

Create or Update Batch PlanBenCodeSpecialty

Create or Update multiple PlanBenCodeSpecialty at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_specialty = [Vba::PlanBenCodeSpecialty.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', specialty_code: 'specialty_code_example', exclude: false})] # Array<PlanBenCodeSpecialty> | 

begin
  # Create or Update Batch PlanBenCodeSpecialty
  result = api_instance.update_batch_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->update_batch_plan_ben_code_specialty: #{e}"
end
```

#### Using the update_batch_plan_ben_code_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)

```ruby
begin
  # Create or Update Batch PlanBenCodeSpecialty
  data, status_code, headers = api_instance.update_batch_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->update_batch_plan_ben_code_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_specialty** | [**Array&lt;PlanBenCodeSpecialty&gt;**](PlanBenCodeSpecialty.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_ben_code_specialty

> <PlanBenCodeSpecialtyVBAResponse> update_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, specialty_code, plan_ben_code_specialty)

Update PlanBenCodeSpecialty

Updates a specific PlanBenCodeSpecialty.

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

api_instance = Vba::PlanBenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
specialty_code = 'specialty_code_example' # String | Specialty Code
plan_ben_code_specialty = Vba::PlanBenCodeSpecialty.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', specialty_code: 'specialty_code_example', exclude: false}) # PlanBenCodeSpecialty | 

begin
  # Update PlanBenCodeSpecialty
  result = api_instance.update_plan_ben_code_specialty(vbasoftware_database, plan_id, benefit_code, specialty_code, plan_ben_code_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->update_plan_ben_code_specialty: #{e}"
end
```

#### Using the update_plan_ben_code_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodeSpecialtyVBAResponse>, Integer, Hash)> update_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, specialty_code, plan_ben_code_specialty)

```ruby
begin
  # Update PlanBenCodeSpecialty
  data, status_code, headers = api_instance.update_plan_ben_code_specialty_with_http_info(vbasoftware_database, plan_id, benefit_code, specialty_code, plan_ben_code_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodeSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitSpecialtiesApi->update_plan_ben_code_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **specialty_code** | **String** | Specialty Code |  |
| **plan_ben_code_specialty** | [**PlanBenCodeSpecialty**](PlanBenCodeSpecialty.md) |  |  |

### Return type

[**PlanBenCodeSpecialtyVBAResponse**](PlanBenCodeSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

