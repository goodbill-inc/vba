# Vba::ProviderDRGApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_drg**](ProviderDRGApi.md#create_provider_drg) | **POST** /providers/{providerID}/drgs | Create ProviderDRG |
| [**delete_provider_drg**](ProviderDRGApi.md#delete_provider_drg) | **DELETE** /providers/{providerID}/drgs/{providerDRGKey} | Delete ProviderDRG |
| [**get_provider_drg**](ProviderDRGApi.md#get_provider_drg) | **GET** /providers/{providerID}/drgs/{providerDRGKey} | Get ProviderDRG |
| [**list_provider_drg**](ProviderDRGApi.md#list_provider_drg) | **GET** /providers/{providerID}/drgs | List ProviderDRGs |
| [**update_batch_provider_drg**](ProviderDRGApi.md#update_batch_provider_drg) | **PUT** /providers/{providerID}/drgs-batch | Create or Update Batch ProviderDRG |
| [**update_provider_drg**](ProviderDRGApi.md#update_provider_drg) | **PUT** /providers/{providerID}/drgs/{providerDRGKey} | Update ProviderDRG |


## create_provider_drg

> <ProviderDRGVBAResponse> create_provider_drg(vbasoftware_database, provider_id, provider_drg)

Create ProviderDRG

Creates a new ProviderDRG

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

api_instance = Vba::ProviderDRGApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_drg = Vba::ProviderDRG.new({provider_drg_key: 37, apply_oon: false, effective_date: Time.now, max_allowed_at_billed: false, provider_id: 'provider_id_example'}) # ProviderDRG | 

begin
  # Create ProviderDRG
  result = api_instance.create_provider_drg(vbasoftware_database, provider_id, provider_drg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->create_provider_drg: #{e}"
end
```

#### Using the create_provider_drg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderDRGVBAResponse>, Integer, Hash)> create_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg)

```ruby
begin
  # Create ProviderDRG
  data, status_code, headers = api_instance.create_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderDRGVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->create_provider_drg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_drg** | [**ProviderDRG**](ProviderDRG.md) |  |  |

### Return type

[**ProviderDRGVBAResponse**](ProviderDRGVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_drg

> delete_provider_drg(vbasoftware_database, provider_id, provider_drg_key)

Delete ProviderDRG

Deletes an ProviderDRG

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

api_instance = Vba::ProviderDRGApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_drg_key = 56 # Integer | ProviderDRG Key

begin
  # Delete ProviderDRG
  api_instance.delete_provider_drg(vbasoftware_database, provider_id, provider_drg_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->delete_provider_drg: #{e}"
end
```

#### Using the delete_provider_drg_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg_key)

```ruby
begin
  # Delete ProviderDRG
  data, status_code, headers = api_instance.delete_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->delete_provider_drg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_drg_key** | **Integer** | ProviderDRG Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_drg

> <ProviderDRGVBAResponse> get_provider_drg(vbasoftware_database, provider_id, provider_drg_key)

Get ProviderDRG

Gets ProviderDRG

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

api_instance = Vba::ProviderDRGApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_drg_key = 56 # Integer | ProviderDRG Key

begin
  # Get ProviderDRG
  result = api_instance.get_provider_drg(vbasoftware_database, provider_id, provider_drg_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->get_provider_drg: #{e}"
end
```

#### Using the get_provider_drg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderDRGVBAResponse>, Integer, Hash)> get_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg_key)

```ruby
begin
  # Get ProviderDRG
  data, status_code, headers = api_instance.get_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderDRGVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->get_provider_drg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_drg_key** | **Integer** | ProviderDRG Key |  |

### Return type

[**ProviderDRGVBAResponse**](ProviderDRGVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_drg

> <ProviderDRGListVBAResponse> list_provider_drg(vbasoftware_database, provider_id)

List ProviderDRGs

List all ProviderDRG for a specific Provider

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

api_instance = Vba::ProviderDRGApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderDRGs
  result = api_instance.list_provider_drg(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->list_provider_drg: #{e}"
end
```

#### Using the list_provider_drg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderDRGListVBAResponse>, Integer, Hash)> list_provider_drg_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderDRGs
  data, status_code, headers = api_instance.list_provider_drg_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderDRGListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->list_provider_drg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderDRGListVBAResponse**](ProviderDRGListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_drg

> <MultiCodeResponseListVBAResponse> update_batch_provider_drg(vbasoftware_database, provider_id, provider_drg)

Create or Update Batch ProviderDRG

Create or Update multiple ProviderDRG at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderDRGApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_drg = [Vba::ProviderDRG.new({provider_drg_key: 37, apply_oon: false, effective_date: Time.now, max_allowed_at_billed: false, provider_id: 'provider_id_example'})] # Array<ProviderDRG> | 

begin
  # Create or Update Batch ProviderDRG
  result = api_instance.update_batch_provider_drg(vbasoftware_database, provider_id, provider_drg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->update_batch_provider_drg: #{e}"
end
```

#### Using the update_batch_provider_drg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg)

```ruby
begin
  # Create or Update Batch ProviderDRG
  data, status_code, headers = api_instance.update_batch_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->update_batch_provider_drg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_drg** | [**Array&lt;ProviderDRG&gt;**](ProviderDRG.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_drg

> <ProviderDRGVBAResponse> update_provider_drg(vbasoftware_database, provider_id, provider_drg_key, provider_drg)

Update ProviderDRG

Updates a specific ProviderDRG.

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

api_instance = Vba::ProviderDRGApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_drg_key = 56 # Integer | ProviderDRG Key
provider_drg = Vba::ProviderDRG.new({provider_drg_key: 37, apply_oon: false, effective_date: Time.now, max_allowed_at_billed: false, provider_id: 'provider_id_example'}) # ProviderDRG | 

begin
  # Update ProviderDRG
  result = api_instance.update_provider_drg(vbasoftware_database, provider_id, provider_drg_key, provider_drg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->update_provider_drg: #{e}"
end
```

#### Using the update_provider_drg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderDRGVBAResponse>, Integer, Hash)> update_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg_key, provider_drg)

```ruby
begin
  # Update ProviderDRG
  data, status_code, headers = api_instance.update_provider_drg_with_http_info(vbasoftware_database, provider_id, provider_drg_key, provider_drg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderDRGVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderDRGApi->update_provider_drg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_drg_key** | **Integer** | ProviderDRG Key |  |
| **provider_drg** | [**ProviderDRG**](ProviderDRG.md) |  |  |

### Return type

[**ProviderDRGVBAResponse**](ProviderDRGVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

