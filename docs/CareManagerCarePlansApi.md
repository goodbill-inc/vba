# Vba::CareManagerCarePlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_manager_care_plan**](CareManagerCarePlansApi.md#create_care_manager_care_plan) | **POST** /care-managers/{careManagerKey}/care-plans | Create CareManagerCarePlan |
| [**delete_care_manager_care_plan**](CareManagerCarePlansApi.md#delete_care_manager_care_plan) | **DELETE** /care-managers/{careManagerKey}/care-plans/{carePlanKey} | Delete CareManagerCarePlan |
| [**get_care_manager_care_plan**](CareManagerCarePlansApi.md#get_care_manager_care_plan) | **GET** /care-managers/{careManagerKey}/care-plans/{carePlanKey} | Get CareManagerCarePlan |
| [**list_care_manager_care_plan**](CareManagerCarePlansApi.md#list_care_manager_care_plan) | **GET** /care-managers/{careManagerKey}/care-plans | List CareManagerCarePlan |
| [**update_batch_care_manager_care_plan**](CareManagerCarePlansApi.md#update_batch_care_manager_care_plan) | **PUT** /care-managers/{careManagerKey}/care-plans-batch | Create or Update Batch CareManagerCarePlan |


## create_care_manager_care_plan

> <CareManagerCarePlanVBAResponse> create_care_manager_care_plan(vbasoftware_database, care_manager_key, care_manager_care_plan)

Create CareManagerCarePlan

Creates a new CareManagerCarePlan

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

api_instance = Vba::CareManagerCarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_care_plan = Vba::CareManagerCarePlan.new({care_manager_key: 37, care_plan_key: 37}) # CareManagerCarePlan | 

begin
  # Create CareManagerCarePlan
  result = api_instance.create_care_manager_care_plan(vbasoftware_database, care_manager_key, care_manager_care_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->create_care_manager_care_plan: #{e}"
end
```

#### Using the create_care_manager_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCarePlanVBAResponse>, Integer, Hash)> create_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_plan)

```ruby
begin
  # Create CareManagerCarePlan
  data, status_code, headers = api_instance.create_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCarePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->create_care_manager_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_care_plan** | [**CareManagerCarePlan**](CareManagerCarePlan.md) |  |  |

### Return type

[**CareManagerCarePlanVBAResponse**](CareManagerCarePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_manager_care_plan

> delete_care_manager_care_plan(vbasoftware_database, care_manager_key, care_plan_key)

Delete CareManagerCarePlan

Deletes an CareManagerCarePlan

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

api_instance = Vba::CareManagerCarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_plan_key = 56 # Integer | CarePlan Key

begin
  # Delete CareManagerCarePlan
  api_instance.delete_care_manager_care_plan(vbasoftware_database, care_manager_key, care_plan_key)
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->delete_care_manager_care_plan: #{e}"
end
```

#### Using the delete_care_manager_care_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_plan_key)

```ruby
begin
  # Delete CareManagerCarePlan
  data, status_code, headers = api_instance.delete_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_plan_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->delete_care_manager_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_manager_care_plan

> <CareManagerCarePlanVBAResponse> get_care_manager_care_plan(vbasoftware_database, care_manager_key, care_plan_key)

Get CareManagerCarePlan

Gets CareManagerCarePlan

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

api_instance = Vba::CareManagerCarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_plan_key = 56 # Integer | CarePlan Key

begin
  # Get CareManagerCarePlan
  result = api_instance.get_care_manager_care_plan(vbasoftware_database, care_manager_key, care_plan_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->get_care_manager_care_plan: #{e}"
end
```

#### Using the get_care_manager_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCarePlanVBAResponse>, Integer, Hash)> get_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_plan_key)

```ruby
begin
  # Get CareManagerCarePlan
  data, status_code, headers = api_instance.get_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_plan_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCarePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->get_care_manager_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |

### Return type

[**CareManagerCarePlanVBAResponse**](CareManagerCarePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_manager_care_plan

> <CareManagerCarePlanListVBAResponse> list_care_manager_care_plan(vbasoftware_database, care_manager_key, opts)

List CareManagerCarePlan

Lists all CareManagerCarePlan for the given careManagerKey

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

api_instance = Vba::CareManagerCarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareManagerCarePlan
  result = api_instance.list_care_manager_care_plan(vbasoftware_database, care_manager_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->list_care_manager_care_plan: #{e}"
end
```

#### Using the list_care_manager_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerCarePlanListVBAResponse>, Integer, Hash)> list_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, opts)

```ruby
begin
  # List CareManagerCarePlan
  data, status_code, headers = api_instance.list_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerCarePlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->list_care_manager_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareManagerCarePlanListVBAResponse**](CareManagerCarePlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_manager_care_plan

> <MultiCodeResponseListVBAResponse> update_batch_care_manager_care_plan(vbasoftware_database, care_manager_key, care_manager_care_plan)

Create or Update Batch CareManagerCarePlan

Create or Update multiple CareManagerCarePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareManagerCarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager_care_plan = [Vba::CareManagerCarePlan.new({care_manager_key: 37, care_plan_key: 37})] # Array<CareManagerCarePlan> | 

begin
  # Create or Update Batch CareManagerCarePlan
  result = api_instance.update_batch_care_manager_care_plan(vbasoftware_database, care_manager_key, care_manager_care_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->update_batch_care_manager_care_plan: #{e}"
end
```

#### Using the update_batch_care_manager_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_plan)

```ruby
begin
  # Create or Update Batch CareManagerCarePlan
  data, status_code, headers = api_instance.update_batch_care_manager_care_plan_with_http_info(vbasoftware_database, care_manager_key, care_manager_care_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagerCarePlansApi->update_batch_care_manager_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager_care_plan** | [**Array&lt;CareManagerCarePlan&gt;**](CareManagerCarePlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

