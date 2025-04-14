# Vba::PlanProcedureAgeRestrictionModifiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_procedure_age_modifier**](PlanProcedureAgeRestrictionModifiersApi.md#create_plan_procedure_age_modifier) | **POST** /plans/{planID}/procedure-restrictions/{procedureAgeKey}/modifiers | Create PlanProcedureAgeModifier |
| [**delete_plan_procedure_age_modifier**](PlanProcedureAgeRestrictionModifiersApi.md#delete_plan_procedure_age_modifier) | **DELETE** /plans/{planID}/procedure-restrictions/{procedureAgeKey}/modifiers/{planProcedureAgeModifierKey} | Delete PlanProcedureAgeModifier |
| [**get_plan_procedure_age_modifier**](PlanProcedureAgeRestrictionModifiersApi.md#get_plan_procedure_age_modifier) | **GET** /plans/{planID}/procedure-restrictions/{procedureAgeKey}/modifiers/{planProcedureAgeModifierKey} | Get PlanProcedureAgeModifier |
| [**list_plan_procedure_age_modifier**](PlanProcedureAgeRestrictionModifiersApi.md#list_plan_procedure_age_modifier) | **GET** /plans/{planID}/procedure-restrictions/{procedureAgeKey}/modifiers | List PlanProcedureAgeModifier |
| [**update_batch_plan_procedure_age_modifier**](PlanProcedureAgeRestrictionModifiersApi.md#update_batch_plan_procedure_age_modifier) | **PUT** /plans/{planID}/procedure-restrictions/{procedureAgeKey}/modifiers-batch | Create or Update Batch PlanProcedureAgeModifier |
| [**update_plan_procedure_age_modifier**](PlanProcedureAgeRestrictionModifiersApi.md#update_plan_procedure_age_modifier) | **PUT** /plans/{planID}/procedure-restrictions/{procedureAgeKey}/modifiers/{planProcedureAgeModifierKey} | Update PlanProcedureAgeModifier |


## create_plan_procedure_age_modifier

> <PlanProcedureAgeModifierVBAResponse> create_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)

Create PlanProcedureAgeModifier

Creates a new PlanProcedureAgeModifier

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

api_instance = Vba::PlanProcedureAgeRestrictionModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey
plan_procedure_age_modifier = Vba::PlanProcedureAgeModifier.new({plan_procedure_age_modifier_key: 37, no_modifier: false, procedure_age_key: 37}) # PlanProcedureAgeModifier | 

begin
  # Create PlanProcedureAgeModifier
  result = api_instance.create_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->create_plan_procedure_age_modifier: #{e}"
end
```

#### Using the create_plan_procedure_age_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeModifierVBAResponse>, Integer, Hash)> create_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)

```ruby
begin
  # Create PlanProcedureAgeModifier
  data, status_code, headers = api_instance.create_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->create_plan_procedure_age_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |
| **plan_procedure_age_modifier** | [**PlanProcedureAgeModifier**](PlanProcedureAgeModifier.md) |  |  |

### Return type

[**PlanProcedureAgeModifierVBAResponse**](PlanProcedureAgeModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_procedure_age_modifier

> delete_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)

Delete PlanProcedureAgeModifier

Deletes an PlanProcedureAgeModifier

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

api_instance = Vba::PlanProcedureAgeRestrictionModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey
plan_procedure_age_modifier_key = 56 # Integer | PlanProcedureAgeModifier Key

begin
  # Delete PlanProcedureAgeModifier
  api_instance.delete_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->delete_plan_procedure_age_modifier: #{e}"
end
```

#### Using the delete_plan_procedure_age_modifier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)

```ruby
begin
  # Delete PlanProcedureAgeModifier
  data, status_code, headers = api_instance.delete_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->delete_plan_procedure_age_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |
| **plan_procedure_age_modifier_key** | **Integer** | PlanProcedureAgeModifier Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_procedure_age_modifier

> <PlanProcedureAgeModifierVBAResponse> get_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)

Get PlanProcedureAgeModifier

Gets PlanProcedureAgeModifier

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

api_instance = Vba::PlanProcedureAgeRestrictionModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey
plan_procedure_age_modifier_key = 56 # Integer | PlanProcedureAgeModifier Key

begin
  # Get PlanProcedureAgeModifier
  result = api_instance.get_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->get_plan_procedure_age_modifier: #{e}"
end
```

#### Using the get_plan_procedure_age_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeModifierVBAResponse>, Integer, Hash)> get_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)

```ruby
begin
  # Get PlanProcedureAgeModifier
  data, status_code, headers = api_instance.get_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->get_plan_procedure_age_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |
| **plan_procedure_age_modifier_key** | **Integer** | PlanProcedureAgeModifier Key |  |

### Return type

[**PlanProcedureAgeModifierVBAResponse**](PlanProcedureAgeModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_procedure_age_modifier

> <PlanProcedureAgeModifierListVBAResponse> list_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key)

List PlanProcedureAgeModifier

Lists all PlanProcedureAgeModifier for the given procedureAgeKey

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

api_instance = Vba::PlanProcedureAgeRestrictionModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey

begin
  # List PlanProcedureAgeModifier
  result = api_instance.list_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->list_plan_procedure_age_modifier: #{e}"
end
```

#### Using the list_plan_procedure_age_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeModifierListVBAResponse>, Integer, Hash)> list_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key)

```ruby
begin
  # List PlanProcedureAgeModifier
  data, status_code, headers = api_instance.list_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeModifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->list_plan_procedure_age_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |

### Return type

[**PlanProcedureAgeModifierListVBAResponse**](PlanProcedureAgeModifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_procedure_age_modifier

> <MultiCodeResponseListVBAResponse> update_batch_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)

Create or Update Batch PlanProcedureAgeModifier

Create or Update multiple PlanProcedureAgeModifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanProcedureAgeRestrictionModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey
plan_procedure_age_modifier = [Vba::PlanProcedureAgeModifier.new({plan_procedure_age_modifier_key: 37, no_modifier: false, procedure_age_key: 37})] # Array<PlanProcedureAgeModifier> | 

begin
  # Create or Update Batch PlanProcedureAgeModifier
  result = api_instance.update_batch_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->update_batch_plan_procedure_age_modifier: #{e}"
end
```

#### Using the update_batch_plan_procedure_age_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)

```ruby
begin
  # Create or Update Batch PlanProcedureAgeModifier
  data, status_code, headers = api_instance.update_batch_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->update_batch_plan_procedure_age_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |
| **plan_procedure_age_modifier** | [**Array&lt;PlanProcedureAgeModifier&gt;**](PlanProcedureAgeModifier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_procedure_age_modifier

> <PlanProcedureAgeModifierVBAResponse> update_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key, plan_procedure_age_modifier)

Update PlanProcedureAgeModifier

Updates a specific PlanProcedureAgeModifier.

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

api_instance = Vba::PlanProcedureAgeRestrictionModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
procedure_age_key = 56 # Integer | ProcedureAgeKey
plan_procedure_age_modifier_key = 56 # Integer | PlanProcedureAgeModifier Key
plan_procedure_age_modifier = Vba::PlanProcedureAgeModifier.new({plan_procedure_age_modifier_key: 37, no_modifier: false, procedure_age_key: 37}) # PlanProcedureAgeModifier | 

begin
  # Update PlanProcedureAgeModifier
  result = api_instance.update_plan_procedure_age_modifier(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key, plan_procedure_age_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->update_plan_procedure_age_modifier: #{e}"
end
```

#### Using the update_plan_procedure_age_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanProcedureAgeModifierVBAResponse>, Integer, Hash)> update_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key, plan_procedure_age_modifier)

```ruby
begin
  # Update PlanProcedureAgeModifier
  data, status_code, headers = api_instance.update_plan_procedure_age_modifier_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age_modifier_key, plan_procedure_age_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanProcedureAgeModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanProcedureAgeRestrictionModifiersApi->update_plan_procedure_age_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **procedure_age_key** | **Integer** | ProcedureAgeKey |  |
| **plan_procedure_age_modifier_key** | **Integer** | PlanProcedureAgeModifier Key |  |
| **plan_procedure_age_modifier** | [**PlanProcedureAgeModifier**](PlanProcedureAgeModifier.md) |  |  |

### Return type

[**PlanProcedureAgeModifierVBAResponse**](PlanProcedureAgeModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

