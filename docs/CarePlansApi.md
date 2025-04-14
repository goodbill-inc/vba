# Vba::CarePlansApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_plan**](CarePlansApi.md#create_care_plan) | **POST** /care-plans | Create CarePlan |
| [**delete_care_plan**](CarePlansApi.md#delete_care_plan) | **DELETE** /care-plans/{carePlanKey} | Delete CarePlan |
| [**get_care_plan**](CarePlansApi.md#get_care_plan) | **GET** /care-plans/{carePlanKey} | Get CarePlan |
| [**list_care_plan**](CarePlansApi.md#list_care_plan) | **GET** /care-plans | List CarePlan |
| [**update_batch_care_plan**](CarePlansApi.md#update_batch_care_plan) | **PUT** /care-plans-batch | Create or Update Batch CarePlan |
| [**update_care_plan**](CarePlansApi.md#update_care_plan) | **PUT** /care-plans/{carePlanKey} | Update CarePlan |


## create_care_plan

> <CarePlanVBAResponse> create_care_plan(vbasoftware_database, care_plan)

Create CarePlan

Creates a new CarePlan

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

api_instance = Vba::CarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan = Vba::CarePlan.new({care_plan_key: 37}) # CarePlan | 

begin
  # Create CarePlan
  result = api_instance.create_care_plan(vbasoftware_database, care_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->create_care_plan: #{e}"
end
```

#### Using the create_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanVBAResponse>, Integer, Hash)> create_care_plan_with_http_info(vbasoftware_database, care_plan)

```ruby
begin
  # Create CarePlan
  data, status_code, headers = api_instance.create_care_plan_with_http_info(vbasoftware_database, care_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->create_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan** | [**CarePlan**](CarePlan.md) |  |  |

### Return type

[**CarePlanVBAResponse**](CarePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_plan

> delete_care_plan(vbasoftware_database, care_plan_key)

Delete CarePlan

Deletes an CarePlan

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

api_instance = Vba::CarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key

begin
  # Delete CarePlan
  api_instance.delete_care_plan(vbasoftware_database, care_plan_key)
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->delete_care_plan: #{e}"
end
```

#### Using the delete_care_plan_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_plan_with_http_info(vbasoftware_database, care_plan_key)

```ruby
begin
  # Delete CarePlan
  data, status_code, headers = api_instance.delete_care_plan_with_http_info(vbasoftware_database, care_plan_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->delete_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_plan

> <CarePlanVBAResponse> get_care_plan(vbasoftware_database, care_plan_key)

Get CarePlan

Gets CarePlan

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

api_instance = Vba::CarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key

begin
  # Get CarePlan
  result = api_instance.get_care_plan(vbasoftware_database, care_plan_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->get_care_plan: #{e}"
end
```

#### Using the get_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanVBAResponse>, Integer, Hash)> get_care_plan_with_http_info(vbasoftware_database, care_plan_key)

```ruby
begin
  # Get CarePlan
  data, status_code, headers = api_instance.get_care_plan_with_http_info(vbasoftware_database, care_plan_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->get_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |

### Return type

[**CarePlanVBAResponse**](CarePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_plan

> <CarePlanListVBAResponse> list_care_plan(vbasoftware_database, opts)

List CarePlan

Lists all CarePlan

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

api_instance = Vba::CarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CarePlan
  result = api_instance.list_care_plan(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->list_care_plan: #{e}"
end
```

#### Using the list_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanListVBAResponse>, Integer, Hash)> list_care_plan_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CarePlan
  data, status_code, headers = api_instance.list_care_plan_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->list_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CarePlanListVBAResponse**](CarePlanListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_plan

> <MultiCodeResponseListVBAResponse> update_batch_care_plan(vbasoftware_database, care_plan)

Create or Update Batch CarePlan

Create or Update multiple CarePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan = [Vba::CarePlan.new({care_plan_key: 37})] # Array<CarePlan> | 

begin
  # Create or Update Batch CarePlan
  result = api_instance.update_batch_care_plan(vbasoftware_database, care_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->update_batch_care_plan: #{e}"
end
```

#### Using the update_batch_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_plan_with_http_info(vbasoftware_database, care_plan)

```ruby
begin
  # Create or Update Batch CarePlan
  data, status_code, headers = api_instance.update_batch_care_plan_with_http_info(vbasoftware_database, care_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->update_batch_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan** | [**Array&lt;CarePlan&gt;**](CarePlan.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_plan

> <CarePlanVBAResponse> update_care_plan(vbasoftware_database, care_plan_key, care_plan)

Update CarePlan

Updates a specific CarePlan.

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

api_instance = Vba::CarePlansApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_plan_key = 56 # Integer | CarePlan Key
care_plan = Vba::CarePlan.new({care_plan_key: 37}) # CarePlan | 

begin
  # Update CarePlan
  result = api_instance.update_care_plan(vbasoftware_database, care_plan_key, care_plan)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->update_care_plan: #{e}"
end
```

#### Using the update_care_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CarePlanVBAResponse>, Integer, Hash)> update_care_plan_with_http_info(vbasoftware_database, care_plan_key, care_plan)

```ruby
begin
  # Update CarePlan
  data, status_code, headers = api_instance.update_care_plan_with_http_info(vbasoftware_database, care_plan_key, care_plan)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CarePlanVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CarePlansApi->update_care_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_plan_key** | **Integer** | CarePlan Key |  |
| **care_plan** | [**CarePlan**](CarePlan.md) |  |  |

### Return type

[**CarePlanVBAResponse**](CarePlanVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

