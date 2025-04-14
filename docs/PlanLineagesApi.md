# Vba::PlanLineagesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_lineage**](PlanLineagesApi.md#create_plan_lineage) | **POST** /plans/{planID}/lineages | Create PlanLineage |
| [**delete_plan_lineage**](PlanLineagesApi.md#delete_plan_lineage) | **DELETE** /plans/{planID}/lineages/{planLineageID} | Delete PlanLineage |
| [**get_plan_lineage**](PlanLineagesApi.md#get_plan_lineage) | **GET** /plans/{planID}/lineages/{planLineageID} | Get PlanLineage |
| [**list_plan_lineage**](PlanLineagesApi.md#list_plan_lineage) | **GET** /plans/{planID}/lineages | List PlanLineage |
| [**update_batch_plan_lineage**](PlanLineagesApi.md#update_batch_plan_lineage) | **PUT** /plans/{planID}/lineages | Create or Update Batch PlanLineage |
| [**update_plan_lineage**](PlanLineagesApi.md#update_plan_lineage) | **PUT** /plans/{planID}/lineages/{planLineageID} | Update PlanLineage |


## create_plan_lineage

> <PlanLineageVBAResponse> create_plan_lineage(vbasoftware_database, plan_id, plan_lineage)

Create PlanLineage

Creates a new PlanLineage

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

api_instance = Vba::PlanLineagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage = Vba::PlanLineage.new({plan_lineage_id: 'plan_lineage_id_example', description: 'description_example'}) # PlanLineage | 

begin
  # Create PlanLineage
  result = api_instance.create_plan_lineage(vbasoftware_database, plan_id, plan_lineage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->create_plan_lineage: #{e}"
end
```

#### Using the create_plan_lineage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageVBAResponse>, Integer, Hash)> create_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage)

```ruby
begin
  # Create PlanLineage
  data, status_code, headers = api_instance.create_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->create_plan_lineage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage** | [**PlanLineage**](PlanLineage.md) |  |  |

### Return type

[**PlanLineageVBAResponse**](PlanLineageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_lineage

> delete_plan_lineage(vbasoftware_database, plan_id, plan_lineage_id)

Delete PlanLineage

Deletes an PlanLineage

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

api_instance = Vba::PlanLineagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID

begin
  # Delete PlanLineage
  api_instance.delete_plan_lineage(vbasoftware_database, plan_id, plan_lineage_id)
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->delete_plan_lineage: #{e}"
end
```

#### Using the delete_plan_lineage_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage_id)

```ruby
begin
  # Delete PlanLineage
  data, status_code, headers = api_instance.delete_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->delete_plan_lineage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_lineage

> <PlanLineageVBAResponse> get_plan_lineage(vbasoftware_database, plan_id, plan_lineage_id)

Get PlanLineage

Gets PlanLineage

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

api_instance = Vba::PlanLineagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID

begin
  # Get PlanLineage
  result = api_instance.get_plan_lineage(vbasoftware_database, plan_id, plan_lineage_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->get_plan_lineage: #{e}"
end
```

#### Using the get_plan_lineage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageVBAResponse>, Integer, Hash)> get_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage_id)

```ruby
begin
  # Get PlanLineage
  data, status_code, headers = api_instance.get_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->get_plan_lineage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |

### Return type

[**PlanLineageVBAResponse**](PlanLineageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_lineage

> <PlanLineageListVBAResponse> list_plan_lineage(vbasoftware_database, plan_id)

List PlanLineage

Lists all PlanLineage

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

api_instance = Vba::PlanLineagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID

begin
  # List PlanLineage
  result = api_instance.list_plan_lineage(vbasoftware_database, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->list_plan_lineage: #{e}"
end
```

#### Using the list_plan_lineage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageListVBAResponse>, Integer, Hash)> list_plan_lineage_with_http_info(vbasoftware_database, plan_id)

```ruby
begin
  # List PlanLineage
  data, status_code, headers = api_instance.list_plan_lineage_with_http_info(vbasoftware_database, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->list_plan_lineage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**PlanLineageListVBAResponse**](PlanLineageListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_lineage

> <MultiCodeResponseListVBAResponse> update_batch_plan_lineage(vbasoftware_database, plan_id, plan_lineage)

Create or Update Batch PlanLineage

Create or Update multiple PlanLineage at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanLineagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage = [Vba::PlanLineage.new({plan_lineage_id: 'plan_lineage_id_example', description: 'description_example'})] # Array<PlanLineage> | 

begin
  # Create or Update Batch PlanLineage
  result = api_instance.update_batch_plan_lineage(vbasoftware_database, plan_id, plan_lineage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->update_batch_plan_lineage: #{e}"
end
```

#### Using the update_batch_plan_lineage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage)

```ruby
begin
  # Create or Update Batch PlanLineage
  data, status_code, headers = api_instance.update_batch_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->update_batch_plan_lineage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage** | [**Array&lt;PlanLineage&gt;**](PlanLineage.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_lineage

> <PlanLineageVBAResponse> update_plan_lineage(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage)

Update PlanLineage

Updates a specific PlanLineage.

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

api_instance = Vba::PlanLineagesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
plan_lineage_id = 'plan_lineage_id_example' # String | Plan Lineage ID
plan_lineage = Vba::PlanLineage.new({plan_lineage_id: 'plan_lineage_id_example', description: 'description_example'}) # PlanLineage | 

begin
  # Update PlanLineage
  result = api_instance.update_plan_lineage(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->update_plan_lineage: #{e}"
end
```

#### Using the update_plan_lineage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanLineageVBAResponse>, Integer, Hash)> update_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage)

```ruby
begin
  # Update PlanLineage
  data, status_code, headers = api_instance.update_plan_lineage_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanLineageVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanLineagesApi->update_plan_lineage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_lineage_id** | **String** | Plan Lineage ID |  |
| **plan_lineage** | [**PlanLineage**](PlanLineage.md) |  |  |

### Return type

[**PlanLineageVBAResponse**](PlanLineageVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

