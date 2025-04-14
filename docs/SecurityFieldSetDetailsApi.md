# Vba::SecurityFieldSetDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_field_set_detail**](SecurityFieldSetDetailsApi.md#create_security_field_set_detail) | **POST** /security-field-sets/{SecurityFieldSet_ID}/fields/{SecurityField_ID}/details | Create SecurityFieldSetDetail |
| [**delete_security_field_set_detail**](SecurityFieldSetDetailsApi.md#delete_security_field_set_detail) | **DELETE** /security-field-sets/{SecurityFieldSet_ID}/fields/{SecurityField_ID}/details | Delete SecurityFieldSetDetail |
| [**get_security_field_set_detail**](SecurityFieldSetDetailsApi.md#get_security_field_set_detail) | **GET** /security-field-sets/{SecurityFieldSet_ID}/fields/{SecurityField_ID}/details | Get SecurityFieldSetDetail |
| [**list_security_field_set_detail**](SecurityFieldSetDetailsApi.md#list_security_field_set_detail) | **GET** /security-field-sets/{SecurityFieldSet_ID}/details | List SecurityFieldSetDetail |
| [**update_batch_security_field_set_detail**](SecurityFieldSetDetailsApi.md#update_batch_security_field_set_detail) | **PUT** /security-field-sets/{SecurityFieldSet_ID}/details-batch | Create or Update Batch SecurityFieldSetDetail |
| [**update_security_field_set_detail**](SecurityFieldSetDetailsApi.md#update_security_field_set_detail) | **PUT** /security-field-sets/{SecurityFieldSet_ID}/fields/{SecurityField_ID}/details | Update SecurityFieldSetDetail |


## create_security_field_set_detail

> <SecurityFieldSetDetailVBAResponse> create_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)

Create SecurityFieldSetDetail

Creates a new SecurityFieldSetDetail

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

api_instance = Vba::SecurityFieldSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
security_field_id = 'security_field_id_example' # String | SecurityField ID
security_field_set_detail = Vba::SecurityFieldSetDetail.new({security_field_set_id: 'security_field_set_id_example', security_field_id: 'security_field_id_example'}) # SecurityFieldSetDetail | 

begin
  # Create SecurityFieldSetDetail
  result = api_instance.create_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->create_security_field_set_detail: #{e}"
end
```

#### Using the create_security_field_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetDetailVBAResponse>, Integer, Hash)> create_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)

```ruby
begin
  # Create SecurityFieldSetDetail
  data, status_code, headers = api_instance.create_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->create_security_field_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **security_field_id** | **String** | SecurityField ID |  |
| **security_field_set_detail** | [**SecurityFieldSetDetail**](SecurityFieldSetDetail.md) |  |  |

### Return type

[**SecurityFieldSetDetailVBAResponse**](SecurityFieldSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_field_set_detail

> delete_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id)

Delete SecurityFieldSetDetail

Deletes an SecurityFieldSetDetail

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

api_instance = Vba::SecurityFieldSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
security_field_id = 'security_field_id_example' # String | SecurityField ID

begin
  # Delete SecurityFieldSetDetail
  api_instance.delete_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id)
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->delete_security_field_set_detail: #{e}"
end
```

#### Using the delete_security_field_set_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id)

```ruby
begin
  # Delete SecurityFieldSetDetail
  data, status_code, headers = api_instance.delete_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->delete_security_field_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **security_field_id** | **String** | SecurityField ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_field_set_detail

> <SecurityFieldSetDetailVBAResponse> get_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id)

Get SecurityFieldSetDetail

Gets SecurityFieldSetDetail

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

api_instance = Vba::SecurityFieldSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
security_field_id = 'security_field_id_example' # String | SecurityField ID

begin
  # Get SecurityFieldSetDetail
  result = api_instance.get_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->get_security_field_set_detail: #{e}"
end
```

#### Using the get_security_field_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetDetailVBAResponse>, Integer, Hash)> get_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id)

```ruby
begin
  # Get SecurityFieldSetDetail
  data, status_code, headers = api_instance.get_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->get_security_field_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **security_field_id** | **String** | SecurityField ID |  |

### Return type

[**SecurityFieldSetDetailVBAResponse**](SecurityFieldSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_field_set_detail

> <SecurityFieldSetDetailListVBAResponse> list_security_field_set_detail(vbasoftware_database, security_field_set_id, opts)

List SecurityFieldSetDetail

Lists all SecurityFieldSetDetail for the given SecurityFieldSet_ID

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

api_instance = Vba::SecurityFieldSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SecurityFieldSetDetail
  result = api_instance.list_security_field_set_detail(vbasoftware_database, security_field_set_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->list_security_field_set_detail: #{e}"
end
```

#### Using the list_security_field_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetDetailListVBAResponse>, Integer, Hash)> list_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, opts)

```ruby
begin
  # List SecurityFieldSetDetail
  data, status_code, headers = api_instance.list_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->list_security_field_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**SecurityFieldSetDetailListVBAResponse**](SecurityFieldSetDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_field_set_detail

> <MultiCodeResponseListVBAResponse> update_batch_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_set_detail)

Create or Update Batch SecurityFieldSetDetail

Create or Update multiple SecurityFieldSetDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityFieldSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
security_field_set_detail = [Vba::SecurityFieldSetDetail.new({security_field_set_id: 'security_field_set_id_example', security_field_id: 'security_field_id_example'})] # Array<SecurityFieldSetDetail> | 

begin
  # Create or Update Batch SecurityFieldSetDetail
  result = api_instance.update_batch_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->update_batch_security_field_set_detail: #{e}"
end
```

#### Using the update_batch_security_field_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_set_detail)

```ruby
begin
  # Create or Update Batch SecurityFieldSetDetail
  data, status_code, headers = api_instance.update_batch_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->update_batch_security_field_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **security_field_set_detail** | [**Array&lt;SecurityFieldSetDetail&gt;**](SecurityFieldSetDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_field_set_detail

> <SecurityFieldSetDetailVBAResponse> update_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)

Update SecurityFieldSetDetail

Updates a specific SecurityFieldSetDetail.

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

api_instance = Vba::SecurityFieldSetDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_field_set_id = 'security_field_set_id_example' # String | SecurityFieldSet ID
security_field_id = 'security_field_id_example' # String | SecurityField ID
security_field_set_detail = Vba::SecurityFieldSetDetail.new({security_field_set_id: 'security_field_set_id_example', security_field_id: 'security_field_id_example'}) # SecurityFieldSetDetail | 

begin
  # Update SecurityFieldSetDetail
  result = api_instance.update_security_field_set_detail(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->update_security_field_set_detail: #{e}"
end
```

#### Using the update_security_field_set_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityFieldSetDetailVBAResponse>, Integer, Hash)> update_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)

```ruby
begin
  # Update SecurityFieldSetDetail
  data, status_code, headers = api_instance.update_security_field_set_detail_with_http_info(vbasoftware_database, security_field_set_id, security_field_id, security_field_set_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityFieldSetDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityFieldSetDetailsApi->update_security_field_set_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_field_set_id** | **String** | SecurityFieldSet ID |  |
| **security_field_id** | **String** | SecurityField ID |  |
| **security_field_set_detail** | [**SecurityFieldSetDetail**](SecurityFieldSetDetail.md) |  |  |

### Return type

[**SecurityFieldSetDetailVBAResponse**](SecurityFieldSetDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

