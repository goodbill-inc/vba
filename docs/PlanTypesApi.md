# Vba::PlanTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_type**](PlanTypesApi.md#create_plan_type) | **POST** /plan-types | Create PlanType |
| [**delete_plan_type**](PlanTypesApi.md#delete_plan_type) | **DELETE** /plan-types/{planType} | Delete PlanType |
| [**get_plan_type**](PlanTypesApi.md#get_plan_type) | **GET** /plan-types/{planType} | Get PlanType |
| [**list_plan_type**](PlanTypesApi.md#list_plan_type) | **GET** /plan-types | List PlanType |
| [**update_batch_plan_type**](PlanTypesApi.md#update_batch_plan_type) | **PUT** /plan-types-batch | Create or Update Batch PlanType |
| [**update_plan_type**](PlanTypesApi.md#update_plan_type) | **PUT** /plan-types/{planType} | Update PlanType |


## create_plan_type

> <PlanTypeVBAResponse> create_plan_type(vbasoftware_database, plan_type)

Create PlanType

Creates a new PlanType

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

api_instance = Vba::PlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_type = Vba::PlanType.new({plan_type: 'plan_type_example', capitated: false, claims: false, dental: false, disc_fee: false, discount_card: false, encounters: false, hra: false, hsa: false, indemnity: false, ltc: false, ltd: false, life_add: false, medical: false, misc: false, pay_as_you_go: false, pension: false, pharmacy: false, print_on_id: false, std: false, section125: false, tier_required: false, vision: false}) # PlanType | 

begin
  # Create PlanType
  result = api_instance.create_plan_type(vbasoftware_database, plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->create_plan_type: #{e}"
end
```

#### Using the create_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanTypeVBAResponse>, Integer, Hash)> create_plan_type_with_http_info(vbasoftware_database, plan_type)

```ruby
begin
  # Create PlanType
  data, status_code, headers = api_instance.create_plan_type_with_http_info(vbasoftware_database, plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->create_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_type** | [**PlanType**](PlanType.md) |  |  |

### Return type

[**PlanTypeVBAResponse**](PlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_type

> delete_plan_type(vbasoftware_database, plan_type)

Delete PlanType

Deletes an PlanType

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

api_instance = Vba::PlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_type = 'plan_type_example' # String | Plan Type

begin
  # Delete PlanType
  api_instance.delete_plan_type(vbasoftware_database, plan_type)
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->delete_plan_type: #{e}"
end
```

#### Using the delete_plan_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_type_with_http_info(vbasoftware_database, plan_type)

```ruby
begin
  # Delete PlanType
  data, status_code, headers = api_instance.delete_plan_type_with_http_info(vbasoftware_database, plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->delete_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_type** | **String** | Plan Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_type

> <PlanTypeVBAResponse> get_plan_type(vbasoftware_database, plan_type)

Get PlanType

Gets PlanType

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

api_instance = Vba::PlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_type = 'plan_type_example' # String | Plan Type

begin
  # Get PlanType
  result = api_instance.get_plan_type(vbasoftware_database, plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->get_plan_type: #{e}"
end
```

#### Using the get_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanTypeVBAResponse>, Integer, Hash)> get_plan_type_with_http_info(vbasoftware_database, plan_type)

```ruby
begin
  # Get PlanType
  data, status_code, headers = api_instance.get_plan_type_with_http_info(vbasoftware_database, plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->get_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_type** | **String** | Plan Type |  |

### Return type

[**PlanTypeVBAResponse**](PlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_type

> <PlanTypeListVBAResponse> list_plan_type(vbasoftware_database)

List PlanType

Lists all PlanType 

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

api_instance = Vba::PlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List PlanType
  result = api_instance.list_plan_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->list_plan_type: #{e}"
end
```

#### Using the list_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanTypeListVBAResponse>, Integer, Hash)> list_plan_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List PlanType
  data, status_code, headers = api_instance.list_plan_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->list_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**PlanTypeListVBAResponse**](PlanTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_type

> <MultiCodeResponseListVBAResponse> update_batch_plan_type(vbasoftware_database, plan_type)

Create or Update Batch PlanType

Create or Update multiple PlanType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_type = [Vba::PlanType.new({plan_type: 'plan_type_example', capitated: false, claims: false, dental: false, disc_fee: false, discount_card: false, encounters: false, hra: false, hsa: false, indemnity: false, ltc: false, ltd: false, life_add: false, medical: false, misc: false, pay_as_you_go: false, pension: false, pharmacy: false, print_on_id: false, std: false, section125: false, tier_required: false, vision: false})] # Array<PlanType> | 

begin
  # Create or Update Batch PlanType
  result = api_instance.update_batch_plan_type(vbasoftware_database, plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->update_batch_plan_type: #{e}"
end
```

#### Using the update_batch_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_type_with_http_info(vbasoftware_database, plan_type)

```ruby
begin
  # Create or Update Batch PlanType
  data, status_code, headers = api_instance.update_batch_plan_type_with_http_info(vbasoftware_database, plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->update_batch_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_type** | [**Array&lt;PlanType&gt;**](PlanType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_type

> <PlanTypeVBAResponse> update_plan_type(vbasoftware_database, plan_type, plan_type2)

Update PlanType

Updates a specific PlanType.

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

api_instance = Vba::PlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_type = 'plan_type_example' # String | Plan Type
plan_type2 = Vba::PlanType.new({plan_type: 'plan_type_example', capitated: false, claims: false, dental: false, disc_fee: false, discount_card: false, encounters: false, hra: false, hsa: false, indemnity: false, ltc: false, ltd: false, life_add: false, medical: false, misc: false, pay_as_you_go: false, pension: false, pharmacy: false, print_on_id: false, std: false, section125: false, tier_required: false, vision: false}) # PlanType | 

begin
  # Update PlanType
  result = api_instance.update_plan_type(vbasoftware_database, plan_type, plan_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->update_plan_type: #{e}"
end
```

#### Using the update_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanTypeVBAResponse>, Integer, Hash)> update_plan_type_with_http_info(vbasoftware_database, plan_type, plan_type2)

```ruby
begin
  # Update PlanType
  data, status_code, headers = api_instance.update_plan_type_with_http_info(vbasoftware_database, plan_type, plan_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanTypesApi->update_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_type** | **String** | Plan Type |  |
| **plan_type2** | [**PlanType**](PlanType.md) |  |  |

### Return type

[**PlanTypeVBAResponse**](PlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

