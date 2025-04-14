# Vba::UserAmountProcedureApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_amount_procedure**](UserAmountProcedureApi.md#create_user_amount_procedure) | **POST** /users/{userID}/amounts/{userAmountKey}/procedures | Create UserAmountProcedure |
| [**delete_user_amount_procedure**](UserAmountProcedureApi.md#delete_user_amount_procedure) | **DELETE** /users/{userID}/amounts/{userAmountKey}/procedures/{userAmountProcedureKey} | Delete UserAmountProcedure |
| [**get_user_amount_procedure**](UserAmountProcedureApi.md#get_user_amount_procedure) | **GET** /users/{userID}/amounts/{userAmountKey}/procedures/{userAmountProcedureKey} | Get UserAmountProcedure |
| [**list_user_amount_procedure**](UserAmountProcedureApi.md#list_user_amount_procedure) | **GET** /users/{userID}/amounts/{userAmountKey}/procedures | List UserAmountProcedure |
| [**update_batch_user_amount_procedure**](UserAmountProcedureApi.md#update_batch_user_amount_procedure) | **PUT** /users/{userID}/amounts/{userAmountKey}/procedures-batch | Create or Update Batch UserAmountProcedure |
| [**update_user_amount_procedure**](UserAmountProcedureApi.md#update_user_amount_procedure) | **PUT** /users/{userID}/amounts/{userAmountKey}/procedures/{userAmountProcedureKey} | Update UserAmountProcedure |


## create_user_amount_procedure

> <UserAmountProcedureVBAResponse> create_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)

Create UserAmountProcedure

Creates a new UserAmountProcedure

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

api_instance = Vba::UserAmountProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key
user_amount_procedure = Vba::UserAmountProcedure.new({user_amount_procedure_key: 37, user_amount_key: 37}) # UserAmountProcedure | 

begin
  # Create UserAmountProcedure
  result = api_instance.create_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->create_user_amount_procedure: #{e}"
end
```

#### Using the create_user_amount_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountProcedureVBAResponse>, Integer, Hash)> create_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)

```ruby
begin
  # Create UserAmountProcedure
  data, status_code, headers = api_instance.create_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->create_user_amount_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |
| **user_amount_procedure** | [**UserAmountProcedure**](UserAmountProcedure.md) |  |  |

### Return type

[**UserAmountProcedureVBAResponse**](UserAmountProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_user_amount_procedure

> delete_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)

Delete UserAmountProcedure

Deletes an UserAmountProcedure

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

api_instance = Vba::UserAmountProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key
user_amount_procedure_key = 56 # Integer | UserAmountProcedure Key

begin
  # Delete UserAmountProcedure
  api_instance.delete_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->delete_user_amount_procedure: #{e}"
end
```

#### Using the delete_user_amount_procedure_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)

```ruby
begin
  # Delete UserAmountProcedure
  data, status_code, headers = api_instance.delete_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->delete_user_amount_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |
| **user_amount_procedure_key** | **Integer** | UserAmountProcedure Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_amount_procedure

> <UserAmountProcedureVBAResponse> get_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)

Get UserAmountProcedure

Gets UserAmountProcedure

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

api_instance = Vba::UserAmountProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key
user_amount_procedure_key = 56 # Integer | UserAmountProcedure Key

begin
  # Get UserAmountProcedure
  result = api_instance.get_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->get_user_amount_procedure: #{e}"
end
```

#### Using the get_user_amount_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountProcedureVBAResponse>, Integer, Hash)> get_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)

```ruby
begin
  # Get UserAmountProcedure
  data, status_code, headers = api_instance.get_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->get_user_amount_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |
| **user_amount_procedure_key** | **Integer** | UserAmountProcedure Key |  |

### Return type

[**UserAmountProcedureVBAResponse**](UserAmountProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_amount_procedure

> <UserAmountProcedureListVBAResponse> list_user_amount_procedure(vbasoftware_database, user_id, user_amount_key)

List UserAmountProcedure

Lists all UserAmountProcedure given a specific userAmountKey,userAmountProcedureKey

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

api_instance = Vba::UserAmountProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key

begin
  # List UserAmountProcedure
  result = api_instance.list_user_amount_procedure(vbasoftware_database, user_id, user_amount_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->list_user_amount_procedure: #{e}"
end
```

#### Using the list_user_amount_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountProcedureListVBAResponse>, Integer, Hash)> list_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key)

```ruby
begin
  # List UserAmountProcedure
  data, status_code, headers = api_instance.list_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountProcedureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->list_user_amount_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |

### Return type

[**UserAmountProcedureListVBAResponse**](UserAmountProcedureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_user_amount_procedure

> <MultiCodeResponseListVBAResponse> update_batch_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)

Create or Update Batch UserAmountProcedure

Create or Update multiple UserAmountProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::UserAmountProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key
user_amount_procedure = [Vba::UserAmountProcedure.new({user_amount_procedure_key: 37, user_amount_key: 37})] # Array<UserAmountProcedure> | 

begin
  # Create or Update Batch UserAmountProcedure
  result = api_instance.update_batch_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->update_batch_user_amount_procedure: #{e}"
end
```

#### Using the update_batch_user_amount_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)

```ruby
begin
  # Create or Update Batch UserAmountProcedure
  data, status_code, headers = api_instance.update_batch_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->update_batch_user_amount_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |
| **user_amount_procedure** | [**Array&lt;UserAmountProcedure&gt;**](UserAmountProcedure.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_user_amount_procedure

> <UserAmountProcedureVBAResponse> update_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key, user_amount_procedure)

Update UserAmountProcedure

Updates a specific UserAmountProcedure.

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

api_instance = Vba::UserAmountProcedureApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key
user_amount_procedure_key = 56 # Integer | UserAmountProcedure Key
user_amount_procedure = Vba::UserAmountProcedure.new({user_amount_procedure_key: 37, user_amount_key: 37}) # UserAmountProcedure | 

begin
  # Update UserAmountProcedure
  result = api_instance.update_user_amount_procedure(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key, user_amount_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->update_user_amount_procedure: #{e}"
end
```

#### Using the update_user_amount_procedure_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountProcedureVBAResponse>, Integer, Hash)> update_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key, user_amount_procedure)

```ruby
begin
  # Update UserAmountProcedure
  data, status_code, headers = api_instance.update_user_amount_procedure_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount_procedure_key, user_amount_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountProcedureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountProcedureApi->update_user_amount_procedure_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |
| **user_amount_procedure_key** | **Integer** | UserAmountProcedure Key |  |
| **user_amount_procedure** | [**UserAmountProcedure**](UserAmountProcedure.md) |  |  |

### Return type

[**UserAmountProcedureVBAResponse**](UserAmountProcedureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

