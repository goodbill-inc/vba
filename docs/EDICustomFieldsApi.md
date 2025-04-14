# Vba::EDICustomFieldsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_edi_custom_field**](EDICustomFieldsApi.md#create_edi_custom_field) | **POST** /edi-custom-fields | Create EDICustomField |
| [**delete_edi_custom_field**](EDICustomFieldsApi.md#delete_edi_custom_field) | **DELETE** /edi-custom-fields/{EDICustomField_Key} | Delete EDICustomField |
| [**get_edi_custom_field**](EDICustomFieldsApi.md#get_edi_custom_field) | **GET** /edi-custom-fields/{EDICustomField_Key} | Get EDICustomField |
| [**list_edi_custom_field**](EDICustomFieldsApi.md#list_edi_custom_field) | **GET** /edi-custom-fields | List EDICustomField |
| [**update_batch_edi_custom_field**](EDICustomFieldsApi.md#update_batch_edi_custom_field) | **PUT** /edi-custom-fields-batch | Create or Update Batch EDICustomField |
| [**update_edi_custom_field**](EDICustomFieldsApi.md#update_edi_custom_field) | **PUT** /edi-custom-fields/{EDICustomField_Key} | Update EDICustomField |


## create_edi_custom_field

> <EDICustomFieldVBAResponse> create_edi_custom_field(vbasoftware_database, edi_custom_field)

Create EDICustomField

Creates a new EDICustomField

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

api_instance = Vba::EDICustomFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field = Vba::EDICustomField.new({edi_custom_field_key: 37, source: 'source_example'}) # EDICustomField | 

begin
  # Create EDICustomField
  result = api_instance.create_edi_custom_field(vbasoftware_database, edi_custom_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->create_edi_custom_field: #{e}"
end
```

#### Using the create_edi_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldVBAResponse>, Integer, Hash)> create_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field)

```ruby
begin
  # Create EDICustomField
  data, status_code, headers = api_instance.create_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->create_edi_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field** | [**EDICustomField**](EDICustomField.md) |  |  |

### Return type

[**EDICustomFieldVBAResponse**](EDICustomFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_edi_custom_field

> delete_edi_custom_field(vbasoftware_database, edi_custom_field_key)

Delete EDICustomField

Deletes an EDICustomField

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

api_instance = Vba::EDICustomFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_key = 56 # Integer | EDICustomField Key

begin
  # Delete EDICustomField
  api_instance.delete_edi_custom_field(vbasoftware_database, edi_custom_field_key)
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->delete_edi_custom_field: #{e}"
end
```

#### Using the delete_edi_custom_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field_key)

```ruby
begin
  # Delete EDICustomField
  data, status_code, headers = api_instance.delete_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->delete_edi_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_key** | **Integer** | EDICustomField Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_edi_custom_field

> <EDICustomFieldVBAResponse> get_edi_custom_field(vbasoftware_database, edi_custom_field_key)

Get EDICustomField

Gets EDICustomField

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

api_instance = Vba::EDICustomFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_key = 56 # Integer | EDICustomField Key

begin
  # Get EDICustomField
  result = api_instance.get_edi_custom_field(vbasoftware_database, edi_custom_field_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->get_edi_custom_field: #{e}"
end
```

#### Using the get_edi_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldVBAResponse>, Integer, Hash)> get_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field_key)

```ruby
begin
  # Get EDICustomField
  data, status_code, headers = api_instance.get_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->get_edi_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_key** | **Integer** | EDICustomField Key |  |

### Return type

[**EDICustomFieldVBAResponse**](EDICustomFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_edi_custom_field

> <EDICustomFieldListVBAResponse> list_edi_custom_field(vbasoftware_database, opts)

List EDICustomField

Lists all EDICustomField

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

api_instance = Vba::EDICustomFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EDICustomField
  result = api_instance.list_edi_custom_field(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->list_edi_custom_field: #{e}"
end
```

#### Using the list_edi_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldListVBAResponse>, Integer, Hash)> list_edi_custom_field_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EDICustomField
  data, status_code, headers = api_instance.list_edi_custom_field_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->list_edi_custom_field_with_http_info: #{e}"
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

[**EDICustomFieldListVBAResponse**](EDICustomFieldListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_edi_custom_field

> <MultiCodeResponseListVBAResponse> update_batch_edi_custom_field(vbasoftware_database, edi_custom_field)

Create or Update Batch EDICustomField

Create or Update multiple EDICustomField at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EDICustomFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field = [Vba::EDICustomField.new({edi_custom_field_key: 37, source: 'source_example'})] # Array<EDICustomField> | 

begin
  # Create or Update Batch EDICustomField
  result = api_instance.update_batch_edi_custom_field(vbasoftware_database, edi_custom_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->update_batch_edi_custom_field: #{e}"
end
```

#### Using the update_batch_edi_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field)

```ruby
begin
  # Create or Update Batch EDICustomField
  data, status_code, headers = api_instance.update_batch_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->update_batch_edi_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field** | [**Array&lt;EDICustomField&gt;**](EDICustomField.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_edi_custom_field

> <EDICustomFieldVBAResponse> update_edi_custom_field(vbasoftware_database, edi_custom_field_key, edi_custom_field)

Update EDICustomField

Updates a specific EDICustomField.

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

api_instance = Vba::EDICustomFieldsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
edi_custom_field_key = 56 # Integer | EDICustomField Key
edi_custom_field = Vba::EDICustomField.new({edi_custom_field_key: 37, source: 'source_example'}) # EDICustomField | 

begin
  # Update EDICustomField
  result = api_instance.update_edi_custom_field(vbasoftware_database, edi_custom_field_key, edi_custom_field)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->update_edi_custom_field: #{e}"
end
```

#### Using the update_edi_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EDICustomFieldVBAResponse>, Integer, Hash)> update_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field_key, edi_custom_field)

```ruby
begin
  # Update EDICustomField
  data, status_code, headers = api_instance.update_edi_custom_field_with_http_info(vbasoftware_database, edi_custom_field_key, edi_custom_field)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EDICustomFieldVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EDICustomFieldsApi->update_edi_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **edi_custom_field_key** | **Integer** | EDICustomField Key |  |
| **edi_custom_field** | [**EDICustomField**](EDICustomField.md) |  |  |

### Return type

[**EDICustomFieldVBAResponse**](EDICustomFieldVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

