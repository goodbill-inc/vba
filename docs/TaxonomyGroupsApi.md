# Vba::TaxonomyGroupsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_taxonomy_group**](TaxonomyGroupsApi.md#create_taxonomy_group) | **POST** /taxonomy-groups | Create TaxonomyGroup |
| [**delete_taxonomy_group**](TaxonomyGroupsApi.md#delete_taxonomy_group) | **DELETE** /taxonomy-groups/{taxonomyGroupID} | Delete TaxonomyGroup |
| [**get_taxonomy_group**](TaxonomyGroupsApi.md#get_taxonomy_group) | **GET** /taxonomy-groups/{taxonomyGroupID} | Get TaxonomyGroup |
| [**list_taxonomy_group**](TaxonomyGroupsApi.md#list_taxonomy_group) | **GET** /taxonomy-groups | List TaxonomyGroup |
| [**update_batch_taxonomy_group**](TaxonomyGroupsApi.md#update_batch_taxonomy_group) | **PUT** /taxonomy-groups | Create or Update Batch TaxonomyGroup |
| [**update_taxonomy_group**](TaxonomyGroupsApi.md#update_taxonomy_group) | **PUT** /taxonomy-groups/{taxonomyGroupID} | Update TaxonomyGroup |


## create_taxonomy_group

> <TaxonomyGroupVBAResponse> create_taxonomy_group(vbasoftware_database, taxonomy_group)

Create TaxonomyGroup

Creates a new TaxonomyGroup

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

api_instance = Vba::TaxonomyGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group = Vba::TaxonomyGroup.new({taxonomy_group_id: 'taxonomy_group_id_example', description: 'description_example', taxonomy_type: 'taxonomy_type_example'}) # TaxonomyGroup | 

begin
  # Create TaxonomyGroup
  result = api_instance.create_taxonomy_group(vbasoftware_database, taxonomy_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->create_taxonomy_group: #{e}"
end
```

#### Using the create_taxonomy_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupVBAResponse>, Integer, Hash)> create_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group)

```ruby
begin
  # Create TaxonomyGroup
  data, status_code, headers = api_instance.create_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->create_taxonomy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group** | [**TaxonomyGroup**](TaxonomyGroup.md) |  |  |

### Return type

[**TaxonomyGroupVBAResponse**](TaxonomyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_taxonomy_group

> delete_taxonomy_group(vbasoftware_database, taxonomy_group_id)

Delete TaxonomyGroup

Deletes an TaxonomyGroup

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

api_instance = Vba::TaxonomyGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID

begin
  # Delete TaxonomyGroup
  api_instance.delete_taxonomy_group(vbasoftware_database, taxonomy_group_id)
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->delete_taxonomy_group: #{e}"
end
```

#### Using the delete_taxonomy_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group_id)

```ruby
begin
  # Delete TaxonomyGroup
  data, status_code, headers = api_instance.delete_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->delete_taxonomy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_taxonomy_group

> <TaxonomyGroupVBAResponse> get_taxonomy_group(vbasoftware_database, taxonomy_group_id)

Get TaxonomyGroup

Gets TaxonomyGroup

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

api_instance = Vba::TaxonomyGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID

begin
  # Get TaxonomyGroup
  result = api_instance.get_taxonomy_group(vbasoftware_database, taxonomy_group_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->get_taxonomy_group: #{e}"
end
```

#### Using the get_taxonomy_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupVBAResponse>, Integer, Hash)> get_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group_id)

```ruby
begin
  # Get TaxonomyGroup
  data, status_code, headers = api_instance.get_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->get_taxonomy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |

### Return type

[**TaxonomyGroupVBAResponse**](TaxonomyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_taxonomy_group

> <TaxonomyGroupListVBAResponse> list_taxonomy_group(vbasoftware_database)

List TaxonomyGroup

Lists all TaxonomyGroup given a specific 

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

api_instance = Vba::TaxonomyGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List TaxonomyGroup
  result = api_instance.list_taxonomy_group(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->list_taxonomy_group: #{e}"
end
```

#### Using the list_taxonomy_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupListVBAResponse>, Integer, Hash)> list_taxonomy_group_with_http_info(vbasoftware_database)

```ruby
begin
  # List TaxonomyGroup
  data, status_code, headers = api_instance.list_taxonomy_group_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->list_taxonomy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**TaxonomyGroupListVBAResponse**](TaxonomyGroupListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_taxonomy_group

> <MultiCodeResponseListVBAResponse> update_batch_taxonomy_group(vbasoftware_database, taxonomy_group)

Create or Update Batch TaxonomyGroup

Create or Update multiple TaxonomyGroup at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TaxonomyGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group = [Vba::TaxonomyGroup.new({taxonomy_group_id: 'taxonomy_group_id_example', description: 'description_example', taxonomy_type: 'taxonomy_type_example'})] # Array<TaxonomyGroup> | 

begin
  # Create or Update Batch TaxonomyGroup
  result = api_instance.update_batch_taxonomy_group(vbasoftware_database, taxonomy_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->update_batch_taxonomy_group: #{e}"
end
```

#### Using the update_batch_taxonomy_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group)

```ruby
begin
  # Create or Update Batch TaxonomyGroup
  data, status_code, headers = api_instance.update_batch_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->update_batch_taxonomy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group** | [**Array&lt;TaxonomyGroup&gt;**](TaxonomyGroup.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_taxonomy_group

> <TaxonomyGroupVBAResponse> update_taxonomy_group(vbasoftware_database, taxonomy_group_id, taxonomy_group)

Update TaxonomyGroup

Updates a specific TaxonomyGroup.

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

api_instance = Vba::TaxonomyGroupsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
taxonomy_group_id = 'taxonomy_group_id_example' # String | Taxonomy Group ID
taxonomy_group = Vba::TaxonomyGroup.new({taxonomy_group_id: 'taxonomy_group_id_example', description: 'description_example', taxonomy_type: 'taxonomy_type_example'}) # TaxonomyGroup | 

begin
  # Update TaxonomyGroup
  result = api_instance.update_taxonomy_group(vbasoftware_database, taxonomy_group_id, taxonomy_group)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->update_taxonomy_group: #{e}"
end
```

#### Using the update_taxonomy_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaxonomyGroupVBAResponse>, Integer, Hash)> update_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group)

```ruby
begin
  # Update TaxonomyGroup
  data, status_code, headers = api_instance.update_taxonomy_group_with_http_info(vbasoftware_database, taxonomy_group_id, taxonomy_group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaxonomyGroupVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TaxonomyGroupsApi->update_taxonomy_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **taxonomy_group_id** | **String** | Taxonomy Group ID |  |
| **taxonomy_group** | [**TaxonomyGroup**](TaxonomyGroup.md) |  |  |

### Return type

[**TaxonomyGroupVBAResponse**](TaxonomyGroupVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

