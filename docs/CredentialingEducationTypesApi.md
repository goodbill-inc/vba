# Vba::CredentialingEducationTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_education_type**](CredentialingEducationTypesApi.md#create_cred_education_type) | **POST** /credentialing-education-types | Create CredEducationType |
| [**delete_cred_education_type**](CredentialingEducationTypesApi.md#delete_cred_education_type) | **DELETE** /credentialing-education-types/{credEducationTypeKey} | Delete CredEducationType |
| [**get_cred_education_type**](CredentialingEducationTypesApi.md#get_cred_education_type) | **GET** /credentialing-education-types/{credEducationTypeKey} | Get CredEducationType |
| [**list_cred_education_type**](CredentialingEducationTypesApi.md#list_cred_education_type) | **GET** /credentialing-education-types | List CredEducationType |
| [**update_batch_cred_education_type**](CredentialingEducationTypesApi.md#update_batch_cred_education_type) | **PUT** /credentialing-education-types-batch | Create or Update Batch CredEducationType |
| [**update_cred_education_type**](CredentialingEducationTypesApi.md#update_cred_education_type) | **PUT** /credentialing-education-types/{credEducationTypeKey} | Update CredEducationType |


## create_cred_education_type

> <CredEducationTypeVBAResponse> create_cred_education_type(vbasoftware_database, cred_education_type)

Create CredEducationType

Creates a new CredEducationType

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

api_instance = Vba::CredentialingEducationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_education_type = Vba::CredEducationType.new({cred_education_type_key: 37}) # CredEducationType | 

begin
  # Create CredEducationType
  result = api_instance.create_cred_education_type(vbasoftware_database, cred_education_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->create_cred_education_type: #{e}"
end
```

#### Using the create_cred_education_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredEducationTypeVBAResponse>, Integer, Hash)> create_cred_education_type_with_http_info(vbasoftware_database, cred_education_type)

```ruby
begin
  # Create CredEducationType
  data, status_code, headers = api_instance.create_cred_education_type_with_http_info(vbasoftware_database, cred_education_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredEducationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->create_cred_education_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_education_type** | [**CredEducationType**](CredEducationType.md) |  |  |

### Return type

[**CredEducationTypeVBAResponse**](CredEducationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_education_type

> delete_cred_education_type(vbasoftware_database, cred_education_type_key)

Delete CredEducationType

Deletes an CredEducationType

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

api_instance = Vba::CredentialingEducationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_education_type_key = 56 # Integer | CredEducationType Key

begin
  # Delete CredEducationType
  api_instance.delete_cred_education_type(vbasoftware_database, cred_education_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->delete_cred_education_type: #{e}"
end
```

#### Using the delete_cred_education_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_education_type_with_http_info(vbasoftware_database, cred_education_type_key)

```ruby
begin
  # Delete CredEducationType
  data, status_code, headers = api_instance.delete_cred_education_type_with_http_info(vbasoftware_database, cred_education_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->delete_cred_education_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_education_type_key** | **Integer** | CredEducationType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_education_type

> <CredEducationTypeVBAResponse> get_cred_education_type(vbasoftware_database, cred_education_type_key)

Get CredEducationType

Gets CredEducationType

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

api_instance = Vba::CredentialingEducationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_education_type_key = 56 # Integer | CredEducationType Key

begin
  # Get CredEducationType
  result = api_instance.get_cred_education_type(vbasoftware_database, cred_education_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->get_cred_education_type: #{e}"
end
```

#### Using the get_cred_education_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredEducationTypeVBAResponse>, Integer, Hash)> get_cred_education_type_with_http_info(vbasoftware_database, cred_education_type_key)

```ruby
begin
  # Get CredEducationType
  data, status_code, headers = api_instance.get_cred_education_type_with_http_info(vbasoftware_database, cred_education_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredEducationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->get_cred_education_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_education_type_key** | **Integer** | CredEducationType Key |  |

### Return type

[**CredEducationTypeVBAResponse**](CredEducationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_education_type

> <CredEducationTypeListVBAResponse> list_cred_education_type(vbasoftware_database, opts)

List CredEducationType

Lists all CredEducationType

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

api_instance = Vba::CredentialingEducationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredEducationType
  result = api_instance.list_cred_education_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->list_cred_education_type: #{e}"
end
```

#### Using the list_cred_education_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredEducationTypeListVBAResponse>, Integer, Hash)> list_cred_education_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredEducationType
  data, status_code, headers = api_instance.list_cred_education_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredEducationTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->list_cred_education_type_with_http_info: #{e}"
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

[**CredEducationTypeListVBAResponse**](CredEducationTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_education_type

> <MultiCodeResponseListVBAResponse> update_batch_cred_education_type(vbasoftware_database, cred_education_type)

Create or Update Batch CredEducationType

Create or Update multiple CredEducationType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingEducationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_education_type = [Vba::CredEducationType.new({cred_education_type_key: 37})] # Array<CredEducationType> | 

begin
  # Create or Update Batch CredEducationType
  result = api_instance.update_batch_cred_education_type(vbasoftware_database, cred_education_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->update_batch_cred_education_type: #{e}"
end
```

#### Using the update_batch_cred_education_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_education_type_with_http_info(vbasoftware_database, cred_education_type)

```ruby
begin
  # Create or Update Batch CredEducationType
  data, status_code, headers = api_instance.update_batch_cred_education_type_with_http_info(vbasoftware_database, cred_education_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->update_batch_cred_education_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_education_type** | [**Array&lt;CredEducationType&gt;**](CredEducationType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_education_type

> <CredEducationTypeVBAResponse> update_cred_education_type(vbasoftware_database, cred_education_type_key, cred_education_type)

Update CredEducationType

Updates a specific CredEducationType.

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

api_instance = Vba::CredentialingEducationTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_education_type_key = 56 # Integer | CredEducationType Key
cred_education_type = Vba::CredEducationType.new({cred_education_type_key: 37}) # CredEducationType | 

begin
  # Update CredEducationType
  result = api_instance.update_cred_education_type(vbasoftware_database, cred_education_type_key, cred_education_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->update_cred_education_type: #{e}"
end
```

#### Using the update_cred_education_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredEducationTypeVBAResponse>, Integer, Hash)> update_cred_education_type_with_http_info(vbasoftware_database, cred_education_type_key, cred_education_type)

```ruby
begin
  # Update CredEducationType
  data, status_code, headers = api_instance.update_cred_education_type_with_http_info(vbasoftware_database, cred_education_type_key, cred_education_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredEducationTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingEducationTypesApi->update_cred_education_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_education_type_key** | **Integer** | CredEducationType Key |  |
| **cred_education_type** | [**CredEducationType**](CredEducationType.md) |  |  |

### Return type

[**CredEducationTypeVBAResponse**](CredEducationTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

