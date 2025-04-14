# Vba::PremiumPastDueTriggersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_past_due_trigger**](PremiumPastDueTriggersApi.md#create_prem_past_due_trigger) | **POST** /premium-past-due-triggers | Create PremPastDueTrigger |
| [**delete_prem_past_due_trigger**](PremiumPastDueTriggersApi.md#delete_prem_past_due_trigger) | **DELETE** /premium-past-due-triggers/{premPastDueTriggerKey} | Delete PremPastDueTrigger |
| [**get_prem_past_due_trigger**](PremiumPastDueTriggersApi.md#get_prem_past_due_trigger) | **GET** /premium-past-due-triggers/{premPastDueTriggerKey} | Get PremPastDueTrigger |
| [**list_prem_past_due_trigger**](PremiumPastDueTriggersApi.md#list_prem_past_due_trigger) | **GET** /premium-past-due-triggers | List PremPastDueTrigger |
| [**update_batch_prem_past_due_trigger**](PremiumPastDueTriggersApi.md#update_batch_prem_past_due_trigger) | **PUT** /premium-past-due-triggers-batch | Create or Update Batch PremPastDueTrigger |
| [**update_prem_past_due_trigger**](PremiumPastDueTriggersApi.md#update_prem_past_due_trigger) | **PUT** /premium-past-due-triggers/{premPastDueTriggerKey} | Update PremPastDueTrigger |


## create_prem_past_due_trigger

> <PremPastDueTriggerVBAResponse> create_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger)

Create PremPastDueTrigger

Creates a new PremPastDueTrigger

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

api_instance = Vba::PremiumPastDueTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger = Vba::PremPastDueTrigger.new({prem_past_due_trigger_key: 37, active: false}) # PremPastDueTrigger | 

begin
  # Create PremPastDueTrigger
  result = api_instance.create_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->create_prem_past_due_trigger: #{e}"
end
```

#### Using the create_prem_past_due_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerVBAResponse>, Integer, Hash)> create_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger)

```ruby
begin
  # Create PremPastDueTrigger
  data, status_code, headers = api_instance.create_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->create_prem_past_due_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger** | [**PremPastDueTrigger**](PremPastDueTrigger.md) |  |  |

### Return type

[**PremPastDueTriggerVBAResponse**](PremPastDueTriggerVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_past_due_trigger

> delete_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger_key)

Delete PremPastDueTrigger

Deletes an PremPastDueTrigger

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

api_instance = Vba::PremiumPastDueTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_key = 56 # Integer | PremPastDueTrigger Key

begin
  # Delete PremPastDueTrigger
  api_instance.delete_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->delete_prem_past_due_trigger: #{e}"
end
```

#### Using the delete_prem_past_due_trigger_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger_key)

```ruby
begin
  # Delete PremPastDueTrigger
  data, status_code, headers = api_instance.delete_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->delete_prem_past_due_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_key** | **Integer** | PremPastDueTrigger Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_past_due_trigger

> <PremPastDueTriggerVBAResponse> get_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger_key)

Get PremPastDueTrigger

Gets PremPastDueTrigger

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

api_instance = Vba::PremiumPastDueTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_key = 56 # Integer | PremPastDueTrigger Key

begin
  # Get PremPastDueTrigger
  result = api_instance.get_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->get_prem_past_due_trigger: #{e}"
end
```

#### Using the get_prem_past_due_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerVBAResponse>, Integer, Hash)> get_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger_key)

```ruby
begin
  # Get PremPastDueTrigger
  data, status_code, headers = api_instance.get_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->get_prem_past_due_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_key** | **Integer** | PremPastDueTrigger Key |  |

### Return type

[**PremPastDueTriggerVBAResponse**](PremPastDueTriggerVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_past_due_trigger

> <PremPastDueTriggerListVBAResponse> list_prem_past_due_trigger(vbasoftware_database, opts)

List PremPastDueTrigger

Lists all PremPastDueTrigger

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

api_instance = Vba::PremiumPastDueTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPastDueTrigger
  result = api_instance.list_prem_past_due_trigger(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->list_prem_past_due_trigger: #{e}"
end
```

#### Using the list_prem_past_due_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerListVBAResponse>, Integer, Hash)> list_prem_past_due_trigger_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremPastDueTrigger
  data, status_code, headers = api_instance.list_prem_past_due_trigger_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->list_prem_past_due_trigger_with_http_info: #{e}"
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

[**PremPastDueTriggerListVBAResponse**](PremPastDueTriggerListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_past_due_trigger

> <MultiCodeResponseListVBAResponse> update_batch_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger)

Create or Update Batch PremPastDueTrigger

Create or Update multiple PremPastDueTrigger at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumPastDueTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger = [Vba::PremPastDueTrigger.new({prem_past_due_trigger_key: 37, active: false})] # Array<PremPastDueTrigger> | 

begin
  # Create or Update Batch PremPastDueTrigger
  result = api_instance.update_batch_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->update_batch_prem_past_due_trigger: #{e}"
end
```

#### Using the update_batch_prem_past_due_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger)

```ruby
begin
  # Create or Update Batch PremPastDueTrigger
  data, status_code, headers = api_instance.update_batch_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->update_batch_prem_past_due_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger** | [**Array&lt;PremPastDueTrigger&gt;**](PremPastDueTrigger.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_past_due_trigger

> <PremPastDueTriggerVBAResponse> update_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger_key, prem_past_due_trigger)

Update PremPastDueTrigger

Updates a specific PremPastDueTrigger.

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

api_instance = Vba::PremiumPastDueTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_key = 56 # Integer | PremPastDueTrigger Key
prem_past_due_trigger = Vba::PremPastDueTrigger.new({prem_past_due_trigger_key: 37, active: false}) # PremPastDueTrigger | 

begin
  # Update PremPastDueTrigger
  result = api_instance.update_prem_past_due_trigger(vbasoftware_database, prem_past_due_trigger_key, prem_past_due_trigger)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->update_prem_past_due_trigger: #{e}"
end
```

#### Using the update_prem_past_due_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerVBAResponse>, Integer, Hash)> update_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger_key, prem_past_due_trigger)

```ruby
begin
  # Update PremPastDueTrigger
  data, status_code, headers = api_instance.update_prem_past_due_trigger_with_http_info(vbasoftware_database, prem_past_due_trigger_key, prem_past_due_trigger)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueTriggersApi->update_prem_past_due_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_key** | **Integer** | PremPastDueTrigger Key |  |
| **prem_past_due_trigger** | [**PremPastDueTrigger**](PremPastDueTrigger.md) |  |  |

### Return type

[**PremPastDueTriggerVBAResponse**](PremPastDueTriggerVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

