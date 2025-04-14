# Vba::CapitationServicePlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_service_plan**](CapitationServicePlansApi.md#create_capitation_service_plan) | **POST** /capitation-services/{capitationServiceKey}/capitation-service-plans/{planID} | Create CapitationServicePlan |
| [**delete_capitation_service_plan**](CapitationServicePlansApi.md#delete_capitation_service_plan) | **DELETE** /capitation-services/{capitationServiceKey}/capitation-service-plans/{planID} | Delete CapitationServicePlan |
| [**get_capitation_service_plan**](CapitationServicePlansApi.md#get_capitation_service_plan) | **GET** /capitation-services/{capitationServiceKey}/capitation-service-plans/{planID} | Get CapitationServicePlan |
| [**list_capitation_service_plan**](CapitationServicePlansApi.md#list_capitation_service_plan) | **GET** /capitation-services/{capitationServiceKey}/capitation-service-plans | List CapitationServicePlan |
| [**update_batch_capitation_service_plan**](CapitationServicePlansApi.md#update_batch_capitation_service_plan) | **PUT** /capitation-services/{capitationServiceKey}/capitation-service-plans-batch | Create or Update Batch CapitationServicePlan |
| [**update_capitation_service_plan**](CapitationServicePlansApi.md#update_capitation_service_plan) | **PUT** /capitation-services/{capitationServiceKey}/capitation-service-plans/{planID} | Update CapitationServicePlan |


## create_capitation_service_plan

> <CapitationServicePlanVBAResponse> create_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)

Create CapitationServicePlan

Creates a new CapitationServicePlan

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

api_instance = Vba::CapitationServicePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
plan_id = 'plan_id_example' # String | Plan ID
capitation_service_plan = Vba::CapitationServicePlan.new({capitation_service_key: 37, plan_id: 'plan_id_example'}) # CapitationServicePlan | 

begin
  # Create CapitationServicePlan
  result = api_instance.create_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->create_capitation_service_plan: #{e}"
end
```

#### Using the create_capitation_service_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServicePlanVBAResponse>, Integer, Hash)> create_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)

```ruby
begin
  # Create CapitationServicePlan
  data, status_code, headers = api_instance.create_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServicePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->create_capitation_service_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **plan_id** | **String** | Plan ID |  |
| **capitation_service_plan** | [**CapitationServicePlan**](CapitationServicePlan.md) |  |  |

### Return type

[**CapitationServicePlanVBAResponse**](CapitationServicePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_service_plan

> delete_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id)

Delete CapitationServicePlan

Deletes an CapitationServicePlan

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

api_instance = Vba::CapitationServicePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Delete CapitationServicePlan
  api_instance.delete_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id)
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->delete_capitation_service_plan: #{e}"
end
```

#### Using the delete_capitation_service_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id)

```ruby
begin
  # Delete CapitationServicePlan
  data, status_code, headers = api_instance.delete_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->delete_capitation_service_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_service_plan

> <CapitationServicePlanVBAResponse> get_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id)

Get CapitationServicePlan

Gets CapitationServicePlan

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

api_instance = Vba::CapitationServicePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
plan_id = 'plan_id_example' # String | Plan ID

begin
  # Get CapitationServicePlan
  result = api_instance.get_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->get_capitation_service_plan: #{e}"
end
```

#### Using the get_capitation_service_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServicePlanVBAResponse>, Integer, Hash)> get_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id)

```ruby
begin
  # Get CapitationServicePlan
  data, status_code, headers = api_instance.get_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServicePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->get_capitation_service_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **plan_id** | **String** | Plan ID |  |

### Return type

[**CapitationServicePlanVBAResponse**](CapitationServicePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_service_plan

> <CapitationServicePlanListVBAResponse> list_capitation_service_plan(vbasoftware_database, capitation_service_key, opts)

List CapitationServicePlan

Lists all CapitationServicePlan for the given capitationServiceKey

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

api_instance = Vba::CapitationServicePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationServicePlan
  result = api_instance.list_capitation_service_plan(vbasoftware_database, capitation_service_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->list_capitation_service_plan: #{e}"
end
```

#### Using the list_capitation_service_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServicePlanListVBAResponse>, Integer, Hash)> list_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, opts)

```ruby
begin
  # List CapitationServicePlan
  data, status_code, headers = api_instance.list_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServicePlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->list_capitation_service_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CapitationServicePlanListVBAResponse**](CapitationServicePlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_service_plan

> <MultiCodeResponseListVBAResponse> update_batch_capitation_service_plan(vbasoftware_database, capitation_service_key, capitation_service_plan)

Create or Update Batch CapitationServicePlan

Create or Update multiple CapitationServicePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationServicePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
capitation_service_plan = [Vba::CapitationServicePlan.new({capitation_service_key: 37, plan_id: 'plan_id_example'})] # Array<CapitationServicePlan> | 

begin
  # Create or Update Batch CapitationServicePlan
  result = api_instance.update_batch_capitation_service_plan(vbasoftware_database, capitation_service_key, capitation_service_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->update_batch_capitation_service_plan: #{e}"
end
```

#### Using the update_batch_capitation_service_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, capitation_service_plan)

```ruby
begin
  # Create or Update Batch CapitationServicePlan
  data, status_code, headers = api_instance.update_batch_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, capitation_service_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->update_batch_capitation_service_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **capitation_service_plan** | [**Array&lt;CapitationServicePlan&gt;**](CapitationServicePlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_service_plan

> <CapitationServicePlanVBAResponse> update_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)

Update CapitationServicePlan

Updates a specific CapitationServicePlan.

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

api_instance = Vba::CapitationServicePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
plan_id = 'plan_id_example' # String | Plan ID
capitation_service_plan = Vba::CapitationServicePlan.new({capitation_service_key: 37, plan_id: 'plan_id_example'}) # CapitationServicePlan | 

begin
  # Update CapitationServicePlan
  result = api_instance.update_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->update_capitation_service_plan: #{e}"
end
```

#### Using the update_capitation_service_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServicePlanVBAResponse>, Integer, Hash)> update_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)

```ruby
begin
  # Update CapitationServicePlan
  data, status_code, headers = api_instance.update_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServicePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicePlansApi->update_capitation_service_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **plan_id** | **String** | Plan ID |  |
| **capitation_service_plan** | [**CapitationServicePlan**](CapitationServicePlan.md) |  |  |

### Return type

[**CapitationServicePlanVBAResponse**](CapitationServicePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

