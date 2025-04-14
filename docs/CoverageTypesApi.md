# Vba::CoverageTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_coverage_type**](CoverageTypesApi.md#create_coverage_type) | **POST** /coverage-types | Create CoverageType |
| [**delete_coverage_type**](CoverageTypesApi.md#delete_coverage_type) | **DELETE** /coverage-types/{coverageType} | Delete CoverageType |
| [**get_coverage_type**](CoverageTypesApi.md#get_coverage_type) | **GET** /coverage-types/{coverageType} | Get CoverageType |
| [**list_coverage_type**](CoverageTypesApi.md#list_coverage_type) | **GET** /coverage-types | List CoverageType |
| [**update_batch_coverage_type**](CoverageTypesApi.md#update_batch_coverage_type) | **PUT** /coverage-types-batch | Create or Update Batch CoverageType |
| [**update_coverage_type**](CoverageTypesApi.md#update_coverage_type) | **PUT** /coverage-types/{coverageType} | Update CoverageType |


## create_coverage_type

> <CoverageTypeVBAResponse> create_coverage_type(vbasoftware_database, coverage_type)

Create CoverageType

Creates a new CoverageType

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

api_instance = Vba::CoverageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
coverage_type = Vba::CoverageType.new({coverage_type: 'coverage_type_example'}) # CoverageType | 

begin
  # Create CoverageType
  result = api_instance.create_coverage_type(vbasoftware_database, coverage_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->create_coverage_type: #{e}"
end
```

#### Using the create_coverage_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoverageTypeVBAResponse>, Integer, Hash)> create_coverage_type_with_http_info(vbasoftware_database, coverage_type)

```ruby
begin
  # Create CoverageType
  data, status_code, headers = api_instance.create_coverage_type_with_http_info(vbasoftware_database, coverage_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoverageTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->create_coverage_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **coverage_type** | [**CoverageType**](CoverageType.md) |  |  |

### Return type

[**CoverageTypeVBAResponse**](CoverageTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_coverage_type

> delete_coverage_type(vbasoftware_database, coverage_type)

Delete CoverageType

Deletes an CoverageType

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

api_instance = Vba::CoverageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
coverage_type = 'coverage_type_example' # String | Coverage Type

begin
  # Delete CoverageType
  api_instance.delete_coverage_type(vbasoftware_database, coverage_type)
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->delete_coverage_type: #{e}"
end
```

#### Using the delete_coverage_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_coverage_type_with_http_info(vbasoftware_database, coverage_type)

```ruby
begin
  # Delete CoverageType
  data, status_code, headers = api_instance.delete_coverage_type_with_http_info(vbasoftware_database, coverage_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->delete_coverage_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **coverage_type** | **String** | Coverage Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_coverage_type

> <CoverageTypeVBAResponse> get_coverage_type(vbasoftware_database, coverage_type)

Get CoverageType

Gets CoverageType

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

api_instance = Vba::CoverageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
coverage_type = 'coverage_type_example' # String | Coverage Type

begin
  # Get CoverageType
  result = api_instance.get_coverage_type(vbasoftware_database, coverage_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->get_coverage_type: #{e}"
end
```

#### Using the get_coverage_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoverageTypeVBAResponse>, Integer, Hash)> get_coverage_type_with_http_info(vbasoftware_database, coverage_type)

```ruby
begin
  # Get CoverageType
  data, status_code, headers = api_instance.get_coverage_type_with_http_info(vbasoftware_database, coverage_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoverageTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->get_coverage_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **coverage_type** | **String** | Coverage Type |  |

### Return type

[**CoverageTypeVBAResponse**](CoverageTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_coverage_type

> <CoverageTypeListVBAResponse> list_coverage_type(vbasoftware_database)

List CoverageType

Lists all CoverageType 

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

api_instance = Vba::CoverageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List CoverageType
  result = api_instance.list_coverage_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->list_coverage_type: #{e}"
end
```

#### Using the list_coverage_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoverageTypeListVBAResponse>, Integer, Hash)> list_coverage_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List CoverageType
  data, status_code, headers = api_instance.list_coverage_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoverageTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->list_coverage_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**CoverageTypeListVBAResponse**](CoverageTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_coverage_type

> <MultiCodeResponseListVBAResponse> update_batch_coverage_type(vbasoftware_database, coverage_type)

Create or Update Batch CoverageType

Create or Update multiple CoverageType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CoverageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
coverage_type = [Vba::CoverageType.new({coverage_type: 'coverage_type_example'})] # Array<CoverageType> | 

begin
  # Create or Update Batch CoverageType
  result = api_instance.update_batch_coverage_type(vbasoftware_database, coverage_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->update_batch_coverage_type: #{e}"
end
```

#### Using the update_batch_coverage_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_coverage_type_with_http_info(vbasoftware_database, coverage_type)

```ruby
begin
  # Create or Update Batch CoverageType
  data, status_code, headers = api_instance.update_batch_coverage_type_with_http_info(vbasoftware_database, coverage_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->update_batch_coverage_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **coverage_type** | [**Array&lt;CoverageType&gt;**](CoverageType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_coverage_type

> <CoverageTypeVBAResponse> update_coverage_type(vbasoftware_database, coverage_type, coverage_type2)

Update CoverageType

Updates a specific CoverageType.

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

api_instance = Vba::CoverageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
coverage_type = 'coverage_type_example' # String | Coverage Type
coverage_type2 = Vba::CoverageType.new({coverage_type: 'coverage_type_example'}) # CoverageType | 

begin
  # Update CoverageType
  result = api_instance.update_coverage_type(vbasoftware_database, coverage_type, coverage_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->update_coverage_type: #{e}"
end
```

#### Using the update_coverage_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CoverageTypeVBAResponse>, Integer, Hash)> update_coverage_type_with_http_info(vbasoftware_database, coverage_type, coverage_type2)

```ruby
begin
  # Update CoverageType
  data, status_code, headers = api_instance.update_coverage_type_with_http_info(vbasoftware_database, coverage_type, coverage_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CoverageTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CoverageTypesApi->update_coverage_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **coverage_type** | **String** | Coverage Type |  |
| **coverage_type2** | [**CoverageType**](CoverageType.md) |  |  |

### Return type

[**CoverageTypeVBAResponse**](CoverageTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

