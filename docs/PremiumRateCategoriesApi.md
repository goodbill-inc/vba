# Vba::PremiumRateCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_category**](PremiumRateCategoriesApi.md#create_prem_rate_category) | **POST** /premium-rate-categories | Create PremRateCategory |
| [**delete_prem_rate_category**](PremiumRateCategoriesApi.md#delete_prem_rate_category) | **DELETE** /premium-rate-categories/{premRateCategory} | Delete PremRateCategory |
| [**get_prem_rate_category**](PremiumRateCategoriesApi.md#get_prem_rate_category) | **GET** /premium-rate-categories/{premRateCategory} | Get PremRateCategory |
| [**list_prem_rate_category**](PremiumRateCategoriesApi.md#list_prem_rate_category) | **GET** /premium-rate-categories | List PremRateCategory |
| [**update_batch_prem_rate_category**](PremiumRateCategoriesApi.md#update_batch_prem_rate_category) | **PUT** /premium-rate-categories-batch | Create or Update Batch PremRateCategory |
| [**update_prem_rate_category**](PremiumRateCategoriesApi.md#update_prem_rate_category) | **PUT** /premium-rate-categories/{premRateCategory} | Update PremRateCategory |


## create_prem_rate_category

> <PremRateCategoryVBAResponse> create_prem_rate_category(vbasoftware_database, prem_rate_category)

Create PremRateCategory

Creates a new PremRateCategory

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

api_instance = Vba::PremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_category = Vba::PremRateCategory.new({prem_rate_category: 'prem_rate_category_example'}) # PremRateCategory | 

begin
  # Create PremRateCategory
  result = api_instance.create_prem_rate_category(vbasoftware_database, prem_rate_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->create_prem_rate_category: #{e}"
end
```

#### Using the create_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateCategoryVBAResponse>, Integer, Hash)> create_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)

```ruby
begin
  # Create PremRateCategory
  data, status_code, headers = api_instance.create_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->create_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_category** | [**PremRateCategory**](PremRateCategory.md) |  |  |

### Return type

[**PremRateCategoryVBAResponse**](PremRateCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_category

> delete_prem_rate_category(vbasoftware_database, prem_rate_category)

Delete PremRateCategory

Deletes an PremRateCategory

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

api_instance = Vba::PremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_category = 'prem_rate_category_example' # String | PremRate Category

begin
  # Delete PremRateCategory
  api_instance.delete_prem_rate_category(vbasoftware_database, prem_rate_category)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->delete_prem_rate_category: #{e}"
end
```

#### Using the delete_prem_rate_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)

```ruby
begin
  # Delete PremRateCategory
  data, status_code, headers = api_instance.delete_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->delete_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_category** | **String** | PremRate Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_category

> <PremRateCategoryVBAResponse> get_prem_rate_category(vbasoftware_database, prem_rate_category)

Get PremRateCategory

Gets PremRateCategory

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

api_instance = Vba::PremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_category = 'prem_rate_category_example' # String | PremRate Category

begin
  # Get PremRateCategory
  result = api_instance.get_prem_rate_category(vbasoftware_database, prem_rate_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->get_prem_rate_category: #{e}"
end
```

#### Using the get_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateCategoryVBAResponse>, Integer, Hash)> get_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)

```ruby
begin
  # Get PremRateCategory
  data, status_code, headers = api_instance.get_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->get_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_category** | **String** | PremRate Category |  |

### Return type

[**PremRateCategoryVBAResponse**](PremRateCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_category

> <PremRateCategoryListVBAResponse> list_prem_rate_category(vbasoftware_database, opts)

List PremRateCategory

Lists all PremRateCategory

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

api_instance = Vba::PremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateCategory
  result = api_instance.list_prem_rate_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->list_prem_rate_category: #{e}"
end
```

#### Using the list_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateCategoryListVBAResponse>, Integer, Hash)> list_prem_rate_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRateCategory
  data, status_code, headers = api_instance.list_prem_rate_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->list_prem_rate_category_with_http_info: #{e}"
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

[**PremRateCategoryListVBAResponse**](PremRateCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_category

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_category(vbasoftware_database, prem_rate_category)

Create or Update Batch PremRateCategory

Create or Update multiple PremRateCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_category = [Vba::PremRateCategory.new({prem_rate_category: 'prem_rate_category_example'})] # Array<PremRateCategory> | 

begin
  # Create or Update Batch PremRateCategory
  result = api_instance.update_batch_prem_rate_category(vbasoftware_database, prem_rate_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->update_batch_prem_rate_category: #{e}"
end
```

#### Using the update_batch_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)

```ruby
begin
  # Create or Update Batch PremRateCategory
  data, status_code, headers = api_instance.update_batch_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->update_batch_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_category** | [**Array&lt;PremRateCategory&gt;**](PremRateCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_category

> <PremRateCategoryVBAResponse> update_prem_rate_category(vbasoftware_database, prem_rate_category, prem_rate_category2)

Update PremRateCategory

Updates a specific PremRateCategory.

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

api_instance = Vba::PremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_category = 'prem_rate_category_example' # String | PremRate Category
prem_rate_category2 = Vba::PremRateCategory.new({prem_rate_category: 'prem_rate_category_example'}) # PremRateCategory | 

begin
  # Update PremRateCategory
  result = api_instance.update_prem_rate_category(vbasoftware_database, prem_rate_category, prem_rate_category2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->update_prem_rate_category: #{e}"
end
```

#### Using the update_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateCategoryVBAResponse>, Integer, Hash)> update_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, prem_rate_category2)

```ruby
begin
  # Update PremRateCategory
  data, status_code, headers = api_instance.update_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, prem_rate_category2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateCategoriesApi->update_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_category** | **String** | PremRate Category |  |
| **prem_rate_category2** | [**PremRateCategory**](PremRateCategory.md) |  |  |

### Return type

[**PremRateCategoryVBAResponse**](PremRateCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

