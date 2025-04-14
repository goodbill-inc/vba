# Vba::ContactAssignmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_assign**](ContactAssignmentsApi.md#create_contact_assign) | **POST** /contact-assignments | Create ContactAssign |
| [**delete_contact_assign**](ContactAssignmentsApi.md#delete_contact_assign) | **DELETE** /contact-assignments/{contactAssignKey} | Delete ContactAssign |
| [**get_contact_assign**](ContactAssignmentsApi.md#get_contact_assign) | **GET** /contact-assignments/{contactAssignKey} | Get ContactAssign |
| [**list_contact_assign**](ContactAssignmentsApi.md#list_contact_assign) | **GET** /contact-assignments | List ContactAssign |
| [**update_batch_contact_assign**](ContactAssignmentsApi.md#update_batch_contact_assign) | **PUT** /contact-assignments-batch | Create or Update Batch ContactAssign |
| [**update_contact_assign**](ContactAssignmentsApi.md#update_contact_assign) | **PUT** /contact-assignments/{contactAssignKey} | Update ContactAssign |


## create_contact_assign

> <ContactAssignVBAResponse> create_contact_assign(vbasoftware_database, contact_assign)

Create ContactAssign

Creates a new ContactAssign

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

api_instance = Vba::ContactAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_assign = Vba::ContactAssign.new({contact_assign_key: 37, assign_type: 'assign_type_example', contact_key: 37}) # ContactAssign | 

begin
  # Create ContactAssign
  result = api_instance.create_contact_assign(vbasoftware_database, contact_assign)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->create_contact_assign: #{e}"
end
```

#### Using the create_contact_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactAssignVBAResponse>, Integer, Hash)> create_contact_assign_with_http_info(vbasoftware_database, contact_assign)

```ruby
begin
  # Create ContactAssign
  data, status_code, headers = api_instance.create_contact_assign_with_http_info(vbasoftware_database, contact_assign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactAssignVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->create_contact_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_assign** | [**ContactAssign**](ContactAssign.md) |  |  |

### Return type

[**ContactAssignVBAResponse**](ContactAssignVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_contact_assign

> delete_contact_assign(vbasoftware_database, contact_assign_key)

Delete ContactAssign

Deletes an ContactAssign

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

api_instance = Vba::ContactAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_assign_key = 56 # Integer | ContactAssign Key

begin
  # Delete ContactAssign
  api_instance.delete_contact_assign(vbasoftware_database, contact_assign_key)
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->delete_contact_assign: #{e}"
end
```

#### Using the delete_contact_assign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_assign_with_http_info(vbasoftware_database, contact_assign_key)

```ruby
begin
  # Delete ContactAssign
  data, status_code, headers = api_instance.delete_contact_assign_with_http_info(vbasoftware_database, contact_assign_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->delete_contact_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_assign_key** | **Integer** | ContactAssign Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_contact_assign

> <ContactAssignVBAResponse> get_contact_assign(vbasoftware_database, contact_assign_key)

Get ContactAssign

Gets ContactAssign

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

api_instance = Vba::ContactAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_assign_key = 56 # Integer | ContactAssign Key

begin
  # Get ContactAssign
  result = api_instance.get_contact_assign(vbasoftware_database, contact_assign_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->get_contact_assign: #{e}"
end
```

#### Using the get_contact_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactAssignVBAResponse>, Integer, Hash)> get_contact_assign_with_http_info(vbasoftware_database, contact_assign_key)

```ruby
begin
  # Get ContactAssign
  data, status_code, headers = api_instance.get_contact_assign_with_http_info(vbasoftware_database, contact_assign_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactAssignVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->get_contact_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_assign_key** | **Integer** | ContactAssign Key |  |

### Return type

[**ContactAssignVBAResponse**](ContactAssignVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_contact_assign

> <ContactAssignListVBAResponse> list_contact_assign(vbasoftware_database, opts)

List ContactAssign

Lists all ContactAssign

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

api_instance = Vba::ContactAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ContactAssign
  result = api_instance.list_contact_assign(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->list_contact_assign: #{e}"
end
```

#### Using the list_contact_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactAssignListVBAResponse>, Integer, Hash)> list_contact_assign_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ContactAssign
  data, status_code, headers = api_instance.list_contact_assign_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactAssignListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->list_contact_assign_with_http_info: #{e}"
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

[**ContactAssignListVBAResponse**](ContactAssignListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_contact_assign

> <MultiCodeResponseListVBAResponse> update_batch_contact_assign(vbasoftware_database, contact_assign)

Create or Update Batch ContactAssign

Create or Update multiple ContactAssign at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ContactAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_assign = [Vba::ContactAssign.new({contact_assign_key: 37, assign_type: 'assign_type_example', contact_key: 37})] # Array<ContactAssign> | 

begin
  # Create or Update Batch ContactAssign
  result = api_instance.update_batch_contact_assign(vbasoftware_database, contact_assign)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->update_batch_contact_assign: #{e}"
end
```

#### Using the update_batch_contact_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_contact_assign_with_http_info(vbasoftware_database, contact_assign)

```ruby
begin
  # Create or Update Batch ContactAssign
  data, status_code, headers = api_instance.update_batch_contact_assign_with_http_info(vbasoftware_database, contact_assign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->update_batch_contact_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_assign** | [**Array&lt;ContactAssign&gt;**](ContactAssign.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_contact_assign

> <ContactAssignVBAResponse> update_contact_assign(vbasoftware_database, contact_assign_key, contact_assign)

Update ContactAssign

Updates a specific ContactAssign.

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

api_instance = Vba::ContactAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
contact_assign_key = 56 # Integer | ContactAssign Key
contact_assign = Vba::ContactAssign.new({contact_assign_key: 37, assign_type: 'assign_type_example', contact_key: 37}) # ContactAssign | 

begin
  # Update ContactAssign
  result = api_instance.update_contact_assign(vbasoftware_database, contact_assign_key, contact_assign)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->update_contact_assign: #{e}"
end
```

#### Using the update_contact_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactAssignVBAResponse>, Integer, Hash)> update_contact_assign_with_http_info(vbasoftware_database, contact_assign_key, contact_assign)

```ruby
begin
  # Update ContactAssign
  data, status_code, headers = api_instance.update_contact_assign_with_http_info(vbasoftware_database, contact_assign_key, contact_assign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactAssignVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ContactAssignmentsApi->update_contact_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **contact_assign_key** | **Integer** | ContactAssign Key |  |
| **contact_assign** | [**ContactAssign**](ContactAssign.md) |  |  |

### Return type

[**ContactAssignVBAResponse**](ContactAssignVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

