# Vba::FeeScheduleProcedureGroupAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_procedure_group_adjust**](FeeScheduleProcedureGroupAdjustmentsApi.md#create_fee_sched_procedure_group_adjust) | **POST** /fee-schedule-procedure-group-adjustments | Create FeeSchedProcedureGroupAdjust |
| [**delete_fee_sched_procedure_group_adjust**](FeeScheduleProcedureGroupAdjustmentsApi.md#delete_fee_sched_procedure_group_adjust) | **DELETE** /fee-schedule-procedure-group-adjustments/{feeSchedProcedureGroupAdjustKey} | Delete FeeSchedProcedureGroupAdjust |
| [**get_fee_sched_procedure_group_adjust**](FeeScheduleProcedureGroupAdjustmentsApi.md#get_fee_sched_procedure_group_adjust) | **GET** /fee-schedule-procedure-group-adjustments/{feeSchedProcedureGroupAdjustKey} | Get FeeSchedProcedureGroupAdjust |
| [**list_fee_sched_procedure_group_adjust**](FeeScheduleProcedureGroupAdjustmentsApi.md#list_fee_sched_procedure_group_adjust) | **GET** /fee-schedule-procedure-group-adjustments | List FeeSchedProcedureGroupAdjust |
| [**update_batch_fee_sched_procedure_group_adjust**](FeeScheduleProcedureGroupAdjustmentsApi.md#update_batch_fee_sched_procedure_group_adjust) | **PUT** /fee-schedule-procedure-group-adjustments-batch | Create or Update Batch FeeSchedProcedureGroupAdjust |
| [**update_fee_sched_procedure_group_adjust**](FeeScheduleProcedureGroupAdjustmentsApi.md#update_fee_sched_procedure_group_adjust) | **PUT** /fee-schedule-procedure-group-adjustments/{feeSchedProcedureGroupAdjustKey} | Update FeeSchedProcedureGroupAdjust |


## create_fee_sched_procedure_group_adjust

> <FeeSchedProcedureGroupAdjustVBAResponse> create_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust)

Create FeeSchedProcedureGroupAdjust

Creates a new FeeSchedProcedureGroupAdjust

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

api_instance = Vba::FeeScheduleProcedureGroupAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_procedure_group_adjust = Vba::FeeSchedProcedureGroupAdjust.new({fee_sched_procedure_group_adjust_key: 37, adjust_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example', procedure_code1: false, procedure_code2: false, procedure_group: 37}) # FeeSchedProcedureGroupAdjust | 

begin
  # Create FeeSchedProcedureGroupAdjust
  result = api_instance.create_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->create_fee_sched_procedure_group_adjust: #{e}"
end
```

#### Using the create_fee_sched_procedure_group_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProcedureGroupAdjustVBAResponse>, Integer, Hash)> create_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust)

```ruby
begin
  # Create FeeSchedProcedureGroupAdjust
  data, status_code, headers = api_instance.create_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProcedureGroupAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->create_fee_sched_procedure_group_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_procedure_group_adjust** | [**FeeSchedProcedureGroupAdjust**](FeeSchedProcedureGroupAdjust.md) |  |  |

### Return type

[**FeeSchedProcedureGroupAdjustVBAResponse**](FeeSchedProcedureGroupAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_procedure_group_adjust

> delete_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key)

Delete FeeSchedProcedureGroupAdjust

Deletes an FeeSchedProcedureGroupAdjust

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

api_instance = Vba::FeeScheduleProcedureGroupAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_procedure_group_adjust_key = 56 # Integer | FeeSchedProcedureGroupAdjust Key

begin
  # Delete FeeSchedProcedureGroupAdjust
  api_instance.delete_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->delete_fee_sched_procedure_group_adjust: #{e}"
end
```

#### Using the delete_fee_sched_procedure_group_adjust_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key)

```ruby
begin
  # Delete FeeSchedProcedureGroupAdjust
  data, status_code, headers = api_instance.delete_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->delete_fee_sched_procedure_group_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_procedure_group_adjust_key** | **Integer** | FeeSchedProcedureGroupAdjust Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_procedure_group_adjust

> <FeeSchedProcedureGroupAdjustVBAResponse> get_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key)

Get FeeSchedProcedureGroupAdjust

Gets FeeSchedProcedureGroupAdjust

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

api_instance = Vba::FeeScheduleProcedureGroupAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_procedure_group_adjust_key = 56 # Integer | FeeSchedProcedureGroupAdjust Key

begin
  # Get FeeSchedProcedureGroupAdjust
  result = api_instance.get_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->get_fee_sched_procedure_group_adjust: #{e}"
end
```

#### Using the get_fee_sched_procedure_group_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProcedureGroupAdjustVBAResponse>, Integer, Hash)> get_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key)

```ruby
begin
  # Get FeeSchedProcedureGroupAdjust
  data, status_code, headers = api_instance.get_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProcedureGroupAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->get_fee_sched_procedure_group_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_procedure_group_adjust_key** | **Integer** | FeeSchedProcedureGroupAdjust Key |  |

### Return type

[**FeeSchedProcedureGroupAdjustVBAResponse**](FeeSchedProcedureGroupAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_procedure_group_adjust

> <FeeSchedProcedureGroupAdjustListVBAResponse> list_fee_sched_procedure_group_adjust(vbasoftware_database, opts)

List FeeSchedProcedureGroupAdjust

Lists all FeeSchedProcedureGroupAdjust

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

api_instance = Vba::FeeScheduleProcedureGroupAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedProcedureGroupAdjust
  result = api_instance.list_fee_sched_procedure_group_adjust(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->list_fee_sched_procedure_group_adjust: #{e}"
end
```

#### Using the list_fee_sched_procedure_group_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProcedureGroupAdjustListVBAResponse>, Integer, Hash)> list_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSchedProcedureGroupAdjust
  data, status_code, headers = api_instance.list_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProcedureGroupAdjustListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->list_fee_sched_procedure_group_adjust_with_http_info: #{e}"
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

[**FeeSchedProcedureGroupAdjustListVBAResponse**](FeeSchedProcedureGroupAdjustListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_procedure_group_adjust

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust)

Create or Update Batch FeeSchedProcedureGroupAdjust

Create or Update multiple FeeSchedProcedureGroupAdjust at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeScheduleProcedureGroupAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_procedure_group_adjust = [Vba::FeeSchedProcedureGroupAdjust.new({fee_sched_procedure_group_adjust_key: 37, adjust_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example', procedure_code1: false, procedure_code2: false, procedure_group: 37})] # Array<FeeSchedProcedureGroupAdjust> | 

begin
  # Create or Update Batch FeeSchedProcedureGroupAdjust
  result = api_instance.update_batch_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->update_batch_fee_sched_procedure_group_adjust: #{e}"
end
```

#### Using the update_batch_fee_sched_procedure_group_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust)

```ruby
begin
  # Create or Update Batch FeeSchedProcedureGroupAdjust
  data, status_code, headers = api_instance.update_batch_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->update_batch_fee_sched_procedure_group_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_procedure_group_adjust** | [**Array&lt;FeeSchedProcedureGroupAdjust&gt;**](FeeSchedProcedureGroupAdjust.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched_procedure_group_adjust

> <FeeSchedProcedureGroupAdjustVBAResponse> update_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust)

Update FeeSchedProcedureGroupAdjust

Updates a specific FeeSchedProcedureGroupAdjust.

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

api_instance = Vba::FeeScheduleProcedureGroupAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_procedure_group_adjust_key = 56 # Integer | FeeSchedProcedureGroupAdjust Key
fee_sched_procedure_group_adjust = Vba::FeeSchedProcedureGroupAdjust.new({fee_sched_procedure_group_adjust_key: 37, adjust_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example', procedure_code1: false, procedure_code2: false, procedure_group: 37}) # FeeSchedProcedureGroupAdjust | 

begin
  # Update FeeSchedProcedureGroupAdjust
  result = api_instance.update_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->update_fee_sched_procedure_group_adjust: #{e}"
end
```

#### Using the update_fee_sched_procedure_group_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProcedureGroupAdjustVBAResponse>, Integer, Hash)> update_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust)

```ruby
begin
  # Update FeeSchedProcedureGroupAdjust
  data, status_code, headers = api_instance.update_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProcedureGroupAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProcedureGroupAdjustmentsApi->update_fee_sched_procedure_group_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_procedure_group_adjust_key** | **Integer** | FeeSchedProcedureGroupAdjust Key |  |
| **fee_sched_procedure_group_adjust** | [**FeeSchedProcedureGroupAdjust**](FeeSchedProcedureGroupAdjust.md) |  |  |

### Return type

[**FeeSchedProcedureGroupAdjustVBAResponse**](FeeSchedProcedureGroupAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

