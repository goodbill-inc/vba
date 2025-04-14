# Vba::PBMTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_pbm_type**](PBMTypesApi.md#create_pbm_type) | **POST** /pbm-types | Create PBMType |
| [**delete_pbm_type**](PBMTypesApi.md#delete_pbm_type) | **DELETE** /pbm-types/{pBMType} | Delete PBMType |
| [**get_pbm_type**](PBMTypesApi.md#get_pbm_type) | **GET** /pbm-types/{pBMType} | Get PBMType |
| [**list_pbm_type**](PBMTypesApi.md#list_pbm_type) | **GET** /pbm-types | List PBMType |
| [**update_batch_pbm_type**](PBMTypesApi.md#update_batch_pbm_type) | **PUT** /pbm-types-batch | Create or Update Batch PBMType |
| [**update_pbm_type**](PBMTypesApi.md#update_pbm_type) | **PUT** /pbm-types/{pBMType} | Update PBMType |


## create_pbm_type

> <PBMTypeVBAResponse> create_pbm_type(vbasoftware_database, pbm_type)

Create PBMType

Creates a new PBMType

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

api_instance = Vba::PBMTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
pbm_type = Vba::PBMType.new({pb_m_type: 'pb_m_type_example'}) # PBMType | 

begin
  # Create PBMType
  result = api_instance.create_pbm_type(vbasoftware_database, pbm_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->create_pbm_type: #{e}"
end
```

#### Using the create_pbm_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PBMTypeVBAResponse>, Integer, Hash)> create_pbm_type_with_http_info(vbasoftware_database, pbm_type)

```ruby
begin
  # Create PBMType
  data, status_code, headers = api_instance.create_pbm_type_with_http_info(vbasoftware_database, pbm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PBMTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->create_pbm_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **pbm_type** | [**PBMType**](PBMType.md) |  |  |

### Return type

[**PBMTypeVBAResponse**](PBMTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_pbm_type

> delete_pbm_type(vbasoftware_database, p_bm_type)

Delete PBMType

Deletes an PBMType

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

api_instance = Vba::PBMTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
p_bm_type = 'p_bm_type_example' # String | PBM Type

begin
  # Delete PBMType
  api_instance.delete_pbm_type(vbasoftware_database, p_bm_type)
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->delete_pbm_type: #{e}"
end
```

#### Using the delete_pbm_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pbm_type_with_http_info(vbasoftware_database, p_bm_type)

```ruby
begin
  # Delete PBMType
  data, status_code, headers = api_instance.delete_pbm_type_with_http_info(vbasoftware_database, p_bm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->delete_pbm_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **p_bm_type** | **String** | PBM Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_pbm_type

> <PBMTypeVBAResponse> get_pbm_type(vbasoftware_database, p_bm_type)

Get PBMType

Gets PBMType

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

api_instance = Vba::PBMTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
p_bm_type = 'p_bm_type_example' # String | PBM Type

begin
  # Get PBMType
  result = api_instance.get_pbm_type(vbasoftware_database, p_bm_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->get_pbm_type: #{e}"
end
```

#### Using the get_pbm_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PBMTypeVBAResponse>, Integer, Hash)> get_pbm_type_with_http_info(vbasoftware_database, p_bm_type)

```ruby
begin
  # Get PBMType
  data, status_code, headers = api_instance.get_pbm_type_with_http_info(vbasoftware_database, p_bm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PBMTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->get_pbm_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **p_bm_type** | **String** | PBM Type |  |

### Return type

[**PBMTypeVBAResponse**](PBMTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_pbm_type

> <PBMTypeListVBAResponse> list_pbm_type(vbasoftware_database)

List PBMType

Lists all PBMType 

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

api_instance = Vba::PBMTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List PBMType
  result = api_instance.list_pbm_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->list_pbm_type: #{e}"
end
```

#### Using the list_pbm_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PBMTypeListVBAResponse>, Integer, Hash)> list_pbm_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List PBMType
  data, status_code, headers = api_instance.list_pbm_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PBMTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->list_pbm_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**PBMTypeListVBAResponse**](PBMTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_pbm_type

> <MultiCodeResponseListVBAResponse> update_batch_pbm_type(vbasoftware_database, pbm_type)

Create or Update Batch PBMType

Create or Update multiple PBMType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PBMTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
pbm_type = [Vba::PBMType.new({pb_m_type: 'pb_m_type_example'})] # Array<PBMType> | 

begin
  # Create or Update Batch PBMType
  result = api_instance.update_batch_pbm_type(vbasoftware_database, pbm_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->update_batch_pbm_type: #{e}"
end
```

#### Using the update_batch_pbm_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_pbm_type_with_http_info(vbasoftware_database, pbm_type)

```ruby
begin
  # Create or Update Batch PBMType
  data, status_code, headers = api_instance.update_batch_pbm_type_with_http_info(vbasoftware_database, pbm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->update_batch_pbm_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **pbm_type** | [**Array&lt;PBMType&gt;**](PBMType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_pbm_type

> <PBMTypeVBAResponse> update_pbm_type(vbasoftware_database, p_bm_type, pbm_type)

Update PBMType

Updates a specific PBMType.

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

api_instance = Vba::PBMTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
p_bm_type = 'p_bm_type_example' # String | PBM Type
pbm_type = Vba::PBMType.new({pb_m_type: 'pb_m_type_example'}) # PBMType | 

begin
  # Update PBMType
  result = api_instance.update_pbm_type(vbasoftware_database, p_bm_type, pbm_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->update_pbm_type: #{e}"
end
```

#### Using the update_pbm_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PBMTypeVBAResponse>, Integer, Hash)> update_pbm_type_with_http_info(vbasoftware_database, p_bm_type, pbm_type)

```ruby
begin
  # Update PBMType
  data, status_code, headers = api_instance.update_pbm_type_with_http_info(vbasoftware_database, p_bm_type, pbm_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PBMTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PBMTypesApi->update_pbm_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **p_bm_type** | **String** | PBM Type |  |
| **pbm_type** | [**PBMType**](PBMType.md) |  |  |

### Return type

[**PBMTypeVBAResponse**](PBMTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

