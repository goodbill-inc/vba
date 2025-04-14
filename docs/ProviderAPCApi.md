# Vba::ProviderAPCApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_apc**](ProviderAPCApi.md#create_provider_apc) | **POST** /providers/{providerID}/apcs | Create ProviderAPC |
| [**delete_provider_apc**](ProviderAPCApi.md#delete_provider_apc) | **DELETE** /providers/{providerID}/apcs/{providerAPCKey} | Delete ProviderAPC |
| [**get_provider_apc**](ProviderAPCApi.md#get_provider_apc) | **GET** /providers/{providerID}/apcs/{providerAPCKey} | Get ProviderAPC |
| [**list_provider_apc**](ProviderAPCApi.md#list_provider_apc) | **GET** /providers/{providerID}/apcs | List ProviderAPCs |
| [**update_batch_provider_apc**](ProviderAPCApi.md#update_batch_provider_apc) | **PUT** /providers/{providerID}/apcs-batch | Create or Update Batch ProviderAPC |
| [**update_provider_apc**](ProviderAPCApi.md#update_provider_apc) | **PUT** /providers/{providerID}/apcs/{providerAPCKey} | Update ProviderAPC |


## create_provider_apc

> <ProviderAPCVBAResponse> create_provider_apc(vbasoftware_database, provider_id, provider_apc)

Create ProviderAPC

Creates a new ProviderAPC

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

api_instance = Vba::ProviderAPCApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_apc = Vba::ProviderAPC.new({provider_apc_key: 37, apply_oon: false, effective_date: Time.now, provider_id: 'provider_id_example'}) # ProviderAPC | 

begin
  # Create ProviderAPC
  result = api_instance.create_provider_apc(vbasoftware_database, provider_id, provider_apc)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->create_provider_apc: #{e}"
end
```

#### Using the create_provider_apc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAPCVBAResponse>, Integer, Hash)> create_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc)

```ruby
begin
  # Create ProviderAPC
  data, status_code, headers = api_instance.create_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAPCVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->create_provider_apc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_apc** | [**ProviderAPC**](ProviderAPC.md) |  |  |

### Return type

[**ProviderAPCVBAResponse**](ProviderAPCVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_apc

> delete_provider_apc(vbasoftware_database, provider_id, provider_apc_key)

Delete ProviderAPC

Deletes an ProviderAPC

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

api_instance = Vba::ProviderAPCApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_apc_key = 56 # Integer | ProviderAPC Key

begin
  # Delete ProviderAPC
  api_instance.delete_provider_apc(vbasoftware_database, provider_id, provider_apc_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->delete_provider_apc: #{e}"
end
```

#### Using the delete_provider_apc_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc_key)

```ruby
begin
  # Delete ProviderAPC
  data, status_code, headers = api_instance.delete_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->delete_provider_apc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_apc_key** | **Integer** | ProviderAPC Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_apc

> <ProviderAPCVBAResponse> get_provider_apc(vbasoftware_database, provider_id, provider_apc_key)

Get ProviderAPC

Gets ProviderAPC

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

api_instance = Vba::ProviderAPCApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_apc_key = 56 # Integer | ProviderAPC Key

begin
  # Get ProviderAPC
  result = api_instance.get_provider_apc(vbasoftware_database, provider_id, provider_apc_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->get_provider_apc: #{e}"
end
```

#### Using the get_provider_apc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAPCVBAResponse>, Integer, Hash)> get_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc_key)

```ruby
begin
  # Get ProviderAPC
  data, status_code, headers = api_instance.get_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAPCVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->get_provider_apc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_apc_key** | **Integer** | ProviderAPC Key |  |

### Return type

[**ProviderAPCVBAResponse**](ProviderAPCVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_apc

> <ProviderAPCListVBAResponse> list_provider_apc(vbasoftware_database, provider_id)

List ProviderAPCs

List APCs for a given Provider

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

api_instance = Vba::ProviderAPCApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderAPCs
  result = api_instance.list_provider_apc(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->list_provider_apc: #{e}"
end
```

#### Using the list_provider_apc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAPCListVBAResponse>, Integer, Hash)> list_provider_apc_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderAPCs
  data, status_code, headers = api_instance.list_provider_apc_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAPCListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->list_provider_apc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderAPCListVBAResponse**](ProviderAPCListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_apc

> <MultiCodeResponseListVBAResponse> update_batch_provider_apc(vbasoftware_database, provider_id, provider_apc)

Create or Update Batch ProviderAPC

Create or Update multiple ProviderAPC at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderAPCApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_apc = [Vba::ProviderAPC.new({provider_apc_key: 37, apply_oon: false, effective_date: Time.now, provider_id: 'provider_id_example'})] # Array<ProviderAPC> | 

begin
  # Create or Update Batch ProviderAPC
  result = api_instance.update_batch_provider_apc(vbasoftware_database, provider_id, provider_apc)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->update_batch_provider_apc: #{e}"
end
```

#### Using the update_batch_provider_apc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc)

```ruby
begin
  # Create or Update Batch ProviderAPC
  data, status_code, headers = api_instance.update_batch_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->update_batch_provider_apc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_apc** | [**Array&lt;ProviderAPC&gt;**](ProviderAPC.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_apc

> <ProviderAPCVBAResponse> update_provider_apc(vbasoftware_database, provider_id, provider_apc_key, provider_apc)

Update ProviderAPC

Updates a specific ProviderAPC.

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

api_instance = Vba::ProviderAPCApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_apc_key = 56 # Integer | ProviderAPC Key
provider_apc = Vba::ProviderAPC.new({provider_apc_key: 37, apply_oon: false, effective_date: Time.now, provider_id: 'provider_id_example'}) # ProviderAPC | 

begin
  # Update ProviderAPC
  result = api_instance.update_provider_apc(vbasoftware_database, provider_id, provider_apc_key, provider_apc)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->update_provider_apc: #{e}"
end
```

#### Using the update_provider_apc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderAPCVBAResponse>, Integer, Hash)> update_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc_key, provider_apc)

```ruby
begin
  # Update ProviderAPC
  data, status_code, headers = api_instance.update_provider_apc_with_http_info(vbasoftware_database, provider_id, provider_apc_key, provider_apc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderAPCVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderAPCApi->update_provider_apc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_apc_key** | **Integer** | ProviderAPC Key |  |
| **provider_apc** | [**ProviderAPC**](ProviderAPC.md) |  |  |

### Return type

[**ProviderAPCVBAResponse**](ProviderAPCVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

