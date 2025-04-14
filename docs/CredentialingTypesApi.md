# Vba::CredentialingTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_type**](CredentialingTypesApi.md#create_cred_type) | **POST** /credentialing-types | Create CredType |
| [**delete_cred_type**](CredentialingTypesApi.md#delete_cred_type) | **DELETE** /credentialing-types/{credTypeKey} | Delete CredType |
| [**get_cred_type**](CredentialingTypesApi.md#get_cred_type) | **GET** /credentialing-types/{credTypeKey} | Get CredType |
| [**list_cred_type**](CredentialingTypesApi.md#list_cred_type) | **GET** /credentialing-types | List CredType |
| [**update_batch_cred_type**](CredentialingTypesApi.md#update_batch_cred_type) | **PUT** /credentialing-types-batch | Create or Update Batch CredType |
| [**update_cred_type**](CredentialingTypesApi.md#update_cred_type) | **PUT** /credentialing-types/{credTypeKey} | Update CredType |


## create_cred_type

> <CredTypeVBAResponse> create_cred_type(vbasoftware_database, cred_type)

Create CredType

Creates a new CredType

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

api_instance = Vba::CredentialingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_type = Vba::CredType.new({cred_type_key: 37}) # CredType | 

begin
  # Create CredType
  result = api_instance.create_cred_type(vbasoftware_database, cred_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->create_cred_type: #{e}"
end
```

#### Using the create_cred_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTypeVBAResponse>, Integer, Hash)> create_cred_type_with_http_info(vbasoftware_database, cred_type)

```ruby
begin
  # Create CredType
  data, status_code, headers = api_instance.create_cred_type_with_http_info(vbasoftware_database, cred_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->create_cred_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_type** | [**CredType**](CredType.md) |  |  |

### Return type

[**CredTypeVBAResponse**](CredTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_type

> delete_cred_type(vbasoftware_database, cred_type_key)

Delete CredType

Deletes an CredType

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

api_instance = Vba::CredentialingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_type_key = 56 # Integer | CredType Key

begin
  # Delete CredType
  api_instance.delete_cred_type(vbasoftware_database, cred_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->delete_cred_type: #{e}"
end
```

#### Using the delete_cred_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_type_with_http_info(vbasoftware_database, cred_type_key)

```ruby
begin
  # Delete CredType
  data, status_code, headers = api_instance.delete_cred_type_with_http_info(vbasoftware_database, cred_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->delete_cred_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_type_key** | **Integer** | CredType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_type

> <CredTypeVBAResponse> get_cred_type(vbasoftware_database, cred_type_key)

Get CredType

Gets CredType

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

api_instance = Vba::CredentialingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_type_key = 56 # Integer | CredType Key

begin
  # Get CredType
  result = api_instance.get_cred_type(vbasoftware_database, cred_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->get_cred_type: #{e}"
end
```

#### Using the get_cred_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTypeVBAResponse>, Integer, Hash)> get_cred_type_with_http_info(vbasoftware_database, cred_type_key)

```ruby
begin
  # Get CredType
  data, status_code, headers = api_instance.get_cred_type_with_http_info(vbasoftware_database, cred_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->get_cred_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_type_key** | **Integer** | CredType Key |  |

### Return type

[**CredTypeVBAResponse**](CredTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_type

> <CredTypeListVBAResponse> list_cred_type(vbasoftware_database, opts)

List CredType

Lists all CredType

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

api_instance = Vba::CredentialingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredType
  result = api_instance.list_cred_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->list_cred_type: #{e}"
end
```

#### Using the list_cred_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTypeListVBAResponse>, Integer, Hash)> list_cred_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredType
  data, status_code, headers = api_instance.list_cred_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->list_cred_type_with_http_info: #{e}"
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

[**CredTypeListVBAResponse**](CredTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_type

> <MultiCodeResponseListVBAResponse> update_batch_cred_type(vbasoftware_database, cred_type)

Create or Update Batch CredType

Create or Update multiple CredType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_type = [Vba::CredType.new({cred_type_key: 37})] # Array<CredType> | 

begin
  # Create or Update Batch CredType
  result = api_instance.update_batch_cred_type(vbasoftware_database, cred_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->update_batch_cred_type: #{e}"
end
```

#### Using the update_batch_cred_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_type_with_http_info(vbasoftware_database, cred_type)

```ruby
begin
  # Create or Update Batch CredType
  data, status_code, headers = api_instance.update_batch_cred_type_with_http_info(vbasoftware_database, cred_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->update_batch_cred_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_type** | [**Array&lt;CredType&gt;**](CredType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_type

> <CredTypeVBAResponse> update_cred_type(vbasoftware_database, cred_type_key, cred_type)

Update CredType

Updates a specific CredType.

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

api_instance = Vba::CredentialingTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_type_key = 56 # Integer | CredType Key
cred_type = Vba::CredType.new({cred_type_key: 37}) # CredType | 

begin
  # Update CredType
  result = api_instance.update_cred_type(vbasoftware_database, cred_type_key, cred_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->update_cred_type: #{e}"
end
```

#### Using the update_cred_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredTypeVBAResponse>, Integer, Hash)> update_cred_type_with_http_info(vbasoftware_database, cred_type_key, cred_type)

```ruby
begin
  # Update CredType
  data, status_code, headers = api_instance.update_cred_type_with_http_info(vbasoftware_database, cred_type_key, cred_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingTypesApi->update_cred_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_type_key** | **Integer** | CredType Key |  |
| **cred_type** | [**CredType**](CredType.md) |  |  |

### Return type

[**CredTypeVBAResponse**](CredTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

