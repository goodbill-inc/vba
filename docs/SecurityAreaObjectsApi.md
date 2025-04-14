# Vba::SecurityAreaObjectsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_area_object**](SecurityAreaObjectsApi.md#create_security_area_object) | **POST** /security-areas/{securityArea}/objects | Create SecurityAreaObject |
| [**delete_security_area_object**](SecurityAreaObjectsApi.md#delete_security_area_object) | **DELETE** /security-areas/{securityArea}/objects/{objectName} | Delete SecurityAreaObject |
| [**get_security_area_object**](SecurityAreaObjectsApi.md#get_security_area_object) | **GET** /security-areas/{securityArea}/objects/{objectName} | Get SecurityAreaObject |
| [**list_security_area_object**](SecurityAreaObjectsApi.md#list_security_area_object) | **GET** /security-areas/{securityArea}/objects | List SecurityAreaObject |
| [**update_batch_security_area_object**](SecurityAreaObjectsApi.md#update_batch_security_area_object) | **PUT** /security-areas/{securityArea}/objects | Create or Update Batch SecurityAreaObject |
| [**update_security_area_object**](SecurityAreaObjectsApi.md#update_security_area_object) | **PUT** /security-areas/{securityArea}/objects/{objectName} | Update SecurityAreaObject |


## create_security_area_object

> <SecurityAreaObjectVBAResponse> create_security_area_object(vbasoftware_database, security_area, security_area_object)

Create SecurityAreaObject

Creates a new SecurityAreaObject

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

api_instance = Vba::SecurityAreaObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_object = Vba::SecurityAreaObject.new({security_area: 'security_area_example', object_name: 'object_name_example'}) # SecurityAreaObject | 

begin
  # Create SecurityAreaObject
  result = api_instance.create_security_area_object(vbasoftware_database, security_area, security_area_object)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->create_security_area_object: #{e}"
end
```

#### Using the create_security_area_object_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaObjectVBAResponse>, Integer, Hash)> create_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object)

```ruby
begin
  # Create SecurityAreaObject
  data, status_code, headers = api_instance.create_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaObjectVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->create_security_area_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_object** | [**SecurityAreaObject**](SecurityAreaObject.md) |  |  |

### Return type

[**SecurityAreaObjectVBAResponse**](SecurityAreaObjectVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_area_object

> delete_security_area_object(vbasoftware_database, security_area, object_name)

Delete SecurityAreaObject

Deletes an SecurityAreaObject

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

api_instance = Vba::SecurityAreaObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
object_name = 'object_name_example' # String | Object Name

begin
  # Delete SecurityAreaObject
  api_instance.delete_security_area_object(vbasoftware_database, security_area, object_name)
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->delete_security_area_object: #{e}"
end
```

#### Using the delete_security_area_object_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_area_object_with_http_info(vbasoftware_database, security_area, object_name)

```ruby
begin
  # Delete SecurityAreaObject
  data, status_code, headers = api_instance.delete_security_area_object_with_http_info(vbasoftware_database, security_area, object_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->delete_security_area_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **object_name** | **String** | Object Name |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_area_object

> <SecurityAreaObjectVBAResponse> get_security_area_object(vbasoftware_database, security_area, object_name)

Get SecurityAreaObject

Gets SecurityAreaObject

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

api_instance = Vba::SecurityAreaObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
object_name = 'object_name_example' # String | Object Name

begin
  # Get SecurityAreaObject
  result = api_instance.get_security_area_object(vbasoftware_database, security_area, object_name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->get_security_area_object: #{e}"
end
```

#### Using the get_security_area_object_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaObjectVBAResponse>, Integer, Hash)> get_security_area_object_with_http_info(vbasoftware_database, security_area, object_name)

```ruby
begin
  # Get SecurityAreaObject
  data, status_code, headers = api_instance.get_security_area_object_with_http_info(vbasoftware_database, security_area, object_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaObjectVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->get_security_area_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **object_name** | **String** | Object Name |  |

### Return type

[**SecurityAreaObjectVBAResponse**](SecurityAreaObjectVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_area_object

> <SecurityAreaObjectListVBAResponse> list_security_area_object(vbasoftware_database, security_area)

List SecurityAreaObject

Lists all SecurityAreaObject securityArea

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

api_instance = Vba::SecurityAreaObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area

begin
  # List SecurityAreaObject
  result = api_instance.list_security_area_object(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->list_security_area_object: #{e}"
end
```

#### Using the list_security_area_object_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaObjectListVBAResponse>, Integer, Hash)> list_security_area_object_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # List SecurityAreaObject
  data, status_code, headers = api_instance.list_security_area_object_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaObjectListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->list_security_area_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |

### Return type

[**SecurityAreaObjectListVBAResponse**](SecurityAreaObjectListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_area_object

> <MultiCodeResponseListVBAResponse> update_batch_security_area_object(vbasoftware_database, security_area, security_area_object)

Create or Update Batch SecurityAreaObject

Create or Update multiple SecurityAreaObject at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityAreaObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area_object = [Vba::SecurityAreaObject.new({security_area: 'security_area_example', object_name: 'object_name_example'})] # Array<SecurityAreaObject> | 

begin
  # Create or Update Batch SecurityAreaObject
  result = api_instance.update_batch_security_area_object(vbasoftware_database, security_area, security_area_object)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->update_batch_security_area_object: #{e}"
end
```

#### Using the update_batch_security_area_object_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object)

```ruby
begin
  # Create or Update Batch SecurityAreaObject
  data, status_code, headers = api_instance.update_batch_security_area_object_with_http_info(vbasoftware_database, security_area, security_area_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->update_batch_security_area_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area_object** | [**Array&lt;SecurityAreaObject&gt;**](SecurityAreaObject.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_area_object

> <SecurityAreaObjectVBAResponse> update_security_area_object(vbasoftware_database, security_area, object_name, security_area_object)

Update SecurityAreaObject

Updates a specific SecurityAreaObject.

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

api_instance = Vba::SecurityAreaObjectsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
object_name = 'object_name_example' # String | Object Name
security_area_object = Vba::SecurityAreaObject.new({security_area: 'security_area_example', object_name: 'object_name_example'}) # SecurityAreaObject | 

begin
  # Update SecurityAreaObject
  result = api_instance.update_security_area_object(vbasoftware_database, security_area, object_name, security_area_object)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->update_security_area_object: #{e}"
end
```

#### Using the update_security_area_object_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaObjectVBAResponse>, Integer, Hash)> update_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, security_area_object)

```ruby
begin
  # Update SecurityAreaObject
  data, status_code, headers = api_instance.update_security_area_object_with_http_info(vbasoftware_database, security_area, object_name, security_area_object)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaObjectVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaObjectsApi->update_security_area_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **object_name** | **String** | Object Name |  |
| **security_area_object** | [**SecurityAreaObject**](SecurityAreaObject.md) |  |  |

### Return type

[**SecurityAreaObjectVBAResponse**](SecurityAreaObjectVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

