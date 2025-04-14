# Vba::PlanAuthPenaltiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_auth_penalty**](PlanAuthPenaltiesApi.md#create_plan_auth_penalty) | **POST** /plans/{planID}/auth-penalties | Create PlanAuthPenalty |
| [**delete_plan_auth_penalty**](PlanAuthPenaltiesApi.md#delete_plan_auth_penalty) | **DELETE** /plans/{planID}/auth-penalties/{planAuthPenaltyKey} | Delete PlanAuthPenalty |
| [**get_plan_auth_penalty**](PlanAuthPenaltiesApi.md#get_plan_auth_penalty) | **GET** /plans/{planID}/auth-penalties/{planAuthPenaltyKey} | Get PlanAuthPenalty |
| [**list_plan_auth_penalty**](PlanAuthPenaltiesApi.md#list_plan_auth_penalty) | **GET** /plans/{planID}/auth-penalties | List PlanAuthPenalty |
| [**update_batch_plan_auth_penalty**](PlanAuthPenaltiesApi.md#update_batch_plan_auth_penalty) | **PUT** /plans/{planID}/auth-penalties-batch | Create or Update Batch PlanAuthPenalty |
| [**update_plan_auth_penalty**](PlanAuthPenaltiesApi.md#update_plan_auth_penalty) | **PUT** /plans/{planID}/auth-penalties/{planAuthPenaltyKey} | Update PlanAuthPenalty |


## create_plan_auth_penalty

> <PlanAuthPenaltyVBAResponse> create_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty)

Create PlanAuthPenalty

Creates a new PlanAuthPenalty

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

api_instance = Vba::PlanAuthPenaltiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty = Vba::PlanAuthPenalty.new({plan_auth_penalty_key: 37, penalty_pct: false}) # PlanAuthPenalty | 

begin
  # Create PlanAuthPenalty
  result = api_instance.create_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->create_plan_auth_penalty: #{e}"
end
```

#### Using the create_plan_auth_penalty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyVBAResponse>, Integer, Hash)> create_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty)

```ruby
begin
  # Create PlanAuthPenalty
  data, status_code, headers = api_instance.create_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->create_plan_auth_penalty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty** | [**PlanAuthPenalty**](PlanAuthPenalty.md) |  |  |

### Return type

[**PlanAuthPenaltyVBAResponse**](PlanAuthPenaltyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_auth_penalty

> delete_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty_key)

Delete PlanAuthPenalty

Deletes an PlanAuthPenalty

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

api_instance = Vba::PlanAuthPenaltiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key

begin
  # Delete PlanAuthPenalty
  api_instance.delete_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->delete_plan_auth_penalty: #{e}"
end
```

#### Using the delete_plan_auth_penalty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key)

```ruby
begin
  # Delete PlanAuthPenalty
  data, status_code, headers = api_instance.delete_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->delete_plan_auth_penalty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_auth_penalty

> <PlanAuthPenaltyVBAResponse> get_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty_key)

Get PlanAuthPenalty

Gets PlanAuthPenalty

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

api_instance = Vba::PlanAuthPenaltiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key

begin
  # Get PlanAuthPenalty
  result = api_instance.get_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->get_plan_auth_penalty: #{e}"
end
```

#### Using the get_plan_auth_penalty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyVBAResponse>, Integer, Hash)> get_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key)

```ruby
begin
  # Get PlanAuthPenalty
  data, status_code, headers = api_instance.get_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->get_plan_auth_penalty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |

### Return type

[**PlanAuthPenaltyVBAResponse**](PlanAuthPenaltyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_auth_penalty

> <PlanAuthPenaltyListVBAResponse> list_plan_auth_penalty(vbasoftware_database, plan_id)

List PlanAuthPenalty

Lists all PlanAuthPenalty planID

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

api_instance = Vba::PlanAuthPenaltiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanAuthPenalty
  result = api_instance.list_plan_auth_penalty(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->list_plan_auth_penalty: #{e}"
end
```

#### Using the list_plan_auth_penalty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyListVBAResponse>, Integer, Hash)> list_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanAuthPenalty
  data, status_code, headers = api_instance.list_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->list_plan_auth_penalty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanAuthPenaltyListVBAResponse**](PlanAuthPenaltyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_auth_penalty

> <MultiCodeResponseListVBAResponse> update_batch_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty)

Create or Update Batch PlanAuthPenalty

Create or Update multiple PlanAuthPenalty at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanAuthPenaltiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty = [Vba::PlanAuthPenalty.new({plan_auth_penalty_key: 37, penalty_pct: false})] # Array<PlanAuthPenalty> | 

begin
  # Create or Update Batch PlanAuthPenalty
  result = api_instance.update_batch_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->update_batch_plan_auth_penalty: #{e}"
end
```

#### Using the update_batch_plan_auth_penalty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty)

```ruby
begin
  # Create or Update Batch PlanAuthPenalty
  data, status_code, headers = api_instance.update_batch_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->update_batch_plan_auth_penalty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty** | [**Array&lt;PlanAuthPenalty&gt;**](PlanAuthPenalty.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_auth_penalty

> <PlanAuthPenaltyVBAResponse> update_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty)

Update PlanAuthPenalty

Updates a specific PlanAuthPenalty.

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

api_instance = Vba::PlanAuthPenaltiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_auth_penalty_key = 56 # Integer | PlanAuthPenalty Key
plan_auth_penalty = Vba::PlanAuthPenalty.new({plan_auth_penalty_key: 37, penalty_pct: false}) # PlanAuthPenalty | 

begin
  # Update PlanAuthPenalty
  result = api_instance.update_plan_auth_penalty(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->update_plan_auth_penalty: #{e}"
end
```

#### Using the update_plan_auth_penalty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanAuthPenaltyVBAResponse>, Integer, Hash)> update_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty)

```ruby
begin
  # Update PlanAuthPenalty
  data, status_code, headers = api_instance.update_plan_auth_penalty_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanAuthPenaltyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanAuthPenaltiesApi->update_plan_auth_penalty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_auth_penalty_key** | **Integer** | PlanAuthPenalty Key |  |
| **plan_auth_penalty** | [**PlanAuthPenalty**](PlanAuthPenalty.md) |  |  |

### Return type

[**PlanAuthPenaltyVBAResponse**](PlanAuthPenaltyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

