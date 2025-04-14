# Vba::SecurityFieldsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_field**](SecurityFieldsApi.md#create_security_field) | **POST** /security-fields | Create SecurityField |
| [**delete_security_field**](SecurityFieldsApi.md#delete_security_field) | **DELETE** /security-fields/{SecurityField_ID} | Delete SecurityField |
| [**get_security_field**](SecurityFieldsApi.md#get_security_field) | **GET** /security-fields/{SecurityField_ID} | Get SecurityField |
| [**list_security_field**](SecurityFieldsApi.md#list_security_field) | **GET** /security-fields | List SecurityField |
| [**update_batch_security_field**](SecurityFieldsApi.md#update_batch_security_field) | **PUT** /security-fields-batch | Create or Update Batch SecurityField |
| [**update_security_field**](SecurityFieldsApi.md#update_security_field) | **PUT** /security-fields/{SecurityField_ID} | Update SecurityField |


## create_security_field

> <SecurityFieldVBAResponse> create_security_field(vbasoftware_database, security_field)

Create SecurityField

Creates a new SecurityField

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

api_instance = Vba::SecurityFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field = Vba::SecurityField.new({security_field_id: 'security_field_id_example'}) # SecurityField | 

begin
  # Create SecurityField
  result = api_instance.create_security_field(vbasoftware_database, security_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->create_security_field: #{e}"
end
```

#### Using the create_security_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldVBAResponse>, Integer, Hash)> create_security_field_with_http_info(vbasoftware_database, security_field)

```ruby
begin
  # Create SecurityField
  data, status_code, headers = api_instance.create_security_field_with_http_info(vbasoftware_database, security_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->create_security_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field** | [**SecurityField**](SecurityField.md) |  |  |

### Return type

[**SecurityFieldVBAResponse**](SecurityFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_field

> delete_security_field(vbasoftware_database, security_field_id)

Delete SecurityField

Deletes an SecurityField

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

api_instance = Vba::SecurityFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_id = 'security_field_id_example' # String | SecurityField ID

begin
  # Delete SecurityField
  api_instance.delete_security_field(vbasoftware_database, security_field_id)
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->delete_security_field: #{e}"
end
```

#### Using the delete_security_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_field_with_http_info(vbasoftware_database, security_field_id)

```ruby
begin
  # Delete SecurityField
  data, status_code, headers = api_instance.delete_security_field_with_http_info(vbasoftware_database, security_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->delete_security_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_id** | **String** | SecurityField ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_field

> <SecurityFieldVBAResponse> get_security_field(vbasoftware_database, security_field_id)

Get SecurityField

Gets SecurityField

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

api_instance = Vba::SecurityFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_id = 'security_field_id_example' # String | SecurityField ID

begin
  # Get SecurityField
  result = api_instance.get_security_field(vbasoftware_database, security_field_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->get_security_field: #{e}"
end
```

#### Using the get_security_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldVBAResponse>, Integer, Hash)> get_security_field_with_http_info(vbasoftware_database, security_field_id)

```ruby
begin
  # Get SecurityField
  data, status_code, headers = api_instance.get_security_field_with_http_info(vbasoftware_database, security_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->get_security_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_id** | **String** | SecurityField ID |  |

### Return type

[**SecurityFieldVBAResponse**](SecurityFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_field

> <SecurityFieldListVBAResponse> list_security_field(vbasoftware_database, opts)

List SecurityField

Lists all SecurityField

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

api_instance = Vba::SecurityFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SecurityField
  result = api_instance.list_security_field(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->list_security_field: #{e}"
end
```

#### Using the list_security_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldListVBAResponse>, Integer, Hash)> list_security_field_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityField
  data, status_code, headers = api_instance.list_security_field_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->list_security_field_with_http_info: #{e}"
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

[**SecurityFieldListVBAResponse**](SecurityFieldListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_field

> <MultiCodeResponseListVBAResponse> update_batch_security_field(vbasoftware_database, security_field)

Create or Update Batch SecurityField

Create or Update multiple SecurityField at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field = [Vba::SecurityField.new({security_field_id: 'security_field_id_example'})] # Array<SecurityField> | 

begin
  # Create or Update Batch SecurityField
  result = api_instance.update_batch_security_field(vbasoftware_database, security_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->update_batch_security_field: #{e}"
end
```

#### Using the update_batch_security_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_field_with_http_info(vbasoftware_database, security_field)

```ruby
begin
  # Create or Update Batch SecurityField
  data, status_code, headers = api_instance.update_batch_security_field_with_http_info(vbasoftware_database, security_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->update_batch_security_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field** | [**Array&lt;SecurityField&gt;**](SecurityField.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_field

> <SecurityFieldVBAResponse> update_security_field(vbasoftware_database, security_field_id, security_field)

Update SecurityField

Updates a specific SecurityField.

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

api_instance = Vba::SecurityFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_id = 'security_field_id_example' # String | SecurityField ID
security_field = Vba::SecurityField.new({security_field_id: 'security_field_id_example'}) # SecurityField | 

begin
  # Update SecurityField
  result = api_instance.update_security_field(vbasoftware_database, security_field_id, security_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->update_security_field: #{e}"
end
```

#### Using the update_security_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldVBAResponse>, Integer, Hash)> update_security_field_with_http_info(vbasoftware_database, security_field_id, security_field)

```ruby
begin
  # Update SecurityField
  data, status_code, headers = api_instance.update_security_field_with_http_info(vbasoftware_database, security_field_id, security_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldsApi->update_security_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_id** | **String** | SecurityField ID |  |
| **security_field** | [**SecurityField**](SecurityField.md) |  |  |

### Return type

[**SecurityFieldVBAResponse**](SecurityFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

