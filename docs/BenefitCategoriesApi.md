# Vba::BenefitCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit_category**](BenefitCategoriesApi.md#create_benefit_category) | **POST** /benefit-categories | Create BenefitCategory |
| [**delete_benefit_category**](BenefitCategoriesApi.md#delete_benefit_category) | **DELETE** /benefit-categories/{benefitCategory} | Delete BenefitCategory |
| [**get_benefit_category**](BenefitCategoriesApi.md#get_benefit_category) | **GET** /benefit-categories/{benefitCategory} | Get BenefitCategory |
| [**list_benefit_category**](BenefitCategoriesApi.md#list_benefit_category) | **GET** /benefit-categories | List BenefitCategory |
| [**update_batch_benefit_category**](BenefitCategoriesApi.md#update_batch_benefit_category) | **PUT** /benefit-categories-batch | Create or Update Batch BenefitCategory |
| [**update_benefit_category**](BenefitCategoriesApi.md#update_benefit_category) | **PUT** /benefit-categories/{benefitCategory} | Update BenefitCategory |


## create_benefit_category

> <BenefitCategoryVBAResponse> create_benefit_category(vbasoftware_database, benefit_category)

Create BenefitCategory

Creates a new BenefitCategory

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

api_instance = Vba::BenefitCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_category = Vba::BenefitCategory.new({benefit_category: 'benefit_category_example'}) # BenefitCategory | 

begin
  # Create BenefitCategory
  result = api_instance.create_benefit_category(vbasoftware_database, benefit_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->create_benefit_category: #{e}"
end
```

#### Using the create_benefit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCategoryVBAResponse>, Integer, Hash)> create_benefit_category_with_http_info(vbasoftware_database, benefit_category)

```ruby
begin
  # Create BenefitCategory
  data, status_code, headers = api_instance.create_benefit_category_with_http_info(vbasoftware_database, benefit_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->create_benefit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_category** | [**BenefitCategory**](BenefitCategory.md) |  |  |

### Return type

[**BenefitCategoryVBAResponse**](BenefitCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_category

> delete_benefit_category(vbasoftware_database, benefit_category)

Delete BenefitCategory

Deletes an BenefitCategory

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

api_instance = Vba::BenefitCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_category = 'benefit_category_example' # String | Benefit Category

begin
  # Delete BenefitCategory
  api_instance.delete_benefit_category(vbasoftware_database, benefit_category)
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->delete_benefit_category: #{e}"
end
```

#### Using the delete_benefit_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_category_with_http_info(vbasoftware_database, benefit_category)

```ruby
begin
  # Delete BenefitCategory
  data, status_code, headers = api_instance.delete_benefit_category_with_http_info(vbasoftware_database, benefit_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->delete_benefit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_category** | **String** | Benefit Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit_category

> <BenefitCategoryVBAResponse> get_benefit_category(vbasoftware_database, benefit_category)

Get BenefitCategory

Gets BenefitCategory

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

api_instance = Vba::BenefitCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_category = 'benefit_category_example' # String | Benefit Category

begin
  # Get BenefitCategory
  result = api_instance.get_benefit_category(vbasoftware_database, benefit_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->get_benefit_category: #{e}"
end
```

#### Using the get_benefit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCategoryVBAResponse>, Integer, Hash)> get_benefit_category_with_http_info(vbasoftware_database, benefit_category)

```ruby
begin
  # Get BenefitCategory
  data, status_code, headers = api_instance.get_benefit_category_with_http_info(vbasoftware_database, benefit_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->get_benefit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_category** | **String** | Benefit Category |  |

### Return type

[**BenefitCategoryVBAResponse**](BenefitCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_category

> <BenefitCategoryListVBAResponse> list_benefit_category(vbasoftware_database)

List BenefitCategory

Lists all BenefitCategory 

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

api_instance = Vba::BenefitCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List BenefitCategory
  result = api_instance.list_benefit_category(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->list_benefit_category: #{e}"
end
```

#### Using the list_benefit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCategoryListVBAResponse>, Integer, Hash)> list_benefit_category_with_http_info(vbasoftware_database)

```ruby
begin
  # List BenefitCategory
  data, status_code, headers = api_instance.list_benefit_category_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->list_benefit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**BenefitCategoryListVBAResponse**](BenefitCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefit_category

> <MultiCodeResponseListVBAResponse> update_batch_benefit_category(vbasoftware_database, benefit_category)

Create or Update Batch BenefitCategory

Create or Update multiple BenefitCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_category = [Vba::BenefitCategory.new({benefit_category: 'benefit_category_example'})] # Array<BenefitCategory> | 

begin
  # Create or Update Batch BenefitCategory
  result = api_instance.update_batch_benefit_category(vbasoftware_database, benefit_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->update_batch_benefit_category: #{e}"
end
```

#### Using the update_batch_benefit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefit_category_with_http_info(vbasoftware_database, benefit_category)

```ruby
begin
  # Create or Update Batch BenefitCategory
  data, status_code, headers = api_instance.update_batch_benefit_category_with_http_info(vbasoftware_database, benefit_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->update_batch_benefit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_category** | [**Array&lt;BenefitCategory&gt;**](BenefitCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit_category

> <BenefitCategoryVBAResponse> update_benefit_category(vbasoftware_database, benefit_category, benefit_category2)

Update BenefitCategory

Updates a specific BenefitCategory.

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

api_instance = Vba::BenefitCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_category = 'benefit_category_example' # String | Benefit Category
benefit_category2 = Vba::BenefitCategory.new({benefit_category: 'benefit_category_example'}) # BenefitCategory | 

begin
  # Update BenefitCategory
  result = api_instance.update_benefit_category(vbasoftware_database, benefit_category, benefit_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->update_benefit_category: #{e}"
end
```

#### Using the update_benefit_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCategoryVBAResponse>, Integer, Hash)> update_benefit_category_with_http_info(vbasoftware_database, benefit_category, benefit_category2)

```ruby
begin
  # Update BenefitCategory
  data, status_code, headers = api_instance.update_benefit_category_with_http_info(vbasoftware_database, benefit_category, benefit_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitCategoriesApi->update_benefit_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_category** | **String** | Benefit Category |  |
| **benefit_category2** | [**BenefitCategory**](BenefitCategory.md) |  |  |

### Return type

[**BenefitCategoryVBAResponse**](BenefitCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

