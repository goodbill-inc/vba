# Vba::ClaimQueueScheduleNotifyUserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_schedule_notify_group**](ClaimQueueScheduleNotifyUserGroupsApi.md#create_claim_queue_schedule_notify_group) | **POST** /claim-queue-schedules/{claimQueueScheduleKey}/notify-user-groups | Create ClaimQueueScheduleNotifyGroup |
| [**delete_claim_queue_schedule_notify_group**](ClaimQueueScheduleNotifyUserGroupsApi.md#delete_claim_queue_schedule_notify_group) | **DELETE** /claim-queue-schedules/{claimQueueScheduleKey}/notify-user-groups/{userGroupKey} | Delete ClaimQueueScheduleNotifyGroup |
| [**get_claim_queue_schedule_notify_group**](ClaimQueueScheduleNotifyUserGroupsApi.md#get_claim_queue_schedule_notify_group) | **GET** /claim-queue-schedules/{claimQueueScheduleKey}/notify-user-groups/{userGroupKey} | Get ClaimQueueScheduleNotifyGroup |
| [**list_claim_queue_schedule_notify_group**](ClaimQueueScheduleNotifyUserGroupsApi.md#list_claim_queue_schedule_notify_group) | **GET** /claim-queue-schedules/{claimQueueScheduleKey}/notify-user-groups | List ClaimQueueScheduleNotifyGroup |
| [**update_batch_claim_queue_schedule_notify_group**](ClaimQueueScheduleNotifyUserGroupsApi.md#update_batch_claim_queue_schedule_notify_group) | **PUT** /claim-queue-schedules/{claimQueueScheduleKey}/notify-user-groups-batch | Create or Update Batch ClaimQueueScheduleNotifyGroup |


## create_claim_queue_schedule_notify_group

> <ClaimQueueScheduleNotifyGroupVBAResponse> create_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)

Create ClaimQueueScheduleNotifyGroup

Creates a new ClaimQueueScheduleNotifyGroup

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

api_instance = Vba::ClaimQueueScheduleNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
claim_queue_schedule_notify_group = Vba::ClaimQueueScheduleNotifyGroup.new({claim_queue_schedule_key: 37, user_group_key: 37}) # ClaimQueueScheduleNotifyGroup | 

begin
  # Create ClaimQueueScheduleNotifyGroup
  result = api_instance.create_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->create_claim_queue_schedule_notify_group: #{e}"
end
```

#### Using the create_claim_queue_schedule_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleNotifyGroupVBAResponse>, Integer, Hash)> create_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)

```ruby
begin
  # Create ClaimQueueScheduleNotifyGroup
  data, status_code, headers = api_instance.create_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleNotifyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->create_claim_queue_schedule_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **claim_queue_schedule_notify_group** | [**ClaimQueueScheduleNotifyGroup**](ClaimQueueScheduleNotifyGroup.md) |  |  |

### Return type

[**ClaimQueueScheduleNotifyGroupVBAResponse**](ClaimQueueScheduleNotifyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_schedule_notify_group

> delete_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, user_group_key)

Delete ClaimQueueScheduleNotifyGroup

Deletes an ClaimQueueScheduleNotifyGroup

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

api_instance = Vba::ClaimQueueScheduleNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
user_group_key = 56 # Integer | UserGroup Key

begin
  # Delete ClaimQueueScheduleNotifyGroup
  api_instance.delete_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->delete_claim_queue_schedule_notify_group: #{e}"
end
```

#### Using the delete_claim_queue_schedule_notify_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_group_key)

```ruby
begin
  # Delete ClaimQueueScheduleNotifyGroup
  data, status_code, headers = api_instance.delete_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->delete_claim_queue_schedule_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_schedule_notify_group

> <ClaimQueueScheduleNotifyGroupVBAResponse> get_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, user_group_key)

Get ClaimQueueScheduleNotifyGroup

Gets ClaimQueueScheduleNotifyGroup

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

api_instance = Vba::ClaimQueueScheduleNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
user_group_key = 56 # Integer | UserGroup Key

begin
  # Get ClaimQueueScheduleNotifyGroup
  result = api_instance.get_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->get_claim_queue_schedule_notify_group: #{e}"
end
```

#### Using the get_claim_queue_schedule_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleNotifyGroupVBAResponse>, Integer, Hash)> get_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_group_key)

```ruby
begin
  # Get ClaimQueueScheduleNotifyGroup
  data, status_code, headers = api_instance.get_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleNotifyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->get_claim_queue_schedule_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

[**ClaimQueueScheduleNotifyGroupVBAResponse**](ClaimQueueScheduleNotifyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_schedule_notify_group

> <ClaimQueueScheduleNotifyGroupListVBAResponse> list_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, opts)

List ClaimQueueScheduleNotifyGroup

Lists all ClaimQueueScheduleNotifyGroup for the given claimQueueScheduleKey

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

api_instance = Vba::ClaimQueueScheduleNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueScheduleNotifyGroup
  result = api_instance.list_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->list_claim_queue_schedule_notify_group: #{e}"
end
```

#### Using the list_claim_queue_schedule_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleNotifyGroupListVBAResponse>, Integer, Hash)> list_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, opts)

```ruby
begin
  # List ClaimQueueScheduleNotifyGroup
  data, status_code, headers = api_instance.list_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleNotifyGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->list_claim_queue_schedule_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimQueueScheduleNotifyGroupListVBAResponse**](ClaimQueueScheduleNotifyGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_schedule_notify_group

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)

Create or Update Batch ClaimQueueScheduleNotifyGroup

Create or Update multiple ClaimQueueScheduleNotifyGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueScheduleNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
claim_queue_schedule_notify_group = [Vba::ClaimQueueScheduleNotifyGroup.new({claim_queue_schedule_key: 37, user_group_key: 37})] # Array<ClaimQueueScheduleNotifyGroup> | 

begin
  # Create or Update Batch ClaimQueueScheduleNotifyGroup
  result = api_instance.update_batch_claim_queue_schedule_notify_group(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->update_batch_claim_queue_schedule_notify_group: #{e}"
end
```

#### Using the update_batch_claim_queue_schedule_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)

```ruby
begin
  # Create or Update Batch ClaimQueueScheduleNotifyGroup
  data, status_code, headers = api_instance.update_batch_claim_queue_schedule_notify_group_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUserGroupsApi->update_batch_claim_queue_schedule_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **claim_queue_schedule_notify_group** | [**Array&lt;ClaimQueueScheduleNotifyGroup&gt;**](ClaimQueueScheduleNotifyGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

