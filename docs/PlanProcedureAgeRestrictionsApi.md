# Vba::PlanProcedureAgeRestrictionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_procedure_age**](PlanProcedureAgeRestrictionsApi.md#create_plan_procedure_age) | **POST** /plans/{planID}/procedure-restrictions | Create PlanProcedureAge |
| [**delete_plan_procedure_age**](PlanProcedureAgeRestrictionsApi.md#delete_plan_procedure_age) | **DELETE** /plans/{planID}/procedure-restrictions/{procedureAgeKey} | Delete PlanProcedureAge |
| [**get_plan_procedure_age**](PlanProcedureAgeRestrictionsApi.md#get_plan_procedure_age) | **GET** /plans/{planID}/procedure-restrictions/{procedureAgeKey} | Get PlanProcedureAge |
| [**list_plan_procedure_age**](PlanProcedureAgeRestrictionsApi.md#list_plan_procedure_age) | **GET** /plans/{planID}/procedure-restrictions | List PlanProcedureAge |
| [**update_batch_plan_procedure_age**](PlanProcedureAgeRestrictionsApi.md#update_batch_plan_procedure_age) | **PUT** /plans/{planID}/procedure-restrictions-batch | Create or Update Batch PlanProcedureAge |
| [**update_plan_procedure_age**](PlanProcedureAgeRestrictionsApi.md#update_plan_procedure_age) | **PUT** /plans/{planID}/procedure-restrictions/{procedureAgeKey} | Update PlanProcedureAge |


## create_plan_procedure_age

> <PlanProcedureAgeVBAResponse> create_plan_procedure_age(vbasoftware_database, plan_id, plan_procedure_age)

Create PlanProcedureAge

Creates a new PlanProcedureAge

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

api_instance = Vba::PlanProcedureAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_procedure_age = Vba::PlanProcedureAge.new({procedure_age_key: 37, ex_code: 'ex_code_example', from_age: 37, from_procedure: 'from_procedure_example', plan_id: 'plan_id_example', thru_age: 37, thru_procedure: 'thru_procedure_example'}) # PlanProcedureAge | 

begin
  # Create PlanProcedureAge
  result = api_instance.create_plan_procedure_age(vbasoftware_database, plan_id, plan_procedure_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->create_plan_procedure_age: #{e}"
end
```

#### Using the create_plan_procedure_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeVBAResponse>, Integer, Hash)> create_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age)

```ruby
begin
  # Create PlanProcedureAge
  data, status_code, headers = api_instance.create_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->create_plan_procedure_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_procedure_age** | [**PlanProcedureAge**](PlanProcedureAge.md) |  |  |

### Return type

[**PlanProcedureAgeVBAResponse**](PlanProcedureAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_procedure_age

> delete_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key)

Delete PlanProcedureAge

Deletes an PlanProcedureAge

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

api_instance = Vba::PlanProcedureAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey

begin
  # Delete PlanProcedureAge
  api_instance.delete_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->delete_plan_procedure_age: #{e}"
end
```

#### Using the delete_plan_procedure_age_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key)

```ruby
begin
  # Delete PlanProcedureAge
  data, status_code, headers = api_instance.delete_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->delete_plan_procedure_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_procedure_age

> <PlanProcedureAgeVBAResponse> get_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key)

Get PlanProcedureAge

Gets PlanProcedureAge

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

api_instance = Vba::PlanProcedureAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey

begin
  # Get PlanProcedureAge
  result = api_instance.get_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->get_plan_procedure_age: #{e}"
end
```

#### Using the get_plan_procedure_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeVBAResponse>, Integer, Hash)> get_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key)

```ruby
begin
  # Get PlanProcedureAge
  data, status_code, headers = api_instance.get_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->get_plan_procedure_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |

### Return type

[**PlanProcedureAgeVBAResponse**](PlanProcedureAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_procedure_age

> <PlanProcedureAgeListVBAResponse> list_plan_procedure_age(vbasoftware_database, plan_id)

List PlanProcedureAge

Lists all PlanProcedureAge for the given planID

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

api_instance = Vba::PlanProcedureAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanProcedureAge
  result = api_instance.list_plan_procedure_age(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->list_plan_procedure_age: #{e}"
end
```

#### Using the list_plan_procedure_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeListVBAResponse>, Integer, Hash)> list_plan_procedure_age_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanProcedureAge
  data, status_code, headers = api_instance.list_plan_procedure_age_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->list_plan_procedure_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanProcedureAgeListVBAResponse**](PlanProcedureAgeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_procedure_age

> <MultiCodeResponseListVBAResponse> update_batch_plan_procedure_age(vbasoftware_database, plan_id, plan_procedure_age)

Create or Update Batch PlanProcedureAge

Create or Update multiple PlanProcedureAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanProcedureAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_procedure_age = [Vba::PlanProcedureAge.new({procedure_age_key: 37, ex_code: 'ex_code_example', from_age: 37, from_procedure: 'from_procedure_example', plan_id: 'plan_id_example', thru_age: 37, thru_procedure: 'thru_procedure_example'})] # Array<PlanProcedureAge> | 

begin
  # Create or Update Batch PlanProcedureAge
  result = api_instance.update_batch_plan_procedure_age(vbasoftware_database, plan_id, plan_procedure_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->update_batch_plan_procedure_age: #{e}"
end
```

#### Using the update_batch_plan_procedure_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age)

```ruby
begin
  # Create or Update Batch PlanProcedureAge
  data, status_code, headers = api_instance.update_batch_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->update_batch_plan_procedure_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_procedure_age** | [**Array&lt;PlanProcedureAge&gt;**](PlanProcedureAge.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_procedure_age

> <PlanProcedureAgeVBAResponse> update_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age)

Update PlanProcedureAge

Updates a specific PlanProcedureAge.

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

api_instance = Vba::PlanProcedureAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey
plan_procedure_age = Vba::PlanProcedureAge.new({procedure_age_key: 37, ex_code: 'ex_code_example', from_age: 37, from_procedure: 'from_procedure_example', plan_id: 'plan_id_example', thru_age: 37, thru_procedure: 'thru_procedure_example'}) # PlanProcedureAge | 

begin
  # Update PlanProcedureAge
  result = api_instance.update_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->update_plan_procedure_age: #{e}"
end
```

#### Using the update_plan_procedure_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeVBAResponse>, Integer, Hash)> update_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age)

```ruby
begin
  # Update PlanProcedureAge
  data, status_code, headers = api_instance.update_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionsApi->update_plan_procedure_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |
| **plan_procedure_age** | [**PlanProcedureAge**](PlanProcedureAge.md) |  |  |

### Return type

[**PlanProcedureAgeVBAResponse**](PlanProcedureAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

