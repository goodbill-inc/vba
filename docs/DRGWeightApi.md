# Vba::DRGWeightApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drg_weight**](DRGWeightApi.md#create_drg_weight) | **POST** /drg-schedules/{drgSchedule}/drg-codes/{drgCode}/drg-weights | Create DRGWeight |
| [**delete_drg_weight**](DRGWeightApi.md#delete_drg_weight) | **DELETE** /drg-schedules/{drgSchedule}/drg-codes/{drgCode}/drg-weights/{effectiveDate} | Delete DRGWeight |
| [**get_drg_weight**](DRGWeightApi.md#get_drg_weight) | **GET** /drg-schedules/{drgSchedule}/drg-codes/{drgCode}/drg-weights/{effectiveDate} | Get DRGWeight |
| [**list_drg_weight**](DRGWeightApi.md#list_drg_weight) | **GET** /drg-schedules/{drgSchedule}/drg-codes/{drgCode}/drg-weights | List DRGWeights |
| [**update_batch_drg_weight**](DRGWeightApi.md#update_batch_drg_weight) | **PUT** /drg-schedules/{drgSchedule}/drg-codes/{drgCode}/drg-weights-batch | Create or Update Batch DRGWeight |
| [**update_drg_weight**](DRGWeightApi.md#update_drg_weight) | **PUT** /drg-schedules/{drgSchedule}/drg-codes/{drgCode}/drg-weights/{effectiveDate} | Update DRGWeight |


## create_drg_weight

> <DRGWeightVBAResponse> create_drg_weight(vbasoftware_database, drg_schedule, drg_code, drg_weight)

Create DRGWeight

Creates a new DRGWeight

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

api_instance = Vba::DRGWeightApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_code = 'drg_code_example' # String | DRG Code
drg_weight = Vba::DRGWeight.new({dr_g_schedule: 'dr_g_schedule_example', dr_g_code: 'dr_g_code_example', effective_date: Time.now}) # DRGWeight | 

begin
  # Create DRGWeight
  result = api_instance.create_drg_weight(vbasoftware_database, drg_schedule, drg_code, drg_weight)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->create_drg_weight: #{e}"
end
```

#### Using the create_drg_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGWeightVBAResponse>, Integer, Hash)> create_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, drg_weight)

```ruby
begin
  # Create DRGWeight
  data, status_code, headers = api_instance.create_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, drg_weight)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGWeightVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->create_drg_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_code** | **String** | DRG Code |  |
| **drg_weight** | [**DRGWeight**](DRGWeight.md) |  |  |

### Return type

[**DRGWeightVBAResponse**](DRGWeightVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drg_weight

> delete_drg_weight(vbasoftware_database, drg_schedule, drg_code, effective_date)

Delete DRGWeight

Deletes an DRGWeight

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

api_instance = Vba::DRGWeightApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_code = 'drg_code_example' # String | DRG Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete DRGWeight
  api_instance.delete_drg_weight(vbasoftware_database, drg_schedule, drg_code, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->delete_drg_weight: #{e}"
end
```

#### Using the delete_drg_weight_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, effective_date)

```ruby
begin
  # Delete DRGWeight
  data, status_code, headers = api_instance.delete_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->delete_drg_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_code** | **String** | DRG Code |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drg_weight

> <DRGWeightVBAResponse> get_drg_weight(vbasoftware_database, drg_schedule, drg_code, effective_date)

Get DRGWeight

Gets DRGWeight

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

api_instance = Vba::DRGWeightApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_code = 'drg_code_example' # String | DRG Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get DRGWeight
  result = api_instance.get_drg_weight(vbasoftware_database, drg_schedule, drg_code, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->get_drg_weight: #{e}"
end
```

#### Using the get_drg_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGWeightVBAResponse>, Integer, Hash)> get_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, effective_date)

```ruby
begin
  # Get DRGWeight
  data, status_code, headers = api_instance.get_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGWeightVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->get_drg_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_code** | **String** | DRG Code |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**DRGWeightVBAResponse**](DRGWeightVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_drg_weight

> <DRGWeightListVBAResponse> list_drg_weight(vbasoftware_database, drg_schedule, drg_code, opts)

List DRGWeights

List DRGWeights for a specific DRG Schedule and DRG Code

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

api_instance = Vba::DRGWeightApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_code = 'drg_code_example' # String | DRG Code
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DRGWeights
  result = api_instance.list_drg_weight(vbasoftware_database, drg_schedule, drg_code, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->list_drg_weight: #{e}"
end
```

#### Using the list_drg_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGWeightListVBAResponse>, Integer, Hash)> list_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, opts)

```ruby
begin
  # List DRGWeights
  data, status_code, headers = api_instance.list_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGWeightListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->list_drg_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_code** | **String** | DRG Code |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**DRGWeightListVBAResponse**](DRGWeightListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drg_weight

> <MultiCodeResponseListVBAResponse> update_batch_drg_weight(vbasoftware_database, drg_schedule, drg_code, drg_weight)

Create or Update Batch DRGWeight

Create or Update multiple DRGWeight at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DRGWeightApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_code = 'drg_code_example' # String | DRG Code
drg_weight = [Vba::DRGWeight.new({dr_g_schedule: 'dr_g_schedule_example', dr_g_code: 'dr_g_code_example', effective_date: Time.now})] # Array<DRGWeight> | 

begin
  # Create or Update Batch DRGWeight
  result = api_instance.update_batch_drg_weight(vbasoftware_database, drg_schedule, drg_code, drg_weight)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->update_batch_drg_weight: #{e}"
end
```

#### Using the update_batch_drg_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, drg_weight)

```ruby
begin
  # Create or Update Batch DRGWeight
  data, status_code, headers = api_instance.update_batch_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, drg_weight)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->update_batch_drg_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_code** | **String** | DRG Code |  |
| **drg_weight** | [**Array&lt;DRGWeight&gt;**](DRGWeight.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drg_weight

> <DRGWeightVBAResponse> update_drg_weight(vbasoftware_database, drg_schedule, drg_code, effective_date, drg_weight)

Update DRGWeight

Updates a specific DRGWeight.

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

api_instance = Vba::DRGWeightApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_schedule = 'drg_schedule_example' # String | DRG Schedule
drg_code = 'drg_code_example' # String | DRG Code
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
drg_weight = Vba::DRGWeight.new({dr_g_schedule: 'dr_g_schedule_example', dr_g_code: 'dr_g_code_example', effective_date: Time.now}) # DRGWeight | 

begin
  # Update DRGWeight
  result = api_instance.update_drg_weight(vbasoftware_database, drg_schedule, drg_code, effective_date, drg_weight)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->update_drg_weight: #{e}"
end
```

#### Using the update_drg_weight_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGWeightVBAResponse>, Integer, Hash)> update_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, effective_date, drg_weight)

```ruby
begin
  # Update DRGWeight
  data, status_code, headers = api_instance.update_drg_weight_with_http_info(vbasoftware_database, drg_schedule, drg_code, effective_date, drg_weight)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGWeightVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGWeightApi->update_drg_weight_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_schedule** | **String** | DRG Schedule |  |
| **drg_code** | **String** | DRG Code |  |
| **effective_date** | **Time** | Effective Date |  |
| **drg_weight** | [**DRGWeight**](DRGWeight.md) |  |  |

### Return type

[**DRGWeightVBAResponse**](DRGWeightVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

