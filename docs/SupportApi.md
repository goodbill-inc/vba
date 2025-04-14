# Vba::SupportApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_support_user**](SupportApi.md#create_support_user) | **POST** /support/client-users/add-me | Create Support User in a client environment |
| [**disable_support_user**](SupportApi.md#disable_support_user) | **POST** /support/client-users/disable-me | Disables the Support User in a client environment |
| [**get_client**](SupportApi.md#get_client) | **GET** /support/client | Get Client |
| [**list_client_users**](SupportApi.md#list_client_users) | **GET** /support/client-users | List of all Users in a client environment |
| [**list_clients**](SupportApi.md#list_clients) | **GET** /support/clients | List All Clients |


## create_support_user

> <UsersVBAResponse> create_support_user(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database, opts)

Create Support User in a client environment

This endpoint allows you to create a support user and add them to a specific client's database.

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

api_instance = Vba::SupportApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Support Database
target_vbasoftware_client_id = 'target_vbasoftware_client_id_example' # String | Target Client ID
target_vbasoftware_client_code = 'target_vbasoftware_client_code_example' # String | Target Client Code
target_vbasoftware_database = 'target_vbasoftware_database_example' # String | Target Client Database
opts = {
  user_id_to_clone: 'user_id_to_clone_example', # String | Client User ID to Clone
  make_admin: true # Boolean | Make Administrator
}

begin
  # Create Support User in a client environment
  result = api_instance.create_support_user(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->create_support_user: #{e}"
end
```

#### Using the create_support_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersVBAResponse>, Integer, Hash)> create_support_user_with_http_info(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database, opts)

```ruby
begin
  # Create Support User in a client environment
  data, status_code, headers = api_instance.create_support_user_with_http_info(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->create_support_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Support Database |  |
| **target_vbasoftware_client_id** | **String** | Target Client ID |  |
| **target_vbasoftware_client_code** | **String** | Target Client Code |  |
| **target_vbasoftware_database** | **String** | Target Client Database |  |
| **user_id_to_clone** | **String** | Client User ID to Clone | [optional] |
| **make_admin** | **Boolean** | Make Administrator | [optional][default to false] |

### Return type

[**UsersVBAResponse**](UsersVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## disable_support_user

> disable_support_user(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)

Disables the Support User in a client environment

This endpoint allows you to disable the currently authenticated Support user within the client's environment instead of deleting them.

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

api_instance = Vba::SupportApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Support Database
target_vbasoftware_client_id = 'target_vbasoftware_client_id_example' # String | Target Client ID
target_vbasoftware_client_code = 'target_vbasoftware_client_code_example' # String | Target Client Code
target_vbasoftware_database = 'target_vbasoftware_database_example' # String | Target Client Database

begin
  # Disables the Support User in a client environment
  api_instance.disable_support_user(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->disable_support_user: #{e}"
end
```

#### Using the disable_support_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_support_user_with_http_info(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)

```ruby
begin
  # Disables the Support User in a client environment
  data, status_code, headers = api_instance.disable_support_user_with_http_info(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->disable_support_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Support Database |  |
| **target_vbasoftware_client_id** | **String** | Target Client ID |  |
| **target_vbasoftware_client_code** | **String** | Target Client Code |  |
| **target_vbasoftware_database** | **String** | Target Client Database |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_client

> <VBAClientVBAResponse> get_client(vbasoftware_database, client_id, client_code)

Get Client

Gets the client details for the given client id and client code.

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

api_instance = Vba::SupportApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Support Database
client_id = 'client_id_example' # String | Client ID
client_code = 'client_code_example' # String | Client Code

begin
  # Get Client
  result = api_instance.get_client(vbasoftware_database, client_id, client_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->get_client: #{e}"
end
```

#### Using the get_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAClientVBAResponse>, Integer, Hash)> get_client_with_http_info(vbasoftware_database, client_id, client_code)

```ruby
begin
  # Get Client
  data, status_code, headers = api_instance.get_client_with_http_info(vbasoftware_database, client_id, client_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAClientVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->get_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Support Database |  |
| **client_id** | **String** | Client ID |  |
| **client_code** | **String** | Client Code |  |

### Return type

[**VBAClientVBAResponse**](VBAClientVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_client_users

> <UsersListVBAResponse> list_client_users(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)

List of all Users in a client environment



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

api_instance = Vba::SupportApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Support Database
target_vbasoftware_client_id = 'target_vbasoftware_client_id_example' # String | Target Client ID
target_vbasoftware_client_code = 'target_vbasoftware_client_code_example' # String | Target Client Code
target_vbasoftware_database = 'target_vbasoftware_database_example' # String | Target Client Database

begin
  # List of all Users in a client environment
  result = api_instance.list_client_users(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->list_client_users: #{e}"
end
```

#### Using the list_client_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersListVBAResponse>, Integer, Hash)> list_client_users_with_http_info(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)

```ruby
begin
  # List of all Users in a client environment
  data, status_code, headers = api_instance.list_client_users_with_http_info(vbasoftware_database, target_vbasoftware_client_id, target_vbasoftware_client_code, target_vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->list_client_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Support Database |  |
| **target_vbasoftware_client_id** | **String** | Target Client ID |  |
| **target_vbasoftware_client_code** | **String** | Target Client Code |  |
| **target_vbasoftware_database** | **String** | Target Client Database |  |

### Return type

[**UsersListVBAResponse**](UsersListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_clients

> <VBAClientListVBAResponse> list_clients(vbasoftware_database)

List All Clients

Lists the clients

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

api_instance = Vba::SupportApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Support Database

begin
  # List All Clients
  result = api_instance.list_clients(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->list_clients: #{e}"
end
```

#### Using the list_clients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAClientListVBAResponse>, Integer, Hash)> list_clients_with_http_info(vbasoftware_database)

```ruby
begin
  # List All Clients
  data, status_code, headers = api_instance.list_clients_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAClientListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SupportApi->list_clients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Support Database |  |

### Return type

[**VBAClientListVBAResponse**](VBAClientListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

