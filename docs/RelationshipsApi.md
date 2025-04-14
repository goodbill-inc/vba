# Vba::RelationshipsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_relationships**](RelationshipsApi.md#create_relationships) | **POST** /relationships | Create Relationships |
| [**delete_relationships**](RelationshipsApi.md#delete_relationships) | **DELETE** /relationships/{relateCode} | Delete Relationships |
| [**get_relationships**](RelationshipsApi.md#get_relationships) | **GET** /relationships/{relateCode} | Get Relationships |
| [**list_relationships**](RelationshipsApi.md#list_relationships) | **GET** /relationships | List Relationships |
| [**update_batch_relationships**](RelationshipsApi.md#update_batch_relationships) | **PUT** /relationships-batch | Create or Update Batch Relationships |
| [**update_relationships**](RelationshipsApi.md#update_relationships) | **PUT** /relationships/{relateCode} | Update Relationships |


## create_relationships

> <RelationshipsVBAResponse> create_relationships(vbasoftware_database, relationships)

Create Relationships

Creates a new Relationships

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

api_instance = Vba::RelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
relationships = Vba::Relationships.new({relate_code: 'relate_code_example'}) # Relationships | 

begin
  # Create Relationships
  result = api_instance.create_relationships(vbasoftware_database, relationships)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->create_relationships: #{e}"
end
```

#### Using the create_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipsVBAResponse>, Integer, Hash)> create_relationships_with_http_info(vbasoftware_database, relationships)

```ruby
begin
  # Create Relationships
  data, status_code, headers = api_instance.create_relationships_with_http_info(vbasoftware_database, relationships)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->create_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **relationships** | [**Relationships**](Relationships.md) |  |  |

### Return type

[**RelationshipsVBAResponse**](RelationshipsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_relationships

> delete_relationships(vbasoftware_database, relate_code)

Delete Relationships

Deletes an Relationships

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

api_instance = Vba::RelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
relate_code = 'relate_code_example' # String | Relate Code

begin
  # Delete Relationships
  api_instance.delete_relationships(vbasoftware_database, relate_code)
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->delete_relationships: #{e}"
end
```

#### Using the delete_relationships_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_relationships_with_http_info(vbasoftware_database, relate_code)

```ruby
begin
  # Delete Relationships
  data, status_code, headers = api_instance.delete_relationships_with_http_info(vbasoftware_database, relate_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->delete_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **relate_code** | **String** | Relate Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_relationships

> <RelationshipsVBAResponse> get_relationships(vbasoftware_database, relate_code)

Get Relationships

Gets Relationships

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

api_instance = Vba::RelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
relate_code = 'relate_code_example' # String | Relate Code

begin
  # Get Relationships
  result = api_instance.get_relationships(vbasoftware_database, relate_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->get_relationships: #{e}"
end
```

#### Using the get_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipsVBAResponse>, Integer, Hash)> get_relationships_with_http_info(vbasoftware_database, relate_code)

```ruby
begin
  # Get Relationships
  data, status_code, headers = api_instance.get_relationships_with_http_info(vbasoftware_database, relate_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->get_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **relate_code** | **String** | Relate Code |  |

### Return type

[**RelationshipsVBAResponse**](RelationshipsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_relationships

> <RelationshipsListVBAResponse> list_relationships(vbasoftware_database)

List Relationships

Lists all Relationships 

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

api_instance = Vba::RelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Relationships
  result = api_instance.list_relationships(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->list_relationships: #{e}"
end
```

#### Using the list_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipsListVBAResponse>, Integer, Hash)> list_relationships_with_http_info(vbasoftware_database)

```ruby
begin
  # List Relationships
  data, status_code, headers = api_instance.list_relationships_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->list_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**RelationshipsListVBAResponse**](RelationshipsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_relationships

> <MultiCodeResponseListVBAResponse> update_batch_relationships(vbasoftware_database, relationships)

Create or Update Batch Relationships

Create or Update multiple Relationships at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::RelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
relationships = [Vba::Relationships.new({relate_code: 'relate_code_example'})] # Array<Relationships> | 

begin
  # Create or Update Batch Relationships
  result = api_instance.update_batch_relationships(vbasoftware_database, relationships)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->update_batch_relationships: #{e}"
end
```

#### Using the update_batch_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_relationships_with_http_info(vbasoftware_database, relationships)

```ruby
begin
  # Create or Update Batch Relationships
  data, status_code, headers = api_instance.update_batch_relationships_with_http_info(vbasoftware_database, relationships)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->update_batch_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **relationships** | [**Array&lt;Relationships&gt;**](Relationships.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_relationships

> <RelationshipsVBAResponse> update_relationships(vbasoftware_database, relate_code, relationships)

Update Relationships

Updates a specific Relationships.

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

api_instance = Vba::RelationshipsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
relate_code = 'relate_code_example' # String | Relate Code
relationships = Vba::Relationships.new({relate_code: 'relate_code_example'}) # Relationships | 

begin
  # Update Relationships
  result = api_instance.update_relationships(vbasoftware_database, relate_code, relationships)
  p result
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->update_relationships: #{e}"
end
```

#### Using the update_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipsVBAResponse>, Integer, Hash)> update_relationships_with_http_info(vbasoftware_database, relate_code, relationships)

```ruby
begin
  # Update Relationships
  data, status_code, headers = api_instance.update_relationships_with_http_info(vbasoftware_database, relate_code, relationships)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling RelationshipsApi->update_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **relate_code** | **String** | Relate Code |  |
| **relationships** | [**Relationships**](Relationships.md) |  |  |

### Return type

[**RelationshipsVBAResponse**](RelationshipsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

