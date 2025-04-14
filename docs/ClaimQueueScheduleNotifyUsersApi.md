# Vba::ClaimQueueScheduleNotifyUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_schedule_notify_user**](ClaimQueueScheduleNotifyUsersApi.md#create_claim_queue_schedule_notify_user) | **POST** /claim-queue-schedules/{claimQueueScheduleKey}/notify-users | Create ClaimQueueScheduleNotifyUser |
| [**delete_claim_queue_schedule_notify_user**](ClaimQueueScheduleNotifyUsersApi.md#delete_claim_queue_schedule_notify_user) | **DELETE** /claim-queue-schedules/{claimQueueScheduleKey}/notify-users/{userID} | Delete ClaimQueueScheduleNotifyUser |
| [**get_claim_queue_schedule_notify_user**](ClaimQueueScheduleNotifyUsersApi.md#get_claim_queue_schedule_notify_user) | **GET** /claim-queue-schedules/{claimQueueScheduleKey}/notify-users/{userID} | Get ClaimQueueScheduleNotifyUser |
| [**list_claim_queue_schedule_notify_user**](ClaimQueueScheduleNotifyUsersApi.md#list_claim_queue_schedule_notify_user) | **GET** /claim-queue-schedules/{claimQueueScheduleKey}/notify-users | List ClaimQueueScheduleNotifyUser |
| [**update_batch_claim_queue_schedule_notify_user**](ClaimQueueScheduleNotifyUsersApi.md#update_batch_claim_queue_schedule_notify_user) | **PUT** /claim-queue-schedules/{claimQueueScheduleKey}/notify-users-batch | Create or Update Batch ClaimQueueScheduleNotifyUser |


## create_claim_queue_schedule_notify_user

> <ClaimQueueScheduleNotifyUserVBAResponse> create_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)

Create ClaimQueueScheduleNotifyUser

Creates a new ClaimQueueScheduleNotifyUser

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

api_instance = Vba::ClaimQueueScheduleNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
claim_queue_schedule_notify_user = Vba::ClaimQueueScheduleNotifyUser.new({claim_queue_schedule_key: 37, user_id: 'user_id_example'}) # ClaimQueueScheduleNotifyUser | 

begin
  # Create ClaimQueueScheduleNotifyUser
  result = api_instance.create_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->create_claim_queue_schedule_notify_user: #{e}"
end
```

#### Using the create_claim_queue_schedule_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleNotifyUserVBAResponse>, Integer, Hash)> create_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)

```ruby
begin
  # Create ClaimQueueScheduleNotifyUser
  data, status_code, headers = api_instance.create_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleNotifyUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->create_claim_queue_schedule_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **claim_queue_schedule_notify_user** | [**ClaimQueueScheduleNotifyUser**](ClaimQueueScheduleNotifyUser.md) |  |  |

### Return type

[**ClaimQueueScheduleNotifyUserVBAResponse**](ClaimQueueScheduleNotifyUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_schedule_notify_user

> delete_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, user_id)

Delete ClaimQueueScheduleNotifyUser

Deletes an ClaimQueueScheduleNotifyUser

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

api_instance = Vba::ClaimQueueScheduleNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
user_id = 'user_id_example' # String | User ID

begin
  # Delete ClaimQueueScheduleNotifyUser
  api_instance.delete_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, user_id)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->delete_claim_queue_schedule_notify_user: #{e}"
end
```

#### Using the delete_claim_queue_schedule_notify_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_id)

```ruby
begin
  # Delete ClaimQueueScheduleNotifyUser
  data, status_code, headers = api_instance.delete_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->delete_claim_queue_schedule_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_schedule_notify_user

> <ClaimQueueScheduleNotifyUserVBAResponse> get_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, user_id)

Get ClaimQueueScheduleNotifyUser

Gets ClaimQueueScheduleNotifyUser

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

api_instance = Vba::ClaimQueueScheduleNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
user_id = 'user_id_example' # String | User ID

begin
  # Get ClaimQueueScheduleNotifyUser
  result = api_instance.get_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->get_claim_queue_schedule_notify_user: #{e}"
end
```

#### Using the get_claim_queue_schedule_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleNotifyUserVBAResponse>, Integer, Hash)> get_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_id)

```ruby
begin
  # Get ClaimQueueScheduleNotifyUser
  data, status_code, headers = api_instance.get_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleNotifyUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->get_claim_queue_schedule_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **user_id** | **String** | User ID |  |

### Return type

[**ClaimQueueScheduleNotifyUserVBAResponse**](ClaimQueueScheduleNotifyUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_schedule_notify_user

> <ClaimQueueScheduleNotifyUserListVBAResponse> list_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, opts)

List ClaimQueueScheduleNotifyUser

Lists all ClaimQueueScheduleNotifyUser for the given claimQueueScheduleKey

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

api_instance = Vba::ClaimQueueScheduleNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueScheduleNotifyUser
  result = api_instance.list_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->list_claim_queue_schedule_notify_user: #{e}"
end
```

#### Using the list_claim_queue_schedule_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueScheduleNotifyUserListVBAResponse>, Integer, Hash)> list_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, opts)

```ruby
begin
  # List ClaimQueueScheduleNotifyUser
  data, status_code, headers = api_instance.list_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueScheduleNotifyUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->list_claim_queue_schedule_notify_user_with_http_info: #{e}"
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

[**ClaimQueueScheduleNotifyUserListVBAResponse**](ClaimQueueScheduleNotifyUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_schedule_notify_user

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)

Create or Update Batch ClaimQueueScheduleNotifyUser

Create or Update multiple ClaimQueueScheduleNotifyUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueScheduleNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_schedule_key = 56 # Integer | ClaimQueueSchedule Key
claim_queue_schedule_notify_user = [Vba::ClaimQueueScheduleNotifyUser.new({claim_queue_schedule_key: 37, user_id: 'user_id_example'})] # Array<ClaimQueueScheduleNotifyUser> | 

begin
  # Create or Update Batch ClaimQueueScheduleNotifyUser
  result = api_instance.update_batch_claim_queue_schedule_notify_user(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->update_batch_claim_queue_schedule_notify_user: #{e}"
end
```

#### Using the update_batch_claim_queue_schedule_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)

```ruby
begin
  # Create or Update Batch ClaimQueueScheduleNotifyUser
  data, status_code, headers = api_instance.update_batch_claim_queue_schedule_notify_user_with_http_info(vbasoftware_database, claim_queue_schedule_key, claim_queue_schedule_notify_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueScheduleNotifyUsersApi->update_batch_claim_queue_schedule_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_schedule_key** | **Integer** | ClaimQueueSchedule Key |  |
| **claim_queue_schedule_notify_user** | [**Array&lt;ClaimQueueScheduleNotifyUser&gt;**](ClaimQueueScheduleNotifyUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

