# Vba::PremiumPastDueGroupTriggersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_past_due_trigger_group**](PremiumPastDueGroupTriggersApi.md#create_prem_past_due_trigger_group) | **POST** /premium-past-due-group-triggers | Create PremPastDueTriggerGroup |
| [**delete_prem_past_due_trigger_group**](PremiumPastDueGroupTriggersApi.md#delete_prem_past_due_trigger_group) | **DELETE** /premium-past-due-group-triggers/{premPastDueTriggerGroupKey} | Delete PremPastDueTriggerGroup |
| [**get_prem_past_due_trigger_group**](PremiumPastDueGroupTriggersApi.md#get_prem_past_due_trigger_group) | **GET** /premium-past-due-group-triggers/{premPastDueTriggerGroupKey} | Get PremPastDueTriggerGroup |
| [**list_prem_past_due_trigger_group**](PremiumPastDueGroupTriggersApi.md#list_prem_past_due_trigger_group) | **GET** /premium-past-due-group-triggers | List PremPastDueTriggerGroup |
| [**update_batch_prem_past_due_trigger_group**](PremiumPastDueGroupTriggersApi.md#update_batch_prem_past_due_trigger_group) | **PUT** /premium-past-due-group-triggers-batch | Create or Update Batch PremPastDueTriggerGroup |
| [**update_prem_past_due_trigger_group**](PremiumPastDueGroupTriggersApi.md#update_prem_past_due_trigger_group) | **PUT** /premium-past-due-group-triggers/{premPastDueTriggerGroupKey} | Update PremPastDueTriggerGroup |


## create_prem_past_due_trigger_group

> <PremPastDueTriggerGroupVBAResponse> create_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group)

Create PremPastDueTriggerGroup

Creates a new PremPastDueTriggerGroup

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

api_instance = Vba::PremiumPastDueGroupTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_group = Vba::PremPastDueTriggerGroup.new({prem_past_due_trigger_group_key: 37, group_id: 'group_id_example'}) # PremPastDueTriggerGroup | 

begin
  # Create PremPastDueTriggerGroup
  result = api_instance.create_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->create_prem_past_due_trigger_group: #{e}"
end
```

#### Using the create_prem_past_due_trigger_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerGroupVBAResponse>, Integer, Hash)> create_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group)

```ruby
begin
  # Create PremPastDueTriggerGroup
  data, status_code, headers = api_instance.create_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->create_prem_past_due_trigger_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_group** | [**PremPastDueTriggerGroup**](PremPastDueTriggerGroup.md) |  |  |

### Return type

[**PremPastDueTriggerGroupVBAResponse**](PremPastDueTriggerGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_past_due_trigger_group

> delete_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group_key)

Delete PremPastDueTriggerGroup

Deletes an PremPastDueTriggerGroup

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

api_instance = Vba::PremiumPastDueGroupTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_group_key = 56 # Integer | PremPastDueTriggerGroup Key

begin
  # Delete PremPastDueTriggerGroup
  api_instance.delete_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->delete_prem_past_due_trigger_group: #{e}"
end
```

#### Using the delete_prem_past_due_trigger_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group_key)

```ruby
begin
  # Delete PremPastDueTriggerGroup
  data, status_code, headers = api_instance.delete_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->delete_prem_past_due_trigger_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_group_key** | **Integer** | PremPastDueTriggerGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_past_due_trigger_group

> <PremPastDueTriggerGroupVBAResponse> get_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group_key)

Get PremPastDueTriggerGroup

Gets PremPastDueTriggerGroup

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

api_instance = Vba::PremiumPastDueGroupTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_group_key = 56 # Integer | PremPastDueTriggerGroup Key

begin
  # Get PremPastDueTriggerGroup
  result = api_instance.get_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->get_prem_past_due_trigger_group: #{e}"
end
```

#### Using the get_prem_past_due_trigger_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerGroupVBAResponse>, Integer, Hash)> get_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group_key)

```ruby
begin
  # Get PremPastDueTriggerGroup
  data, status_code, headers = api_instance.get_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->get_prem_past_due_trigger_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_group_key** | **Integer** | PremPastDueTriggerGroup Key |  |

### Return type

[**PremPastDueTriggerGroupVBAResponse**](PremPastDueTriggerGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_past_due_trigger_group

> <PremPastDueTriggerGroupListVBAResponse> list_prem_past_due_trigger_group(vbasoftware_database, opts)

List PremPastDueTriggerGroup

Lists all PremPastDueTriggerGroup

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

api_instance = Vba::PremiumPastDueGroupTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremPastDueTriggerGroup
  result = api_instance.list_prem_past_due_trigger_group(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->list_prem_past_due_trigger_group: #{e}"
end
```

#### Using the list_prem_past_due_trigger_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerGroupListVBAResponse>, Integer, Hash)> list_prem_past_due_trigger_group_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremPastDueTriggerGroup
  data, status_code, headers = api_instance.list_prem_past_due_trigger_group_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->list_prem_past_due_trigger_group_with_http_info: #{e}"
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

[**PremPastDueTriggerGroupListVBAResponse**](PremPastDueTriggerGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_past_due_trigger_group

> <MultiCodeResponseListVBAResponse> update_batch_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group)

Create or Update Batch PremPastDueTriggerGroup

Create or Update multiple PremPastDueTriggerGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumPastDueGroupTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_group = [Vba::PremPastDueTriggerGroup.new({prem_past_due_trigger_group_key: 37, group_id: 'group_id_example'})] # Array<PremPastDueTriggerGroup> | 

begin
  # Create or Update Batch PremPastDueTriggerGroup
  result = api_instance.update_batch_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->update_batch_prem_past_due_trigger_group: #{e}"
end
```

#### Using the update_batch_prem_past_due_trigger_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group)

```ruby
begin
  # Create or Update Batch PremPastDueTriggerGroup
  data, status_code, headers = api_instance.update_batch_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->update_batch_prem_past_due_trigger_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_group** | [**Array&lt;PremPastDueTriggerGroup&gt;**](PremPastDueTriggerGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_past_due_trigger_group

> <PremPastDueTriggerGroupVBAResponse> update_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group_key, prem_past_due_trigger_group)

Update PremPastDueTriggerGroup

Updates a specific PremPastDueTriggerGroup.

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

api_instance = Vba::PremiumPastDueGroupTriggersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_past_due_trigger_group_key = 56 # Integer | PremPastDueTriggerGroup Key
prem_past_due_trigger_group = Vba::PremPastDueTriggerGroup.new({prem_past_due_trigger_group_key: 37, group_id: 'group_id_example'}) # PremPastDueTriggerGroup | 

begin
  # Update PremPastDueTriggerGroup
  result = api_instance.update_prem_past_due_trigger_group(vbasoftware_database, prem_past_due_trigger_group_key, prem_past_due_trigger_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->update_prem_past_due_trigger_group: #{e}"
end
```

#### Using the update_prem_past_due_trigger_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremPastDueTriggerGroupVBAResponse>, Integer, Hash)> update_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group_key, prem_past_due_trigger_group)

```ruby
begin
  # Update PremPastDueTriggerGroup
  data, status_code, headers = api_instance.update_prem_past_due_trigger_group_with_http_info(vbasoftware_database, prem_past_due_trigger_group_key, prem_past_due_trigger_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremPastDueTriggerGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumPastDueGroupTriggersApi->update_prem_past_due_trigger_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_past_due_trigger_group_key** | **Integer** | PremPastDueTriggerGroup Key |  |
| **prem_past_due_trigger_group** | [**PremPastDueTriggerGroup**](PremPastDueTriggerGroup.md) |  |  |

### Return type

[**PremPastDueTriggerGroupVBAResponse**](PremPastDueTriggerGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

