# Vba::ProviderTaxonomyApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_taxonomy**](ProviderTaxonomyApi.md#create_provider_taxonomy) | **POST** /providers/{providerID}/taxonomies | Create ProviderTaxonomy |
| [**delete_provider_taxonomy**](ProviderTaxonomyApi.md#delete_provider_taxonomy) | **DELETE** /providers/{providerID}/taxonomies/{providerTaxonomyKey} | Delete ProviderTaxonomy |
| [**get_provider_taxonomy**](ProviderTaxonomyApi.md#get_provider_taxonomy) | **GET** /providers/{providerID}/taxonomies/{providerTaxonomyKey} | Get ProviderTaxonomy |
| [**list_provider_taxonomies**](ProviderTaxonomyApi.md#list_provider_taxonomies) | **GET** /providers/{providerID}/taxonomies | List ProviderTaxonomy |
| [**update_batch_provider_taxonomy**](ProviderTaxonomyApi.md#update_batch_provider_taxonomy) | **PUT** /providers/{providerID}/taxonomies-batch | Create or Update Batch ProviderTaxonomy |
| [**update_provider_taxonomy**](ProviderTaxonomyApi.md#update_provider_taxonomy) | **PUT** /providers/{providerID}/taxonomies/{providerTaxonomyKey} | Update ProviderTaxonomy |


## create_provider_taxonomy

> <ProviderTaxonomyVBAResponse> create_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy)

Create ProviderTaxonomy

Creates a new ProviderTaxonomy

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

api_instance = Vba::ProviderTaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_taxonomy = Vba::ProviderTaxonomy.new({provider_taxonomy_key: 37, provider_id: 'provider_id_example', taxonomy_code: 'taxonomy_code_example'}) # ProviderTaxonomy | 

begin
  # Create ProviderTaxonomy
  result = api_instance.create_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->create_provider_taxonomy: #{e}"
end
```

#### Using the create_provider_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTaxonomyVBAResponse>, Integer, Hash)> create_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy)

```ruby
begin
  # Create ProviderTaxonomy
  data, status_code, headers = api_instance.create_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTaxonomyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->create_provider_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_taxonomy** | [**ProviderTaxonomy**](ProviderTaxonomy.md) |  |  |

### Return type

[**ProviderTaxonomyVBAResponse**](ProviderTaxonomyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_taxonomy

> delete_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy_key)

Delete ProviderTaxonomy

Deletes an ProviderTaxonomy

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

api_instance = Vba::ProviderTaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_taxonomy_key = 56 # Integer | ProviderTaxonomy Key

begin
  # Delete ProviderTaxonomy
  api_instance.delete_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->delete_provider_taxonomy: #{e}"
end
```

#### Using the delete_provider_taxonomy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy_key)

```ruby
begin
  # Delete ProviderTaxonomy
  data, status_code, headers = api_instance.delete_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->delete_provider_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_taxonomy_key** | **Integer** | ProviderTaxonomy Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_taxonomy

> <ProviderTaxonomyVBAResponse> get_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy_key)

Get ProviderTaxonomy

Gets ProviderTaxonomy

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

api_instance = Vba::ProviderTaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_taxonomy_key = 56 # Integer | ProviderTaxonomy Key

begin
  # Get ProviderTaxonomy
  result = api_instance.get_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->get_provider_taxonomy: #{e}"
end
```

#### Using the get_provider_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTaxonomyVBAResponse>, Integer, Hash)> get_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy_key)

```ruby
begin
  # Get ProviderTaxonomy
  data, status_code, headers = api_instance.get_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTaxonomyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->get_provider_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_taxonomy_key** | **Integer** | ProviderTaxonomy Key |  |

### Return type

[**ProviderTaxonomyVBAResponse**](ProviderTaxonomyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_taxonomies

> <ProviderTaxonomyListVBAResponse> list_provider_taxonomies(vbasoftware_database, provider_id)

List ProviderTaxonomy

Lists all ProviderTaxonomy given a specific providerID

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

api_instance = Vba::ProviderTaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderTaxonomy
  result = api_instance.list_provider_taxonomies(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->list_provider_taxonomies: #{e}"
end
```

#### Using the list_provider_taxonomies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTaxonomyListVBAResponse>, Integer, Hash)> list_provider_taxonomies_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderTaxonomy
  data, status_code, headers = api_instance.list_provider_taxonomies_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTaxonomyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->list_provider_taxonomies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderTaxonomyListVBAResponse**](ProviderTaxonomyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_taxonomy

> <MultiCodeResponseListVBAResponse> update_batch_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy)

Create or Update Batch ProviderTaxonomy

Create or Update multiple ProviderTaxonomy at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderTaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_taxonomy = [Vba::ProviderTaxonomy.new({provider_taxonomy_key: 37, provider_id: 'provider_id_example', taxonomy_code: 'taxonomy_code_example'})] # Array<ProviderTaxonomy> | 

begin
  # Create or Update Batch ProviderTaxonomy
  result = api_instance.update_batch_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->update_batch_provider_taxonomy: #{e}"
end
```

#### Using the update_batch_provider_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy)

```ruby
begin
  # Create or Update Batch ProviderTaxonomy
  data, status_code, headers = api_instance.update_batch_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->update_batch_provider_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_taxonomy** | [**Array&lt;ProviderTaxonomy&gt;**](ProviderTaxonomy.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_taxonomy

> <ProviderTaxonomyVBAResponse> update_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy_key, provider_taxonomy)

Update ProviderTaxonomy

Updates a specific ProviderTaxonomy.

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

api_instance = Vba::ProviderTaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_taxonomy_key = 56 # Integer | ProviderTaxonomy Key
provider_taxonomy = Vba::ProviderTaxonomy.new({provider_taxonomy_key: 37, provider_id: 'provider_id_example', taxonomy_code: 'taxonomy_code_example'}) # ProviderTaxonomy | 

begin
  # Update ProviderTaxonomy
  result = api_instance.update_provider_taxonomy(vbasoftware_database, provider_id, provider_taxonomy_key, provider_taxonomy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->update_provider_taxonomy: #{e}"
end
```

#### Using the update_provider_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderTaxonomyVBAResponse>, Integer, Hash)> update_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy_key, provider_taxonomy)

```ruby
begin
  # Update ProviderTaxonomy
  data, status_code, headers = api_instance.update_provider_taxonomy_with_http_info(vbasoftware_database, provider_id, provider_taxonomy_key, provider_taxonomy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderTaxonomyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderTaxonomyApi->update_provider_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_taxonomy_key** | **Integer** | ProviderTaxonomy Key |  |
| **provider_taxonomy** | [**ProviderTaxonomy**](ProviderTaxonomy.md) |  |  |

### Return type

[**ProviderTaxonomyVBAResponse**](ProviderTaxonomyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

