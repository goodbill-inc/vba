# Vba::PlanDisabilityLimitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disability_plan_limit**](PlanDisabilityLimitsApi.md#create_disability_plan_limit) | **POST** /plans/{planID}/disability-limits | Create DisabilityPlanLimit |
| [**delete_disability_plan_limit**](PlanDisabilityLimitsApi.md#delete_disability_plan_limit) | **DELETE** /plans/{planID}/disability-limits/{disabilityPlanLimitKey} | Delete DisabilityPlanLimit |
| [**get_disability_plan_limit**](PlanDisabilityLimitsApi.md#get_disability_plan_limit) | **GET** /plans/{planID}/disability-limits/{disabilityPlanLimitKey} | Get DisabilityPlanLimit |
| [**list_disability_plan_limit**](PlanDisabilityLimitsApi.md#list_disability_plan_limit) | **GET** /plans/{planID}/disability-limits | List DisabilityPlanLimit |
| [**update_batch_disability_plan_limit**](PlanDisabilityLimitsApi.md#update_batch_disability_plan_limit) | **PUT** /plans/{planID}/disability-limits-batch | Create or Update Batch DisabilityPlanLimit |
| [**update_disability_plan_limit**](PlanDisabilityLimitsApi.md#update_disability_plan_limit) | **PUT** /plans/{planID}/disability-limits/{disabilityPlanLimitKey} | Update DisabilityPlanLimit |


## create_disability_plan_limit

> <DisabilityPlanLimitVBAResponse> create_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit)

Create DisabilityPlanLimit

Creates a new DisabilityPlanLimit

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

api_instance = Vba::PlanDisabilityLimitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
disability_plan_limit = Vba::DisabilityPlanLimit.new({disability_plan_limit_key: 37}) # DisabilityPlanLimit | 

begin
  # Create DisabilityPlanLimit
  result = api_instance.create_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->create_disability_plan_limit: #{e}"
end
```

#### Using the create_disability_plan_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityPlanLimitVBAResponse>, Integer, Hash)> create_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit)

```ruby
begin
  # Create DisabilityPlanLimit
  data, status_code, headers = api_instance.create_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityPlanLimitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->create_disability_plan_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **disability_plan_limit** | [**DisabilityPlanLimit**](DisabilityPlanLimit.md) |  |  |

### Return type

[**DisabilityPlanLimitVBAResponse**](DisabilityPlanLimitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disability_plan_limit

> delete_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit_key)

Delete DisabilityPlanLimit

Deletes an DisabilityPlanLimit

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

api_instance = Vba::PlanDisabilityLimitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
disability_plan_limit_key = 56 # Integer | DisabilityPlanLimit Key

begin
  # Delete DisabilityPlanLimit
  api_instance.delete_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->delete_disability_plan_limit: #{e}"
end
```

#### Using the delete_disability_plan_limit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit_key)

```ruby
begin
  # Delete DisabilityPlanLimit
  data, status_code, headers = api_instance.delete_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->delete_disability_plan_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **disability_plan_limit_key** | **Integer** | DisabilityPlanLimit Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disability_plan_limit

> <DisabilityPlanLimitVBAResponse> get_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit_key)

Get DisabilityPlanLimit

Gets DisabilityPlanLimit

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

api_instance = Vba::PlanDisabilityLimitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
disability_plan_limit_key = 56 # Integer | DisabilityPlanLimit Key

begin
  # Get DisabilityPlanLimit
  result = api_instance.get_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->get_disability_plan_limit: #{e}"
end
```

#### Using the get_disability_plan_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityPlanLimitVBAResponse>, Integer, Hash)> get_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit_key)

```ruby
begin
  # Get DisabilityPlanLimit
  data, status_code, headers = api_instance.get_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityPlanLimitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->get_disability_plan_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **disability_plan_limit_key** | **Integer** | DisabilityPlanLimit Key |  |

### Return type

[**DisabilityPlanLimitVBAResponse**](DisabilityPlanLimitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disability_plan_limit

> <DisabilityPlanLimitListVBAResponse> list_disability_plan_limit(vbasoftware_database, plan_id)

List DisabilityPlanLimit

Lists all DisabilityPlanLimit for the given planID

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

api_instance = Vba::PlanDisabilityLimitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List DisabilityPlanLimit
  result = api_instance.list_disability_plan_limit(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->list_disability_plan_limit: #{e}"
end
```

#### Using the list_disability_plan_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityPlanLimitListVBAResponse>, Integer, Hash)> list_disability_plan_limit_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List DisabilityPlanLimit
  data, status_code, headers = api_instance.list_disability_plan_limit_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityPlanLimitListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->list_disability_plan_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**DisabilityPlanLimitListVBAResponse**](DisabilityPlanLimitListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disability_plan_limit

> <MultiCodeResponseListVBAResponse> update_batch_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit)

Create or Update Batch DisabilityPlanLimit

Create or Update multiple DisabilityPlanLimit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanDisabilityLimitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
disability_plan_limit = [Vba::DisabilityPlanLimit.new({disability_plan_limit_key: 37})] # Array<DisabilityPlanLimit> | 

begin
  # Create or Update Batch DisabilityPlanLimit
  result = api_instance.update_batch_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->update_batch_disability_plan_limit: #{e}"
end
```

#### Using the update_batch_disability_plan_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit)

```ruby
begin
  # Create or Update Batch DisabilityPlanLimit
  data, status_code, headers = api_instance.update_batch_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->update_batch_disability_plan_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **disability_plan_limit** | [**Array&lt;DisabilityPlanLimit&gt;**](DisabilityPlanLimit.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disability_plan_limit

> <DisabilityPlanLimitVBAResponse> update_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit_key, disability_plan_limit)

Update DisabilityPlanLimit

Updates a specific DisabilityPlanLimit.

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

api_instance = Vba::PlanDisabilityLimitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
disability_plan_limit_key = 56 # Integer | DisabilityPlanLimit Key
disability_plan_limit = Vba::DisabilityPlanLimit.new({disability_plan_limit_key: 37}) # DisabilityPlanLimit | 

begin
  # Update DisabilityPlanLimit
  result = api_instance.update_disability_plan_limit(vbasoftware_database, plan_id, disability_plan_limit_key, disability_plan_limit)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->update_disability_plan_limit: #{e}"
end
```

#### Using the update_disability_plan_limit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityPlanLimitVBAResponse>, Integer, Hash)> update_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit_key, disability_plan_limit)

```ruby
begin
  # Update DisabilityPlanLimit
  data, status_code, headers = api_instance.update_disability_plan_limit_with_http_info(vbasoftware_database, plan_id, disability_plan_limit_key, disability_plan_limit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityPlanLimitVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanDisabilityLimitsApi->update_disability_plan_limit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **disability_plan_limit_key** | **Integer** | DisabilityPlanLimit Key |  |
| **disability_plan_limit** | [**DisabilityPlanLimit**](DisabilityPlanLimit.md) |  |  |

### Return type

[**DisabilityPlanLimitVBAResponse**](DisabilityPlanLimitVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

