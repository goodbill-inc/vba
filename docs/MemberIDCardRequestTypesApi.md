# Vba::MemberIDCardRequestTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_id_card_request_type**](MemberIDCardRequestTypesApi.md#create_id_card_request_type) | **POST** /id-card-request-types | Create IDCardRequestType |
| [**delete_id_card_request_type**](MemberIDCardRequestTypesApi.md#delete_id_card_request_type) | **DELETE** /id-card-request-types/{requestType} | Delete IDCardRequestType |
| [**get_id_card_request_type**](MemberIDCardRequestTypesApi.md#get_id_card_request_type) | **GET** /id-card-request-types/{requestType} | Get IDCardRequestType |
| [**list_id_card_request_type**](MemberIDCardRequestTypesApi.md#list_id_card_request_type) | **GET** /id-card-request-types | List IDCardRequestType |
| [**update_batch_id_card_request_type**](MemberIDCardRequestTypesApi.md#update_batch_id_card_request_type) | **PUT** /id-card-request-types-batch | Create or Update Batch IDCardRequestType |
| [**update_id_card_request_type**](MemberIDCardRequestTypesApi.md#update_id_card_request_type) | **PUT** /id-card-request-types/{requestType} | Update IDCardRequestType |


## create_id_card_request_type

> <IDCardRequestTypeVBAResponse> create_id_card_request_type(vbasoftware_database, id_card_request_type)

Create IDCardRequestType

Creates a new IDCardRequestType

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

api_instance = Vba::MemberIDCardRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id_card_request_type = Vba::IDCardRequestType.new({request_type: 'request_type_example'}) # IDCardRequestType | 

begin
  # Create IDCardRequestType
  result = api_instance.create_id_card_request_type(vbasoftware_database, id_card_request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->create_id_card_request_type: #{e}"
end
```

#### Using the create_id_card_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCardRequestTypeVBAResponse>, Integer, Hash)> create_id_card_request_type_with_http_info(vbasoftware_database, id_card_request_type)

```ruby
begin
  # Create IDCardRequestType
  data, status_code, headers = api_instance.create_id_card_request_type_with_http_info(vbasoftware_database, id_card_request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCardRequestTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->create_id_card_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id_card_request_type** | [**IDCardRequestType**](IDCardRequestType.md) |  |  |

### Return type

[**IDCardRequestTypeVBAResponse**](IDCardRequestTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_id_card_request_type

> delete_id_card_request_type(vbasoftware_database, request_type)

Delete IDCardRequestType

Deletes an IDCardRequestType

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

api_instance = Vba::MemberIDCardRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_type = 'request_type_example' # String | Request Type

begin
  # Delete IDCardRequestType
  api_instance.delete_id_card_request_type(vbasoftware_database, request_type)
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->delete_id_card_request_type: #{e}"
end
```

#### Using the delete_id_card_request_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_id_card_request_type_with_http_info(vbasoftware_database, request_type)

```ruby
begin
  # Delete IDCardRequestType
  data, status_code, headers = api_instance.delete_id_card_request_type_with_http_info(vbasoftware_database, request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->delete_id_card_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_type** | **String** | Request Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_id_card_request_type

> <IDCardRequestTypeVBAResponse> get_id_card_request_type(vbasoftware_database, request_type)

Get IDCardRequestType

Gets IDCardRequestType

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

api_instance = Vba::MemberIDCardRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_type = 'request_type_example' # String | Request Type

begin
  # Get IDCardRequestType
  result = api_instance.get_id_card_request_type(vbasoftware_database, request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->get_id_card_request_type: #{e}"
end
```

#### Using the get_id_card_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCardRequestTypeVBAResponse>, Integer, Hash)> get_id_card_request_type_with_http_info(vbasoftware_database, request_type)

```ruby
begin
  # Get IDCardRequestType
  data, status_code, headers = api_instance.get_id_card_request_type_with_http_info(vbasoftware_database, request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCardRequestTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->get_id_card_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_type** | **String** | Request Type |  |

### Return type

[**IDCardRequestTypeVBAResponse**](IDCardRequestTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_id_card_request_type

> <IDCardRequestTypeListVBAResponse> list_id_card_request_type(vbasoftware_database, opts)

List IDCardRequestType

Lists all IDCardRequestType

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

api_instance = Vba::MemberIDCardRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IDCardRequestType
  result = api_instance.list_id_card_request_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->list_id_card_request_type: #{e}"
end
```

#### Using the list_id_card_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCardRequestTypeListVBAResponse>, Integer, Hash)> list_id_card_request_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List IDCardRequestType
  data, status_code, headers = api_instance.list_id_card_request_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCardRequestTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->list_id_card_request_type_with_http_info: #{e}"
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

[**IDCardRequestTypeListVBAResponse**](IDCardRequestTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_id_card_request_type

> <MultiCodeResponseListVBAResponse> update_batch_id_card_request_type(vbasoftware_database, id_card_request_type)

Create or Update Batch IDCardRequestType

Create or Update multiple IDCardRequestType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberIDCardRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id_card_request_type = [Vba::IDCardRequestType.new({request_type: 'request_type_example'})] # Array<IDCardRequestType> | 

begin
  # Create or Update Batch IDCardRequestType
  result = api_instance.update_batch_id_card_request_type(vbasoftware_database, id_card_request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->update_batch_id_card_request_type: #{e}"
end
```

#### Using the update_batch_id_card_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_id_card_request_type_with_http_info(vbasoftware_database, id_card_request_type)

```ruby
begin
  # Create or Update Batch IDCardRequestType
  data, status_code, headers = api_instance.update_batch_id_card_request_type_with_http_info(vbasoftware_database, id_card_request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->update_batch_id_card_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id_card_request_type** | [**Array&lt;IDCardRequestType&gt;**](IDCardRequestType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_id_card_request_type

> <IDCardRequestTypeVBAResponse> update_id_card_request_type(vbasoftware_database, request_type, id_card_request_type)

Update IDCardRequestType

Updates a specific IDCardRequestType.

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

api_instance = Vba::MemberIDCardRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_type = 'request_type_example' # String | Request Type
id_card_request_type = Vba::IDCardRequestType.new({request_type: 'request_type_example'}) # IDCardRequestType | 

begin
  # Update IDCardRequestType
  result = api_instance.update_id_card_request_type(vbasoftware_database, request_type, id_card_request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->update_id_card_request_type: #{e}"
end
```

#### Using the update_id_card_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IDCardRequestTypeVBAResponse>, Integer, Hash)> update_id_card_request_type_with_http_info(vbasoftware_database, request_type, id_card_request_type)

```ruby
begin
  # Update IDCardRequestType
  data, status_code, headers = api_instance.update_id_card_request_type_with_http_info(vbasoftware_database, request_type, id_card_request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IDCardRequestTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardRequestTypesApi->update_id_card_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_type** | **String** | Request Type |  |
| **id_card_request_type** | [**IDCardRequestType**](IDCardRequestType.md) |  |  |

### Return type

[**IDCardRequestTypeVBAResponse**](IDCardRequestTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

