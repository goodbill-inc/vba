# Vba::TaxonomyApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxonomy**](TaxonomyApi.md#create_taxonomy) | **POST** /taxonomies | Create Taxonomy |
| [**delete_taxonomy**](TaxonomyApi.md#delete_taxonomy) | **DELETE** /taxonomies/{taxonomyKey} | Delete Taxonomy |
| [**get_taxonomy**](TaxonomyApi.md#get_taxonomy) | **GET** /taxonomies/{taxonomyKey} | Get Taxonomy |
| [**list_taxonomies**](TaxonomyApi.md#list_taxonomies) | **GET** /taxonomies | List Taxonomy |
| [**update_batch_taxonomy**](TaxonomyApi.md#update_batch_taxonomy) | **PUT** /taxonomies-batch | Create or Update Batch Taxonomy |
| [**update_taxonomy**](TaxonomyApi.md#update_taxonomy) | **PUT** /taxonomies/{taxonomyKey} | Update Taxonomy |


## create_taxonomy

> <TaxonomyVBAResponse> create_taxonomy(vbasoftware_database, taxonomy)

Create Taxonomy

Creates a new Taxonomy

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

api_instance = Vba::TaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy = Vba::Taxonomy.new({taxonomy_key: 37, taxonomy_code: 'taxonomy_code_example'}) # Taxonomy | 

begin
  # Create Taxonomy
  result = api_instance.create_taxonomy(vbasoftware_database, taxonomy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->create_taxonomy: #{e}"
end
```

#### Using the create_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyVBAResponse>, Integer, Hash)> create_taxonomy_with_http_info(vbasoftware_database, taxonomy)

```ruby
begin
  # Create Taxonomy
  data, status_code, headers = api_instance.create_taxonomy_with_http_info(vbasoftware_database, taxonomy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->create_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy** | [**Taxonomy**](Taxonomy.md) |  |  |

### Return type

[**TaxonomyVBAResponse**](TaxonomyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_taxonomy

> delete_taxonomy(vbasoftware_database, taxonomy_key)

Delete Taxonomy

Deletes an Taxonomy

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

api_instance = Vba::TaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_key = 56 # Integer | Taxonomy Key

begin
  # Delete Taxonomy
  api_instance.delete_taxonomy(vbasoftware_database, taxonomy_key)
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->delete_taxonomy: #{e}"
end
```

#### Using the delete_taxonomy_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_taxonomy_with_http_info(vbasoftware_database, taxonomy_key)

```ruby
begin
  # Delete Taxonomy
  data, status_code, headers = api_instance.delete_taxonomy_with_http_info(vbasoftware_database, taxonomy_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->delete_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_key** | **Integer** | Taxonomy Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_taxonomy

> <TaxonomyVBAResponse> get_taxonomy(vbasoftware_database, taxonomy_key)

Get Taxonomy

Gets Taxonomy

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

api_instance = Vba::TaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_key = 56 # Integer | Taxonomy Key

begin
  # Get Taxonomy
  result = api_instance.get_taxonomy(vbasoftware_database, taxonomy_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy: #{e}"
end
```

#### Using the get_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyVBAResponse>, Integer, Hash)> get_taxonomy_with_http_info(vbasoftware_database, taxonomy_key)

```ruby
begin
  # Get Taxonomy
  data, status_code, headers = api_instance.get_taxonomy_with_http_info(vbasoftware_database, taxonomy_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->get_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_key** | **Integer** | Taxonomy Key |  |

### Return type

[**TaxonomyVBAResponse**](TaxonomyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_taxonomies

> <TaxonomyListVBAResponse> list_taxonomies(vbasoftware_database)

List Taxonomy

Lists all Taxonomy given a specific 

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

api_instance = Vba::TaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Taxonomy
  result = api_instance.list_taxonomies(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomies: #{e}"
end
```

#### Using the list_taxonomies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyListVBAResponse>, Integer, Hash)> list_taxonomies_with_http_info(vbasoftware_database)

```ruby
begin
  # List Taxonomy
  data, status_code, headers = api_instance.list_taxonomies_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->list_taxonomies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**TaxonomyListVBAResponse**](TaxonomyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_taxonomy

> <MultiCodeResponseListVBAResponse> update_batch_taxonomy(vbasoftware_database, taxonomy)

Create or Update Batch Taxonomy

Create or Update multiple Taxonomy at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy = [Vba::Taxonomy.new({taxonomy_key: 37, taxonomy_code: 'taxonomy_code_example'})] # Array<Taxonomy> | 

begin
  # Create or Update Batch Taxonomy
  result = api_instance.update_batch_taxonomy(vbasoftware_database, taxonomy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->update_batch_taxonomy: #{e}"
end
```

#### Using the update_batch_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_taxonomy_with_http_info(vbasoftware_database, taxonomy)

```ruby
begin
  # Create or Update Batch Taxonomy
  data, status_code, headers = api_instance.update_batch_taxonomy_with_http_info(vbasoftware_database, taxonomy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->update_batch_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy** | [**Array&lt;Taxonomy&gt;**](Taxonomy.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_taxonomy

> <TaxonomyVBAResponse> update_taxonomy(vbasoftware_database, taxonomy_key, taxonomy)

Update Taxonomy

Updates a specific Taxonomy.

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

api_instance = Vba::TaxonomyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_key = 56 # Integer | Taxonomy Key
taxonomy = Vba::Taxonomy.new({taxonomy_key: 37, taxonomy_code: 'taxonomy_code_example'}) # Taxonomy | 

begin
  # Update Taxonomy
  result = api_instance.update_taxonomy(vbasoftware_database, taxonomy_key, taxonomy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->update_taxonomy: #{e}"
end
```

#### Using the update_taxonomy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyVBAResponse>, Integer, Hash)> update_taxonomy_with_http_info(vbasoftware_database, taxonomy_key, taxonomy)

```ruby
begin
  # Update Taxonomy
  data, status_code, headers = api_instance.update_taxonomy_with_http_info(vbasoftware_database, taxonomy_key, taxonomy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyApi->update_taxonomy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_key** | **Integer** | Taxonomy Key |  |
| **taxonomy** | [**Taxonomy**](Taxonomy.md) |  |  |

### Return type

[**TaxonomyVBAResponse**](TaxonomyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

