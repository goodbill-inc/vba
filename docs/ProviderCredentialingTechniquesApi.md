# Vba::ProviderCredentialingTechniquesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_technique**](ProviderCredentialingTechniquesApi.md#create_provider_cred_technique) | **POST** /provider-credentialing/{providerCredKey}/techniques | Create ProviderCredTechnique |
| [**delete_provider_cred_technique**](ProviderCredentialingTechniquesApi.md#delete_provider_cred_technique) | **DELETE** /provider-credentialing/{providerCredKey}/techniques/{credTechniqueKey} | Delete ProviderCredTechnique |
| [**get_provider_cred_technique**](ProviderCredentialingTechniquesApi.md#get_provider_cred_technique) | **GET** /provider-credentialing/{providerCredKey}/techniques/{credTechniqueKey} | Get ProviderCredTechnique |
| [**list_provider_cred_technique**](ProviderCredentialingTechniquesApi.md#list_provider_cred_technique) | **GET** /provider-credentialing/{providerCredKey}/techniques | List ProviderCredTechnique |
| [**update_batch_provider_cred_technique**](ProviderCredentialingTechniquesApi.md#update_batch_provider_cred_technique) | **PUT** /provider-credentialing/{providerCredKey}/techniques-batch | Create or Update Batch ProviderCredTechnique |
| [**update_provider_cred_technique**](ProviderCredentialingTechniquesApi.md#update_provider_cred_technique) | **PUT** /provider-credentialing/{providerCredKey}/techniques/{credTechniqueKey} | Update ProviderCredTechnique |


## create_provider_cred_technique

> <ProviderCredTechniqueVBAResponse> create_provider_cred_technique(vbasoftware_database, provider_cred_key, provider_cred_technique)

Create ProviderCredTechnique

Creates a new ProviderCredTechnique

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

api_instance = Vba::ProviderCredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_technique = Vba::ProviderCredTechnique.new({provider_cred_key: 37, cred_technique_key: 37}) # ProviderCredTechnique | 

begin
  # Create ProviderCredTechnique
  result = api_instance.create_provider_cred_technique(vbasoftware_database, provider_cred_key, provider_cred_technique)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->create_provider_cred_technique: #{e}"
end
```

#### Using the create_provider_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTechniqueVBAResponse>, Integer, Hash)> create_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_technique)

```ruby
begin
  # Create ProviderCredTechnique
  data, status_code, headers = api_instance.create_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_technique)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTechniqueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->create_provider_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_technique** | [**ProviderCredTechnique**](ProviderCredTechnique.md) |  |  |

### Return type

[**ProviderCredTechniqueVBAResponse**](ProviderCredTechniqueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_technique

> delete_provider_cred_technique(vbasoftware_database, provider_cred_key, cred_technique_key)

Delete ProviderCredTechnique

Deletes an ProviderCredTechnique

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

api_instance = Vba::ProviderCredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_technique_key = 56 # Integer | CredTechnique Key

begin
  # Delete ProviderCredTechnique
  api_instance.delete_provider_cred_technique(vbasoftware_database, provider_cred_key, cred_technique_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->delete_provider_cred_technique: #{e}"
end
```

#### Using the delete_provider_cred_technique_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, cred_technique_key)

```ruby
begin
  # Delete ProviderCredTechnique
  data, status_code, headers = api_instance.delete_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, cred_technique_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->delete_provider_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_technique_key** | **Integer** | CredTechnique Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_technique

> <ProviderCredTechniqueVBAResponse> get_provider_cred_technique(vbasoftware_database, provider_cred_key, cred_technique_key)

Get ProviderCredTechnique

Gets ProviderCredTechnique

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

api_instance = Vba::ProviderCredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_technique_key = 56 # Integer | CredTechnique Key

begin
  # Get ProviderCredTechnique
  result = api_instance.get_provider_cred_technique(vbasoftware_database, provider_cred_key, cred_technique_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->get_provider_cred_technique: #{e}"
end
```

#### Using the get_provider_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTechniqueVBAResponse>, Integer, Hash)> get_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, cred_technique_key)

```ruby
begin
  # Get ProviderCredTechnique
  data, status_code, headers = api_instance.get_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, cred_technique_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTechniqueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->get_provider_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_technique_key** | **Integer** | CredTechnique Key |  |

### Return type

[**ProviderCredTechniqueVBAResponse**](ProviderCredTechniqueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_technique

> <ProviderCredTechniqueListVBAResponse> list_provider_cred_technique(vbasoftware_database, provider_cred_key, opts)

List ProviderCredTechnique

Lists all ProviderCredTechnique for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredTechnique
  result = api_instance.list_provider_cred_technique(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->list_provider_cred_technique: #{e}"
end
```

#### Using the list_provider_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTechniqueListVBAResponse>, Integer, Hash)> list_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredTechnique
  data, status_code, headers = api_instance.list_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTechniqueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->list_provider_cred_technique_with_http_info: #{e}"
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

[**ProviderCredTechniqueListVBAResponse**](ProviderCredTechniqueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_technique

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_technique(vbasoftware_database, provider_cred_key, provider_cred_technique)

Create or Update Batch ProviderCredTechnique

Create or Update multiple ProviderCredTechnique at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_technique = [Vba::ProviderCredTechnique.new({provider_cred_key: 37, cred_technique_key: 37})] # Array<ProviderCredTechnique> | 

begin
  # Create or Update Batch ProviderCredTechnique
  result = api_instance.update_batch_provider_cred_technique(vbasoftware_database, provider_cred_key, provider_cred_technique)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->update_batch_provider_cred_technique: #{e}"
end
```

#### Using the update_batch_provider_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_technique)

```ruby
begin
  # Create or Update Batch ProviderCredTechnique
  data, status_code, headers = api_instance.update_batch_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_technique)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->update_batch_provider_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_technique** | [**Array&lt;ProviderCredTechnique&gt;**](ProviderCredTechnique.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_technique

> <ProviderCredTechniqueVBAResponse> update_provider_cred_technique(vbasoftware_database, provider_cred_key, cred_technique_key, provider_cred_technique)

Update ProviderCredTechnique

Updates a specific ProviderCredTechnique.

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

api_instance = Vba::ProviderCredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_technique_key = 56 # Integer | CredTechnique Key
provider_cred_technique = Vba::ProviderCredTechnique.new({provider_cred_key: 37, cred_technique_key: 37}) # ProviderCredTechnique | 

begin
  # Update ProviderCredTechnique
  result = api_instance.update_provider_cred_technique(vbasoftware_database, provider_cred_key, cred_technique_key, provider_cred_technique)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->update_provider_cred_technique: #{e}"
end
```

#### Using the update_provider_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredTechniqueVBAResponse>, Integer, Hash)> update_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, cred_technique_key, provider_cred_technique)

```ruby
begin
  # Update ProviderCredTechnique
  data, status_code, headers = api_instance.update_provider_cred_technique_with_http_info(vbasoftware_database, provider_cred_key, cred_technique_key, provider_cred_technique)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredTechniqueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingTechniquesApi->update_provider_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_technique_key** | **Integer** | CredTechnique Key |  |
| **provider_cred_technique** | [**ProviderCredTechnique**](ProviderCredTechnique.md) |  |  |

### Return type

[**ProviderCredTechniqueVBAResponse**](ProviderCredTechniqueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

