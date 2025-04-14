# Vba::SendToApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_send_to**](SendToApi.md#create_send_to) | **POST** /send-tos | Create SendTo |
| [**delete_send_to**](SendToApi.md#delete_send_to) | **DELETE** /send-tos/{sendToID} | Delete SendTo |
| [**get_send_to**](SendToApi.md#get_send_to) | **GET** /send-tos/{sendToID} | Get SendTo |
| [**list_send_to**](SendToApi.md#list_send_to) | **GET** /send-tos | List SendTo |
| [**update_batch_send_to**](SendToApi.md#update_batch_send_to) | **PUT** /send-tos-batch | Create or Update Batch SendTo |
| [**update_send_to**](SendToApi.md#update_send_to) | **PUT** /send-tos/{sendToID} | Update SendTo |


## create_send_to

> <SendToVBAResponse> create_send_to(vbasoftware_database, send_to)

Create SendTo

Creates a new SendTo

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

api_instance = Vba::SendToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
send_to = Vba::SendTo.new({send_to_id: 'send_to_id_example', disability: false, life: false, mail_to: false, medical: false, pay_to: false}) # SendTo | 

begin
  # Create SendTo
  result = api_instance.create_send_to(vbasoftware_database, send_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->create_send_to: #{e}"
end
```

#### Using the create_send_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendToVBAResponse>, Integer, Hash)> create_send_to_with_http_info(vbasoftware_database, send_to)

```ruby
begin
  # Create SendTo
  data, status_code, headers = api_instance.create_send_to_with_http_info(vbasoftware_database, send_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->create_send_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **send_to** | [**SendTo**](SendTo.md) |  |  |

### Return type

[**SendToVBAResponse**](SendToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_send_to

> delete_send_to(vbasoftware_database, send_to_id)

Delete SendTo

Deletes an SendTo

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

api_instance = Vba::SendToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
send_to_id = 'send_to_id_example' # String | SendTo ID

begin
  # Delete SendTo
  api_instance.delete_send_to(vbasoftware_database, send_to_id)
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->delete_send_to: #{e}"
end
```

#### Using the delete_send_to_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_send_to_with_http_info(vbasoftware_database, send_to_id)

```ruby
begin
  # Delete SendTo
  data, status_code, headers = api_instance.delete_send_to_with_http_info(vbasoftware_database, send_to_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->delete_send_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **send_to_id** | **String** | SendTo ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_send_to

> <SendToVBAResponse> get_send_to(vbasoftware_database, send_to_id)

Get SendTo

Gets SendTo

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

api_instance = Vba::SendToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
send_to_id = 'send_to_id_example' # String | SendTo ID

begin
  # Get SendTo
  result = api_instance.get_send_to(vbasoftware_database, send_to_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->get_send_to: #{e}"
end
```

#### Using the get_send_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendToVBAResponse>, Integer, Hash)> get_send_to_with_http_info(vbasoftware_database, send_to_id)

```ruby
begin
  # Get SendTo
  data, status_code, headers = api_instance.get_send_to_with_http_info(vbasoftware_database, send_to_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->get_send_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **send_to_id** | **String** | SendTo ID |  |

### Return type

[**SendToVBAResponse**](SendToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_send_to

> <SendToListVBAResponse> list_send_to(vbasoftware_database, opts)

List SendTo

Lists all SendTo

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

api_instance = Vba::SendToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SendTo
  result = api_instance.list_send_to(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->list_send_to: #{e}"
end
```

#### Using the list_send_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendToListVBAResponse>, Integer, Hash)> list_send_to_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SendTo
  data, status_code, headers = api_instance.list_send_to_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendToListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->list_send_to_with_http_info: #{e}"
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

[**SendToListVBAResponse**](SendToListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_send_to

> <MultiCodeResponseListVBAResponse> update_batch_send_to(vbasoftware_database, send_to)

Create or Update Batch SendTo

Create or Update multiple SendTo at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SendToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
send_to = [Vba::SendTo.new({send_to_id: 'send_to_id_example', disability: false, life: false, mail_to: false, medical: false, pay_to: false})] # Array<SendTo> | 

begin
  # Create or Update Batch SendTo
  result = api_instance.update_batch_send_to(vbasoftware_database, send_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->update_batch_send_to: #{e}"
end
```

#### Using the update_batch_send_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_send_to_with_http_info(vbasoftware_database, send_to)

```ruby
begin
  # Create or Update Batch SendTo
  data, status_code, headers = api_instance.update_batch_send_to_with_http_info(vbasoftware_database, send_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->update_batch_send_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **send_to** | [**Array&lt;SendTo&gt;**](SendTo.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_send_to

> <SendToVBAResponse> update_send_to(vbasoftware_database, send_to_id, send_to)

Update SendTo

Updates a specific SendTo.

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

api_instance = Vba::SendToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
send_to_id = 'send_to_id_example' # String | SendTo ID
send_to = Vba::SendTo.new({send_to_id: 'send_to_id_example', disability: false, life: false, mail_to: false, medical: false, pay_to: false}) # SendTo | 

begin
  # Update SendTo
  result = api_instance.update_send_to(vbasoftware_database, send_to_id, send_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->update_send_to: #{e}"
end
```

#### Using the update_send_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendToVBAResponse>, Integer, Hash)> update_send_to_with_http_info(vbasoftware_database, send_to_id, send_to)

```ruby
begin
  # Update SendTo
  data, status_code, headers = api_instance.update_send_to_with_http_info(vbasoftware_database, send_to_id, send_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SendToApi->update_send_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **send_to_id** | **String** | SendTo ID |  |
| **send_to** | [**SendTo**](SendTo.md) |  |  |

### Return type

[**SendToVBAResponse**](SendToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

