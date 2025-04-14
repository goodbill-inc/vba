# Vba::ProviderSuffixApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_suffix**](ProviderSuffixApi.md#create_provider_suffix) | **POST** /providers/{providerID}/suffixes | Create ProviderSuffix |
| [**delete_provider_suffix**](ProviderSuffixApi.md#delete_provider_suffix) | **DELETE** /providers/{providerID}/suffixes/{suffix} | Delete ProviderSuffix |
| [**get_provider_suffix**](ProviderSuffixApi.md#get_provider_suffix) | **GET** /providers/{providerID}/suffixes/{suffix} | Get ProviderSuffix |
| [**list_provider_suffixes**](ProviderSuffixApi.md#list_provider_suffixes) | **GET** /providers/{providerID}/suffixes | List ProviderSuffix |
| [**update_batch_provider_suffix**](ProviderSuffixApi.md#update_batch_provider_suffix) | **PUT** /providers/{providerID}/suffixes-batch | Create or Update Batch ProviderSuffix |
| [**update_provider_suffix**](ProviderSuffixApi.md#update_provider_suffix) | **PUT** /providers/{providerID}/suffixes/{suffix} | Update ProviderSuffix |


## create_provider_suffix

> <ProviderSuffixVBAResponse> create_provider_suffix(vbasoftware_database, provider_id, provider_suffix)

Create ProviderSuffix

Creates a new ProviderSuffix

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

api_instance = Vba::ProviderSuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_suffix = Vba::ProviderSuffix.new({provider_id: 'provider_id_example', suffix: 'suffix_example'}) # ProviderSuffix | 

begin
  # Create ProviderSuffix
  result = api_instance.create_provider_suffix(vbasoftware_database, provider_id, provider_suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->create_provider_suffix: #{e}"
end
```

#### Using the create_provider_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSuffixVBAResponse>, Integer, Hash)> create_provider_suffix_with_http_info(vbasoftware_database, provider_id, provider_suffix)

```ruby
begin
  # Create ProviderSuffix
  data, status_code, headers = api_instance.create_provider_suffix_with_http_info(vbasoftware_database, provider_id, provider_suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSuffixVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->create_provider_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_suffix** | [**ProviderSuffix**](ProviderSuffix.md) |  |  |

### Return type

[**ProviderSuffixVBAResponse**](ProviderSuffixVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_suffix

> delete_provider_suffix(vbasoftware_database, provider_id, suffix)

Delete ProviderSuffix

Deletes an ProviderSuffix

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

api_instance = Vba::ProviderSuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
suffix = 'suffix_example' # String | Suffix

begin
  # Delete ProviderSuffix
  api_instance.delete_provider_suffix(vbasoftware_database, provider_id, suffix)
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->delete_provider_suffix: #{e}"
end
```

#### Using the delete_provider_suffix_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_suffix_with_http_info(vbasoftware_database, provider_id, suffix)

```ruby
begin
  # Delete ProviderSuffix
  data, status_code, headers = api_instance.delete_provider_suffix_with_http_info(vbasoftware_database, provider_id, suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->delete_provider_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **suffix** | **String** | Suffix |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_suffix

> <ProviderSuffixVBAResponse> get_provider_suffix(vbasoftware_database, provider_id, suffix)

Get ProviderSuffix

Gets ProviderSuffix

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

api_instance = Vba::ProviderSuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
suffix = 'suffix_example' # String | Suffix

begin
  # Get ProviderSuffix
  result = api_instance.get_provider_suffix(vbasoftware_database, provider_id, suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->get_provider_suffix: #{e}"
end
```

#### Using the get_provider_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSuffixVBAResponse>, Integer, Hash)> get_provider_suffix_with_http_info(vbasoftware_database, provider_id, suffix)

```ruby
begin
  # Get ProviderSuffix
  data, status_code, headers = api_instance.get_provider_suffix_with_http_info(vbasoftware_database, provider_id, suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSuffixVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->get_provider_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **suffix** | **String** | Suffix |  |

### Return type

[**ProviderSuffixVBAResponse**](ProviderSuffixVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_suffixes

> <ProviderSuffixListVBAResponse> list_provider_suffixes(vbasoftware_database, provider_id)

List ProviderSuffix

Lists all ProviderSuffix given a specific providerID

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

api_instance = Vba::ProviderSuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderSuffix
  result = api_instance.list_provider_suffixes(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->list_provider_suffixes: #{e}"
end
```

#### Using the list_provider_suffixes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSuffixListVBAResponse>, Integer, Hash)> list_provider_suffixes_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderSuffix
  data, status_code, headers = api_instance.list_provider_suffixes_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSuffixListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->list_provider_suffixes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderSuffixListVBAResponse**](ProviderSuffixListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_suffix

> <MultiCodeResponseListVBAResponse> update_batch_provider_suffix(vbasoftware_database, provider_id, provider_suffix)

Create or Update Batch ProviderSuffix

Create or Update multiple ProviderSuffix at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderSuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_suffix = [Vba::ProviderSuffix.new({provider_id: 'provider_id_example', suffix: 'suffix_example'})] # Array<ProviderSuffix> | 

begin
  # Create or Update Batch ProviderSuffix
  result = api_instance.update_batch_provider_suffix(vbasoftware_database, provider_id, provider_suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->update_batch_provider_suffix: #{e}"
end
```

#### Using the update_batch_provider_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_suffix_with_http_info(vbasoftware_database, provider_id, provider_suffix)

```ruby
begin
  # Create or Update Batch ProviderSuffix
  data, status_code, headers = api_instance.update_batch_provider_suffix_with_http_info(vbasoftware_database, provider_id, provider_suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->update_batch_provider_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_suffix** | [**Array&lt;ProviderSuffix&gt;**](ProviderSuffix.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_suffix

> <ProviderSuffixVBAResponse> update_provider_suffix(vbasoftware_database, provider_id, suffix, provider_suffix)

Update ProviderSuffix

Updates a specific ProviderSuffix.

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

api_instance = Vba::ProviderSuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
suffix = 'suffix_example' # String | Suffix
provider_suffix = Vba::ProviderSuffix.new({provider_id: 'provider_id_example', suffix: 'suffix_example'}) # ProviderSuffix | 

begin
  # Update ProviderSuffix
  result = api_instance.update_provider_suffix(vbasoftware_database, provider_id, suffix, provider_suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->update_provider_suffix: #{e}"
end
```

#### Using the update_provider_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSuffixVBAResponse>, Integer, Hash)> update_provider_suffix_with_http_info(vbasoftware_database, provider_id, suffix, provider_suffix)

```ruby
begin
  # Update ProviderSuffix
  data, status_code, headers = api_instance.update_provider_suffix_with_http_info(vbasoftware_database, provider_id, suffix, provider_suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSuffixVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSuffixApi->update_provider_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **suffix** | **String** | Suffix |  |
| **provider_suffix** | [**ProviderSuffix**](ProviderSuffix.md) |  |  |

### Return type

[**ProviderSuffixVBAResponse**](ProviderSuffixVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

