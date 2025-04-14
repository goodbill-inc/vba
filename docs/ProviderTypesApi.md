# Vba::ProviderTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_types**](ProviderTypesApi.md#create_provider_types) | **POST** /provider-types | Create ProviderTypes |
| [**delete_provider_types**](ProviderTypesApi.md#delete_provider_types) | **DELETE** /provider-types/{providerType} | Delete ProviderTypes |
| [**get_provider_types**](ProviderTypesApi.md#get_provider_types) | **GET** /provider-types/{providerType} | Get ProviderTypes |
| [**list_provider_types**](ProviderTypesApi.md#list_provider_types) | **GET** /provider-types | List ProviderTypes |
| [**update_batch_provider_types**](ProviderTypesApi.md#update_batch_provider_types) | **PUT** /provider-types-batch | Create or Update Batch ProviderTypes |
| [**update_provider_types**](ProviderTypesApi.md#update_provider_types) | **PUT** /provider-types/{providerType} | Update ProviderTypes |


## create_provider_types

> <ProviderTypesVBAResponse> create_provider_types(vbasoftware_database, provider_types)

Create ProviderTypes

Creates a new ProviderTypes

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

api_instance = Vba::ProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_types = Vba::ProviderTypes.new({provider_type: 'provider_type_example'}) # ProviderTypes | 

begin
  # Create ProviderTypes
  result = api_instance.create_provider_types(vbasoftware_database, provider_types)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->create_provider_types: #{e}"
end
```

#### Using the create_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTypesVBAResponse>, Integer, Hash)> create_provider_types_with_http_info(vbasoftware_database, provider_types)

```ruby
begin
  # Create ProviderTypes
  data, status_code, headers = api_instance.create_provider_types_with_http_info(vbasoftware_database, provider_types)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTypesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->create_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_types** | [**ProviderTypes**](ProviderTypes.md) |  |  |

### Return type

[**ProviderTypesVBAResponse**](ProviderTypesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_types

> delete_provider_types(vbasoftware_database, provider_type)

Delete ProviderTypes

Deletes an ProviderTypes

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

api_instance = Vba::ProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Delete ProviderTypes
  api_instance.delete_provider_types(vbasoftware_database, provider_type)
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->delete_provider_types: #{e}"
end
```

#### Using the delete_provider_types_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_types_with_http_info(vbasoftware_database, provider_type)

```ruby
begin
  # Delete ProviderTypes
  data, status_code, headers = api_instance.delete_provider_types_with_http_info(vbasoftware_database, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->delete_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_types

> <ProviderTypesVBAResponse> get_provider_types(vbasoftware_database, provider_type)

Get ProviderTypes

Gets ProviderTypes

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

api_instance = Vba::ProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Get ProviderTypes
  result = api_instance.get_provider_types(vbasoftware_database, provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->get_provider_types: #{e}"
end
```

#### Using the get_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTypesVBAResponse>, Integer, Hash)> get_provider_types_with_http_info(vbasoftware_database, provider_type)

```ruby
begin
  # Get ProviderTypes
  data, status_code, headers = api_instance.get_provider_types_with_http_info(vbasoftware_database, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTypesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->get_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

[**ProviderTypesVBAResponse**](ProviderTypesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_types

> <ProviderTypesListVBAResponse> list_provider_types(vbasoftware_database)

List ProviderTypes

Lists all ProviderTypes 

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

api_instance = Vba::ProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List ProviderTypes
  result = api_instance.list_provider_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->list_provider_types: #{e}"
end
```

#### Using the list_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTypesListVBAResponse>, Integer, Hash)> list_provider_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List ProviderTypes
  data, status_code, headers = api_instance.list_provider_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTypesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->list_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ProviderTypesListVBAResponse**](ProviderTypesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_types

> <MultiCodeResponseListVBAResponse> update_batch_provider_types(vbasoftware_database, provider_types)

Create or Update Batch ProviderTypes

Create or Update multiple ProviderTypes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_types = [Vba::ProviderTypes.new({provider_type: 'provider_type_example'})] # Array<ProviderTypes> | 

begin
  # Create or Update Batch ProviderTypes
  result = api_instance.update_batch_provider_types(vbasoftware_database, provider_types)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->update_batch_provider_types: #{e}"
end
```

#### Using the update_batch_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_types_with_http_info(vbasoftware_database, provider_types)

```ruby
begin
  # Create or Update Batch ProviderTypes
  data, status_code, headers = api_instance.update_batch_provider_types_with_http_info(vbasoftware_database, provider_types)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->update_batch_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_types** | [**Array&lt;ProviderTypes&gt;**](ProviderTypes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_types

> <ProviderTypesVBAResponse> update_provider_types(vbasoftware_database, provider_type, provider_types)

Update ProviderTypes

Updates a specific ProviderTypes.

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

api_instance = Vba::ProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_type = 'provider_type_example' # String | Provider Type
provider_types = Vba::ProviderTypes.new({provider_type: 'provider_type_example'}) # ProviderTypes | 

begin
  # Update ProviderTypes
  result = api_instance.update_provider_types(vbasoftware_database, provider_type, provider_types)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->update_provider_types: #{e}"
end
```

#### Using the update_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTypesVBAResponse>, Integer, Hash)> update_provider_types_with_http_info(vbasoftware_database, provider_type, provider_types)

```ruby
begin
  # Update ProviderTypes
  data, status_code, headers = api_instance.update_provider_types_with_http_info(vbasoftware_database, provider_type, provider_types)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTypesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTypesApi->update_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_type** | **String** | Provider Type |  |
| **provider_types** | [**ProviderTypes**](ProviderTypes.md) |  |  |

### Return type

[**ProviderTypesVBAResponse**](ProviderTypesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

