# Vba::PlanModifiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_modifier**](PlanModifiersApi.md#create_plan_modifier) | **POST** /plans/{planID}/modifiers | Create PlanModifier |
| [**delete_plan_modifier**](PlanModifiersApi.md#delete_plan_modifier) | **DELETE** /plans/{planID}/modifiers/{modifier}/effective-dates/{effectiveDate} | Delete PlanModifier |
| [**get_plan_modifier**](PlanModifiersApi.md#get_plan_modifier) | **GET** /plans/{planID}/modifiers/{modifier}/effective-dates/{effectiveDate} | Get PlanModifier |
| [**list_plan_modifier**](PlanModifiersApi.md#list_plan_modifier) | **GET** /plans/{planID}/modifiers | List PlanModifier |
| [**update_batch_plan_modifier**](PlanModifiersApi.md#update_batch_plan_modifier) | **PUT** /plans/{planID}/modifiers-batch | Create or Update Batch PlanModifier |
| [**update_plan_modifier**](PlanModifiersApi.md#update_plan_modifier) | **PUT** /plans/{planID}/modifiers/{modifier}/effective-dates/{effectiveDate} | Update PlanModifier |


## create_plan_modifier

> <PlanModifierVBAResponse> create_plan_modifier(vbasoftware_database, plan_id, plan_modifier)

Create PlanModifier

Creates a new PlanModifier

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

api_instance = Vba::PlanModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_modifier = Vba::PlanModifier.new({plan_id: 'plan_id_example', modifier: 'modifier_example', effective_date: Time.now, apply_oon: false, apply_uc: false}) # PlanModifier | 

begin
  # Create PlanModifier
  result = api_instance.create_plan_modifier(vbasoftware_database, plan_id, plan_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->create_plan_modifier: #{e}"
end
```

#### Using the create_plan_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanModifierVBAResponse>, Integer, Hash)> create_plan_modifier_with_http_info(vbasoftware_database, plan_id, plan_modifier)

```ruby
begin
  # Create PlanModifier
  data, status_code, headers = api_instance.create_plan_modifier_with_http_info(vbasoftware_database, plan_id, plan_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->create_plan_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_modifier** | [**PlanModifier**](PlanModifier.md) |  |  |

### Return type

[**PlanModifierVBAResponse**](PlanModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_modifier

> delete_plan_modifier(vbasoftware_database, plan_id, modifier, effective_date)

Delete PlanModifier

Deletes an PlanModifier

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

api_instance = Vba::PlanModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete PlanModifier
  api_instance.delete_plan_modifier(vbasoftware_database, plan_id, modifier, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->delete_plan_modifier: #{e}"
end
```

#### Using the delete_plan_modifier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_modifier_with_http_info(vbasoftware_database, plan_id, modifier, effective_date)

```ruby
begin
  # Delete PlanModifier
  data, status_code, headers = api_instance.delete_plan_modifier_with_http_info(vbasoftware_database, plan_id, modifier, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->delete_plan_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_modifier

> <PlanModifierVBAResponse> get_plan_modifier(vbasoftware_database, plan_id, modifier, effective_date)

Get PlanModifier

Gets PlanModifier

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

api_instance = Vba::PlanModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get PlanModifier
  result = api_instance.get_plan_modifier(vbasoftware_database, plan_id, modifier, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->get_plan_modifier: #{e}"
end
```

#### Using the get_plan_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanModifierVBAResponse>, Integer, Hash)> get_plan_modifier_with_http_info(vbasoftware_database, plan_id, modifier, effective_date)

```ruby
begin
  # Get PlanModifier
  data, status_code, headers = api_instance.get_plan_modifier_with_http_info(vbasoftware_database, plan_id, modifier, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->get_plan_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**PlanModifierVBAResponse**](PlanModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_modifier

> <PlanModifierListVBAResponse> list_plan_modifier(vbasoftware_database, plan_id)

List PlanModifier

Lists all PlanModifier for the given planID

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

api_instance = Vba::PlanModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanModifier
  result = api_instance.list_plan_modifier(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->list_plan_modifier: #{e}"
end
```

#### Using the list_plan_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanModifierListVBAResponse>, Integer, Hash)> list_plan_modifier_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanModifier
  data, status_code, headers = api_instance.list_plan_modifier_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanModifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->list_plan_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanModifierListVBAResponse**](PlanModifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_modifier

> <MultiCodeResponseListVBAResponse> update_batch_plan_modifier(vbasoftware_database, plan_id, plan_modifier)

Create or Update Batch PlanModifier

Create or Update multiple PlanModifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_modifier = [Vba::PlanModifier.new({plan_id: 'plan_id_example', modifier: 'modifier_example', effective_date: Time.now, apply_oon: false, apply_uc: false})] # Array<PlanModifier> | 

begin
  # Create or Update Batch PlanModifier
  result = api_instance.update_batch_plan_modifier(vbasoftware_database, plan_id, plan_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->update_batch_plan_modifier: #{e}"
end
```

#### Using the update_batch_plan_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_modifier_with_http_info(vbasoftware_database, plan_id, plan_modifier)

```ruby
begin
  # Create or Update Batch PlanModifier
  data, status_code, headers = api_instance.update_batch_plan_modifier_with_http_info(vbasoftware_database, plan_id, plan_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->update_batch_plan_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_modifier** | [**Array&lt;PlanModifier&gt;**](PlanModifier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_modifier

> <PlanModifierVBAResponse> update_plan_modifier(vbasoftware_database, plan_id, modifier, effective_date, plan_modifier)

Update PlanModifier

Updates a specific PlanModifier.

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

api_instance = Vba::PlanModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
plan_modifier = Vba::PlanModifier.new({plan_id: 'plan_id_example', modifier: 'modifier_example', effective_date: Time.now, apply_oon: false, apply_uc: false}) # PlanModifier | 

begin
  # Update PlanModifier
  result = api_instance.update_plan_modifier(vbasoftware_database, plan_id, modifier, effective_date, plan_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->update_plan_modifier: #{e}"
end
```

#### Using the update_plan_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanModifierVBAResponse>, Integer, Hash)> update_plan_modifier_with_http_info(vbasoftware_database, plan_id, modifier, effective_date, plan_modifier)

```ruby
begin
  # Update PlanModifier
  data, status_code, headers = api_instance.update_plan_modifier_with_http_info(vbasoftware_database, plan_id, modifier, effective_date, plan_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanModifiersApi->update_plan_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |
| **plan_modifier** | [**PlanModifier**](PlanModifier.md) |  |  |

### Return type

[**PlanModifierVBAResponse**](PlanModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

