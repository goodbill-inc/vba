# Vba::FeeScheduleEffectiveDatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_eff_date**](FeeScheduleEffectiveDatesApi.md#create_fee_sched_eff_date) | **POST** /fee-schedules/{feeSched}/effective-dates | Create FeeSchedEffDate |
| [**delete_fee_sched_eff_date**](FeeScheduleEffectiveDatesApi.md#delete_fee_sched_eff_date) | **DELETE** /fee-schedules/{feeSched}/effective-dates/{effectiveDate} | Delete FeeSchedEffDate |
| [**get_fee_sched_eff_date**](FeeScheduleEffectiveDatesApi.md#get_fee_sched_eff_date) | **GET** /fee-schedules/{feeSched}/effective-dates/{effectiveDate} | Get FeeSchedEffDate |
| [**list_fee_sched_eff_date**](FeeScheduleEffectiveDatesApi.md#list_fee_sched_eff_date) | **GET** /fee-schedules/{feeSched}/effective-dates | List FeeSchedEffDate |
| [**update_batch_fee_sched_eff_date**](FeeScheduleEffectiveDatesApi.md#update_batch_fee_sched_eff_date) | **PUT** /fee-schedules/{feeSched}/effective-dates-batch | Create Batch FeeSchedEffDate |


## create_fee_sched_eff_date

> <FeeSchedEffDateVBAResponse> create_fee_sched_eff_date(vbasoftware_database, fee_sched, fee_sched_eff_date)

Create FeeSchedEffDate

Creates a new FeeSchedEffDate

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

api_instance = Vba::FeeScheduleEffectiveDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched
fee_sched_eff_date = Vba::FeeSchedEffDate.new({fee_sched: 'fee_sched_example', effective_date: Time.now}) # FeeSchedEffDate | 

begin
  # Create FeeSchedEffDate
  result = api_instance.create_fee_sched_eff_date(vbasoftware_database, fee_sched, fee_sched_eff_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->create_fee_sched_eff_date: #{e}"
end
```

#### Using the create_fee_sched_eff_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedEffDateVBAResponse>, Integer, Hash)> create_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date)

```ruby
begin
  # Create FeeSchedEffDate
  data, status_code, headers = api_instance.create_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedEffDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->create_fee_sched_eff_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |
| **fee_sched_eff_date** | [**FeeSchedEffDate**](FeeSchedEffDate.md) |  |  |

### Return type

[**FeeSchedEffDateVBAResponse**](FeeSchedEffDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_eff_date

> delete_fee_sched_eff_date(vbasoftware_database, fee_sched, effective_date)

Delete FeeSchedEffDate

Deletes an FeeSchedEffDate

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

api_instance = Vba::FeeScheduleEffectiveDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete FeeSchedEffDate
  api_instance.delete_fee_sched_eff_date(vbasoftware_database, fee_sched, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->delete_fee_sched_eff_date: #{e}"
end
```

#### Using the delete_fee_sched_eff_date_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date)

```ruby
begin
  # Delete FeeSchedEffDate
  data, status_code, headers = api_instance.delete_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->delete_fee_sched_eff_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_eff_date

> <FeeSchedEffDateVBAResponse> get_fee_sched_eff_date(vbasoftware_database, fee_sched, effective_date)

Get FeeSchedEffDate

Gets FeeSchedEffDate

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

api_instance = Vba::FeeScheduleEffectiveDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get FeeSchedEffDate
  result = api_instance.get_fee_sched_eff_date(vbasoftware_database, fee_sched, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->get_fee_sched_eff_date: #{e}"
end
```

#### Using the get_fee_sched_eff_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedEffDateVBAResponse>, Integer, Hash)> get_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date)

```ruby
begin
  # Get FeeSchedEffDate
  data, status_code, headers = api_instance.get_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedEffDateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->get_fee_sched_eff_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**FeeSchedEffDateVBAResponse**](FeeSchedEffDateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_eff_date

> <FeeSchedEffDateListVBAResponse> list_fee_sched_eff_date(vbasoftware_database, fee_sched, opts)

List FeeSchedEffDate

Lists all FeeSchedEffDate for the given feeSched

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

api_instance = Vba::FeeScheduleEffectiveDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedEffDate
  result = api_instance.list_fee_sched_eff_date(vbasoftware_database, fee_sched, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->list_fee_sched_eff_date: #{e}"
end
```

#### Using the list_fee_sched_eff_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedEffDateListVBAResponse>, Integer, Hash)> list_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, opts)

```ruby
begin
  # List FeeSchedEffDate
  data, status_code, headers = api_instance.list_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedEffDateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->list_fee_sched_eff_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**FeeSchedEffDateListVBAResponse**](FeeSchedEffDateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_eff_date

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_eff_date(vbasoftware_database, fee_sched, fee_sched_eff_date)

Create Batch FeeSchedEffDate

Create multiple FeeSchedEffDate at once.  If the entity does not exist, it will be created. If the entity exists, an error message will be returned for that id.

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

api_instance = Vba::FeeScheduleEffectiveDatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched
fee_sched_eff_date = [Vba::FeeSchedEffDate.new({fee_sched: 'fee_sched_example', effective_date: Time.now})] # Array<FeeSchedEffDate> | 

begin
  # Create Batch FeeSchedEffDate
  result = api_instance.update_batch_fee_sched_eff_date(vbasoftware_database, fee_sched, fee_sched_eff_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->update_batch_fee_sched_eff_date: #{e}"
end
```

#### Using the update_batch_fee_sched_eff_date_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date)

```ruby
begin
  # Create Batch FeeSchedEffDate
  data, status_code, headers = api_instance.update_batch_fee_sched_eff_date_with_http_info(vbasoftware_database, fee_sched, fee_sched_eff_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleEffectiveDatesApi->update_batch_fee_sched_eff_date_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |
| **fee_sched_eff_date** | [**Array&lt;FeeSchedEffDate&gt;**](FeeSchedEffDate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

