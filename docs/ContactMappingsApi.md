# Vba::ContactMappingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_mapping**](ContactMappingsApi.md#create_contact_mapping) | **POST** /contact-mappings | Create ContactMapping |
| [**delete_contact_mapping**](ContactMappingsApi.md#delete_contact_mapping) | **DELETE** /contact-mappings/{parentContactKey}/{childContactKey} | Delete ContactMapping |
| [**get_contact_mapping**](ContactMappingsApi.md#get_contact_mapping) | **GET** /contact-mappings/{parentContactKey}/{childContactKey} | Get ContactMapping |
| [**list_contact_mapping**](ContactMappingsApi.md#list_contact_mapping) | **GET** /contact-mappings | List ContactMapping |
| [**update_batch_contact_mapping**](ContactMappingsApi.md#update_batch_contact_mapping) | **PUT** /contact-mappings-batch | Create or Update Batch ContactMapping |


## create_contact_mapping

> <ContactMappingVBAResponse> create_contact_mapping(vbasoftware_database, contact_mapping)

Create ContactMapping

Creates a new ContactMapping

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

api_instance = Vba::ContactMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_mapping = Vba::ContactMapping.new({parent_contact_key: 37, child_contact_key: 37}) # ContactMapping | 

begin
  # Create ContactMapping
  result = api_instance.create_contact_mapping(vbasoftware_database, contact_mapping)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->create_contact_mapping: #{e}"
end
```

#### Using the create_contact_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactMappingVBAResponse>, Integer, Hash)> create_contact_mapping_with_http_info(vbasoftware_database, contact_mapping)

```ruby
begin
  # Create ContactMapping
  data, status_code, headers = api_instance.create_contact_mapping_with_http_info(vbasoftware_database, contact_mapping)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactMappingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->create_contact_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_mapping** | [**ContactMapping**](ContactMapping.md) |  |  |

### Return type

[**ContactMappingVBAResponse**](ContactMappingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact_mapping

> delete_contact_mapping(vbasoftware_database, parent_contact_key, child_contact_key)

Delete ContactMapping

Deletes an ContactMapping

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

api_instance = Vba::ContactMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
parent_contact_key = 56 # Integer | Parent Contact Key
child_contact_key = 56 # Integer | Child Contact Key

begin
  # Delete ContactMapping
  api_instance.delete_contact_mapping(vbasoftware_database, parent_contact_key, child_contact_key)
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->delete_contact_mapping: #{e}"
end
```

#### Using the delete_contact_mapping_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_mapping_with_http_info(vbasoftware_database, parent_contact_key, child_contact_key)

```ruby
begin
  # Delete ContactMapping
  data, status_code, headers = api_instance.delete_contact_mapping_with_http_info(vbasoftware_database, parent_contact_key, child_contact_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->delete_contact_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **parent_contact_key** | **Integer** | Parent Contact Key |  |
| **child_contact_key** | **Integer** | Child Contact Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact_mapping

> <ContactMappingVBAResponse> get_contact_mapping(vbasoftware_database, parent_contact_key, child_contact_key)

Get ContactMapping

Gets ContactMapping

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

api_instance = Vba::ContactMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
parent_contact_key = 56 # Integer | Parent Contact Key
child_contact_key = 56 # Integer | Child Contact Key

begin
  # Get ContactMapping
  result = api_instance.get_contact_mapping(vbasoftware_database, parent_contact_key, child_contact_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->get_contact_mapping: #{e}"
end
```

#### Using the get_contact_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactMappingVBAResponse>, Integer, Hash)> get_contact_mapping_with_http_info(vbasoftware_database, parent_contact_key, child_contact_key)

```ruby
begin
  # Get ContactMapping
  data, status_code, headers = api_instance.get_contact_mapping_with_http_info(vbasoftware_database, parent_contact_key, child_contact_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactMappingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->get_contact_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **parent_contact_key** | **Integer** | Parent Contact Key |  |
| **child_contact_key** | **Integer** | Child Contact Key |  |

### Return type

[**ContactMappingVBAResponse**](ContactMappingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact_mapping

> <ContactMappingListVBAResponse> list_contact_mapping(vbasoftware_database, opts)

List ContactMapping

Lists all ContactMapping

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

api_instance = Vba::ContactMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContactMapping
  result = api_instance.list_contact_mapping(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->list_contact_mapping: #{e}"
end
```

#### Using the list_contact_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactMappingListVBAResponse>, Integer, Hash)> list_contact_mapping_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContactMapping
  data, status_code, headers = api_instance.list_contact_mapping_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactMappingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->list_contact_mapping_with_http_info: #{e}"
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

[**ContactMappingListVBAResponse**](ContactMappingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact_mapping

> <MultiCodeResponseListVBAResponse> update_batch_contact_mapping(vbasoftware_database, contact_mapping)

Create or Update Batch ContactMapping

Create or Update multiple ContactMapping at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactMappingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_mapping = [Vba::ContactMapping.new({parent_contact_key: 37, child_contact_key: 37})] # Array<ContactMapping> | 

begin
  # Create or Update Batch ContactMapping
  result = api_instance.update_batch_contact_mapping(vbasoftware_database, contact_mapping)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->update_batch_contact_mapping: #{e}"
end
```

#### Using the update_batch_contact_mapping_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_mapping_with_http_info(vbasoftware_database, contact_mapping)

```ruby
begin
  # Create or Update Batch ContactMapping
  data, status_code, headers = api_instance.update_batch_contact_mapping_with_http_info(vbasoftware_database, contact_mapping)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactMappingsApi->update_batch_contact_mapping_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_mapping** | [**Array&lt;ContactMapping&gt;**](ContactMapping.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

