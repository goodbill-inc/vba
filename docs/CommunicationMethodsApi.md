# Vba::CommunicationMethodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_communication_method**](CommunicationMethodsApi.md#create_communication_method) | **POST** /communication-methods | Create CommunicationMethod |
| [**delete_communication_method**](CommunicationMethodsApi.md#delete_communication_method) | **DELETE** /communication-methods/{communicationMethod} | Delete CommunicationMethod |
| [**get_communication_method**](CommunicationMethodsApi.md#get_communication_method) | **GET** /communication-methods/{communicationMethod} | Get CommunicationMethod |
| [**list_communication_method**](CommunicationMethodsApi.md#list_communication_method) | **GET** /communication-methods | List CommunicationMethod |
| [**update_batch_communication_method**](CommunicationMethodsApi.md#update_batch_communication_method) | **PUT** /communication-methods-batch | Create or Update Batch CommunicationMethod |
| [**update_communication_method**](CommunicationMethodsApi.md#update_communication_method) | **PUT** /communication-methods/{communicationMethod} | Update CommunicationMethod |


## create_communication_method

> <CommunicationMethodVBAResponse> create_communication_method(vbasoftware_database, communication_method)

Create CommunicationMethod

Creates a new CommunicationMethod

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

api_instance = Vba::CommunicationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
communication_method = Vba::CommunicationMethod.new({communication_method: 'communication_method_example'}) # CommunicationMethod | 

begin
  # Create CommunicationMethod
  result = api_instance.create_communication_method(vbasoftware_database, communication_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->create_communication_method: #{e}"
end
```

#### Using the create_communication_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommunicationMethodVBAResponse>, Integer, Hash)> create_communication_method_with_http_info(vbasoftware_database, communication_method)

```ruby
begin
  # Create CommunicationMethod
  data, status_code, headers = api_instance.create_communication_method_with_http_info(vbasoftware_database, communication_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommunicationMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->create_communication_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **communication_method** | [**CommunicationMethod**](CommunicationMethod.md) |  |  |

### Return type

[**CommunicationMethodVBAResponse**](CommunicationMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_communication_method

> delete_communication_method(vbasoftware_database, communication_method)

Delete CommunicationMethod

Deletes an CommunicationMethod

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

api_instance = Vba::CommunicationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
communication_method = 'communication_method_example' # String | Communication Method

begin
  # Delete CommunicationMethod
  api_instance.delete_communication_method(vbasoftware_database, communication_method)
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->delete_communication_method: #{e}"
end
```

#### Using the delete_communication_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_communication_method_with_http_info(vbasoftware_database, communication_method)

```ruby
begin
  # Delete CommunicationMethod
  data, status_code, headers = api_instance.delete_communication_method_with_http_info(vbasoftware_database, communication_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->delete_communication_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **communication_method** | **String** | Communication Method |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_communication_method

> <CommunicationMethodVBAResponse> get_communication_method(vbasoftware_database, communication_method)

Get CommunicationMethod

Gets CommunicationMethod

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

api_instance = Vba::CommunicationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
communication_method = 'communication_method_example' # String | Communication Method

begin
  # Get CommunicationMethod
  result = api_instance.get_communication_method(vbasoftware_database, communication_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->get_communication_method: #{e}"
end
```

#### Using the get_communication_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommunicationMethodVBAResponse>, Integer, Hash)> get_communication_method_with_http_info(vbasoftware_database, communication_method)

```ruby
begin
  # Get CommunicationMethod
  data, status_code, headers = api_instance.get_communication_method_with_http_info(vbasoftware_database, communication_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommunicationMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->get_communication_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **communication_method** | **String** | Communication Method |  |

### Return type

[**CommunicationMethodVBAResponse**](CommunicationMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_communication_method

> <CommunicationMethodListVBAResponse> list_communication_method(vbasoftware_database, opts)

List CommunicationMethod

Lists all CommunicationMethod

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

api_instance = Vba::CommunicationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommunicationMethod
  result = api_instance.list_communication_method(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->list_communication_method: #{e}"
end
```

#### Using the list_communication_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommunicationMethodListVBAResponse>, Integer, Hash)> list_communication_method_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommunicationMethod
  data, status_code, headers = api_instance.list_communication_method_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommunicationMethodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->list_communication_method_with_http_info: #{e}"
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

[**CommunicationMethodListVBAResponse**](CommunicationMethodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_communication_method

> <MultiCodeResponseListVBAResponse> update_batch_communication_method(vbasoftware_database, communication_method)

Create or Update Batch CommunicationMethod

Create or Update multiple CommunicationMethod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommunicationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
communication_method = [Vba::CommunicationMethod.new({communication_method: 'communication_method_example'})] # Array<CommunicationMethod> | 

begin
  # Create or Update Batch CommunicationMethod
  result = api_instance.update_batch_communication_method(vbasoftware_database, communication_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->update_batch_communication_method: #{e}"
end
```

#### Using the update_batch_communication_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_communication_method_with_http_info(vbasoftware_database, communication_method)

```ruby
begin
  # Create or Update Batch CommunicationMethod
  data, status_code, headers = api_instance.update_batch_communication_method_with_http_info(vbasoftware_database, communication_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->update_batch_communication_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **communication_method** | [**Array&lt;CommunicationMethod&gt;**](CommunicationMethod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_communication_method

> <CommunicationMethodVBAResponse> update_communication_method(vbasoftware_database, communication_method, communication_method2)

Update CommunicationMethod

Updates a specific CommunicationMethod.

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

api_instance = Vba::CommunicationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
communication_method = 'communication_method_example' # String | Communication Method
communication_method2 = Vba::CommunicationMethod.new({communication_method: 'communication_method_example'}) # CommunicationMethod | 

begin
  # Update CommunicationMethod
  result = api_instance.update_communication_method(vbasoftware_database, communication_method, communication_method2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->update_communication_method: #{e}"
end
```

#### Using the update_communication_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommunicationMethodVBAResponse>, Integer, Hash)> update_communication_method_with_http_info(vbasoftware_database, communication_method, communication_method2)

```ruby
begin
  # Update CommunicationMethod
  data, status_code, headers = api_instance.update_communication_method_with_http_info(vbasoftware_database, communication_method, communication_method2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommunicationMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommunicationMethodsApi->update_communication_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **communication_method** | **String** | Communication Method |  |
| **communication_method2** | [**CommunicationMethod**](CommunicationMethod.md) |  |  |

### Return type

[**CommunicationMethodVBAResponse**](CommunicationMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

