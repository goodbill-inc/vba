# Vba::PlanBenefitToothMaximumsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_maximum_tooth**](PlanBenefitToothMaximumsApi.md#create_plan_maximum_tooth) | **POST** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/teeth | Create PlanMaximumTooth |
| [**delete_plan_maximum_tooth**](PlanBenefitToothMaximumsApi.md#delete_plan_maximum_tooth) | **DELETE** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/teeth/{toothNumber} | Delete PlanMaximumTooth |
| [**get_plan_maximum_tooth**](PlanBenefitToothMaximumsApi.md#get_plan_maximum_tooth) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/teeth/{toothNumber} | Get PlanMaximumTooth |
| [**list_plan_maximum_tooth**](PlanBenefitToothMaximumsApi.md#list_plan_maximum_tooth) | **GET** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/teeth | List PlanMaximumTooth |
| [**update_batch_plan_maximum_tooth**](PlanBenefitToothMaximumsApi.md#update_batch_plan_maximum_tooth) | **PUT** /plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/teeth-batch | Create or Update Batch PlanMaximumTooth |


## create_plan_maximum_tooth

> <PlanMaximumToothVBAResponse> create_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)

Create PlanMaximumTooth

Creates a new PlanMaximumTooth

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

api_instance = Vba::PlanBenefitToothMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
plan_maximum_tooth = Vba::PlanMaximumTooth.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', tooth_number: 37}) # PlanMaximumTooth | 

begin
  # Create PlanMaximumTooth
  result = api_instance.create_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->create_plan_maximum_tooth: #{e}"
end
```

#### Using the create_plan_maximum_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumToothVBAResponse>, Integer, Hash)> create_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)

```ruby
begin
  # Create PlanMaximumTooth
  data, status_code, headers = api_instance.create_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->create_plan_maximum_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **plan_maximum_tooth** | [**PlanMaximumTooth**](PlanMaximumTooth.md) |  |  |

### Return type

[**PlanMaximumToothVBAResponse**](PlanMaximumToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_maximum_tooth

> delete_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)

Delete PlanMaximumTooth

Deletes an PlanMaximumTooth

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

api_instance = Vba::PlanBenefitToothMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
tooth_number = 56 # Integer | Tooth Number

begin
  # Delete PlanMaximumTooth
  api_instance.delete_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->delete_plan_maximum_tooth: #{e}"
end
```

#### Using the delete_plan_maximum_tooth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)

```ruby
begin
  # Delete PlanMaximumTooth
  data, status_code, headers = api_instance.delete_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->delete_plan_maximum_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_maximum_tooth

> <PlanMaximumToothVBAResponse> get_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)

Get PlanMaximumTooth

Gets PlanMaximumTooth

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

api_instance = Vba::PlanBenefitToothMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
tooth_number = 56 # Integer | Tooth Number

begin
  # Get PlanMaximumTooth
  result = api_instance.get_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->get_plan_maximum_tooth: #{e}"
end
```

#### Using the get_plan_maximum_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumToothVBAResponse>, Integer, Hash)> get_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)

```ruby
begin
  # Get PlanMaximumTooth
  data, status_code, headers = api_instance.get_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->get_plan_maximum_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

[**PlanMaximumToothVBAResponse**](PlanMaximumToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_maximum_tooth

> <PlanMaximumToothListVBAResponse> list_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id)

List PlanMaximumTooth

Lists all PlanMaximumTooth for the given planID and benefitCode and maxID

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

api_instance = Vba::PlanBenefitToothMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID

begin
  # List PlanMaximumTooth
  result = api_instance.list_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->list_plan_maximum_tooth: #{e}"
end
```

#### Using the list_plan_maximum_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanMaximumToothListVBAResponse>, Integer, Hash)> list_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)

```ruby
begin
  # List PlanMaximumTooth
  data, status_code, headers = api_instance.list_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanMaximumToothListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->list_plan_maximum_tooth_with_http_info: #{e}"
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

[**PlanMaximumToothListVBAResponse**](PlanMaximumToothListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_maximum_tooth

> <MultiCodeResponseListVBAResponse> update_batch_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)

Create or Update Batch PlanMaximumTooth

Create or Update multiple PlanMaximumTooth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitToothMaximumsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
plan_maximum_tooth = [Vba::PlanMaximumTooth.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', max_id: 'max_id_example', tooth_number: 37})] # Array<PlanMaximumTooth> | 

begin
  # Create or Update Batch PlanMaximumTooth
  result = api_instance.update_batch_plan_maximum_tooth(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->update_batch_plan_maximum_tooth: #{e}"
end
```

#### Using the update_batch_plan_maximum_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)

```ruby
begin
  # Create or Update Batch PlanMaximumTooth
  data, status_code, headers = api_instance.update_batch_plan_maximum_tooth_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitToothMaximumsApi->update_batch_plan_maximum_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **plan_maximum_tooth** | [**Array&lt;PlanMaximumTooth&gt;**](PlanMaximumTooth.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

