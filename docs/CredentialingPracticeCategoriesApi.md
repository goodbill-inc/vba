# Vba::CredentialingPracticeCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_practice_category**](CredentialingPracticeCategoriesApi.md#create_cred_practice_category) | **POST** /credentialing-practice-categories | Create CredPracticeCategory |
| [**delete_cred_practice_category**](CredentialingPracticeCategoriesApi.md#delete_cred_practice_category) | **DELETE** /credentialing-practice-categories/{credPracticeCategoryKey} | Delete CredPracticeCategory |
| [**get_cred_practice_category**](CredentialingPracticeCategoriesApi.md#get_cred_practice_category) | **GET** /credentialing-practice-categories/{credPracticeCategoryKey} | Get CredPracticeCategory |
| [**list_cred_practice_category**](CredentialingPracticeCategoriesApi.md#list_cred_practice_category) | **GET** /credentialing-practice-categories | List CredPracticeCategory |
| [**update_batch_cred_practice_category**](CredentialingPracticeCategoriesApi.md#update_batch_cred_practice_category) | **PUT** /credentialing-practice-categories-batch | Create or Update Batch CredPracticeCategory |
| [**update_cred_practice_category**](CredentialingPracticeCategoriesApi.md#update_cred_practice_category) | **PUT** /credentialing-practice-categories/{credPracticeCategoryKey} | Update CredPracticeCategory |


## create_cred_practice_category

> <CredPracticeCategoryVBAResponse> create_cred_practice_category(vbasoftware_database, cred_practice_category)

Create CredPracticeCategory

Creates a new CredPracticeCategory

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

api_instance = Vba::CredentialingPracticeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category = Vba::CredPracticeCategory.new({cred_practice_category_key: 37}) # CredPracticeCategory | 

begin
  # Create CredPracticeCategory
  result = api_instance.create_cred_practice_category(vbasoftware_database, cred_practice_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->create_cred_practice_category: #{e}"
end
```

#### Using the create_cred_practice_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeCategoryVBAResponse>, Integer, Hash)> create_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category)

```ruby
begin
  # Create CredPracticeCategory
  data, status_code, headers = api_instance.create_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->create_cred_practice_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category** | [**CredPracticeCategory**](CredPracticeCategory.md) |  |  |

### Return type

[**CredPracticeCategoryVBAResponse**](CredPracticeCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_practice_category

> delete_cred_practice_category(vbasoftware_database, cred_practice_category_key)

Delete CredPracticeCategory

Deletes an CredPracticeCategory

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

api_instance = Vba::CredentialingPracticeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key

begin
  # Delete CredPracticeCategory
  api_instance.delete_cred_practice_category(vbasoftware_database, cred_practice_category_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->delete_cred_practice_category: #{e}"
end
```

#### Using the delete_cred_practice_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category_key)

```ruby
begin
  # Delete CredPracticeCategory
  data, status_code, headers = api_instance.delete_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->delete_cred_practice_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_practice_category

> <CredPracticeCategoryVBAResponse> get_cred_practice_category(vbasoftware_database, cred_practice_category_key)

Get CredPracticeCategory

Gets CredPracticeCategory

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

api_instance = Vba::CredentialingPracticeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key

begin
  # Get CredPracticeCategory
  result = api_instance.get_cred_practice_category(vbasoftware_database, cred_practice_category_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->get_cred_practice_category: #{e}"
end
```

#### Using the get_cred_practice_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeCategoryVBAResponse>, Integer, Hash)> get_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category_key)

```ruby
begin
  # Get CredPracticeCategory
  data, status_code, headers = api_instance.get_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->get_cred_practice_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |

### Return type

[**CredPracticeCategoryVBAResponse**](CredPracticeCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_practice_category

> <CredPracticeCategoryListVBAResponse> list_cred_practice_category(vbasoftware_database, opts)

List CredPracticeCategory

Lists all CredPracticeCategory

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

api_instance = Vba::CredentialingPracticeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredPracticeCategory
  result = api_instance.list_cred_practice_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->list_cred_practice_category: #{e}"
end
```

#### Using the list_cred_practice_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeCategoryListVBAResponse>, Integer, Hash)> list_cred_practice_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredPracticeCategory
  data, status_code, headers = api_instance.list_cred_practice_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->list_cred_practice_category_with_http_info: #{e}"
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

[**CredPracticeCategoryListVBAResponse**](CredPracticeCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_practice_category

> <MultiCodeResponseListVBAResponse> update_batch_cred_practice_category(vbasoftware_database, cred_practice_category)

Create or Update Batch CredPracticeCategory

Create or Update multiple CredPracticeCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingPracticeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category = [Vba::CredPracticeCategory.new({cred_practice_category_key: 37})] # Array<CredPracticeCategory> | 

begin
  # Create or Update Batch CredPracticeCategory
  result = api_instance.update_batch_cred_practice_category(vbasoftware_database, cred_practice_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->update_batch_cred_practice_category: #{e}"
end
```

#### Using the update_batch_cred_practice_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category)

```ruby
begin
  # Create or Update Batch CredPracticeCategory
  data, status_code, headers = api_instance.update_batch_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->update_batch_cred_practice_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category** | [**Array&lt;CredPracticeCategory&gt;**](CredPracticeCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_practice_category

> <CredPracticeCategoryVBAResponse> update_cred_practice_category(vbasoftware_database, cred_practice_category_key, cred_practice_category)

Update CredPracticeCategory

Updates a specific CredPracticeCategory.

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

api_instance = Vba::CredentialingPracticeCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_practice_category_key = 56 # Integer | CredPracticeCategory Key
cred_practice_category = Vba::CredPracticeCategory.new({cred_practice_category_key: 37}) # CredPracticeCategory | 

begin
  # Update CredPracticeCategory
  result = api_instance.update_cred_practice_category(vbasoftware_database, cred_practice_category_key, cred_practice_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->update_cred_practice_category: #{e}"
end
```

#### Using the update_cred_practice_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredPracticeCategoryVBAResponse>, Integer, Hash)> update_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_category)

```ruby
begin
  # Update CredPracticeCategory
  data, status_code, headers = api_instance.update_cred_practice_category_with_http_info(vbasoftware_database, cred_practice_category_key, cred_practice_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredPracticeCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingPracticeCategoriesApi->update_cred_practice_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_practice_category_key** | **Integer** | CredPracticeCategory Key |  |
| **cred_practice_category** | [**CredPracticeCategory**](CredPracticeCategory.md) |  |  |

### Return type

[**CredPracticeCategoryVBAResponse**](CredPracticeCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

