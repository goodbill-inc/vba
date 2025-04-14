# Vba::CredentialingTechniquesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_technique**](CredentialingTechniquesApi.md#create_cred_technique) | **POST** /credentialing-techniques | Create CredTechnique |
| [**delete_cred_technique**](CredentialingTechniquesApi.md#delete_cred_technique) | **DELETE** /credentialing-techniques/{credTechniqueKey} | Delete CredTechnique |
| [**get_cred_technique**](CredentialingTechniquesApi.md#get_cred_technique) | **GET** /credentialing-techniques/{credTechniqueKey} | Get CredTechnique |
| [**list_cred_technique**](CredentialingTechniquesApi.md#list_cred_technique) | **GET** /credentialing-techniques | List CredTechnique |
| [**update_batch_cred_technique**](CredentialingTechniquesApi.md#update_batch_cred_technique) | **PUT** /credentialing-techniques-batch | Create or Update Batch CredTechnique |
| [**update_cred_technique**](CredentialingTechniquesApi.md#update_cred_technique) | **PUT** /credentialing-techniques/{credTechniqueKey} | Update CredTechnique |


## create_cred_technique

> <CredTechniqueVBAResponse> create_cred_technique(vbasoftware_database, cred_technique)

Create CredTechnique

Creates a new CredTechnique

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

api_instance = Vba::CredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_technique = Vba::CredTechnique.new({cred_technique_key: 37}) # CredTechnique | 

begin
  # Create CredTechnique
  result = api_instance.create_cred_technique(vbasoftware_database, cred_technique)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->create_cred_technique: #{e}"
end
```

#### Using the create_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTechniqueVBAResponse>, Integer, Hash)> create_cred_technique_with_http_info(vbasoftware_database, cred_technique)

```ruby
begin
  # Create CredTechnique
  data, status_code, headers = api_instance.create_cred_technique_with_http_info(vbasoftware_database, cred_technique)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTechniqueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->create_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_technique** | [**CredTechnique**](CredTechnique.md) |  |  |

### Return type

[**CredTechniqueVBAResponse**](CredTechniqueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_technique

> delete_cred_technique(vbasoftware_database, cred_technique_key)

Delete CredTechnique

Deletes an CredTechnique

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

api_instance = Vba::CredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_technique_key = 56 # Integer | CredTechnique Key

begin
  # Delete CredTechnique
  api_instance.delete_cred_technique(vbasoftware_database, cred_technique_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->delete_cred_technique: #{e}"
end
```

#### Using the delete_cred_technique_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_technique_with_http_info(vbasoftware_database, cred_technique_key)

```ruby
begin
  # Delete CredTechnique
  data, status_code, headers = api_instance.delete_cred_technique_with_http_info(vbasoftware_database, cred_technique_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->delete_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_technique_key** | **Integer** | CredTechnique Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_technique

> <CredTechniqueVBAResponse> get_cred_technique(vbasoftware_database, cred_technique_key)

Get CredTechnique

Gets CredTechnique

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

api_instance = Vba::CredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_technique_key = 56 # Integer | CredTechnique Key

begin
  # Get CredTechnique
  result = api_instance.get_cred_technique(vbasoftware_database, cred_technique_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->get_cred_technique: #{e}"
end
```

#### Using the get_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTechniqueVBAResponse>, Integer, Hash)> get_cred_technique_with_http_info(vbasoftware_database, cred_technique_key)

```ruby
begin
  # Get CredTechnique
  data, status_code, headers = api_instance.get_cred_technique_with_http_info(vbasoftware_database, cred_technique_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTechniqueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->get_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_technique_key** | **Integer** | CredTechnique Key |  |

### Return type

[**CredTechniqueVBAResponse**](CredTechniqueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_technique

> <CredTechniqueListVBAResponse> list_cred_technique(vbasoftware_database, opts)

List CredTechnique

Lists all CredTechnique

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

api_instance = Vba::CredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredTechnique
  result = api_instance.list_cred_technique(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->list_cred_technique: #{e}"
end
```

#### Using the list_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTechniqueListVBAResponse>, Integer, Hash)> list_cred_technique_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredTechnique
  data, status_code, headers = api_instance.list_cred_technique_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTechniqueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->list_cred_technique_with_http_info: #{e}"
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

[**CredTechniqueListVBAResponse**](CredTechniqueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_technique

> <MultiCodeResponseListVBAResponse> update_batch_cred_technique(vbasoftware_database, cred_technique)

Create or Update Batch CredTechnique

Create or Update multiple CredTechnique at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_technique = [Vba::CredTechnique.new({cred_technique_key: 37})] # Array<CredTechnique> | 

begin
  # Create or Update Batch CredTechnique
  result = api_instance.update_batch_cred_technique(vbasoftware_database, cred_technique)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->update_batch_cred_technique: #{e}"
end
```

#### Using the update_batch_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_technique_with_http_info(vbasoftware_database, cred_technique)

```ruby
begin
  # Create or Update Batch CredTechnique
  data, status_code, headers = api_instance.update_batch_cred_technique_with_http_info(vbasoftware_database, cred_technique)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->update_batch_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_technique** | [**Array&lt;CredTechnique&gt;**](CredTechnique.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_technique

> <CredTechniqueVBAResponse> update_cred_technique(vbasoftware_database, cred_technique_key, cred_technique)

Update CredTechnique

Updates a specific CredTechnique.

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

api_instance = Vba::CredentialingTechniquesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_technique_key = 56 # Integer | CredTechnique Key
cred_technique = Vba::CredTechnique.new({cred_technique_key: 37}) # CredTechnique | 

begin
  # Update CredTechnique
  result = api_instance.update_cred_technique(vbasoftware_database, cred_technique_key, cred_technique)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->update_cred_technique: #{e}"
end
```

#### Using the update_cred_technique_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTechniqueVBAResponse>, Integer, Hash)> update_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, cred_technique)

```ruby
begin
  # Update CredTechnique
  data, status_code, headers = api_instance.update_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, cred_technique)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTechniqueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTechniquesApi->update_cred_technique_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_technique_key** | **Integer** | CredTechnique Key |  |
| **cred_technique** | [**CredTechnique**](CredTechnique.md) |  |  |

### Return type

[**CredTechniqueVBAResponse**](CredTechniqueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

