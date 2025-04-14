# Vba::FeeScheduleAnesthesiasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_anesthesia**](FeeScheduleAnesthesiasApi.md#create_fee_sched_anesthesia) | **POST** /fee-schedule-anesthesias | Create FeeSchedAnesthesia |
| [**delete_fee_sched_anesthesia**](FeeScheduleAnesthesiasApi.md#delete_fee_sched_anesthesia) | **DELETE** /fee-schedule-anesthesias/{feeSchedAnesthesiaKey} | Delete FeeSchedAnesthesia |
| [**get_fee_sched_anesthesia**](FeeScheduleAnesthesiasApi.md#get_fee_sched_anesthesia) | **GET** /fee-schedule-anesthesias/{feeSchedAnesthesiaKey} | Get FeeSchedAnesthesia |
| [**list_fee_sched_anesthesia**](FeeScheduleAnesthesiasApi.md#list_fee_sched_anesthesia) | **GET** /fee-schedule-anesthesias | List FeeSchedAnesthesia |
| [**update_batch_fee_sched_anesthesia**](FeeScheduleAnesthesiasApi.md#update_batch_fee_sched_anesthesia) | **PUT** /fee-schedule-anesthesias-batch | Create or Update Batch FeeSchedAnesthesia |
| [**update_fee_sched_anesthesia**](FeeScheduleAnesthesiasApi.md#update_fee_sched_anesthesia) | **PUT** /fee-schedule-anesthesias/{feeSchedAnesthesiaKey} | Update FeeSchedAnesthesia |


## create_fee_sched_anesthesia

> <FeeSchedAnesthesiaVBAResponse> create_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia)

Create FeeSchedAnesthesia

Creates a new FeeSchedAnesthesia

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

api_instance = Vba::FeeScheduleAnesthesiasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_anesthesia = Vba::FeeSchedAnesthesia.new({fee_sched_anesthesia_key: 37, fee_sched: 'fee_sched_example', from_value: 'from_value_example', thru_value: 'thru_value_example', type: 'type_example'}) # FeeSchedAnesthesia | 

begin
  # Create FeeSchedAnesthesia
  result = api_instance.create_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->create_fee_sched_anesthesia: #{e}"
end
```

#### Using the create_fee_sched_anesthesia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedAnesthesiaVBAResponse>, Integer, Hash)> create_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia)

```ruby
begin
  # Create FeeSchedAnesthesia
  data, status_code, headers = api_instance.create_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedAnesthesiaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->create_fee_sched_anesthesia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_anesthesia** | [**FeeSchedAnesthesia**](FeeSchedAnesthesia.md) |  |  |

### Return type

[**FeeSchedAnesthesiaVBAResponse**](FeeSchedAnesthesiaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_anesthesia

> delete_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia_key)

Delete FeeSchedAnesthesia

Deletes an FeeSchedAnesthesia

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

api_instance = Vba::FeeScheduleAnesthesiasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_anesthesia_key = 56 # Integer | FeeSchedAnesthesia Key

begin
  # Delete FeeSchedAnesthesia
  api_instance.delete_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia_key)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->delete_fee_sched_anesthesia: #{e}"
end
```

#### Using the delete_fee_sched_anesthesia_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia_key)

```ruby
begin
  # Delete FeeSchedAnesthesia
  data, status_code, headers = api_instance.delete_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->delete_fee_sched_anesthesia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_anesthesia_key** | **Integer** | FeeSchedAnesthesia Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_anesthesia

> <FeeSchedAnesthesiaVBAResponse> get_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia_key)

Get FeeSchedAnesthesia

Gets FeeSchedAnesthesia

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

api_instance = Vba::FeeScheduleAnesthesiasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_anesthesia_key = 56 # Integer | FeeSchedAnesthesia Key

begin
  # Get FeeSchedAnesthesia
  result = api_instance.get_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->get_fee_sched_anesthesia: #{e}"
end
```

#### Using the get_fee_sched_anesthesia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedAnesthesiaVBAResponse>, Integer, Hash)> get_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia_key)

```ruby
begin
  # Get FeeSchedAnesthesia
  data, status_code, headers = api_instance.get_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedAnesthesiaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->get_fee_sched_anesthesia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_anesthesia_key** | **Integer** | FeeSchedAnesthesia Key |  |

### Return type

[**FeeSchedAnesthesiaVBAResponse**](FeeSchedAnesthesiaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_anesthesia

> <FeeSchedAnesthesiaListVBAResponse> list_fee_sched_anesthesia(vbasoftware_database, opts)

List FeeSchedAnesthesia

Lists all FeeSchedAnesthesia

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

api_instance = Vba::FeeScheduleAnesthesiasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedAnesthesia
  result = api_instance.list_fee_sched_anesthesia(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->list_fee_sched_anesthesia: #{e}"
end
```

#### Using the list_fee_sched_anesthesia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedAnesthesiaListVBAResponse>, Integer, Hash)> list_fee_sched_anesthesia_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSchedAnesthesia
  data, status_code, headers = api_instance.list_fee_sched_anesthesia_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedAnesthesiaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->list_fee_sched_anesthesia_with_http_info: #{e}"
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

[**FeeSchedAnesthesiaListVBAResponse**](FeeSchedAnesthesiaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_anesthesia

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia)

Create or Update Batch FeeSchedAnesthesia

Create or Update multiple FeeSchedAnesthesia at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeScheduleAnesthesiasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_anesthesia = [Vba::FeeSchedAnesthesia.new({fee_sched_anesthesia_key: 37, fee_sched: 'fee_sched_example', from_value: 'from_value_example', thru_value: 'thru_value_example', type: 'type_example'})] # Array<FeeSchedAnesthesia> | 

begin
  # Create or Update Batch FeeSchedAnesthesia
  result = api_instance.update_batch_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->update_batch_fee_sched_anesthesia: #{e}"
end
```

#### Using the update_batch_fee_sched_anesthesia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia)

```ruby
begin
  # Create or Update Batch FeeSchedAnesthesia
  data, status_code, headers = api_instance.update_batch_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->update_batch_fee_sched_anesthesia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_anesthesia** | [**Array&lt;FeeSchedAnesthesia&gt;**](FeeSchedAnesthesia.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched_anesthesia

> <FeeSchedAnesthesiaVBAResponse> update_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia_key, fee_sched_anesthesia)

Update FeeSchedAnesthesia

Updates a specific FeeSchedAnesthesia.

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

api_instance = Vba::FeeScheduleAnesthesiasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_anesthesia_key = 56 # Integer | FeeSchedAnesthesia Key
fee_sched_anesthesia = Vba::FeeSchedAnesthesia.new({fee_sched_anesthesia_key: 37, fee_sched: 'fee_sched_example', from_value: 'from_value_example', thru_value: 'thru_value_example', type: 'type_example'}) # FeeSchedAnesthesia | 

begin
  # Update FeeSchedAnesthesia
  result = api_instance.update_fee_sched_anesthesia(vbasoftware_database, fee_sched_anesthesia_key, fee_sched_anesthesia)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->update_fee_sched_anesthesia: #{e}"
end
```

#### Using the update_fee_sched_anesthesia_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedAnesthesiaVBAResponse>, Integer, Hash)> update_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia_key, fee_sched_anesthesia)

```ruby
begin
  # Update FeeSchedAnesthesia
  data, status_code, headers = api_instance.update_fee_sched_anesthesia_with_http_info(vbasoftware_database, fee_sched_anesthesia_key, fee_sched_anesthesia)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedAnesthesiaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleAnesthesiasApi->update_fee_sched_anesthesia_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_anesthesia_key** | **Integer** | FeeSchedAnesthesia Key |  |
| **fee_sched_anesthesia** | [**FeeSchedAnesthesia**](FeeSchedAnesthesia.md) |  |  |

### Return type

[**FeeSchedAnesthesiaVBAResponse**](FeeSchedAnesthesiaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

