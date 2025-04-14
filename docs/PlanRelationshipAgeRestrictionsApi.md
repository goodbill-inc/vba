# Vba::PlanRelationshipAgeRestrictionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_relationship_age**](PlanRelationshipAgeRestrictionsApi.md#create_plan_relationship_age) | **POST** /plan-relationship-age-restrictions | Create PlanRelationshipAge |
| [**delete_plan_relationship_age**](PlanRelationshipAgeRestrictionsApi.md#delete_plan_relationship_age) | **DELETE** /plan-relationship-age-restrictions/{planRelationshipAgeKey} | Delete PlanRelationshipAge |
| [**get_plan_relationship_age**](PlanRelationshipAgeRestrictionsApi.md#get_plan_relationship_age) | **GET** /plan-relationship-age-restrictions/{planRelationshipAgeKey} | Get PlanRelationshipAge |
| [**list_plan_relationship_age**](PlanRelationshipAgeRestrictionsApi.md#list_plan_relationship_age) | **GET** /plan-relationship-age-restrictions | List PlanRelationshipAge |
| [**update_batch_plan_relationship_age**](PlanRelationshipAgeRestrictionsApi.md#update_batch_plan_relationship_age) | **PUT** /plan-relationship-age-restrictions-batch | Create or Update Batch PlanRelationshipAge |
| [**update_plan_relationship_age**](PlanRelationshipAgeRestrictionsApi.md#update_plan_relationship_age) | **PUT** /plan-relationship-age-restrictions/{planRelationshipAgeKey} | Update PlanRelationshipAge |


## create_plan_relationship_age

> <PlanRelationshipAgeVBAResponse> create_plan_relationship_age(vbasoftware_database, plan_relationship_age)

Create PlanRelationshipAge

Creates a new PlanRelationshipAge

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

api_instance = Vba::PlanRelationshipAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_relationship_age = Vba::PlanRelationshipAge.new({plan_relationship_age_key: 37, ex_code: 'ex_code_example', from_age: 37, plan_id: 'plan_id_example', relate_code: 'relate_code_example', thru_age: 37}) # PlanRelationshipAge | 

begin
  # Create PlanRelationshipAge
  result = api_instance.create_plan_relationship_age(vbasoftware_database, plan_relationship_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->create_plan_relationship_age: #{e}"
end
```

#### Using the create_plan_relationship_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanRelationshipAgeVBAResponse>, Integer, Hash)> create_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age)

```ruby
begin
  # Create PlanRelationshipAge
  data, status_code, headers = api_instance.create_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanRelationshipAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->create_plan_relationship_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_relationship_age** | [**PlanRelationshipAge**](PlanRelationshipAge.md) |  |  |

### Return type

[**PlanRelationshipAgeVBAResponse**](PlanRelationshipAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_relationship_age

> delete_plan_relationship_age(vbasoftware_database, plan_relationship_age_key)

Delete PlanRelationshipAge

Deletes an PlanRelationshipAge

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

api_instance = Vba::PlanRelationshipAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_relationship_age_key = 56 # Integer | PlanRelationshipAge Key

begin
  # Delete PlanRelationshipAge
  api_instance.delete_plan_relationship_age(vbasoftware_database, plan_relationship_age_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->delete_plan_relationship_age: #{e}"
end
```

#### Using the delete_plan_relationship_age_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age_key)

```ruby
begin
  # Delete PlanRelationshipAge
  data, status_code, headers = api_instance.delete_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->delete_plan_relationship_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_relationship_age_key** | **Integer** | PlanRelationshipAge Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_relationship_age

> <PlanRelationshipAgeVBAResponse> get_plan_relationship_age(vbasoftware_database, plan_relationship_age_key)

Get PlanRelationshipAge

Gets PlanRelationshipAge

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

api_instance = Vba::PlanRelationshipAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_relationship_age_key = 56 # Integer | PlanRelationshipAge Key

begin
  # Get PlanRelationshipAge
  result = api_instance.get_plan_relationship_age(vbasoftware_database, plan_relationship_age_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->get_plan_relationship_age: #{e}"
end
```

#### Using the get_plan_relationship_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanRelationshipAgeVBAResponse>, Integer, Hash)> get_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age_key)

```ruby
begin
  # Get PlanRelationshipAge
  data, status_code, headers = api_instance.get_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanRelationshipAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->get_plan_relationship_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_relationship_age_key** | **Integer** | PlanRelationshipAge Key |  |

### Return type

[**PlanRelationshipAgeVBAResponse**](PlanRelationshipAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_relationship_age

> <PlanRelationshipAgeListVBAResponse> list_plan_relationship_age(vbasoftware_database, plan_id)

List PlanRelationshipAge

Lists all PlanRelationshipAge for the given planID

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

api_instance = Vba::PlanRelationshipAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanRelationshipAge
  result = api_instance.list_plan_relationship_age(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->list_plan_relationship_age: #{e}"
end
```

#### Using the list_plan_relationship_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanRelationshipAgeListVBAResponse>, Integer, Hash)> list_plan_relationship_age_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanRelationshipAge
  data, status_code, headers = api_instance.list_plan_relationship_age_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanRelationshipAgeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->list_plan_relationship_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanRelationshipAgeListVBAResponse**](PlanRelationshipAgeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_relationship_age

> <MultiCodeResponseListVBAResponse> update_batch_plan_relationship_age(vbasoftware_database, plan_relationship_age)

Create or Update Batch PlanRelationshipAge

Create or Update multiple PlanRelationshipAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanRelationshipAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_relationship_age = [Vba::PlanRelationshipAge.new({plan_relationship_age_key: 37, ex_code: 'ex_code_example', from_age: 37, plan_id: 'plan_id_example', relate_code: 'relate_code_example', thru_age: 37})] # Array<PlanRelationshipAge> | 

begin
  # Create or Update Batch PlanRelationshipAge
  result = api_instance.update_batch_plan_relationship_age(vbasoftware_database, plan_relationship_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->update_batch_plan_relationship_age: #{e}"
end
```

#### Using the update_batch_plan_relationship_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age)

```ruby
begin
  # Create or Update Batch PlanRelationshipAge
  data, status_code, headers = api_instance.update_batch_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->update_batch_plan_relationship_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_relationship_age** | [**Array&lt;PlanRelationshipAge&gt;**](PlanRelationshipAge.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_relationship_age

> <PlanRelationshipAgeVBAResponse> update_plan_relationship_age(vbasoftware_database, plan_relationship_age_key, plan_relationship_age)

Update PlanRelationshipAge

Updates a specific PlanRelationshipAge.

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

api_instance = Vba::PlanRelationshipAgeRestrictionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_relationship_age_key = 56 # Integer | PlanRelationshipAge Key
plan_relationship_age = Vba::PlanRelationshipAge.new({plan_relationship_age_key: 37, ex_code: 'ex_code_example', from_age: 37, plan_id: 'plan_id_example', relate_code: 'relate_code_example', thru_age: 37}) # PlanRelationshipAge | 

begin
  # Update PlanRelationshipAge
  result = api_instance.update_plan_relationship_age(vbasoftware_database, plan_relationship_age_key, plan_relationship_age)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->update_plan_relationship_age: #{e}"
end
```

#### Using the update_plan_relationship_age_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanRelationshipAgeVBAResponse>, Integer, Hash)> update_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age_key, plan_relationship_age)

```ruby
begin
  # Update PlanRelationshipAge
  data, status_code, headers = api_instance.update_plan_relationship_age_with_http_info(vbasoftware_database, plan_relationship_age_key, plan_relationship_age)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanRelationshipAgeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanRelationshipAgeRestrictionsApi->update_plan_relationship_age_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_relationship_age_key** | **Integer** | PlanRelationshipAge Key |  |
| **plan_relationship_age** | [**PlanRelationshipAge**](PlanRelationshipAge.md) |  |  |

### Return type

[**PlanRelationshipAgeVBAResponse**](PlanRelationshipAgeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

