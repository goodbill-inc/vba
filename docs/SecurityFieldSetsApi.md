# Vba::SecurityFieldSetsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_field_set**](SecurityFieldSetsApi.md#create_security_field_set) | **POST** /security-field-sets | Create SecurityFieldSet |
| [**delete_security_field_set**](SecurityFieldSetsApi.md#delete_security_field_set) | **DELETE** /security-field-sets/{SecurityFieldSet_ID} | Delete SecurityFieldSet |
| [**get_security_field_set**](SecurityFieldSetsApi.md#get_security_field_set) | **GET** /security-field-sets/{SecurityFieldSet_ID} | Get SecurityFieldSet |
| [**list_security_field_set**](SecurityFieldSetsApi.md#list_security_field_set) | **GET** /security-field-sets | List SecurityFieldSet |
| [**update_batch_security_field_set**](SecurityFieldSetsApi.md#update_batch_security_field_set) | **PUT** /security-field-sets-batch | Create or Update Batch SecurityFieldSet |
| [**update_security_field_set**](SecurityFieldSetsApi.md#update_security_field_set) | **PUT** /security-field-sets/{SecurityFieldSet_ID} | Update SecurityFieldSet |


## create_security_field_set

> <SecurityFieldSetVBAResponse> create_security_field_set(vbasoftware_database, security_field_set)

Create SecurityFieldSet

Creates a new SecurityFieldSet

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

api_instance = Vba::SecurityFieldSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set = Vba::SecurityFieldSet.new({security_field_set_id: 'security_field_set_id_example'}) # SecurityFieldSet | 

begin
  # Create SecurityFieldSet
  result = api_instance.create_security_field_set(vbasoftware_database, security_field_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->create_security_field_set: #{e}"
end
```

#### Using the create_security_field_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetVBAResponse>, Integer, Hash)> create_security_field_set_with_http_info(vbasoftware_database, security_field_set)

```ruby
begin
  # Create SecurityFieldSet
  data, status_code, headers = api_instance.create_security_field_set_with_http_info(vbasoftware_database, security_field_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->create_security_field_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set** | [**SecurityFieldSet**](SecurityFieldSet.md) |  |  |

### Return type

[**SecurityFieldSetVBAResponse**](SecurityFieldSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_field_set

> delete_security_field_set(vbasoftware_database, security_field_set_id)

Delete SecurityFieldSet

Deletes an SecurityFieldSet

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

api_instance = Vba::SecurityFieldSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID

begin
  # Delete SecurityFieldSet
  api_instance.delete_security_field_set(vbasoftware_database, security_field_set_id)
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->delete_security_field_set: #{e}"
end
```

#### Using the delete_security_field_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_field_set_with_http_info(vbasoftware_database, security_field_set_id)

```ruby
begin
  # Delete SecurityFieldSet
  data, status_code, headers = api_instance.delete_security_field_set_with_http_info(vbasoftware_database, security_field_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->delete_security_field_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_field_set

> <SecurityFieldSetVBAResponse> get_security_field_set(vbasoftware_database, security_field_set_id)

Get SecurityFieldSet

Gets SecurityFieldSet

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

api_instance = Vba::SecurityFieldSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID

begin
  # Get SecurityFieldSet
  result = api_instance.get_security_field_set(vbasoftware_database, security_field_set_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->get_security_field_set: #{e}"
end
```

#### Using the get_security_field_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetVBAResponse>, Integer, Hash)> get_security_field_set_with_http_info(vbasoftware_database, security_field_set_id)

```ruby
begin
  # Get SecurityFieldSet
  data, status_code, headers = api_instance.get_security_field_set_with_http_info(vbasoftware_database, security_field_set_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->get_security_field_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |

### Return type

[**SecurityFieldSetVBAResponse**](SecurityFieldSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_field_set

> <SecurityFieldSetListVBAResponse> list_security_field_set(vbasoftware_database, opts)

List SecurityFieldSet

Lists all SecurityFieldSet

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

api_instance = Vba::SecurityFieldSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SecurityFieldSet
  result = api_instance.list_security_field_set(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->list_security_field_set: #{e}"
end
```

#### Using the list_security_field_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetListVBAResponse>, Integer, Hash)> list_security_field_set_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityFieldSet
  data, status_code, headers = api_instance.list_security_field_set_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->list_security_field_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**SecurityFieldSetListVBAResponse**](SecurityFieldSetListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_field_set

> <MultiCodeResponseListVBAResponse> update_batch_security_field_set(vbasoftware_database, security_field_set)

Create or Update Batch SecurityFieldSet

Create or Update multiple SecurityFieldSet at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityFieldSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set = [Vba::SecurityFieldSet.new({security_field_set_id: 'security_field_set_id_example'})] # Array<SecurityFieldSet> | 

begin
  # Create or Update Batch SecurityFieldSet
  result = api_instance.update_batch_security_field_set(vbasoftware_database, security_field_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->update_batch_security_field_set: #{e}"
end
```

#### Using the update_batch_security_field_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_field_set_with_http_info(vbasoftware_database, security_field_set)

```ruby
begin
  # Create or Update Batch SecurityFieldSet
  data, status_code, headers = api_instance.update_batch_security_field_set_with_http_info(vbasoftware_database, security_field_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->update_batch_security_field_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set** | [**Array&lt;SecurityFieldSet&gt;**](SecurityFieldSet.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_field_set

> <SecurityFieldSetVBAResponse> update_security_field_set(vbasoftware_database, security_field_set_id, security_field_set)

Update SecurityFieldSet

Updates a specific SecurityFieldSet.

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

api_instance = Vba::SecurityFieldSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
security_field_set = Vba::SecurityFieldSet.new({security_field_set_id: 'security_field_set_id_example'}) # SecurityFieldSet | 

begin
  # Update SecurityFieldSet
  result = api_instance.update_security_field_set(vbasoftware_database, security_field_set_id, security_field_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->update_security_field_set: #{e}"
end
```

#### Using the update_security_field_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetVBAResponse>, Integer, Hash)> update_security_field_set_with_http_info(vbasoftware_database, security_field_set_id, security_field_set)

```ruby
begin
  # Update SecurityFieldSet
  data, status_code, headers = api_instance.update_security_field_set_with_http_info(vbasoftware_database, security_field_set_id, security_field_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetsApi->update_security_field_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **security_field_set** | [**SecurityFieldSet**](SecurityFieldSet.md) |  |  |

### Return type

[**SecurityFieldSetVBAResponse**](SecurityFieldSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

