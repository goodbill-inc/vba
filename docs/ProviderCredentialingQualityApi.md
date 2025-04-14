# Vba::ProviderCredentialingQualityApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_quality**](ProviderCredentialingQualityApi.md#create_provider_cred_quality) | **POST** /provider-credentialing/{providerCredKey}/qualities | Create ProviderCredQuality |
| [**delete_provider_cred_quality**](ProviderCredentialingQualityApi.md#delete_provider_cred_quality) | **DELETE** /provider-credentialing/{providerCredKey}/qualities/{credQualityKey} | Delete ProviderCredQuality |
| [**get_provider_cred_quality**](ProviderCredentialingQualityApi.md#get_provider_cred_quality) | **GET** /provider-credentialing/{providerCredKey}/qualities/{credQualityKey} | Get ProviderCredQuality |
| [**list_provider_cred_quality**](ProviderCredentialingQualityApi.md#list_provider_cred_quality) | **GET** /provider-credentialing/{providerCredKey}/qualities | List ProviderCredQuality |
| [**update_batch_provider_cred_quality**](ProviderCredentialingQualityApi.md#update_batch_provider_cred_quality) | **PUT** /provider-credentialing/{providerCredKey}/qualities-batch | Create or Update Batch ProviderCredQuality |
| [**update_provider_cred_quality**](ProviderCredentialingQualityApi.md#update_provider_cred_quality) | **PUT** /provider-credentialing/{providerCredKey}/qualities/{credQualityKey} | Update ProviderCredQuality |


## create_provider_cred_quality

> <ProviderCredQualityVBAResponse> create_provider_cred_quality(vbasoftware_database, provider_cred_key, provider_cred_quality)

Create ProviderCredQuality

Creates a new ProviderCredQuality

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

api_instance = Vba::ProviderCredentialingQualityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_quality = Vba::ProviderCredQuality.new({provider_cred_key: 37, cred_quality_key: 37}) # ProviderCredQuality | 

begin
  # Create ProviderCredQuality
  result = api_instance.create_provider_cred_quality(vbasoftware_database, provider_cred_key, provider_cred_quality)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->create_provider_cred_quality: #{e}"
end
```

#### Using the create_provider_cred_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredQualityVBAResponse>, Integer, Hash)> create_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_quality)

```ruby
begin
  # Create ProviderCredQuality
  data, status_code, headers = api_instance.create_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_quality)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredQualityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->create_provider_cred_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_quality** | [**ProviderCredQuality**](ProviderCredQuality.md) |  |  |

### Return type

[**ProviderCredQualityVBAResponse**](ProviderCredQualityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_quality

> delete_provider_cred_quality(vbasoftware_database, provider_cred_key, cred_quality_key)

Delete ProviderCredQuality

Deletes an ProviderCredQuality

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

api_instance = Vba::ProviderCredentialingQualityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_quality_key = 56 # Integer | CredQuality Key

begin
  # Delete ProviderCredQuality
  api_instance.delete_provider_cred_quality(vbasoftware_database, provider_cred_key, cred_quality_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->delete_provider_cred_quality: #{e}"
end
```

#### Using the delete_provider_cred_quality_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, cred_quality_key)

```ruby
begin
  # Delete ProviderCredQuality
  data, status_code, headers = api_instance.delete_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, cred_quality_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->delete_provider_cred_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_quality_key** | **Integer** | CredQuality Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_quality

> <ProviderCredQualityVBAResponse> get_provider_cred_quality(vbasoftware_database, provider_cred_key, cred_quality_key)

Get ProviderCredQuality

Gets ProviderCredQuality

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

api_instance = Vba::ProviderCredentialingQualityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_quality_key = 56 # Integer | CredQuality Key

begin
  # Get ProviderCredQuality
  result = api_instance.get_provider_cred_quality(vbasoftware_database, provider_cred_key, cred_quality_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->get_provider_cred_quality: #{e}"
end
```

#### Using the get_provider_cred_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredQualityVBAResponse>, Integer, Hash)> get_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, cred_quality_key)

```ruby
begin
  # Get ProviderCredQuality
  data, status_code, headers = api_instance.get_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, cred_quality_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredQualityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->get_provider_cred_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_quality_key** | **Integer** | CredQuality Key |  |

### Return type

[**ProviderCredQualityVBAResponse**](ProviderCredQualityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_quality

> <ProviderCredQualityListVBAResponse> list_provider_cred_quality(vbasoftware_database, provider_cred_key, opts)

List ProviderCredQuality

Lists all ProviderCredQuality for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingQualityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredQuality
  result = api_instance.list_provider_cred_quality(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->list_provider_cred_quality: #{e}"
end
```

#### Using the list_provider_cred_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredQualityListVBAResponse>, Integer, Hash)> list_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredQuality
  data, status_code, headers = api_instance.list_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredQualityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->list_provider_cred_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderCredQualityListVBAResponse**](ProviderCredQualityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_quality

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_quality(vbasoftware_database, provider_cred_key, provider_cred_quality)

Create or Update Batch ProviderCredQuality

Create or Update multiple ProviderCredQuality at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingQualityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_quality = [Vba::ProviderCredQuality.new({provider_cred_key: 37, cred_quality_key: 37})] # Array<ProviderCredQuality> | 

begin
  # Create or Update Batch ProviderCredQuality
  result = api_instance.update_batch_provider_cred_quality(vbasoftware_database, provider_cred_key, provider_cred_quality)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->update_batch_provider_cred_quality: #{e}"
end
```

#### Using the update_batch_provider_cred_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_quality)

```ruby
begin
  # Create or Update Batch ProviderCredQuality
  data, status_code, headers = api_instance.update_batch_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_quality)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->update_batch_provider_cred_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_quality** | [**Array&lt;ProviderCredQuality&gt;**](ProviderCredQuality.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_quality

> <ProviderCredQualityVBAResponse> update_provider_cred_quality(vbasoftware_database, provider_cred_key, cred_quality_key, provider_cred_quality)

Update ProviderCredQuality

Updates a specific ProviderCredQuality.

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

api_instance = Vba::ProviderCredentialingQualityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_quality_key = 56 # Integer | CredQuality Key
provider_cred_quality = Vba::ProviderCredQuality.new({provider_cred_key: 37, cred_quality_key: 37}) # ProviderCredQuality | 

begin
  # Update ProviderCredQuality
  result = api_instance.update_provider_cred_quality(vbasoftware_database, provider_cred_key, cred_quality_key, provider_cred_quality)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->update_provider_cred_quality: #{e}"
end
```

#### Using the update_provider_cred_quality_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredQualityVBAResponse>, Integer, Hash)> update_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, cred_quality_key, provider_cred_quality)

```ruby
begin
  # Update ProviderCredQuality
  data, status_code, headers = api_instance.update_provider_cred_quality_with_http_info(vbasoftware_database, provider_cred_key, cred_quality_key, provider_cred_quality)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredQualityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingQualityApi->update_provider_cred_quality_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_quality_key** | **Integer** | CredQuality Key |  |
| **provider_cred_quality** | [**ProviderCredQuality**](ProviderCredQuality.md) |  |  |

### Return type

[**ProviderCredQualityVBAResponse**](ProviderCredQualityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

