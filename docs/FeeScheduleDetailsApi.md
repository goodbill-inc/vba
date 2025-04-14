# Vba::FeeScheduleDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_detail**](FeeScheduleDetailsApi.md#create_fee_sched_detail) | **POST** /fee-schedule-details | Create FeeSchedDetail |
| [**delete_fee_sched_detail**](FeeScheduleDetailsApi.md#delete_fee_sched_detail) | **DELETE** /fee-schedule-details/{feeSchedDetailKey} | Delete FeeSchedDetail |
| [**get_fee_sched_detail**](FeeScheduleDetailsApi.md#get_fee_sched_detail) | **GET** /fee-schedule-details/{feeSchedDetailKey} | Get FeeSchedDetail |
| [**list_fee_sched_detail**](FeeScheduleDetailsApi.md#list_fee_sched_detail) | **GET** /fee-schedule-details | List FeeSchedDetail |
| [**update_batch_fee_sched_detail**](FeeScheduleDetailsApi.md#update_batch_fee_sched_detail) | **PUT** /fee-schedule-details-batch | Create or Update Batch FeeSchedDetail |
| [**update_fee_sched_detail**](FeeScheduleDetailsApi.md#update_fee_sched_detail) | **PUT** /fee-schedule-details/{feeSchedDetailKey} | Update FeeSchedDetail |


## create_fee_sched_detail

> <FeeSchedDetailVBAResponse> create_fee_sched_detail(vbasoftware_database, fee_sched_detail)

Create FeeSchedDetail

Creates a new FeeSchedDetail

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

api_instance = Vba::FeeScheduleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_detail = Vba::FeeSchedDetail.new({fee_sched_detail_key: 37, allowed_over_billed: false, always_use_rate: false, diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, fee_sched: 'fee_sched_example', procedure_code: 'procedure_code_example'}) # FeeSchedDetail | 

begin
  # Create FeeSchedDetail
  result = api_instance.create_fee_sched_detail(vbasoftware_database, fee_sched_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->create_fee_sched_detail: #{e}"
end
```

#### Using the create_fee_sched_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedDetailVBAResponse>, Integer, Hash)> create_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail)

```ruby
begin
  # Create FeeSchedDetail
  data, status_code, headers = api_instance.create_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->create_fee_sched_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_detail** | [**FeeSchedDetail**](FeeSchedDetail.md) |  |  |

### Return type

[**FeeSchedDetailVBAResponse**](FeeSchedDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_detail

> delete_fee_sched_detail(vbasoftware_database, fee_sched_detail_key)

Delete FeeSchedDetail

Deletes an FeeSchedDetail

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

api_instance = Vba::FeeScheduleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_detail_key = 56 # Integer | FeeSchedDetail Key

begin
  # Delete FeeSchedDetail
  api_instance.delete_fee_sched_detail(vbasoftware_database, fee_sched_detail_key)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->delete_fee_sched_detail: #{e}"
end
```

#### Using the delete_fee_sched_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail_key)

```ruby
begin
  # Delete FeeSchedDetail
  data, status_code, headers = api_instance.delete_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->delete_fee_sched_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_detail_key** | **Integer** | FeeSchedDetail Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_detail

> <FeeSchedDetailVBAResponse> get_fee_sched_detail(vbasoftware_database, fee_sched_detail_key)

Get FeeSchedDetail

Gets FeeSchedDetail

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

api_instance = Vba::FeeScheduleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_detail_key = 56 # Integer | FeeSchedDetail Key

begin
  # Get FeeSchedDetail
  result = api_instance.get_fee_sched_detail(vbasoftware_database, fee_sched_detail_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->get_fee_sched_detail: #{e}"
end
```

#### Using the get_fee_sched_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedDetailVBAResponse>, Integer, Hash)> get_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail_key)

```ruby
begin
  # Get FeeSchedDetail
  data, status_code, headers = api_instance.get_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->get_fee_sched_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_detail_key** | **Integer** | FeeSchedDetail Key |  |

### Return type

[**FeeSchedDetailVBAResponse**](FeeSchedDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_detail

> <FeeSchedDetailListVBAResponse> list_fee_sched_detail(vbasoftware_database, opts)

List FeeSchedDetail

Lists all FeeSchedDetail

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

api_instance = Vba::FeeScheduleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedDetail
  result = api_instance.list_fee_sched_detail(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->list_fee_sched_detail: #{e}"
end
```

#### Using the list_fee_sched_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedDetailListVBAResponse>, Integer, Hash)> list_fee_sched_detail_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSchedDetail
  data, status_code, headers = api_instance.list_fee_sched_detail_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->list_fee_sched_detail_with_http_info: #{e}"
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

[**FeeSchedDetailListVBAResponse**](FeeSchedDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_detail

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_detail(vbasoftware_database, fee_sched_detail)

Create or Update Batch FeeSchedDetail

Create or Update multiple FeeSchedDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeScheduleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_detail = [Vba::FeeSchedDetail.new({fee_sched_detail_key: 37, allowed_over_billed: false, always_use_rate: false, diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, fee_sched: 'fee_sched_example', procedure_code: 'procedure_code_example'})] # Array<FeeSchedDetail> | 

begin
  # Create or Update Batch FeeSchedDetail
  result = api_instance.update_batch_fee_sched_detail(vbasoftware_database, fee_sched_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->update_batch_fee_sched_detail: #{e}"
end
```

#### Using the update_batch_fee_sched_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail)

```ruby
begin
  # Create or Update Batch FeeSchedDetail
  data, status_code, headers = api_instance.update_batch_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->update_batch_fee_sched_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_detail** | [**Array&lt;FeeSchedDetail&gt;**](FeeSchedDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched_detail

> <FeeSchedDetailVBAResponse> update_fee_sched_detail(vbasoftware_database, fee_sched_detail_key, fee_sched_detail)

Update FeeSchedDetail

Updates a specific FeeSchedDetail.

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

api_instance = Vba::FeeScheduleDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_detail_key = 56 # Integer | FeeSchedDetail Key
fee_sched_detail = Vba::FeeSchedDetail.new({fee_sched_detail_key: 37, allowed_over_billed: false, always_use_rate: false, diagnostic_code_type: 'diagnostic_code_type_example', effective_date: Time.now, fee_sched: 'fee_sched_example', procedure_code: 'procedure_code_example'}) # FeeSchedDetail | 

begin
  # Update FeeSchedDetail
  result = api_instance.update_fee_sched_detail(vbasoftware_database, fee_sched_detail_key, fee_sched_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->update_fee_sched_detail: #{e}"
end
```

#### Using the update_fee_sched_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedDetailVBAResponse>, Integer, Hash)> update_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail_key, fee_sched_detail)

```ruby
begin
  # Update FeeSchedDetail
  data, status_code, headers = api_instance.update_fee_sched_detail_with_http_info(vbasoftware_database, fee_sched_detail_key, fee_sched_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleDetailsApi->update_fee_sched_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_detail_key** | **Integer** | FeeSchedDetail Key |  |
| **fee_sched_detail** | [**FeeSchedDetail**](FeeSchedDetail.md) |  |  |

### Return type

[**FeeSchedDetailVBAResponse**](FeeSchedDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

