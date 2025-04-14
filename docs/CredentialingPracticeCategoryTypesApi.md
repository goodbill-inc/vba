# Vba::CredentialingPracticeCategoryTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_practice_type**](CredentialingPracticeCategoryTypesApi.md#create_cred_practice_type) | **POST** /credentialing-practice-categories/{credPracticeCategoryKey}/practice-types | Create CredPracticeType |
| [**delete_cred_practice_type**](CredentialingPracticeCategoryTypesApi.md#delete_cred_practice_type) | **DELETE** /credentialing-practice-categories/{credPracticeCategoryKey}/practice-types/{credPracticeTypeKey} | Delete CredPracticeType |
| [**get_cred_practice_type**](CredentialingPracticeCategoryTypesApi.md#get_cred_practice_type) | **GET** /credentialing-practice-categories/{credPracticeCategoryKey}/practice-types/{credPracticeTypeKey} | Get CredPracticeType |
| [**list_cred_practice_type**](CredentialingPracticeCategoryTypesApi.md#list_cred_practice_type) | **GET** /credentialing-practice-categories/{credPracticeCategoryKey}/practice-types | List CredPracticeType |
| [**update_batch_cred_practice_type**](CredentialingPracticeCategoryTypesApi.md#update_batch_cred_practice_type) | **PUT** /credentialing-practice-categories/{credPracticeCategoryKey}/practice-types-batch | Create or Update Batch CredPracticeType |
| [**update_cred_practice_type**](CredentialingPracticeCategoryTypesApi.md#update_cred_practice_type) | **PUT** /credentialing-practice-categories/{credPracticeCategoryKey}/practice-types/{credPracticeTypeKey} | Update CredPracticeType |


## create_cred_practice_type

> <CredPracticeTypeVBAResponse> create_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type)

Create CredPracticeType

Creates a new CredPracticeType

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

api_instance = Vba::CredentialingPracticeCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
cred_practice_type = Vba::CredPracticeType.new({cred_practice_type_key: 37, cred_practice_category_key: 37}) # CredPracticeType | 

begin
  # Create CredPracticeType
  result = api_instance.create_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->create_cred_practice_type: #{e}"
end
```

#### Using the create_cred_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeTypeVBAResponse>, Integer, Hash)> create_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type)

```ruby
begin
  # Create CredPracticeType
  data, status_code, headers = api_instance.create_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->create_cred_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **cred_practice_type** | [**CredPracticeType**](CredPracticeType.md) |  |  |

### Return type

[**CredPracticeTypeVBAResponse**](CredPracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_practice_type

> delete_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)

Delete CredPracticeType

Deletes an CredPracticeType

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

api_instance = Vba::CredentialingPracticeCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
cred_practice_type_key = 56 # Integer | CredPracticeType Key

begin
  # Delete CredPracticeType
  api_instance.delete_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->delete_cred_practice_type: #{e}"
end
```

#### Using the delete_cred_practice_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)

```ruby
begin
  # Delete CredPracticeType
  data, status_code, headers = api_instance.delete_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->delete_cred_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **cred_practice_type_key** | **Integer** | CredPracticeType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_practice_type

> <CredPracticeTypeVBAResponse> get_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)

Get CredPracticeType

Gets CredPracticeType

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

api_instance = Vba::CredentialingPracticeCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
cred_practice_type_key = 56 # Integer | CredPracticeType Key

begin
  # Get CredPracticeType
  result = api_instance.get_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->get_cred_practice_type: #{e}"
end
```

#### Using the get_cred_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeTypeVBAResponse>, Integer, Hash)> get_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)

```ruby
begin
  # Get CredPracticeType
  data, status_code, headers = api_instance.get_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->get_cred_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **cred_practice_type_key** | **Integer** | CredPracticeType Key |  |

### Return type

[**CredPracticeTypeVBAResponse**](CredPracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_practice_type

> <CredPracticeTypeListVBAResponse> list_cred_practice_type(vbasoftware_database, cred_practice_category_key, opts)

List CredPracticeType

Lists all CredPracticeType for the given credPracticeCategoryKey

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

api_instance = Vba::CredentialingPracticeCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredPracticeType
  result = api_instance.list_cred_practice_type(vbasoftware_database, cred_practice_category_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->list_cred_practice_type: #{e}"
end
```

#### Using the list_cred_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeTypeListVBAResponse>, Integer, Hash)> list_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, opts)

```ruby
begin
  # List CredPracticeType
  data, status_code, headers = api_instance.list_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->list_cred_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CredPracticeTypeListVBAResponse**](CredPracticeTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_practice_type

> <MultiCodeResponseListVBAResponse> update_batch_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type)

Create or Update Batch CredPracticeType

Create or Update multiple CredPracticeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingPracticeCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
cred_practice_type = [Vba::CredPracticeType.new({cred_practice_type_key: 37, cred_practice_category_key: 37})] # Array<CredPracticeType> | 

begin
  # Create or Update Batch CredPracticeType
  result = api_instance.update_batch_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->update_batch_cred_practice_type: #{e}"
end
```

#### Using the update_batch_cred_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type)

```ruby
begin
  # Create or Update Batch CredPracticeType
  data, status_code, headers = api_instance.update_batch_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->update_batch_cred_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **cred_practice_type** | [**Array&lt;CredPracticeType&gt;**](CredPracticeType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_practice_type

> <CredPracticeTypeVBAResponse> update_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type_key, cred_practice_type)

Update CredPracticeType

Updates a specific CredPracticeType.

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

api_instance = Vba::CredentialingPracticeCategoryTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
cred_practice_type_key = 56 # Integer | CredPracticeType Key
cred_practice_type = Vba::CredPracticeType.new({cred_practice_type_key: 37, cred_practice_category_key: 37}) # CredPracticeType | 

begin
  # Update CredPracticeType
  result = api_instance.update_cred_practice_type(vbasoftware_database, cred_practice_category_key, cred_practice_type_key, cred_practice_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->update_cred_practice_type: #{e}"
end
```

#### Using the update_cred_practice_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeTypeVBAResponse>, Integer, Hash)> update_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type_key, cred_practice_type)

```ruby
begin
  # Update CredPracticeType
  data, status_code, headers = api_instance.update_cred_practice_type_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_type_key, cred_practice_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoryTypesApi->update_cred_practice_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **cred_practice_type_key** | **Integer** | CredPracticeType Key |  |
| **cred_practice_type** | [**CredPracticeType**](CredPracticeType.md) |  |  |

### Return type

[**CredPracticeTypeVBAResponse**](CredPracticeTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

