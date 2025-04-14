# Vba::SecurityAreasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_area**](SecurityAreasApi.md#create_security_area) | **POST** /security-areas | Create SecurityArea |
| [**delete_security_area**](SecurityAreasApi.md#delete_security_area) | **DELETE** /security-areas/{securityArea} | Delete SecurityArea |
| [**get_security_area**](SecurityAreasApi.md#get_security_area) | **GET** /security-areas/{securityArea} | Get SecurityArea |
| [**list_security_area**](SecurityAreasApi.md#list_security_area) | **GET** /security-areas | List SecurityArea |
| [**update_batch_security_area**](SecurityAreasApi.md#update_batch_security_area) | **PUT** /security-areas-batch | Create or Update Batch SecurityArea |
| [**update_security_area**](SecurityAreasApi.md#update_security_area) | **PUT** /security-areas/{securityArea} | Update SecurityArea |


## create_security_area

> <SecurityAreaVBAResponse> create_security_area(vbasoftware_database, security_area)

Create SecurityArea

Creates a new SecurityArea

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

api_instance = Vba::SecurityAreasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = Vba::SecurityArea.new({security_area: 'security_area_example'}) # SecurityArea | 

begin
  # Create SecurityArea
  result = api_instance.create_security_area(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->create_security_area: #{e}"
end
```

#### Using the create_security_area_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaVBAResponse>, Integer, Hash)> create_security_area_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # Create SecurityArea
  data, status_code, headers = api_instance.create_security_area_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->create_security_area_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | [**SecurityArea**](SecurityArea.md) |  |  |

### Return type

[**SecurityAreaVBAResponse**](SecurityAreaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_area

> delete_security_area(vbasoftware_database, security_area)

Delete SecurityArea

Deletes an SecurityArea

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

api_instance = Vba::SecurityAreasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area

begin
  # Delete SecurityArea
  api_instance.delete_security_area(vbasoftware_database, security_area)
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->delete_security_area: #{e}"
end
```

#### Using the delete_security_area_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_area_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # Delete SecurityArea
  data, status_code, headers = api_instance.delete_security_area_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->delete_security_area_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_area

> <SecurityAreaVBAResponse> get_security_area(vbasoftware_database, security_area)

Get SecurityArea

Gets SecurityArea

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

api_instance = Vba::SecurityAreasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area

begin
  # Get SecurityArea
  result = api_instance.get_security_area(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->get_security_area: #{e}"
end
```

#### Using the get_security_area_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaVBAResponse>, Integer, Hash)> get_security_area_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # Get SecurityArea
  data, status_code, headers = api_instance.get_security_area_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->get_security_area_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |

### Return type

[**SecurityAreaVBAResponse**](SecurityAreaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_area

> <SecurityAreaListVBAResponse> list_security_area(vbasoftware_database)

List SecurityArea

Lists all SecurityArea 

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

api_instance = Vba::SecurityAreasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List SecurityArea
  result = api_instance.list_security_area(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->list_security_area: #{e}"
end
```

#### Using the list_security_area_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaListVBAResponse>, Integer, Hash)> list_security_area_with_http_info(vbasoftware_database)

```ruby
begin
  # List SecurityArea
  data, status_code, headers = api_instance.list_security_area_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->list_security_area_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**SecurityAreaListVBAResponse**](SecurityAreaListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_area

> <MultiCodeResponseListVBAResponse> update_batch_security_area(vbasoftware_database, security_area)

Create or Update Batch SecurityArea

Create or Update multiple SecurityArea at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityAreasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = [Vba::SecurityArea.new({security_area: 'security_area_example'})] # Array<SecurityArea> | 

begin
  # Create or Update Batch SecurityArea
  result = api_instance.update_batch_security_area(vbasoftware_database, security_area)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->update_batch_security_area: #{e}"
end
```

#### Using the update_batch_security_area_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_area_with_http_info(vbasoftware_database, security_area)

```ruby
begin
  # Create or Update Batch SecurityArea
  data, status_code, headers = api_instance.update_batch_security_area_with_http_info(vbasoftware_database, security_area)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->update_batch_security_area_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | [**Array&lt;SecurityArea&gt;**](SecurityArea.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_area

> <SecurityAreaVBAResponse> update_security_area(vbasoftware_database, security_area, security_area2)

Update SecurityArea

Updates a specific SecurityArea.

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

api_instance = Vba::SecurityAreasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area = 'security_area_example' # String | Security Area
security_area2 = Vba::SecurityArea.new({security_area: 'security_area_example'}) # SecurityArea | 

begin
  # Update SecurityArea
  result = api_instance.update_security_area(vbasoftware_database, security_area, security_area2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->update_security_area: #{e}"
end
```

#### Using the update_security_area_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaVBAResponse>, Integer, Hash)> update_security_area_with_http_info(vbasoftware_database, security_area, security_area2)

```ruby
begin
  # Update SecurityArea
  data, status_code, headers = api_instance.update_security_area_with_http_info(vbasoftware_database, security_area, security_area2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreasApi->update_security_area_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area |  |
| **security_area2** | [**SecurityArea**](SecurityArea.md) |  |  |

### Return type

[**SecurityAreaVBAResponse**](SecurityAreaVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

