# Vba::FeeSchedulesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_fee_schedule**](FeeSchedulesApi.md#copy_fee_schedule) | **POST** /fee-schedule-copy | Copy Fee Schedule |
| [**copy_fee_schedule_adj_disc**](FeeSchedulesApi.md#copy_fee_schedule_adj_disc) | **POST** /fee-schedule-copy-adj-disc | Copy Fee Schedule and Adjust Discount |
| [**create_fee_sched**](FeeSchedulesApi.md#create_fee_sched) | **POST** /fee-schedules | Create FeeSched |
| [**delete_fee_sched**](FeeSchedulesApi.md#delete_fee_sched) | **DELETE** /fee-schedules/{feeSched} | Delete FeeSched |
| [**get_fee_sched**](FeeSchedulesApi.md#get_fee_sched) | **GET** /fee-schedules/{feeSched} | Get FeeSched |
| [**list_fee_sched**](FeeSchedulesApi.md#list_fee_sched) | **GET** /fee-schedules | List FeeSched |
| [**list_uc_rate**](FeeSchedulesApi.md#list_uc_rate) | **GET** /usual-customary-rate | List Usual and Customary Rates |
| [**update_batch_fee_sched**](FeeSchedulesApi.md#update_batch_fee_sched) | **PUT** /fee-schedules-batch | Create or Update Batch FeeSched |
| [**update_fee_sched**](FeeSchedulesApi.md#update_fee_sched) | **PUT** /fee-schedules/{feeSched} | Update FeeSched |


## copy_fee_schedule

> <FeeSchedVBAResponse> copy_fee_schedule(vbasoftware_database, fee_sched_copy)

Copy Fee Schedule

Copy an existing Fee Schedule to a new Fee Schedule.

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_copy = Vba::FeeSchedCopy.new # FeeSchedCopy | 

begin
  # Copy Fee Schedule
  result = api_instance.copy_fee_schedule(vbasoftware_database, fee_sched_copy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->copy_fee_schedule: #{e}"
end
```

#### Using the copy_fee_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> copy_fee_schedule_with_http_info(vbasoftware_database, fee_sched_copy)

```ruby
begin
  # Copy Fee Schedule
  data, status_code, headers = api_instance.copy_fee_schedule_with_http_info(vbasoftware_database, fee_sched_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->copy_fee_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_copy** | [**FeeSchedCopy**](FeeSchedCopy.md) |  |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## copy_fee_schedule_adj_disc

> <FeeSchedVBAResponse> copy_fee_schedule_adj_disc(vbasoftware_database, fee_sched_copy)

Copy Fee Schedule and Adjust Discount

Copy an existing Fee Schedule to a new Fee Schedule and adjust the resulting discount in the new Fee Schedule.

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_copy = Vba::FeeSchedCopy.new # FeeSchedCopy | 

begin
  # Copy Fee Schedule and Adjust Discount
  result = api_instance.copy_fee_schedule_adj_disc(vbasoftware_database, fee_sched_copy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->copy_fee_schedule_adj_disc: #{e}"
end
```

#### Using the copy_fee_schedule_adj_disc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> copy_fee_schedule_adj_disc_with_http_info(vbasoftware_database, fee_sched_copy)

```ruby
begin
  # Copy Fee Schedule and Adjust Discount
  data, status_code, headers = api_instance.copy_fee_schedule_adj_disc_with_http_info(vbasoftware_database, fee_sched_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->copy_fee_schedule_adj_disc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_copy** | [**FeeSchedCopy**](FeeSchedCopy.md) |  |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_fee_sched

> <FeeSchedVBAResponse> create_fee_sched(vbasoftware_database, fee_sched)

Create FeeSched

Creates a new FeeSched

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = Vba::FeeSched.new({fee_sched: 'fee_sched_example', process_adj_disc_by_amount: false}) # FeeSched | 

begin
  # Create FeeSched
  result = api_instance.create_fee_sched(vbasoftware_database, fee_sched)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->create_fee_sched: #{e}"
end
```

#### Using the create_fee_sched_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> create_fee_sched_with_http_info(vbasoftware_database, fee_sched)

```ruby
begin
  # Create FeeSched
  data, status_code, headers = api_instance.create_fee_sched_with_http_info(vbasoftware_database, fee_sched)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->create_fee_sched_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | [**FeeSched**](FeeSched.md) |  |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched

> delete_fee_sched(vbasoftware_database, fee_sched)

Delete FeeSched

Deletes an FeeSched

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched

begin
  # Delete FeeSched
  api_instance.delete_fee_sched(vbasoftware_database, fee_sched)
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->delete_fee_sched: #{e}"
end
```

#### Using the delete_fee_sched_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_with_http_info(vbasoftware_database, fee_sched)

```ruby
begin
  # Delete FeeSched
  data, status_code, headers = api_instance.delete_fee_sched_with_http_info(vbasoftware_database, fee_sched)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->delete_fee_sched_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched

> <FeeSchedVBAResponse> get_fee_sched(vbasoftware_database, fee_sched)

Get FeeSched

Gets FeeSched

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched

begin
  # Get FeeSched
  result = api_instance.get_fee_sched(vbasoftware_database, fee_sched)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->get_fee_sched: #{e}"
end
```

#### Using the get_fee_sched_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> get_fee_sched_with_http_info(vbasoftware_database, fee_sched)

```ruby
begin
  # Get FeeSched
  data, status_code, headers = api_instance.get_fee_sched_with_http_info(vbasoftware_database, fee_sched)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->get_fee_sched_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched

> <FeeSchedListVBAResponse> list_fee_sched(vbasoftware_database, opts)

List FeeSched

Lists all FeeSched

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSched
  result = api_instance.list_fee_sched(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->list_fee_sched: #{e}"
end
```

#### Using the list_fee_sched_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedListVBAResponse>, Integer, Hash)> list_fee_sched_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSched
  data, status_code, headers = api_instance.list_fee_sched_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->list_fee_sched_with_http_info: #{e}"
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

[**FeeSchedListVBAResponse**](FeeSchedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_uc_rate

> <UsualCustomaryRateAllPercentileListVBAResponse> list_uc_rate(vbasoftware_database, opts)

List Usual and Customary Rates

Lists all UC Rates based on provided criteria.

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  claim_type: 'claim_type_example', # String | Claim Type
  service_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Service Date
  zip_start: 'zip_start_example', # String | Zip Code From
  zip_end: 'zip_end_example', # String | Zip Code Thru
  proc_start: 'proc_start_example', # String | Procedure Code From
  proc_end: 'proc_end_example', # String | Procedure Code Thru
  modifier: 'modifier_example', # String | Modifier
  percentile: 56 # Integer | Percentile
}

begin
  # List Usual and Customary Rates
  result = api_instance.list_uc_rate(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->list_uc_rate: #{e}"
end
```

#### Using the list_uc_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsualCustomaryRateAllPercentileListVBAResponse>, Integer, Hash)> list_uc_rate_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Usual and Customary Rates
  data, status_code, headers = api_instance.list_uc_rate_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsualCustomaryRateAllPercentileListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->list_uc_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_type** | **String** | Claim Type | [optional] |
| **service_date** | **Time** | Service Date | [optional] |
| **zip_start** | **String** | Zip Code From | [optional] |
| **zip_end** | **String** | Zip Code Thru | [optional] |
| **proc_start** | **String** | Procedure Code From | [optional] |
| **proc_end** | **String** | Procedure Code Thru | [optional] |
| **modifier** | **String** | Modifier | [optional] |
| **percentile** | **Integer** | Percentile | [optional] |

### Return type

[**UsualCustomaryRateAllPercentileListVBAResponse**](UsualCustomaryRateAllPercentileListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched(vbasoftware_database, fee_sched)

Create or Update Batch FeeSched

Create or Update multiple FeeSched at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = [Vba::FeeSched.new({fee_sched: 'fee_sched_example', process_adj_disc_by_amount: false})] # Array<FeeSched> | 

begin
  # Create or Update Batch FeeSched
  result = api_instance.update_batch_fee_sched(vbasoftware_database, fee_sched)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->update_batch_fee_sched: #{e}"
end
```

#### Using the update_batch_fee_sched_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_with_http_info(vbasoftware_database, fee_sched)

```ruby
begin
  # Create or Update Batch FeeSched
  data, status_code, headers = api_instance.update_batch_fee_sched_with_http_info(vbasoftware_database, fee_sched)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->update_batch_fee_sched_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | [**Array&lt;FeeSched&gt;**](FeeSched.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched

> <FeeSchedVBAResponse> update_fee_sched(vbasoftware_database, fee_sched, fee_sched2)

Update FeeSched

Updates a specific FeeSched.

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

api_instance = Vba::FeeSchedulesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched = 'fee_sched_example' # String | Fee Sched
fee_sched2 = Vba::FeeSched.new({fee_sched: 'fee_sched_example', process_adj_disc_by_amount: false}) # FeeSched | 

begin
  # Update FeeSched
  result = api_instance.update_fee_sched(vbasoftware_database, fee_sched, fee_sched2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->update_fee_sched: #{e}"
end
```

#### Using the update_fee_sched_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedVBAResponse>, Integer, Hash)> update_fee_sched_with_http_info(vbasoftware_database, fee_sched, fee_sched2)

```ruby
begin
  # Update FeeSched
  data, status_code, headers = api_instance.update_fee_sched_with_http_info(vbasoftware_database, fee_sched, fee_sched2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeSchedulesApi->update_fee_sched_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched** | **String** | Fee Sched |  |
| **fee_sched2** | [**FeeSched**](FeeSched.md) |  |  |

### Return type

[**FeeSchedVBAResponse**](FeeSchedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

