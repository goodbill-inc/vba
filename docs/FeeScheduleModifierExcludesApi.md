# Vba::FeeScheduleModifierExcludesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_modifier_exclude**](FeeScheduleModifierExcludesApi.md#create_fee_sched_modifier_exclude) | **POST** /fee-schedule-modifier-excludes | Create FeeSchedModifierExclude |
| [**delete_fee_sched_modifier_exclude**](FeeScheduleModifierExcludesApi.md#delete_fee_sched_modifier_exclude) | **DELETE** /fee-schedule-modifier-excludes/{feeSchedModifierExcludeKey} | Delete FeeSchedModifierExclude |
| [**get_fee_sched_modifier_exclude**](FeeScheduleModifierExcludesApi.md#get_fee_sched_modifier_exclude) | **GET** /fee-schedule-modifier-excludes/{feeSchedModifierExcludeKey} | Get FeeSchedModifierExclude |
| [**list_fee_sched_modifier_exclude**](FeeScheduleModifierExcludesApi.md#list_fee_sched_modifier_exclude) | **GET** /fee-schedule-modifier-excludes | List FeeSchedModifierExclude |
| [**update_batch_fee_sched_modifier_exclude**](FeeScheduleModifierExcludesApi.md#update_batch_fee_sched_modifier_exclude) | **PUT** /fee-schedule-modifier-excludes-batch | Create or Update Batch FeeSchedModifierExclude |
| [**update_fee_sched_modifier_exclude**](FeeScheduleModifierExcludesApi.md#update_fee_sched_modifier_exclude) | **PUT** /fee-schedule-modifier-excludes/{feeSchedModifierExcludeKey} | Update FeeSchedModifierExclude |


## create_fee_sched_modifier_exclude

> <FeeSchedModifierExcludeVBAResponse> create_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude)

Create FeeSchedModifierExclude

Creates a new FeeSchedModifierExclude

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

api_instance = Vba::FeeScheduleModifierExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_exclude = Vba::FeeSchedModifierExclude.new({fee_sched_modifier_exclude_key: 37, modifier: 'modifier_example'}) # FeeSchedModifierExclude | 

begin
  # Create FeeSchedModifierExclude
  result = api_instance.create_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->create_fee_sched_modifier_exclude: #{e}"
end
```

#### Using the create_fee_sched_modifier_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierExcludeVBAResponse>, Integer, Hash)> create_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude)

```ruby
begin
  # Create FeeSchedModifierExclude
  data, status_code, headers = api_instance.create_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierExcludeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->create_fee_sched_modifier_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_exclude** | [**FeeSchedModifierExclude**](FeeSchedModifierExclude.md) |  |  |

### Return type

[**FeeSchedModifierExcludeVBAResponse**](FeeSchedModifierExcludeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_modifier_exclude

> delete_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude_key)

Delete FeeSchedModifierExclude

Deletes an FeeSchedModifierExclude

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

api_instance = Vba::FeeScheduleModifierExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_exclude_key = 56 # Integer | FeeSchedModifierExclude Key

begin
  # Delete FeeSchedModifierExclude
  api_instance.delete_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude_key)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->delete_fee_sched_modifier_exclude: #{e}"
end
```

#### Using the delete_fee_sched_modifier_exclude_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude_key)

```ruby
begin
  # Delete FeeSchedModifierExclude
  data, status_code, headers = api_instance.delete_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->delete_fee_sched_modifier_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_exclude_key** | **Integer** | FeeSchedModifierExclude Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_modifier_exclude

> <FeeSchedModifierExcludeVBAResponse> get_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude_key)

Get FeeSchedModifierExclude

Gets FeeSchedModifierExclude

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

api_instance = Vba::FeeScheduleModifierExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_exclude_key = 56 # Integer | FeeSchedModifierExclude Key

begin
  # Get FeeSchedModifierExclude
  result = api_instance.get_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->get_fee_sched_modifier_exclude: #{e}"
end
```

#### Using the get_fee_sched_modifier_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierExcludeVBAResponse>, Integer, Hash)> get_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude_key)

```ruby
begin
  # Get FeeSchedModifierExclude
  data, status_code, headers = api_instance.get_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierExcludeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->get_fee_sched_modifier_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_exclude_key** | **Integer** | FeeSchedModifierExclude Key |  |

### Return type

[**FeeSchedModifierExcludeVBAResponse**](FeeSchedModifierExcludeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_modifier_exclude

> <FeeSchedModifierExcludeListVBAResponse> list_fee_sched_modifier_exclude(vbasoftware_database, opts)

List FeeSchedModifierExclude

Lists all FeeSchedModifierExclude

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

api_instance = Vba::FeeScheduleModifierExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedModifierExclude
  result = api_instance.list_fee_sched_modifier_exclude(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->list_fee_sched_modifier_exclude: #{e}"
end
```

#### Using the list_fee_sched_modifier_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierExcludeListVBAResponse>, Integer, Hash)> list_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSchedModifierExclude
  data, status_code, headers = api_instance.list_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierExcludeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->list_fee_sched_modifier_exclude_with_http_info: #{e}"
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

[**FeeSchedModifierExcludeListVBAResponse**](FeeSchedModifierExcludeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_modifier_exclude

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude)

Create or Update Batch FeeSchedModifierExclude

Create or Update multiple FeeSchedModifierExclude at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeScheduleModifierExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_exclude = [Vba::FeeSchedModifierExclude.new({fee_sched_modifier_exclude_key: 37, modifier: 'modifier_example'})] # Array<FeeSchedModifierExclude> | 

begin
  # Create or Update Batch FeeSchedModifierExclude
  result = api_instance.update_batch_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->update_batch_fee_sched_modifier_exclude: #{e}"
end
```

#### Using the update_batch_fee_sched_modifier_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude)

```ruby
begin
  # Create or Update Batch FeeSchedModifierExclude
  data, status_code, headers = api_instance.update_batch_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->update_batch_fee_sched_modifier_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_exclude** | [**Array&lt;FeeSchedModifierExclude&gt;**](FeeSchedModifierExclude.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched_modifier_exclude

> <FeeSchedModifierExcludeVBAResponse> update_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude_key, fee_sched_modifier_exclude)

Update FeeSchedModifierExclude

Updates a specific FeeSchedModifierExclude.

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

api_instance = Vba::FeeScheduleModifierExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_exclude_key = 56 # Integer | FeeSchedModifierExclude Key
fee_sched_modifier_exclude = Vba::FeeSchedModifierExclude.new({fee_sched_modifier_exclude_key: 37, modifier: 'modifier_example'}) # FeeSchedModifierExclude | 

begin
  # Update FeeSchedModifierExclude
  result = api_instance.update_fee_sched_modifier_exclude(vbasoftware_database, fee_sched_modifier_exclude_key, fee_sched_modifier_exclude)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->update_fee_sched_modifier_exclude: #{e}"
end
```

#### Using the update_fee_sched_modifier_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierExcludeVBAResponse>, Integer, Hash)> update_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude_key, fee_sched_modifier_exclude)

```ruby
begin
  # Update FeeSchedModifierExclude
  data, status_code, headers = api_instance.update_fee_sched_modifier_exclude_with_http_info(vbasoftware_database, fee_sched_modifier_exclude_key, fee_sched_modifier_exclude)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierExcludeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierExcludesApi->update_fee_sched_modifier_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_exclude_key** | **Integer** | FeeSchedModifierExclude Key |  |
| **fee_sched_modifier_exclude** | [**FeeSchedModifierExclude**](FeeSchedModifierExclude.md) |  |  |

### Return type

[**FeeSchedModifierExcludeVBAResponse**](FeeSchedModifierExcludeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

