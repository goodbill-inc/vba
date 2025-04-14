# Vba::ClaimQueueNotifyUserGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_notify_group**](ClaimQueueNotifyUserGroupsApi.md#create_claim_queue_notify_group) | **POST** /claim-queues/{claimQueueKey}/notify-user-groups | Create ClaimQueueNotifyGroup |
| [**delete_claim_queue_notify_group**](ClaimQueueNotifyUserGroupsApi.md#delete_claim_queue_notify_group) | **DELETE** /claim-queues/{claimQueueKey}/notify-user-groups/{userGroupKey} | Delete ClaimQueueNotifyGroup |
| [**get_claim_queue_notify_group**](ClaimQueueNotifyUserGroupsApi.md#get_claim_queue_notify_group) | **GET** /claim-queues/{claimQueueKey}/notify-user-groups/{userGroupKey} | Get ClaimQueueNotifyGroup |
| [**list_claim_queue_notify_group**](ClaimQueueNotifyUserGroupsApi.md#list_claim_queue_notify_group) | **GET** /claim-queues/{claimQueueKey}/notify-user-groups | List ClaimQueueNotifyGroup |
| [**update_batch_claim_queue_notify_group**](ClaimQueueNotifyUserGroupsApi.md#update_batch_claim_queue_notify_group) | **PUT** /claim-queues/{claimQueueKey}/notify-user-groups-batch | Create or Update Batch ClaimQueueNotifyGroup |


## create_claim_queue_notify_group

> <ClaimQueueNotifyGroupVBAResponse> create_claim_queue_notify_group(vbasoftware_database, claim_queue_key, claim_queue_notify_group)

Create ClaimQueueNotifyGroup

Creates a new ClaimQueueNotifyGroup

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

api_instance = Vba::ClaimQueueNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue_notify_group = Vba::ClaimQueueNotifyGroup.new({claim_queue_key: 37, user_group_key: 37}) # ClaimQueueNotifyGroup | 

begin
  # Create ClaimQueueNotifyGroup
  result = api_instance.create_claim_queue_notify_group(vbasoftware_database, claim_queue_key, claim_queue_notify_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->create_claim_queue_notify_group: #{e}"
end
```

#### Using the create_claim_queue_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueNotifyGroupVBAResponse>, Integer, Hash)> create_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_group)

```ruby
begin
  # Create ClaimQueueNotifyGroup
  data, status_code, headers = api_instance.create_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueNotifyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->create_claim_queue_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue_notify_group** | [**ClaimQueueNotifyGroup**](ClaimQueueNotifyGroup.md) |  |  |

### Return type

[**ClaimQueueNotifyGroupVBAResponse**](ClaimQueueNotifyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_notify_group

> delete_claim_queue_notify_group(vbasoftware_database, claim_queue_key, user_group_key)

Delete ClaimQueueNotifyGroup

Deletes an ClaimQueueNotifyGroup

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

api_instance = Vba::ClaimQueueNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
user_group_key = 56 # Integer | UserGroup Key

begin
  # Delete ClaimQueueNotifyGroup
  api_instance.delete_claim_queue_notify_group(vbasoftware_database, claim_queue_key, user_group_key)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->delete_claim_queue_notify_group: #{e}"
end
```

#### Using the delete_claim_queue_notify_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, user_group_key)

```ruby
begin
  # Delete ClaimQueueNotifyGroup
  data, status_code, headers = api_instance.delete_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->delete_claim_queue_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_notify_group

> <ClaimQueueNotifyGroupVBAResponse> get_claim_queue_notify_group(vbasoftware_database, claim_queue_key, user_group_key)

Get ClaimQueueNotifyGroup

Gets ClaimQueueNotifyGroup

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

api_instance = Vba::ClaimQueueNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
user_group_key = 56 # Integer | UserGroup Key

begin
  # Get ClaimQueueNotifyGroup
  result = api_instance.get_claim_queue_notify_group(vbasoftware_database, claim_queue_key, user_group_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->get_claim_queue_notify_group: #{e}"
end
```

#### Using the get_claim_queue_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueNotifyGroupVBAResponse>, Integer, Hash)> get_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, user_group_key)

```ruby
begin
  # Get ClaimQueueNotifyGroup
  data, status_code, headers = api_instance.get_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, user_group_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueNotifyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->get_claim_queue_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **user_group_key** | **Integer** | UserGroup Key |  |

### Return type

[**ClaimQueueNotifyGroupVBAResponse**](ClaimQueueNotifyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_notify_group

> <ClaimQueueNotifyGroupListVBAResponse> list_claim_queue_notify_group(vbasoftware_database, claim_queue_key, opts)

List ClaimQueueNotifyGroup

Lists all ClaimQueueNotifyGroup for the given claimQueueKey

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

api_instance = Vba::ClaimQueueNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueNotifyGroup
  result = api_instance.list_claim_queue_notify_group(vbasoftware_database, claim_queue_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->list_claim_queue_notify_group: #{e}"
end
```

#### Using the list_claim_queue_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueNotifyGroupListVBAResponse>, Integer, Hash)> list_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, opts)

```ruby
begin
  # List ClaimQueueNotifyGroup
  data, status_code, headers = api_instance.list_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueNotifyGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->list_claim_queue_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimQueueNotifyGroupListVBAResponse**](ClaimQueueNotifyGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_notify_group

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_notify_group(vbasoftware_database, claim_queue_key, claim_queue_notify_group)

Create or Update Batch ClaimQueueNotifyGroup

Create or Update multiple ClaimQueueNotifyGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueNotifyUserGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue_notify_group = [Vba::ClaimQueueNotifyGroup.new({claim_queue_key: 37, user_group_key: 37})] # Array<ClaimQueueNotifyGroup> | 

begin
  # Create or Update Batch ClaimQueueNotifyGroup
  result = api_instance.update_batch_claim_queue_notify_group(vbasoftware_database, claim_queue_key, claim_queue_notify_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->update_batch_claim_queue_notify_group: #{e}"
end
```

#### Using the update_batch_claim_queue_notify_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_group)

```ruby
begin
  # Create or Update Batch ClaimQueueNotifyGroup
  data, status_code, headers = api_instance.update_batch_claim_queue_notify_group_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUserGroupsApi->update_batch_claim_queue_notify_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue_notify_group** | [**Array&lt;ClaimQueueNotifyGroup&gt;**](ClaimQueueNotifyGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

