# Vba::CredentialingAttestationSourcesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_attestation_source**](CredentialingAttestationSourcesApi.md#create_cred_attestation_source) | **POST** /credentialing-attestation-sources | Create CredAttestationSource |
| [**delete_cred_attestation_source**](CredentialingAttestationSourcesApi.md#delete_cred_attestation_source) | **DELETE** /credentialing-attestation-sources/{credAttestationSourceKey} | Delete CredAttestationSource |
| [**get_cred_attestation_source**](CredentialingAttestationSourcesApi.md#get_cred_attestation_source) | **GET** /credentialing-attestation-sources/{credAttestationSourceKey} | Get CredAttestationSource |
| [**list_cred_attestation_source**](CredentialingAttestationSourcesApi.md#list_cred_attestation_source) | **GET** /credentialing-attestation-sources | List CredAttestationSource |
| [**update_batch_cred_attestation_source**](CredentialingAttestationSourcesApi.md#update_batch_cred_attestation_source) | **PUT** /credentialing-attestation-sources-batch | Create or Update Batch CredAttestationSource |
| [**update_cred_attestation_source**](CredentialingAttestationSourcesApi.md#update_cred_attestation_source) | **PUT** /credentialing-attestation-sources/{credAttestationSourceKey} | Update CredAttestationSource |


## create_cred_attestation_source

> <CredAttestationSourceVBAResponse> create_cred_attestation_source(vbasoftware_database, cred_attestation_source)

Create CredAttestationSource

Creates a new CredAttestationSource

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

api_instance = Vba::CredentialingAttestationSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_source = Vba::CredAttestationSource.new({cred_attestation_source_key: 37}) # CredAttestationSource | 

begin
  # Create CredAttestationSource
  result = api_instance.create_cred_attestation_source(vbasoftware_database, cred_attestation_source)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->create_cred_attestation_source: #{e}"
end
```

#### Using the create_cred_attestation_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationSourceVBAResponse>, Integer, Hash)> create_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source)

```ruby
begin
  # Create CredAttestationSource
  data, status_code, headers = api_instance.create_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationSourceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->create_cred_attestation_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_source** | [**CredAttestationSource**](CredAttestationSource.md) |  |  |

### Return type

[**CredAttestationSourceVBAResponse**](CredAttestationSourceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_attestation_source

> delete_cred_attestation_source(vbasoftware_database, cred_attestation_source_key)

Delete CredAttestationSource

Deletes an CredAttestationSource

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

api_instance = Vba::CredentialingAttestationSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_source_key = 56 # Integer | CredAttestationSource Key

begin
  # Delete CredAttestationSource
  api_instance.delete_cred_attestation_source(vbasoftware_database, cred_attestation_source_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->delete_cred_attestation_source: #{e}"
end
```

#### Using the delete_cred_attestation_source_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source_key)

```ruby
begin
  # Delete CredAttestationSource
  data, status_code, headers = api_instance.delete_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->delete_cred_attestation_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_source_key** | **Integer** | CredAttestationSource Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_attestation_source

> <CredAttestationSourceVBAResponse> get_cred_attestation_source(vbasoftware_database, cred_attestation_source_key)

Get CredAttestationSource

Gets CredAttestationSource

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

api_instance = Vba::CredentialingAttestationSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_source_key = 56 # Integer | CredAttestationSource Key

begin
  # Get CredAttestationSource
  result = api_instance.get_cred_attestation_source(vbasoftware_database, cred_attestation_source_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->get_cred_attestation_source: #{e}"
end
```

#### Using the get_cred_attestation_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationSourceVBAResponse>, Integer, Hash)> get_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source_key)

```ruby
begin
  # Get CredAttestationSource
  data, status_code, headers = api_instance.get_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationSourceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->get_cred_attestation_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_source_key** | **Integer** | CredAttestationSource Key |  |

### Return type

[**CredAttestationSourceVBAResponse**](CredAttestationSourceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_attestation_source

> <CredAttestationSourceListVBAResponse> list_cred_attestation_source(vbasoftware_database, opts)

List CredAttestationSource

Lists all CredAttestationSource

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

api_instance = Vba::CredentialingAttestationSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredAttestationSource
  result = api_instance.list_cred_attestation_source(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->list_cred_attestation_source: #{e}"
end
```

#### Using the list_cred_attestation_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationSourceListVBAResponse>, Integer, Hash)> list_cred_attestation_source_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredAttestationSource
  data, status_code, headers = api_instance.list_cred_attestation_source_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationSourceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->list_cred_attestation_source_with_http_info: #{e}"
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

[**CredAttestationSourceListVBAResponse**](CredAttestationSourceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_attestation_source

> <MultiCodeResponseListVBAResponse> update_batch_cred_attestation_source(vbasoftware_database, cred_attestation_source)

Create or Update Batch CredAttestationSource

Create or Update multiple CredAttestationSource at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingAttestationSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_source = [Vba::CredAttestationSource.new({cred_attestation_source_key: 37})] # Array<CredAttestationSource> | 

begin
  # Create or Update Batch CredAttestationSource
  result = api_instance.update_batch_cred_attestation_source(vbasoftware_database, cred_attestation_source)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->update_batch_cred_attestation_source: #{e}"
end
```

#### Using the update_batch_cred_attestation_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source)

```ruby
begin
  # Create or Update Batch CredAttestationSource
  data, status_code, headers = api_instance.update_batch_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->update_batch_cred_attestation_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_source** | [**Array&lt;CredAttestationSource&gt;**](CredAttestationSource.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_attestation_source

> <CredAttestationSourceVBAResponse> update_cred_attestation_source(vbasoftware_database, cred_attestation_source_key, cred_attestation_source)

Update CredAttestationSource

Updates a specific CredAttestationSource.

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

api_instance = Vba::CredentialingAttestationSourcesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_source_key = 56 # Integer | CredAttestationSource Key
cred_attestation_source = Vba::CredAttestationSource.new({cred_attestation_source_key: 37}) # CredAttestationSource | 

begin
  # Update CredAttestationSource
  result = api_instance.update_cred_attestation_source(vbasoftware_database, cred_attestation_source_key, cred_attestation_source)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->update_cred_attestation_source: #{e}"
end
```

#### Using the update_cred_attestation_source_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationSourceVBAResponse>, Integer, Hash)> update_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source_key, cred_attestation_source)

```ruby
begin
  # Update CredAttestationSource
  data, status_code, headers = api_instance.update_cred_attestation_source_with_http_info(vbasoftware_database, cred_attestation_source_key, cred_attestation_source)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationSourceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationSourcesApi->update_cred_attestation_source_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_source_key** | **Integer** | CredAttestationSource Key |  |
| **cred_attestation_source** | [**CredAttestationSource**](CredAttestationSource.md) |  |  |

### Return type

[**CredAttestationSourceVBAResponse**](CredAttestationSourceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

