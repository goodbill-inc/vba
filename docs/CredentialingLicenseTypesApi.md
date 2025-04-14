# Vba::CredentialingLicenseTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_license_type**](CredentialingLicenseTypesApi.md#create_cred_license_type) | **POST** /credentialing-license-types | Create CredLicenseType |
| [**delete_cred_license_type**](CredentialingLicenseTypesApi.md#delete_cred_license_type) | **DELETE** /credentialing-license-types/{credLicenseTypeKey} | Delete CredLicenseType |
| [**get_cred_license_type**](CredentialingLicenseTypesApi.md#get_cred_license_type) | **GET** /credentialing-license-types/{credLicenseTypeKey} | Get CredLicenseType |
| [**list_cred_license_type**](CredentialingLicenseTypesApi.md#list_cred_license_type) | **GET** /credentialing-license-types | List CredLicenseType |
| [**update_batch_cred_license_type**](CredentialingLicenseTypesApi.md#update_batch_cred_license_type) | **PUT** /credentialing-license-types-batch | Create or Update Batch CredLicenseType |
| [**update_cred_license_type**](CredentialingLicenseTypesApi.md#update_cred_license_type) | **PUT** /credentialing-license-types/{credLicenseTypeKey} | Update CredLicenseType |


## create_cred_license_type

> <CredLicenseTypeVBAResponse> create_cred_license_type(vbasoftware_database, cred_license_type)

Create CredLicenseType

Creates a new CredLicenseType

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

api_instance = Vba::CredentialingLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_license_type = Vba::CredLicenseType.new({cred_license_type_key: 37}) # CredLicenseType | 

begin
  # Create CredLicenseType
  result = api_instance.create_cred_license_type(vbasoftware_database, cred_license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->create_cred_license_type: #{e}"
end
```

#### Using the create_cred_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredLicenseTypeVBAResponse>, Integer, Hash)> create_cred_license_type_with_http_info(vbasoftware_database, cred_license_type)

```ruby
begin
  # Create CredLicenseType
  data, status_code, headers = api_instance.create_cred_license_type_with_http_info(vbasoftware_database, cred_license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredLicenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->create_cred_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_license_type** | [**CredLicenseType**](CredLicenseType.md) |  |  |

### Return type

[**CredLicenseTypeVBAResponse**](CredLicenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_license_type

> delete_cred_license_type(vbasoftware_database, cred_license_type_key)

Delete CredLicenseType

Deletes an CredLicenseType

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

api_instance = Vba::CredentialingLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_license_type_key = 56 # Integer | CredLicenseType Key

begin
  # Delete CredLicenseType
  api_instance.delete_cred_license_type(vbasoftware_database, cred_license_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->delete_cred_license_type: #{e}"
end
```

#### Using the delete_cred_license_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_license_type_with_http_info(vbasoftware_database, cred_license_type_key)

```ruby
begin
  # Delete CredLicenseType
  data, status_code, headers = api_instance.delete_cred_license_type_with_http_info(vbasoftware_database, cred_license_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->delete_cred_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_license_type_key** | **Integer** | CredLicenseType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_license_type

> <CredLicenseTypeVBAResponse> get_cred_license_type(vbasoftware_database, cred_license_type_key)

Get CredLicenseType

Gets CredLicenseType

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

api_instance = Vba::CredentialingLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_license_type_key = 56 # Integer | CredLicenseType Key

begin
  # Get CredLicenseType
  result = api_instance.get_cred_license_type(vbasoftware_database, cred_license_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->get_cred_license_type: #{e}"
end
```

#### Using the get_cred_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredLicenseTypeVBAResponse>, Integer, Hash)> get_cred_license_type_with_http_info(vbasoftware_database, cred_license_type_key)

```ruby
begin
  # Get CredLicenseType
  data, status_code, headers = api_instance.get_cred_license_type_with_http_info(vbasoftware_database, cred_license_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredLicenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->get_cred_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_license_type_key** | **Integer** | CredLicenseType Key |  |

### Return type

[**CredLicenseTypeVBAResponse**](CredLicenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_license_type

> <CredLicenseTypeListVBAResponse> list_cred_license_type(vbasoftware_database, opts)

List CredLicenseType

Lists all CredLicenseType

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

api_instance = Vba::CredentialingLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredLicenseType
  result = api_instance.list_cred_license_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->list_cred_license_type: #{e}"
end
```

#### Using the list_cred_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredLicenseTypeListVBAResponse>, Integer, Hash)> list_cred_license_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredLicenseType
  data, status_code, headers = api_instance.list_cred_license_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredLicenseTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->list_cred_license_type_with_http_info: #{e}"
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

[**CredLicenseTypeListVBAResponse**](CredLicenseTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_license_type

> <MultiCodeResponseListVBAResponse> update_batch_cred_license_type(vbasoftware_database, cred_license_type)

Create or Update Batch CredLicenseType

Create or Update multiple CredLicenseType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_license_type = [Vba::CredLicenseType.new({cred_license_type_key: 37})] # Array<CredLicenseType> | 

begin
  # Create or Update Batch CredLicenseType
  result = api_instance.update_batch_cred_license_type(vbasoftware_database, cred_license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->update_batch_cred_license_type: #{e}"
end
```

#### Using the update_batch_cred_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_license_type_with_http_info(vbasoftware_database, cred_license_type)

```ruby
begin
  # Create or Update Batch CredLicenseType
  data, status_code, headers = api_instance.update_batch_cred_license_type_with_http_info(vbasoftware_database, cred_license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->update_batch_cred_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_license_type** | [**Array&lt;CredLicenseType&gt;**](CredLicenseType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_license_type

> <CredLicenseTypeVBAResponse> update_cred_license_type(vbasoftware_database, cred_license_type_key, cred_license_type)

Update CredLicenseType

Updates a specific CredLicenseType.

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

api_instance = Vba::CredentialingLicenseTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_license_type_key = 56 # Integer | CredLicenseType Key
cred_license_type = Vba::CredLicenseType.new({cred_license_type_key: 37}) # CredLicenseType | 

begin
  # Update CredLicenseType
  result = api_instance.update_cred_license_type(vbasoftware_database, cred_license_type_key, cred_license_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->update_cred_license_type: #{e}"
end
```

#### Using the update_cred_license_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredLicenseTypeVBAResponse>, Integer, Hash)> update_cred_license_type_with_http_info(vbasoftware_database, cred_license_type_key, cred_license_type)

```ruby
begin
  # Update CredLicenseType
  data, status_code, headers = api_instance.update_cred_license_type_with_http_info(vbasoftware_database, cred_license_type_key, cred_license_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredLicenseTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingLicenseTypesApi->update_cred_license_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_license_type_key** | **Integer** | CredLicenseType Key |  |
| **cred_license_type** | [**CredLicenseType**](CredLicenseType.md) |  |  |

### Return type

[**CredLicenseTypeVBAResponse**](CredLicenseTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

