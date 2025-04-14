# Vba::SubscriberIDCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_id_code**](SubscriberIDCodesApi.md#create_subscriber_id_code) | **POST** /subscribers/{subscriberID}/id-codes | Create SubscriberIDCode |
| [**delete_subscriber_id_code**](SubscriberIDCodesApi.md#delete_subscriber_id_code) | **DELETE** /subscribers/{subscriberID}/id-codes/{iDCode} | Delete SubscriberIDCode |
| [**get_subscriber_id_code**](SubscriberIDCodesApi.md#get_subscriber_id_code) | **GET** /subscribers/{subscriberID}/id-codes/{iDCode} | Get SubscriberIDCode |
| [**list_subscriber_id_code**](SubscriberIDCodesApi.md#list_subscriber_id_code) | **GET** /subscribers/{subscriberID}/id-codes | List SubscriberIDCode |
| [**update_batch_subscriber_id_code**](SubscriberIDCodesApi.md#update_batch_subscriber_id_code) | **PUT** /subscribers/{subscriberID}/id-codes-batch | Create or Update Batch SubscriberIDCode |
| [**update_subscriber_id_code**](SubscriberIDCodesApi.md#update_subscriber_id_code) | **PUT** /subscribers/{subscriberID}/id-codes/{iDCode} | Update SubscriberIDCode |


## create_subscriber_id_code

> <SubscriberIDCodeVBAResponse> create_subscriber_id_code(vbasoftware_database, subscriber_id, subscriber_id_code)

Create SubscriberIDCode

Creates a new SubscriberIDCode

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

api_instance = Vba::SubscriberIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_id_code = Vba::SubscriberIDCode.new({subscriber_id: 'subscriber_id_example', i_d_code: 'i_d_code_example'}) # SubscriberIDCode | 

begin
  # Create SubscriberIDCode
  result = api_instance.create_subscriber_id_code(vbasoftware_database, subscriber_id, subscriber_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->create_subscriber_id_code: #{e}"
end
```

#### Using the create_subscriber_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDCodeVBAResponse>, Integer, Hash)> create_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, subscriber_id_code)

```ruby
begin
  # Create SubscriberIDCode
  data, status_code, headers = api_instance.create_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, subscriber_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->create_subscriber_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_id_code** | [**SubscriberIDCode**](SubscriberIDCode.md) |  |  |

### Return type

[**SubscriberIDCodeVBAResponse**](SubscriberIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_id_code

> delete_subscriber_id_code(vbasoftware_database, subscriber_id, i_d_code)

Delete SubscriberIDCode

Deletes an SubscriberIDCode

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

api_instance = Vba::SubscriberIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
i_d_code = 'i_d_code_example' # String | ID Code

begin
  # Delete SubscriberIDCode
  api_instance.delete_subscriber_id_code(vbasoftware_database, subscriber_id, i_d_code)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->delete_subscriber_id_code: #{e}"
end
```

#### Using the delete_subscriber_id_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, i_d_code)

```ruby
begin
  # Delete SubscriberIDCode
  data, status_code, headers = api_instance.delete_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, i_d_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->delete_subscriber_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **i_d_code** | **String** | ID Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_id_code

> <SubscriberIDCodeVBAResponse> get_subscriber_id_code(vbasoftware_database, subscriber_id, i_d_code)

Get SubscriberIDCode

Gets SubscriberIDCode

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

api_instance = Vba::SubscriberIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
i_d_code = 'i_d_code_example' # String | ID Code

begin
  # Get SubscriberIDCode
  result = api_instance.get_subscriber_id_code(vbasoftware_database, subscriber_id, i_d_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->get_subscriber_id_code: #{e}"
end
```

#### Using the get_subscriber_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDCodeVBAResponse>, Integer, Hash)> get_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, i_d_code)

```ruby
begin
  # Get SubscriberIDCode
  data, status_code, headers = api_instance.get_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, i_d_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->get_subscriber_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **i_d_code** | **String** | ID Code |  |

### Return type

[**SubscriberIDCodeVBAResponse**](SubscriberIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_id_code

> <SubscriberIDCodeListVBAResponse> list_subscriber_id_code(vbasoftware_database, subscriber_id, opts)

List SubscriberIDCode

Lists all SubscriberIDCode for the given subscriberID

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

api_instance = Vba::SubscriberIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberIDCode
  result = api_instance.list_subscriber_id_code(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->list_subscriber_id_code: #{e}"
end
```

#### Using the list_subscriber_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDCodeListVBAResponse>, Integer, Hash)> list_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List SubscriberIDCode
  data, status_code, headers = api_instance.list_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->list_subscriber_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberIDCodeListVBAResponse**](SubscriberIDCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_id_code

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_id_code(vbasoftware_database, subscriber_id, subscriber_id_code)

Create or Update Batch SubscriberIDCode

Create or Update multiple SubscriberIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_id_code = [Vba::SubscriberIDCode.new({subscriber_id: 'subscriber_id_example', i_d_code: 'i_d_code_example'})] # Array<SubscriberIDCode> | 

begin
  # Create or Update Batch SubscriberIDCode
  result = api_instance.update_batch_subscriber_id_code(vbasoftware_database, subscriber_id, subscriber_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->update_batch_subscriber_id_code: #{e}"
end
```

#### Using the update_batch_subscriber_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, subscriber_id_code)

```ruby
begin
  # Create or Update Batch SubscriberIDCode
  data, status_code, headers = api_instance.update_batch_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, subscriber_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->update_batch_subscriber_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_id_code** | [**Array&lt;SubscriberIDCode&gt;**](SubscriberIDCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_id_code

> <SubscriberIDCodeVBAResponse> update_subscriber_id_code(vbasoftware_database, subscriber_id, i_d_code, subscriber_id_code)

Update SubscriberIDCode

Updates a specific SubscriberIDCode.

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

api_instance = Vba::SubscriberIDCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
i_d_code = 'i_d_code_example' # String | ID Code
subscriber_id_code = Vba::SubscriberIDCode.new({subscriber_id: 'subscriber_id_example', i_d_code: 'i_d_code_example'}) # SubscriberIDCode | 

begin
  # Update SubscriberIDCode
  result = api_instance.update_subscriber_id_code(vbasoftware_database, subscriber_id, i_d_code, subscriber_id_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->update_subscriber_id_code: #{e}"
end
```

#### Using the update_subscriber_id_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberIDCodeVBAResponse>, Integer, Hash)> update_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, i_d_code, subscriber_id_code)

```ruby
begin
  # Update SubscriberIDCode
  data, status_code, headers = api_instance.update_subscriber_id_code_with_http_info(vbasoftware_database, subscriber_id, i_d_code, subscriber_id_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberIDCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberIDCodesApi->update_subscriber_id_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **i_d_code** | **String** | ID Code |  |
| **subscriber_id_code** | [**SubscriberIDCode**](SubscriberIDCode.md) |  |  |

### Return type

[**SubscriberIDCodeVBAResponse**](SubscriberIDCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

