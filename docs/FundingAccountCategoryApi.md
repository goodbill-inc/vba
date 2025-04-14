# Vba::FundingAccountCategoryApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_account_category**](FundingAccountCategoryApi.md#create_funding_account_category) | **POST** /funding-account-categories | Create FundingAccountCategory |
| [**delete_funding_account_category**](FundingAccountCategoryApi.md#delete_funding_account_category) | **DELETE** /funding-account-categories/{accountCategory} | Delete FundingAccountCategory |
| [**get_funding_account_category**](FundingAccountCategoryApi.md#get_funding_account_category) | **GET** /funding-account-categories/{accountCategory} | Get FundingAccountCategory |
| [**list_funding_account_category**](FundingAccountCategoryApi.md#list_funding_account_category) | **GET** /funding-account-categories | List FundingAccountCategory |
| [**update_batch_funding_account_category**](FundingAccountCategoryApi.md#update_batch_funding_account_category) | **PUT** /funding-account-categories-batch | Create or Update Batch FundingAccountCategory |
| [**update_funding_account_category**](FundingAccountCategoryApi.md#update_funding_account_category) | **PUT** /funding-account-categories/{accountCategory} | Update FundingAccountCategory |


## create_funding_account_category

> <FundingAccountCategoryVBAResponse> create_funding_account_category(vbasoftware_database, funding_account_category)

Create FundingAccountCategory

Creates a new FundingAccountCategory

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

api_instance = Vba::FundingAccountCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_account_category = Vba::FundingAccountCategory.new({account_category: 'account_category_example'}) # FundingAccountCategory | 

begin
  # Create FundingAccountCategory
  result = api_instance.create_funding_account_category(vbasoftware_database, funding_account_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->create_funding_account_category: #{e}"
end
```

#### Using the create_funding_account_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountCategoryVBAResponse>, Integer, Hash)> create_funding_account_category_with_http_info(vbasoftware_database, funding_account_category)

```ruby
begin
  # Create FundingAccountCategory
  data, status_code, headers = api_instance.create_funding_account_category_with_http_info(vbasoftware_database, funding_account_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->create_funding_account_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_account_category** | [**FundingAccountCategory**](FundingAccountCategory.md) |  |  |

### Return type

[**FundingAccountCategoryVBAResponse**](FundingAccountCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_account_category

> delete_funding_account_category(vbasoftware_database, account_category)

Delete FundingAccountCategory

Deletes an FundingAccountCategory

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

api_instance = Vba::FundingAccountCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_category = 'account_category_example' # String | Account Category

begin
  # Delete FundingAccountCategory
  api_instance.delete_funding_account_category(vbasoftware_database, account_category)
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->delete_funding_account_category: #{e}"
end
```

#### Using the delete_funding_account_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_account_category_with_http_info(vbasoftware_database, account_category)

```ruby
begin
  # Delete FundingAccountCategory
  data, status_code, headers = api_instance.delete_funding_account_category_with_http_info(vbasoftware_database, account_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->delete_funding_account_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_category** | **String** | Account Category |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_account_category

> <FundingAccountCategoryVBAResponse> get_funding_account_category(vbasoftware_database, account_category)

Get FundingAccountCategory

Gets FundingAccountCategory

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

api_instance = Vba::FundingAccountCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_category = 'account_category_example' # String | Account Category

begin
  # Get FundingAccountCategory
  result = api_instance.get_funding_account_category(vbasoftware_database, account_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->get_funding_account_category: #{e}"
end
```

#### Using the get_funding_account_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountCategoryVBAResponse>, Integer, Hash)> get_funding_account_category_with_http_info(vbasoftware_database, account_category)

```ruby
begin
  # Get FundingAccountCategory
  data, status_code, headers = api_instance.get_funding_account_category_with_http_info(vbasoftware_database, account_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->get_funding_account_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_category** | **String** | Account Category |  |

### Return type

[**FundingAccountCategoryVBAResponse**](FundingAccountCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_account_category

> <FundingAccountCategoryListVBAResponse> list_funding_account_category(vbasoftware_database, opts)

List FundingAccountCategory

Lists all FundingAccountCategory

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

api_instance = Vba::FundingAccountCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingAccountCategory
  result = api_instance.list_funding_account_category(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->list_funding_account_category: #{e}"
end
```

#### Using the list_funding_account_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountCategoryListVBAResponse>, Integer, Hash)> list_funding_account_category_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingAccountCategory
  data, status_code, headers = api_instance.list_funding_account_category_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->list_funding_account_category_with_http_info: #{e}"
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

[**FundingAccountCategoryListVBAResponse**](FundingAccountCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_account_category

> <MultiCodeResponseListVBAResponse> update_batch_funding_account_category(vbasoftware_database, funding_account_category)

Create or Update Batch FundingAccountCategory

Create or Update multiple FundingAccountCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingAccountCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_account_category = [Vba::FundingAccountCategory.new({account_category: 'account_category_example'})] # Array<FundingAccountCategory> | 

begin
  # Create or Update Batch FundingAccountCategory
  result = api_instance.update_batch_funding_account_category(vbasoftware_database, funding_account_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->update_batch_funding_account_category: #{e}"
end
```

#### Using the update_batch_funding_account_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_account_category_with_http_info(vbasoftware_database, funding_account_category)

```ruby
begin
  # Create or Update Batch FundingAccountCategory
  data, status_code, headers = api_instance.update_batch_funding_account_category_with_http_info(vbasoftware_database, funding_account_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->update_batch_funding_account_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_account_category** | [**Array&lt;FundingAccountCategory&gt;**](FundingAccountCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_account_category

> <FundingAccountCategoryVBAResponse> update_funding_account_category(vbasoftware_database, account_category, funding_account_category)

Update FundingAccountCategory

Updates a specific FundingAccountCategory.

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

api_instance = Vba::FundingAccountCategoryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_category = 'account_category_example' # String | Account Category
funding_account_category = Vba::FundingAccountCategory.new({account_category: 'account_category_example'}) # FundingAccountCategory | 

begin
  # Update FundingAccountCategory
  result = api_instance.update_funding_account_category(vbasoftware_database, account_category, funding_account_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->update_funding_account_category: #{e}"
end
```

#### Using the update_funding_account_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountCategoryVBAResponse>, Integer, Hash)> update_funding_account_category_with_http_info(vbasoftware_database, account_category, funding_account_category)

```ruby
begin
  # Update FundingAccountCategory
  data, status_code, headers = api_instance.update_funding_account_category_with_http_info(vbasoftware_database, account_category, funding_account_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountCategoryApi->update_funding_account_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_category** | **String** | Account Category |  |
| **funding_account_category** | [**FundingAccountCategory**](FundingAccountCategory.md) |  |  |

### Return type

[**FundingAccountCategoryVBAResponse**](FundingAccountCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

