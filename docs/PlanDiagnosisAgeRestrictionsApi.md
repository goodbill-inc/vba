# Vba::PlanDiagnosisAgeRestrictionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_diagnosis_age**](PlanDiagnosisAgeRestrictionsApi.md#create_plan_diagnosis_age) | **POST** /plans/{planID}/diagnosis-age-restrictions | Create PlanDiagnosisAge |
| [**delete_plan_diagnosis_age**](PlanDiagnosisAgeRestrictionsApi.md#delete_plan_diagnosis_age) | **DELETE** /plans/{planID}/diagnosis-age-restrictions/{planDiagnosisAgeKey} | Delete PlanDiagnosisAge |
| [**get_plan_diagnosis_age**](PlanDiagnosisAgeRestrictionsApi.md#get_plan_diagnosis_age) | **GET** /plans/{planID}/diagnosis-age-restrictions/{planDiagnosisAgeKey} | Get PlanDiagnosisAge |
| [**list_plan_diagnosis_age**](PlanDiagnosisAgeRestrictionsApi.md#list_plan_diagnosis_age) | **GET** /plans/{planID}/diagnosis-age-restrictions | List PlanDiagnosisAge |
| [**update_batch_plan_diagnosis_age**](PlanDiagnosisAgeRestrictionsApi.md#update_batch_plan_diagnosis_age) | **PUT** /plans/{planID}/diagnosis-age-restrictions-batch | Create or Update Batch PlanDiagnosisAge |
| [**update_plan_diagnosis_age**](PlanDiagnosisAgeRestrictionsApi.md#update_plan_diagnosis_age) | **PUT** /plans/{planID}/diagnosis-age-restrictions/{planDiagnosisAgeKey} | Update PlanDiagnosisAge |


## create_plan_diagnosis_age

> <PlanDiagnosisAgeVBAResponse> create_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age)

Create PlanDiagnosisAge

Creates a new PlanDiagnosisAge

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

api_instance = Vba::PlanDiagnosisAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_diagnosis_age = Vba::PlanDiagnosisAge.new({plan_diagnosis_age_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', from_diag: 'from_diag_example', plan_id: 'plan_id_example', thru_diag: 'thru_diag_example'}) # PlanDiagnosisAge | 

begin
  # Create PlanDiagnosisAge
  result = api_instance.create_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->create_plan_diagnosis_age: #{e}"
end
```

#### Using the create_plan_diagnosis_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDiagnosisAgeVBAResponse>, Integer, Hash)> create_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age)

```ruby
begin
  # Create PlanDiagnosisAge
  data, status_code, headers = api_instance.create_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDiagnosisAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->create_plan_diagnosis_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_diagnosis_age** | [**PlanDiagnosisAge**](PlanDiagnosisAge.md) |  |  |

### Return type

[**PlanDiagnosisAgeVBAResponse**](PlanDiagnosisAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_diagnosis_age

> delete_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age_key)

Delete PlanDiagnosisAge

Deletes an PlanDiagnosisAge

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

api_instance = Vba::PlanDiagnosisAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_diagnosis_age_key = 56 # Integer | PlanDiagnosisAge Key

begin
  # Delete PlanDiagnosisAge
  api_instance.delete_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->delete_plan_diagnosis_age: #{e}"
end
```

#### Using the delete_plan_diagnosis_age_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age_key)

```ruby
begin
  # Delete PlanDiagnosisAge
  data, status_code, headers = api_instance.delete_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->delete_plan_diagnosis_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_diagnosis_age_key** | **Integer** | PlanDiagnosisAge Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_diagnosis_age

> <PlanDiagnosisAgeVBAResponse> get_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age_key)

Get PlanDiagnosisAge

Gets PlanDiagnosisAge

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

api_instance = Vba::PlanDiagnosisAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_diagnosis_age_key = 56 # Integer | PlanDiagnosisAge Key

begin
  # Get PlanDiagnosisAge
  result = api_instance.get_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->get_plan_diagnosis_age: #{e}"
end
```

#### Using the get_plan_diagnosis_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDiagnosisAgeVBAResponse>, Integer, Hash)> get_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age_key)

```ruby
begin
  # Get PlanDiagnosisAge
  data, status_code, headers = api_instance.get_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDiagnosisAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->get_plan_diagnosis_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_diagnosis_age_key** | **Integer** | PlanDiagnosisAge Key |  |

### Return type

[**PlanDiagnosisAgeVBAResponse**](PlanDiagnosisAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_diagnosis_age

> <PlanDiagnosisAgeListVBAResponse> list_plan_diagnosis_age(vbasoftware_database, plan_id)

List PlanDiagnosisAge

Lists all PlanDiagnosisAge for the given planID

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

api_instance = Vba::PlanDiagnosisAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanDiagnosisAge
  result = api_instance.list_plan_diagnosis_age(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->list_plan_diagnosis_age: #{e}"
end
```

#### Using the list_plan_diagnosis_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDiagnosisAgeListVBAResponse>, Integer, Hash)> list_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanDiagnosisAge
  data, status_code, headers = api_instance.list_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDiagnosisAgeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->list_plan_diagnosis_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanDiagnosisAgeListVBAResponse**](PlanDiagnosisAgeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_diagnosis_age

> <MultiCodeResponseListVBAResponse> update_batch_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age)

Create or Update Batch PlanDiagnosisAge

Create or Update multiple PlanDiagnosisAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanDiagnosisAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_diagnosis_age = [Vba::PlanDiagnosisAge.new({plan_diagnosis_age_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', from_diag: 'from_diag_example', plan_id: 'plan_id_example', thru_diag: 'thru_diag_example'})] # Array<PlanDiagnosisAge> | 

begin
  # Create or Update Batch PlanDiagnosisAge
  result = api_instance.update_batch_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->update_batch_plan_diagnosis_age: #{e}"
end
```

#### Using the update_batch_plan_diagnosis_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age)

```ruby
begin
  # Create or Update Batch PlanDiagnosisAge
  data, status_code, headers = api_instance.update_batch_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->update_batch_plan_diagnosis_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_diagnosis_age** | [**Array&lt;PlanDiagnosisAge&gt;**](PlanDiagnosisAge.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_diagnosis_age

> <PlanDiagnosisAgeVBAResponse> update_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age_key, plan_diagnosis_age)

Update PlanDiagnosisAge

Updates a specific PlanDiagnosisAge.

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

api_instance = Vba::PlanDiagnosisAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_diagnosis_age_key = 56 # Integer | PlanDiagnosisAge Key
plan_diagnosis_age = Vba::PlanDiagnosisAge.new({plan_diagnosis_age_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', from_diag: 'from_diag_example', plan_id: 'plan_id_example', thru_diag: 'thru_diag_example'}) # PlanDiagnosisAge | 

begin
  # Update PlanDiagnosisAge
  result = api_instance.update_plan_diagnosis_age(vbasoftware_database, plan_id, plan_diagnosis_age_key, plan_diagnosis_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->update_plan_diagnosis_age: #{e}"
end
```

#### Using the update_plan_diagnosis_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanDiagnosisAgeVBAResponse>, Integer, Hash)> update_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age_key, plan_diagnosis_age)

```ruby
begin
  # Update PlanDiagnosisAge
  data, status_code, headers = api_instance.update_plan_diagnosis_age_with_http_info(vbasoftware_database, plan_id, plan_diagnosis_age_key, plan_diagnosis_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanDiagnosisAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDiagnosisAgeRestrictionsApi->update_plan_diagnosis_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_diagnosis_age_key** | **Integer** | PlanDiagnosisAge Key |  |
| **plan_diagnosis_age** | [**PlanDiagnosisAge**](PlanDiagnosisAge.md) |  |  |

### Return type

[**PlanDiagnosisAgeVBAResponse**](PlanDiagnosisAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

