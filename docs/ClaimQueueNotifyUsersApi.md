# Vba::ClaimQueueNotifyUsersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_notify_user**](ClaimQueueNotifyUsersApi.md#create_claim_queue_notify_user) | **POST** /claim-queues/{claimQueueKey}/notify-users | Create ClaimQueueNotifyUser |
| [**delete_claim_queue_notify_user**](ClaimQueueNotifyUsersApi.md#delete_claim_queue_notify_user) | **DELETE** /claim-queues/{claimQueueKey}/notify-users/{userID} | Delete ClaimQueueNotifyUser |
| [**get_claim_queue_notify_user**](ClaimQueueNotifyUsersApi.md#get_claim_queue_notify_user) | **GET** /claim-queues/{claimQueueKey}/notify-users/{userID} | Get ClaimQueueNotifyUser |
| [**list_claim_queue_notify_user**](ClaimQueueNotifyUsersApi.md#list_claim_queue_notify_user) | **GET** /claim-queues/{claimQueueKey}/notify-users | List ClaimQueueNotifyUser |
| [**update_batch_claim_queue_notify_user**](ClaimQueueNotifyUsersApi.md#update_batch_claim_queue_notify_user) | **PUT** /claim-queues/{claimQueueKey}/notify-users-batch | Create or Update Batch ClaimQueueNotifyUser |


## create_claim_queue_notify_user

> <ClaimQueueNotifyUserVBAResponse> create_claim_queue_notify_user(vbasoftware_database, claim_queue_key, claim_queue_notify_user)

Create ClaimQueueNotifyUser

Creates a new ClaimQueueNotifyUser

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

api_instance = Vba::ClaimQueueNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue_notify_user = Vba::ClaimQueueNotifyUser.new({claim_queue_key: 37, user_id: 'user_id_example'}) # ClaimQueueNotifyUser | 

begin
  # Create ClaimQueueNotifyUser
  result = api_instance.create_claim_queue_notify_user(vbasoftware_database, claim_queue_key, claim_queue_notify_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->create_claim_queue_notify_user: #{e}"
end
```

#### Using the create_claim_queue_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueNotifyUserVBAResponse>, Integer, Hash)> create_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_user)

```ruby
begin
  # Create ClaimQueueNotifyUser
  data, status_code, headers = api_instance.create_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueNotifyUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->create_claim_queue_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue_notify_user** | [**ClaimQueueNotifyUser**](ClaimQueueNotifyUser.md) |  |  |

### Return type

[**ClaimQueueNotifyUserVBAResponse**](ClaimQueueNotifyUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_notify_user

> delete_claim_queue_notify_user(vbasoftware_database, claim_queue_key, user_id)

Delete ClaimQueueNotifyUser

Deletes an ClaimQueueNotifyUser

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

api_instance = Vba::ClaimQueueNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
user_id = 'user_id_example' # String | User ID

begin
  # Delete ClaimQueueNotifyUser
  api_instance.delete_claim_queue_notify_user(vbasoftware_database, claim_queue_key, user_id)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->delete_claim_queue_notify_user: #{e}"
end
```

#### Using the delete_claim_queue_notify_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, user_id)

```ruby
begin
  # Delete ClaimQueueNotifyUser
  data, status_code, headers = api_instance.delete_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->delete_claim_queue_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **user_id** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_notify_user

> <ClaimQueueNotifyUserVBAResponse> get_claim_queue_notify_user(vbasoftware_database, claim_queue_key, user_id)

Get ClaimQueueNotifyUser

Gets ClaimQueueNotifyUser

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

api_instance = Vba::ClaimQueueNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
user_id = 'user_id_example' # String | User ID

begin
  # Get ClaimQueueNotifyUser
  result = api_instance.get_claim_queue_notify_user(vbasoftware_database, claim_queue_key, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->get_claim_queue_notify_user: #{e}"
end
```

#### Using the get_claim_queue_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueNotifyUserVBAResponse>, Integer, Hash)> get_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, user_id)

```ruby
begin
  # Get ClaimQueueNotifyUser
  data, status_code, headers = api_instance.get_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueNotifyUserVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->get_claim_queue_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **user_id** | **String** | User ID |  |

### Return type

[**ClaimQueueNotifyUserVBAResponse**](ClaimQueueNotifyUserVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_notify_user

> <ClaimQueueNotifyUserListVBAResponse> list_claim_queue_notify_user(vbasoftware_database, claim_queue_key, opts)

List ClaimQueueNotifyUser

Lists all ClaimQueueNotifyUser for the given claimQueueKey

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

api_instance = Vba::ClaimQueueNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueNotifyUser
  result = api_instance.list_claim_queue_notify_user(vbasoftware_database, claim_queue_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->list_claim_queue_notify_user: #{e}"
end
```

#### Using the list_claim_queue_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueNotifyUserListVBAResponse>, Integer, Hash)> list_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, opts)

```ruby
begin
  # List ClaimQueueNotifyUser
  data, status_code, headers = api_instance.list_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueNotifyUserListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->list_claim_queue_notify_user_with_http_info: #{e}"
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

[**ClaimQueueNotifyUserListVBAResponse**](ClaimQueueNotifyUserListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_notify_user

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_notify_user(vbasoftware_database, claim_queue_key, claim_queue_notify_user)

Create or Update Batch ClaimQueueNotifyUser

Create or Update multiple ClaimQueueNotifyUser at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueNotifyUsersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_key = 56 # Integer | ClaimQueue Key
claim_queue_notify_user = [Vba::ClaimQueueNotifyUser.new({claim_queue_key: 37, user_id: 'user_id_example'})] # Array<ClaimQueueNotifyUser> | 

begin
  # Create or Update Batch ClaimQueueNotifyUser
  result = api_instance.update_batch_claim_queue_notify_user(vbasoftware_database, claim_queue_key, claim_queue_notify_user)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->update_batch_claim_queue_notify_user: #{e}"
end
```

#### Using the update_batch_claim_queue_notify_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_user)

```ruby
begin
  # Create or Update Batch ClaimQueueNotifyUser
  data, status_code, headers = api_instance.update_batch_claim_queue_notify_user_with_http_info(vbasoftware_database, claim_queue_key, claim_queue_notify_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueNotifyUsersApi->update_batch_claim_queue_notify_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_key** | **Integer** | ClaimQueue Key |  |
| **claim_queue_notify_user** | [**Array&lt;ClaimQueueNotifyUser&gt;**](ClaimQueueNotifyUser.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

