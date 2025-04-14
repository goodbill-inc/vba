# Vba::FundingRequestTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_request_type**](FundingRequestTypesApi.md#create_funding_request_type) | **POST** /funding-request-types | Create FundingRequestType |
| [**delete_funding_request_type**](FundingRequestTypesApi.md#delete_funding_request_type) | **DELETE** /funding-request-types/{requestType} | Delete FundingRequestType |
| [**get_funding_request_type**](FundingRequestTypesApi.md#get_funding_request_type) | **GET** /funding-request-types/{requestType} | Get FundingRequestType |
| [**list_funding_request_type**](FundingRequestTypesApi.md#list_funding_request_type) | **GET** /funding-request-types | List FundingRequestType |
| [**update_batch_funding_request_type**](FundingRequestTypesApi.md#update_batch_funding_request_type) | **PUT** /funding-request-types-batch | Create or Update Batch FundingRequestType |
| [**update_funding_request_type**](FundingRequestTypesApi.md#update_funding_request_type) | **PUT** /funding-request-types/{requestType} | Update FundingRequestType |


## create_funding_request_type

> <FundingRequestTypeVBAResponse> create_funding_request_type(vbasoftware_database, funding_request_type)

Create FundingRequestType

Creates a new FundingRequestType

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

api_instance = Vba::FundingRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_request_type = Vba::FundingRequestType.new({request_type: 'request_type_example'}) # FundingRequestType | 

begin
  # Create FundingRequestType
  result = api_instance.create_funding_request_type(vbasoftware_database, funding_request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->create_funding_request_type: #{e}"
end
```

#### Using the create_funding_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestTypeVBAResponse>, Integer, Hash)> create_funding_request_type_with_http_info(vbasoftware_database, funding_request_type)

```ruby
begin
  # Create FundingRequestType
  data, status_code, headers = api_instance.create_funding_request_type_with_http_info(vbasoftware_database, funding_request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->create_funding_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_request_type** | [**FundingRequestType**](FundingRequestType.md) |  |  |

### Return type

[**FundingRequestTypeVBAResponse**](FundingRequestTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_request_type

> delete_funding_request_type(vbasoftware_database, request_type)

Delete FundingRequestType

Deletes an FundingRequestType

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

api_instance = Vba::FundingRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_type = 'request_type_example' # String | Request Type

begin
  # Delete FundingRequestType
  api_instance.delete_funding_request_type(vbasoftware_database, request_type)
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->delete_funding_request_type: #{e}"
end
```

#### Using the delete_funding_request_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_request_type_with_http_info(vbasoftware_database, request_type)

```ruby
begin
  # Delete FundingRequestType
  data, status_code, headers = api_instance.delete_funding_request_type_with_http_info(vbasoftware_database, request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->delete_funding_request_type_with_http_info: #{e}"
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


## get_funding_request_type

> <FundingRequestTypeVBAResponse> get_funding_request_type(vbasoftware_database, request_type)

Get FundingRequestType

Gets FundingRequestType

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

api_instance = Vba::FundingRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_type = 'request_type_example' # String | Request Type

begin
  # Get FundingRequestType
  result = api_instance.get_funding_request_type(vbasoftware_database, request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->get_funding_request_type: #{e}"
end
```

#### Using the get_funding_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestTypeVBAResponse>, Integer, Hash)> get_funding_request_type_with_http_info(vbasoftware_database, request_type)

```ruby
begin
  # Get FundingRequestType
  data, status_code, headers = api_instance.get_funding_request_type_with_http_info(vbasoftware_database, request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->get_funding_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_type** | **String** | Request Type |  |

### Return type

[**FundingRequestTypeVBAResponse**](FundingRequestTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_request_type

> <FundingRequestTypeListVBAResponse> list_funding_request_type(vbasoftware_database, opts)

List FundingRequestType

Lists all FundingRequestType

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

api_instance = Vba::FundingRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingRequestType
  result = api_instance.list_funding_request_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->list_funding_request_type: #{e}"
end
```

#### Using the list_funding_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestTypeListVBAResponse>, Integer, Hash)> list_funding_request_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingRequestType
  data, status_code, headers = api_instance.list_funding_request_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->list_funding_request_type_with_http_info: #{e}"
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

[**FundingRequestTypeListVBAResponse**](FundingRequestTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_request_type

> <MultiCodeResponseListVBAResponse> update_batch_funding_request_type(vbasoftware_database, funding_request_type)

Create or Update Batch FundingRequestType

Create or Update multiple FundingRequestType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_request_type = [Vba::FundingRequestType.new({request_type: 'request_type_example'})] # Array<FundingRequestType> | 

begin
  # Create or Update Batch FundingRequestType
  result = api_instance.update_batch_funding_request_type(vbasoftware_database, funding_request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->update_batch_funding_request_type: #{e}"
end
```

#### Using the update_batch_funding_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_request_type_with_http_info(vbasoftware_database, funding_request_type)

```ruby
begin
  # Create or Update Batch FundingRequestType
  data, status_code, headers = api_instance.update_batch_funding_request_type_with_http_info(vbasoftware_database, funding_request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->update_batch_funding_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_request_type** | [**Array&lt;FundingRequestType&gt;**](FundingRequestType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_request_type

> <FundingRequestTypeVBAResponse> update_funding_request_type(vbasoftware_database, request_type, funding_request_type)

Update FundingRequestType

Updates a specific FundingRequestType.

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

api_instance = Vba::FundingRequestTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
request_type = 'request_type_example' # String | Request Type
funding_request_type = Vba::FundingRequestType.new({request_type: 'request_type_example'}) # FundingRequestType | 

begin
  # Update FundingRequestType
  result = api_instance.update_funding_request_type(vbasoftware_database, request_type, funding_request_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->update_funding_request_type: #{e}"
end
```

#### Using the update_funding_request_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingRequestTypeVBAResponse>, Integer, Hash)> update_funding_request_type_with_http_info(vbasoftware_database, request_type, funding_request_type)

```ruby
begin
  # Update FundingRequestType
  data, status_code, headers = api_instance.update_funding_request_type_with_http_info(vbasoftware_database, request_type, funding_request_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingRequestTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingRequestTypesApi->update_funding_request_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **request_type** | **String** | Request Type |  |
| **funding_request_type** | [**FundingRequestType**](FundingRequestType.md) |  |  |

### Return type

[**FundingRequestTypeVBAResponse**](FundingRequestTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

