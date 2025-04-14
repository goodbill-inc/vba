# Vba::DisabilityEventGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disability_event_group**](DisabilityEventGroupsApi.md#create_disability_event_group) | **POST** /disability-event-groups | Create DisabilityEventGroup |
| [**delete_disability_event_group**](DisabilityEventGroupsApi.md#delete_disability_event_group) | **DELETE** /disability-event-groups/{DisabilityEventGroup_Key} | Delete DisabilityEventGroup |
| [**get_disability_event_group**](DisabilityEventGroupsApi.md#get_disability_event_group) | **GET** /disability-event-groups/{DisabilityEventGroup_Key} | Get DisabilityEventGroup |
| [**list_disability_event_group**](DisabilityEventGroupsApi.md#list_disability_event_group) | **GET** /disability-event-groups | List DisabilityEventGroup |
| [**update_batch_disability_event_group**](DisabilityEventGroupsApi.md#update_batch_disability_event_group) | **PUT** /disability-event-groups-batch | Create or Update Batch DisabilityEventGroup |
| [**update_disability_event_group**](DisabilityEventGroupsApi.md#update_disability_event_group) | **PUT** /disability-event-groups/{DisabilityEventGroup_Key} | Update DisabilityEventGroup |


## create_disability_event_group

> <DisabilityEventGroupVBAResponse> create_disability_event_group(vbasoftware_database, disability_event_group)

Create DisabilityEventGroup

Creates a new DisabilityEventGroup

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

api_instance = Vba::DisabilityEventGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_group = Vba::DisabilityEventGroup.new({disability_event_group_key: 37}) # DisabilityEventGroup | 

begin
  # Create DisabilityEventGroup
  result = api_instance.create_disability_event_group(vbasoftware_database, disability_event_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->create_disability_event_group: #{e}"
end
```

#### Using the create_disability_event_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventGroupVBAResponse>, Integer, Hash)> create_disability_event_group_with_http_info(vbasoftware_database, disability_event_group)

```ruby
begin
  # Create DisabilityEventGroup
  data, status_code, headers = api_instance.create_disability_event_group_with_http_info(vbasoftware_database, disability_event_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->create_disability_event_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_group** | [**DisabilityEventGroup**](DisabilityEventGroup.md) |  |  |

### Return type

[**DisabilityEventGroupVBAResponse**](DisabilityEventGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disability_event_group

> delete_disability_event_group(vbasoftware_database, disability_event_group_key)

Delete DisabilityEventGroup

Deletes an DisabilityEventGroup

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

api_instance = Vba::DisabilityEventGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_group_key = 56 # Integer | DisabilityEventGroup Key

begin
  # Delete DisabilityEventGroup
  api_instance.delete_disability_event_group(vbasoftware_database, disability_event_group_key)
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->delete_disability_event_group: #{e}"
end
```

#### Using the delete_disability_event_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disability_event_group_with_http_info(vbasoftware_database, disability_event_group_key)

```ruby
begin
  # Delete DisabilityEventGroup
  data, status_code, headers = api_instance.delete_disability_event_group_with_http_info(vbasoftware_database, disability_event_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->delete_disability_event_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_group_key** | **Integer** | DisabilityEventGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disability_event_group

> <DisabilityEventGroupVBAResponse> get_disability_event_group(vbasoftware_database, disability_event_group_key)

Get DisabilityEventGroup

Gets DisabilityEventGroup

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

api_instance = Vba::DisabilityEventGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_group_key = 56 # Integer | DisabilityEventGroup Key

begin
  # Get DisabilityEventGroup
  result = api_instance.get_disability_event_group(vbasoftware_database, disability_event_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->get_disability_event_group: #{e}"
end
```

#### Using the get_disability_event_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventGroupVBAResponse>, Integer, Hash)> get_disability_event_group_with_http_info(vbasoftware_database, disability_event_group_key)

```ruby
begin
  # Get DisabilityEventGroup
  data, status_code, headers = api_instance.get_disability_event_group_with_http_info(vbasoftware_database, disability_event_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->get_disability_event_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_group_key** | **Integer** | DisabilityEventGroup Key |  |

### Return type

[**DisabilityEventGroupVBAResponse**](DisabilityEventGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disability_event_group

> <DisabilityEventGroupListVBAResponse> list_disability_event_group(vbasoftware_database, opts)

List DisabilityEventGroup

Lists all DisabilityEventGroup

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

api_instance = Vba::DisabilityEventGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisabilityEventGroup
  result = api_instance.list_disability_event_group(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->list_disability_event_group: #{e}"
end
```

#### Using the list_disability_event_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventGroupListVBAResponse>, Integer, Hash)> list_disability_event_group_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DisabilityEventGroup
  data, status_code, headers = api_instance.list_disability_event_group_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->list_disability_event_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**DisabilityEventGroupListVBAResponse**](DisabilityEventGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disability_event_group

> <MultiCodeResponseListVBAResponse> update_batch_disability_event_group(vbasoftware_database, disability_event_group)

Create or Update Batch DisabilityEventGroup

Create or Update multiple DisabilityEventGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisabilityEventGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_group = [Vba::DisabilityEventGroup.new({disability_event_group_key: 37})] # Array<DisabilityEventGroup> | 

begin
  # Create or Update Batch DisabilityEventGroup
  result = api_instance.update_batch_disability_event_group(vbasoftware_database, disability_event_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->update_batch_disability_event_group: #{e}"
end
```

#### Using the update_batch_disability_event_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disability_event_group_with_http_info(vbasoftware_database, disability_event_group)

```ruby
begin
  # Create or Update Batch DisabilityEventGroup
  data, status_code, headers = api_instance.update_batch_disability_event_group_with_http_info(vbasoftware_database, disability_event_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->update_batch_disability_event_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_group** | [**Array&lt;DisabilityEventGroup&gt;**](DisabilityEventGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disability_event_group

> <DisabilityEventGroupVBAResponse> update_disability_event_group(vbasoftware_database, disability_event_group_key, disability_event_group)

Update DisabilityEventGroup

Updates a specific DisabilityEventGroup.

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

api_instance = Vba::DisabilityEventGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disability_event_group_key = 56 # Integer | DisabilityEventGroup Key
disability_event_group = Vba::DisabilityEventGroup.new({disability_event_group_key: 37}) # DisabilityEventGroup | 

begin
  # Update DisabilityEventGroup
  result = api_instance.update_disability_event_group(vbasoftware_database, disability_event_group_key, disability_event_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->update_disability_event_group: #{e}"
end
```

#### Using the update_disability_event_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisabilityEventGroupVBAResponse>, Integer, Hash)> update_disability_event_group_with_http_info(vbasoftware_database, disability_event_group_key, disability_event_group)

```ruby
begin
  # Update DisabilityEventGroup
  data, status_code, headers = api_instance.update_disability_event_group_with_http_info(vbasoftware_database, disability_event_group_key, disability_event_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisabilityEventGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisabilityEventGroupsApi->update_disability_event_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disability_event_group_key** | **Integer** | DisabilityEventGroup Key |  |
| **disability_event_group** | [**DisabilityEventGroup**](DisabilityEventGroup.md) |  |  |

### Return type

[**DisabilityEventGroupVBAResponse**](DisabilityEventGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

