# Vba::PremiumPastDueSubscriberTriggersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_past_due_trigger_subscriber**](PremiumPastDueSubscriberTriggersApi.md#create_prem_past_due_trigger_subscriber) | **POST** /premium-past-due-subscriber-triggers | Create PremPastDueTriggerSubscriber |
| [**delete_prem_past_due_trigger_subscriber**](PremiumPastDueSubscriberTriggersApi.md#delete_prem_past_due_trigger_subscriber) | **DELETE** /premium-past-due-subscriber-triggers/{premPastDueTriggerSubscriberKey} | Delete PremPastDueTriggerSubscriber |
| [**get_prem_past_due_trigger_subscriber**](PremiumPastDueSubscriberTriggersApi.md#get_prem_past_due_trigger_subscriber) | **GET** /premium-past-due-subscriber-triggers/{premPastDueTriggerSubscriberKey} | Get PremPastDueTriggerSubscriber |
| [**list_prem_past_due_trigger_subscriber**](PremiumPastDueSubscriberTriggersApi.md#list_prem_past_due_trigger_subscriber) | **GET** /premium-past-due-subscriber-triggers | List PremPastDueTriggerSubscriber |
| [**update_batch_prem_past_due_trigger_subscriber**](PremiumPastDueSubscriberTriggersApi.md#update_batch_prem_past_due_trigger_subscriber) | **PUT** /premium-past-due-subscriber-triggers-batch | Create or Update Batch PremPastDueTriggerSubscriber |
| [**update_prem_past_due_trigger_subscriber**](PremiumPastDueSubscriberTriggersApi.md#update_prem_past_due_trigger_subscriber) | **PUT** /premium-past-due-subscriber-triggers/{premPastDueTriggerSubscriberKey} | Update PremPastDueTriggerSubscriber |


## create_prem_past_due_trigger_subscriber

> <PremPastDueTriggerSubscriberVBAResponse> create_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber)

Create PremPastDueTriggerSubscriber

Creates a new PremPastDueTriggerSubscriber

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

api_instance = Vba::PremiumPastDueSubscriberTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_subscriber = Vba::PremPastDueTriggerSubscriber.new({prem_past_due_trigger_subscriber_key: 37, subscriber_id: 'subscriber_id_example'}) # PremPastDueTriggerSubscriber | 

begin
  # Create PremPastDueTriggerSubscriber
  result = api_instance.create_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->create_prem_past_due_trigger_subscriber: #{e}"
end
```

#### Using the create_prem_past_due_trigger_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerSubscriberVBAResponse>, Integer, Hash)> create_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber)

```ruby
begin
  # Create PremPastDueTriggerSubscriber
  data, status_code, headers = api_instance.create_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->create_prem_past_due_trigger_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_subscriber** | [**PremPastDueTriggerSubscriber**](PremPastDueTriggerSubscriber.md) |  |  |

### Return type

[**PremPastDueTriggerSubscriberVBAResponse**](PremPastDueTriggerSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_past_due_trigger_subscriber

> delete_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber_key)

Delete PremPastDueTriggerSubscriber

Deletes an PremPastDueTriggerSubscriber

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

api_instance = Vba::PremiumPastDueSubscriberTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_subscriber_key = 56 # Integer | PremPastDueTriggerSubscriber Key

begin
  # Delete PremPastDueTriggerSubscriber
  api_instance.delete_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->delete_prem_past_due_trigger_subscriber: #{e}"
end
```

#### Using the delete_prem_past_due_trigger_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber_key)

```ruby
begin
  # Delete PremPastDueTriggerSubscriber
  data, status_code, headers = api_instance.delete_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->delete_prem_past_due_trigger_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_subscriber_key** | **Integer** | PremPastDueTriggerSubscriber Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_past_due_trigger_subscriber

> <PremPastDueTriggerSubscriberVBAResponse> get_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber_key)

Get PremPastDueTriggerSubscriber

Gets PremPastDueTriggerSubscriber

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

api_instance = Vba::PremiumPastDueSubscriberTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_subscriber_key = 56 # Integer | PremPastDueTriggerSubscriber Key

begin
  # Get PremPastDueTriggerSubscriber
  result = api_instance.get_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->get_prem_past_due_trigger_subscriber: #{e}"
end
```

#### Using the get_prem_past_due_trigger_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerSubscriberVBAResponse>, Integer, Hash)> get_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber_key)

```ruby
begin
  # Get PremPastDueTriggerSubscriber
  data, status_code, headers = api_instance.get_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->get_prem_past_due_trigger_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_subscriber_key** | **Integer** | PremPastDueTriggerSubscriber Key |  |

### Return type

[**PremPastDueTriggerSubscriberVBAResponse**](PremPastDueTriggerSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_past_due_trigger_subscriber

> <PremPastDueTriggerSubscriberListVBAResponse> list_prem_past_due_trigger_subscriber(vbasoftware_database, opts)

List PremPastDueTriggerSubscriber

Lists all PremPastDueTriggerSubscriber

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

api_instance = Vba::PremiumPastDueSubscriberTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPastDueTriggerSubscriber
  result = api_instance.list_prem_past_due_trigger_subscriber(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->list_prem_past_due_trigger_subscriber: #{e}"
end
```

#### Using the list_prem_past_due_trigger_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerSubscriberListVBAResponse>, Integer, Hash)> list_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremPastDueTriggerSubscriber
  data, status_code, headers = api_instance.list_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->list_prem_past_due_trigger_subscriber_with_http_info: #{e}"
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

[**PremPastDueTriggerSubscriberListVBAResponse**](PremPastDueTriggerSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_past_due_trigger_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber)

Create or Update Batch PremPastDueTriggerSubscriber

Create or Update multiple PremPastDueTriggerSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumPastDueSubscriberTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_subscriber = [Vba::PremPastDueTriggerSubscriber.new({prem_past_due_trigger_subscriber_key: 37, subscriber_id: 'subscriber_id_example'})] # Array<PremPastDueTriggerSubscriber> | 

begin
  # Create or Update Batch PremPastDueTriggerSubscriber
  result = api_instance.update_batch_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->update_batch_prem_past_due_trigger_subscriber: #{e}"
end
```

#### Using the update_batch_prem_past_due_trigger_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber)

```ruby
begin
  # Create or Update Batch PremPastDueTriggerSubscriber
  data, status_code, headers = api_instance.update_batch_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->update_batch_prem_past_due_trigger_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_subscriber** | [**Array&lt;PremPastDueTriggerSubscriber&gt;**](PremPastDueTriggerSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_past_due_trigger_subscriber

> <PremPastDueTriggerSubscriberVBAResponse> update_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber_key, prem_past_due_trigger_subscriber)

Update PremPastDueTriggerSubscriber

Updates a specific PremPastDueTriggerSubscriber.

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

api_instance = Vba::PremiumPastDueSubscriberTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_subscriber_key = 56 # Integer | PremPastDueTriggerSubscriber Key
prem_past_due_trigger_subscriber = Vba::PremPastDueTriggerSubscriber.new({prem_past_due_trigger_subscriber_key: 37, subscriber_id: 'subscriber_id_example'}) # PremPastDueTriggerSubscriber | 

begin
  # Update PremPastDueTriggerSubscriber
  result = api_instance.update_prem_past_due_trigger_subscriber(vbasoftware_database, prem_past_due_trigger_subscriber_key, prem_past_due_trigger_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->update_prem_past_due_trigger_subscriber: #{e}"
end
```

#### Using the update_prem_past_due_trigger_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerSubscriberVBAResponse>, Integer, Hash)> update_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber_key, prem_past_due_trigger_subscriber)

```ruby
begin
  # Update PremPastDueTriggerSubscriber
  data, status_code, headers = api_instance.update_prem_past_due_trigger_subscriber_with_http_info(vbasoftware_database, prem_past_due_trigger_subscriber_key, prem_past_due_trigger_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueSubscriberTriggersApi->update_prem_past_due_trigger_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_subscriber_key** | **Integer** | PremPastDueTriggerSubscriber Key |  |
| **prem_past_due_trigger_subscriber** | [**PremPastDueTriggerSubscriber**](PremPastDueTriggerSubscriber.md) |  |  |

### Return type

[**PremPastDueTriggerSubscriberVBAResponse**](PremPastDueTriggerSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

