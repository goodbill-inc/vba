# Vba::PlanCoordinationApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_coordination**](PlanCoordinationApi.md#create_plan_coordination) | **POST** /plan-coordinations | Create PlanCoordination |
| [**delete_plan_coordination**](PlanCoordinationApi.md#delete_plan_coordination) | **DELETE** /plan-coordinations/{PlanCoordination_Key} | Delete PlanCoordination |
| [**get_plan_coordination**](PlanCoordinationApi.md#get_plan_coordination) | **GET** /plan-coordinations/{PlanCoordination_Key} | Get PlanCoordination |
| [**list_plan_coordination**](PlanCoordinationApi.md#list_plan_coordination) | **GET** /plan-coordinations | List PlanCoordination |
| [**update_batch_plan_coordination**](PlanCoordinationApi.md#update_batch_plan_coordination) | **PUT** /plan-coordinations-batch | Create or Update Batch PlanCoordination |
| [**update_plan_coordination**](PlanCoordinationApi.md#update_plan_coordination) | **PUT** /plan-coordinations/{PlanCoordination_Key} | Update PlanCoordination |


## create_plan_coordination

> <PlanCoordinationVBAResponse> create_plan_coordination(vbasoftware_database, plan_coordination)

Create PlanCoordination

Creates a new PlanCoordination

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

api_instance = Vba::PlanCoordinationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_coordination = Vba::PlanCoordination.new({plan_coordination_key: 37, include_cob: false}) # PlanCoordination | 

begin
  # Create PlanCoordination
  result = api_instance.create_plan_coordination(vbasoftware_database, plan_coordination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->create_plan_coordination: #{e}"
end
```

#### Using the create_plan_coordination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanCoordinationVBAResponse>, Integer, Hash)> create_plan_coordination_with_http_info(vbasoftware_database, plan_coordination)

```ruby
begin
  # Create PlanCoordination
  data, status_code, headers = api_instance.create_plan_coordination_with_http_info(vbasoftware_database, plan_coordination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanCoordinationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->create_plan_coordination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_coordination** | [**PlanCoordination**](PlanCoordination.md) |  |  |

### Return type

[**PlanCoordinationVBAResponse**](PlanCoordinationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_coordination

> delete_plan_coordination(vbasoftware_database, plan_coordination_key)

Delete PlanCoordination

Deletes an PlanCoordination

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

api_instance = Vba::PlanCoordinationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_coordination_key = 56 # Integer | PlanCoordination Key

begin
  # Delete PlanCoordination
  api_instance.delete_plan_coordination(vbasoftware_database, plan_coordination_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->delete_plan_coordination: #{e}"
end
```

#### Using the delete_plan_coordination_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_coordination_with_http_info(vbasoftware_database, plan_coordination_key)

```ruby
begin
  # Delete PlanCoordination
  data, status_code, headers = api_instance.delete_plan_coordination_with_http_info(vbasoftware_database, plan_coordination_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->delete_plan_coordination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_coordination_key** | **Integer** | PlanCoordination Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_coordination

> <PlanCoordinationVBAResponse> get_plan_coordination(vbasoftware_database, plan_coordination_key)

Get PlanCoordination

Gets PlanCoordination

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

api_instance = Vba::PlanCoordinationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_coordination_key = 56 # Integer | PlanCoordination Key

begin
  # Get PlanCoordination
  result = api_instance.get_plan_coordination(vbasoftware_database, plan_coordination_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->get_plan_coordination: #{e}"
end
```

#### Using the get_plan_coordination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanCoordinationVBAResponse>, Integer, Hash)> get_plan_coordination_with_http_info(vbasoftware_database, plan_coordination_key)

```ruby
begin
  # Get PlanCoordination
  data, status_code, headers = api_instance.get_plan_coordination_with_http_info(vbasoftware_database, plan_coordination_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanCoordinationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->get_plan_coordination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_coordination_key** | **Integer** | PlanCoordination Key |  |

### Return type

[**PlanCoordinationVBAResponse**](PlanCoordinationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_coordination

> <PlanCoordinationListVBAResponse> list_plan_coordination(vbasoftware_database, opts)

List PlanCoordination

Lists all PlanCoordination

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

api_instance = Vba::PlanCoordinationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List PlanCoordination
  result = api_instance.list_plan_coordination(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->list_plan_coordination: #{e}"
end
```

#### Using the list_plan_coordination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanCoordinationListVBAResponse>, Integer, Hash)> list_plan_coordination_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PlanCoordination
  data, status_code, headers = api_instance.list_plan_coordination_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanCoordinationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->list_plan_coordination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**PlanCoordinationListVBAResponse**](PlanCoordinationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_coordination

> <MultiCodeResponseListVBAResponse> update_batch_plan_coordination(vbasoftware_database, plan_coordination)

Create or Update Batch PlanCoordination

Create or Update multiple PlanCoordination at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanCoordinationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_coordination = [Vba::PlanCoordination.new({plan_coordination_key: 37, include_cob: false})] # Array<PlanCoordination> | 

begin
  # Create or Update Batch PlanCoordination
  result = api_instance.update_batch_plan_coordination(vbasoftware_database, plan_coordination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->update_batch_plan_coordination: #{e}"
end
```

#### Using the update_batch_plan_coordination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_coordination_with_http_info(vbasoftware_database, plan_coordination)

```ruby
begin
  # Create or Update Batch PlanCoordination
  data, status_code, headers = api_instance.update_batch_plan_coordination_with_http_info(vbasoftware_database, plan_coordination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->update_batch_plan_coordination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_coordination** | [**Array&lt;PlanCoordination&gt;**](PlanCoordination.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_coordination

> <PlanCoordinationVBAResponse> update_plan_coordination(vbasoftware_database, plan_coordination_key, plan_coordination)

Update PlanCoordination

Updates a specific PlanCoordination.

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

api_instance = Vba::PlanCoordinationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_coordination_key = 56 # Integer | PlanCoordination Key
plan_coordination = Vba::PlanCoordination.new({plan_coordination_key: 37, include_cob: false}) # PlanCoordination | 

begin
  # Update PlanCoordination
  result = api_instance.update_plan_coordination(vbasoftware_database, plan_coordination_key, plan_coordination)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->update_plan_coordination: #{e}"
end
```

#### Using the update_plan_coordination_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanCoordinationVBAResponse>, Integer, Hash)> update_plan_coordination_with_http_info(vbasoftware_database, plan_coordination_key, plan_coordination)

```ruby
begin
  # Update PlanCoordination
  data, status_code, headers = api_instance.update_plan_coordination_with_http_info(vbasoftware_database, plan_coordination_key, plan_coordination)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanCoordinationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanCoordinationApi->update_plan_coordination_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_coordination_key** | **Integer** | PlanCoordination Key |  |
| **plan_coordination** | [**PlanCoordination**](PlanCoordination.md) |  |  |

### Return type

[**PlanCoordinationVBAResponse**](PlanCoordinationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

