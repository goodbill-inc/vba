# Vba::UserLogTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_log_type**](UserLogTypesApi.md#create_user_log_type) | **POST** /users/{userID}/log-types/{logType} | Create UserLogType Assignment |
| [**delete_user_log_type**](UserLogTypesApi.md#delete_user_log_type) | **DELETE** /users/{userID}/log-types/{logType} | Delete User LogType |
| [**get_user_log_type**](UserLogTypesApi.md#get_user_log_type) | **GET** /users/{userID}/log-types/{logType} | Get UserLogType |
| [**list_user_log_types**](UserLogTypesApi.md#list_user_log_types) | **GET** /users/{userID}/log-types | List User LogTypes |
| [**update_batch_user_log_type**](UserLogTypesApi.md#update_batch_user_log_type) | **PUT** /users/{userID}/log-types-batch | Create Batch User LogType |


## create_user_log_type

> <UserLogTypeVBAResponse> create_user_log_type(vbasoftware_database, user_id, log_type)

Create UserLogType Assignment

Creates a new link between an existing User and a LogType

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

api_instance = Vba::UserLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
log_type = 'log_type_example' # String | Log Type

begin
  # Create UserLogType Assignment
  result = api_instance.create_user_log_type(vbasoftware_database, user_id, log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->create_user_log_type: #{e}"
end
```

#### Using the create_user_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLogTypeVBAResponse>, Integer, Hash)> create_user_log_type_with_http_info(vbasoftware_database, user_id, log_type)

```ruby
begin
  # Create UserLogType Assignment
  data, status_code, headers = api_instance.create_user_log_type_with_http_info(vbasoftware_database, user_id, log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->create_user_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **log_type** | **String** | Log Type |  |

### Return type

[**UserLogTypeVBAResponse**](UserLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_user_log_type

> delete_user_log_type(vbasoftware_database, user_id, log_type)

Delete User LogType

Deletes a specific User to LogType assignment

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

api_instance = Vba::UserLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
log_type = 'log_type_example' # String | Log Type

begin
  # Delete User LogType
  api_instance.delete_user_log_type(vbasoftware_database, user_id, log_type)
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->delete_user_log_type: #{e}"
end
```

#### Using the delete_user_log_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_log_type_with_http_info(vbasoftware_database, user_id, log_type)

```ruby
begin
  # Delete User LogType
  data, status_code, headers = api_instance.delete_user_log_type_with_http_info(vbasoftware_database, user_id, log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->delete_user_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **log_type** | **String** | Log Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_log_type

> <UserLogTypeVBAResponse> get_user_log_type(vbasoftware_database, user_id, log_type)

Get UserLogType

Gets UserLogType

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

api_instance = Vba::UserLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
log_type = 'log_type_example' # String | LogType

begin
  # Get UserLogType
  result = api_instance.get_user_log_type(vbasoftware_database, user_id, log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->get_user_log_type: #{e}"
end
```

#### Using the get_user_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLogTypeVBAResponse>, Integer, Hash)> get_user_log_type_with_http_info(vbasoftware_database, user_id, log_type)

```ruby
begin
  # Get UserLogType
  data, status_code, headers = api_instance.get_user_log_type_with_http_info(vbasoftware_database, user_id, log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLogTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->get_user_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **log_type** | **String** | LogType |  |

### Return type

[**UserLogTypeVBAResponse**](UserLogTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_log_types

> <UserLogTypeListVBAResponse> list_user_log_types(vbasoftware_database, user_id)

List User LogTypes

Lists all LogTypes for a specific User ID

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

api_instance = Vba::UserLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # List User LogTypes
  result = api_instance.list_user_log_types(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->list_user_log_types: #{e}"
end
```

#### Using the list_user_log_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserLogTypeListVBAResponse>, Integer, Hash)> list_user_log_types_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # List User LogTypes
  data, status_code, headers = api_instance.list_user_log_types_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserLogTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->list_user_log_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UserLogTypeListVBAResponse**](UserLogTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_user_log_type

> <MultiCodeResponseListVBAResponse> update_batch_user_log_type(vbasoftware_database, user_id, user_log_type)

Create Batch User LogType

Create multiple User LogType assignments at once.

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

api_instance = Vba::UserLogTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_log_type = [Vba::UserLogType.new({user_id: 'user_id_example', log_type: 'log_type_example'})] # Array<UserLogType> | 

begin
  # Create Batch User LogType
  result = api_instance.update_batch_user_log_type(vbasoftware_database, user_id, user_log_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->update_batch_user_log_type: #{e}"
end
```

#### Using the update_batch_user_log_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_user_log_type_with_http_info(vbasoftware_database, user_id, user_log_type)

```ruby
begin
  # Create Batch User LogType
  data, status_code, headers = api_instance.update_batch_user_log_type_with_http_info(vbasoftware_database, user_id, user_log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserLogTypesApi->update_batch_user_log_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_log_type** | [**Array&lt;UserLogType&gt;**](UserLogType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

