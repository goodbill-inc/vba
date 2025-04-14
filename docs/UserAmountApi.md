# Vba::UserAmountApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_amount**](UserAmountApi.md#create_user_amount) | **POST** /users/{userID}/amounts | Create UserAmount |
| [**delete_user_amount**](UserAmountApi.md#delete_user_amount) | **DELETE** /users/{userID}/amounts/{userAmountKey} | Delete UserAmount |
| [**get_user_amount**](UserAmountApi.md#get_user_amount) | **GET** /users/{userID}/amounts/{userAmountKey} | Get UserAmount |
| [**list_user_amounts**](UserAmountApi.md#list_user_amounts) | **GET** /users/{userID}/amounts | List UserAmount |
| [**update_batch_user_amount**](UserAmountApi.md#update_batch_user_amount) | **PUT** /users/{userID}/amounts-batch | Create or Update Batch UserAmount |
| [**update_user_amount**](UserAmountApi.md#update_user_amount) | **PUT** /users/{userID}/amounts/{userAmountKey} | Update UserAmount |


## create_user_amount

> <UserAmountVBAResponse> create_user_amount(vbasoftware_database, user_id, user_amount)

Create UserAmount

Creates a new UserAmount

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

api_instance = Vba::UserAmountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount = Vba::UserAmount.new({user_amount_key: 37, claim_type: 'claim_type_example', detail_column: 'detail_column_example', user_id: 'user_id_example'}) # UserAmount | 

begin
  # Create UserAmount
  result = api_instance.create_user_amount(vbasoftware_database, user_id, user_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->create_user_amount: #{e}"
end
```

#### Using the create_user_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountVBAResponse>, Integer, Hash)> create_user_amount_with_http_info(vbasoftware_database, user_id, user_amount)

```ruby
begin
  # Create UserAmount
  data, status_code, headers = api_instance.create_user_amount_with_http_info(vbasoftware_database, user_id, user_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->create_user_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount** | [**UserAmount**](UserAmount.md) |  |  |

### Return type

[**UserAmountVBAResponse**](UserAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_user_amount

> delete_user_amount(vbasoftware_database, user_id, user_amount_key)

Delete UserAmount

Deletes an UserAmount

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

api_instance = Vba::UserAmountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key

begin
  # Delete UserAmount
  api_instance.delete_user_amount(vbasoftware_database, user_id, user_amount_key)
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->delete_user_amount: #{e}"
end
```

#### Using the delete_user_amount_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_amount_with_http_info(vbasoftware_database, user_id, user_amount_key)

```ruby
begin
  # Delete UserAmount
  data, status_code, headers = api_instance.delete_user_amount_with_http_info(vbasoftware_database, user_id, user_amount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->delete_user_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_user_amount

> <UserAmountVBAResponse> get_user_amount(vbasoftware_database, user_id, user_amount_key)

Get UserAmount

Gets UserAmount

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

api_instance = Vba::UserAmountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key

begin
  # Get UserAmount
  result = api_instance.get_user_amount(vbasoftware_database, user_id, user_amount_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->get_user_amount: #{e}"
end
```

#### Using the get_user_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountVBAResponse>, Integer, Hash)> get_user_amount_with_http_info(vbasoftware_database, user_id, user_amount_key)

```ruby
begin
  # Get UserAmount
  data, status_code, headers = api_instance.get_user_amount_with_http_info(vbasoftware_database, user_id, user_amount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->get_user_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |

### Return type

[**UserAmountVBAResponse**](UserAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_user_amounts

> <UserAmountListVBAResponse> list_user_amounts(vbasoftware_database, user_id)

List UserAmount

Lists all UserAmount given a specific userID

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

api_instance = Vba::UserAmountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID

begin
  # List UserAmount
  result = api_instance.list_user_amounts(vbasoftware_database, user_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->list_user_amounts: #{e}"
end
```

#### Using the list_user_amounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountListVBAResponse>, Integer, Hash)> list_user_amounts_with_http_info(vbasoftware_database, user_id)

```ruby
begin
  # List UserAmount
  data, status_code, headers = api_instance.list_user_amounts_with_http_info(vbasoftware_database, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->list_user_amounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |

### Return type

[**UserAmountListVBAResponse**](UserAmountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_user_amount

> <MultiCodeResponseListVBAResponse> update_batch_user_amount(vbasoftware_database, user_id, user_amount)

Create or Update Batch UserAmount

Create or Update multiple UserAmount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::UserAmountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount = [Vba::UserAmount.new({user_amount_key: 37, claim_type: 'claim_type_example', detail_column: 'detail_column_example', user_id: 'user_id_example'})] # Array<UserAmount> | 

begin
  # Create or Update Batch UserAmount
  result = api_instance.update_batch_user_amount(vbasoftware_database, user_id, user_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->update_batch_user_amount: #{e}"
end
```

#### Using the update_batch_user_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_user_amount_with_http_info(vbasoftware_database, user_id, user_amount)

```ruby
begin
  # Create or Update Batch UserAmount
  data, status_code, headers = api_instance.update_batch_user_amount_with_http_info(vbasoftware_database, user_id, user_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->update_batch_user_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount** | [**Array&lt;UserAmount&gt;**](UserAmount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_user_amount

> <UserAmountVBAResponse> update_user_amount(vbasoftware_database, user_id, user_amount_key, user_amount)

Update UserAmount

Updates a specific UserAmount.

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

api_instance = Vba::UserAmountApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
user_id = 'user_id_example' # String | User ID
user_amount_key = 56 # Integer | UserAmount Key
user_amount = Vba::UserAmount.new({user_amount_key: 37, claim_type: 'claim_type_example', detail_column: 'detail_column_example', user_id: 'user_id_example'}) # UserAmount | 

begin
  # Update UserAmount
  result = api_instance.update_user_amount(vbasoftware_database, user_id, user_amount_key, user_amount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->update_user_amount: #{e}"
end
```

#### Using the update_user_amount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAmountVBAResponse>, Integer, Hash)> update_user_amount_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount)

```ruby
begin
  # Update UserAmount
  data, status_code, headers = api_instance.update_user_amount_with_http_info(vbasoftware_database, user_id, user_amount_key, user_amount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAmountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UserAmountApi->update_user_amount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **user_id** | **String** | User ID |  |
| **user_amount_key** | **Integer** | UserAmount Key |  |
| **user_amount** | [**UserAmount**](UserAmount.md) |  |  |

### Return type

[**UserAmountVBAResponse**](UserAmountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

