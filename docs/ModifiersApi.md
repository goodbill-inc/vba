# Vba::ModifiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_modifier**](ModifiersApi.md#create_modifier) | **POST** /modifiers | Create Modifier |
| [**delete_modifier**](ModifiersApi.md#delete_modifier) | **DELETE** /modifiers/{modifierCode} | Delete Modifier |
| [**get_modifier**](ModifiersApi.md#get_modifier) | **GET** /modifiers/{modifierCode} | Get Modifier |
| [**list_modifier**](ModifiersApi.md#list_modifier) | **GET** /modifiers | List Modifier |
| [**update_batch_modifier**](ModifiersApi.md#update_batch_modifier) | **PUT** /modifiers-batch | Create or Update Batch Modifier |
| [**update_modifier**](ModifiersApi.md#update_modifier) | **PUT** /modifiers/{modifierCode} | Update Modifier |


## create_modifier

> <ModifierVBAResponse> create_modifier(vbasoftware_database, modifier)

Create Modifier

Creates a new Modifier

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

api_instance = Vba::ModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
modifier = Vba::Modifier.new({modifier_code: 'modifier_code_example'}) # Modifier | 

begin
  # Create Modifier
  result = api_instance.create_modifier(vbasoftware_database, modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->create_modifier: #{e}"
end
```

#### Using the create_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifierVBAResponse>, Integer, Hash)> create_modifier_with_http_info(vbasoftware_database, modifier)

```ruby
begin
  # Create Modifier
  data, status_code, headers = api_instance.create_modifier_with_http_info(vbasoftware_database, modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->create_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **modifier** | [**Modifier**](Modifier.md) |  |  |

### Return type

[**ModifierVBAResponse**](ModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_modifier

> delete_modifier(vbasoftware_database, modifier_code)

Delete Modifier

Deletes an Modifier

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

api_instance = Vba::ModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
modifier_code = 'modifier_code_example' # String | Modifier Code

begin
  # Delete Modifier
  api_instance.delete_modifier(vbasoftware_database, modifier_code)
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->delete_modifier: #{e}"
end
```

#### Using the delete_modifier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_modifier_with_http_info(vbasoftware_database, modifier_code)

```ruby
begin
  # Delete Modifier
  data, status_code, headers = api_instance.delete_modifier_with_http_info(vbasoftware_database, modifier_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->delete_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **modifier_code** | **String** | Modifier Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_modifier

> <ModifierVBAResponse> get_modifier(vbasoftware_database, modifier_code)

Get Modifier

Gets Modifier

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

api_instance = Vba::ModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
modifier_code = 'modifier_code_example' # String | Modifier Code

begin
  # Get Modifier
  result = api_instance.get_modifier(vbasoftware_database, modifier_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->get_modifier: #{e}"
end
```

#### Using the get_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifierVBAResponse>, Integer, Hash)> get_modifier_with_http_info(vbasoftware_database, modifier_code)

```ruby
begin
  # Get Modifier
  data, status_code, headers = api_instance.get_modifier_with_http_info(vbasoftware_database, modifier_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->get_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **modifier_code** | **String** | Modifier Code |  |

### Return type

[**ModifierVBAResponse**](ModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_modifier

> <ModifierListVBAResponse> list_modifier(vbasoftware_database, opts)

List Modifier

Lists all Modifier

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

api_instance = Vba::ModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Modifier
  result = api_instance.list_modifier(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->list_modifier: #{e}"
end
```

#### Using the list_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifierListVBAResponse>, Integer, Hash)> list_modifier_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Modifier
  data, status_code, headers = api_instance.list_modifier_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->list_modifier_with_http_info: #{e}"
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

[**ModifierListVBAResponse**](ModifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_modifier

> <MultiCodeResponseListVBAResponse> update_batch_modifier(vbasoftware_database, modifier)

Create or Update Batch Modifier

Create or Update multiple Modifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
modifier = [Vba::Modifier.new({modifier_code: 'modifier_code_example'})] # Array<Modifier> | 

begin
  # Create or Update Batch Modifier
  result = api_instance.update_batch_modifier(vbasoftware_database, modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->update_batch_modifier: #{e}"
end
```

#### Using the update_batch_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_modifier_with_http_info(vbasoftware_database, modifier)

```ruby
begin
  # Create or Update Batch Modifier
  data, status_code, headers = api_instance.update_batch_modifier_with_http_info(vbasoftware_database, modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->update_batch_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **modifier** | [**Array&lt;Modifier&gt;**](Modifier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_modifier

> <ModifierVBAResponse> update_modifier(vbasoftware_database, modifier_code, modifier)

Update Modifier

Updates a specific Modifier.

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

api_instance = Vba::ModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
modifier_code = 'modifier_code_example' # String | Modifier Code
modifier = Vba::Modifier.new({modifier_code: 'modifier_code_example'}) # Modifier | 

begin
  # Update Modifier
  result = api_instance.update_modifier(vbasoftware_database, modifier_code, modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->update_modifier: #{e}"
end
```

#### Using the update_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModifierVBAResponse>, Integer, Hash)> update_modifier_with_http_info(vbasoftware_database, modifier_code, modifier)

```ruby
begin
  # Update Modifier
  data, status_code, headers = api_instance.update_modifier_with_http_info(vbasoftware_database, modifier_code, modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ModifiersApi->update_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **modifier_code** | **String** | Modifier Code |  |
| **modifier** | [**Modifier**](Modifier.md) |  |  |

### Return type

[**ModifierVBAResponse**](ModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

