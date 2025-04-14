# Vba::GroupPremiumRateCategoriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_prem_rate_category**](GroupPremiumRateCategoriesApi.md#create_group_prem_rate_category) | **POST** /groups/{groupID}/reports/{reportDefinitionKey}/premium-categories | Create GroupPremRateCategory |
| [**delete_group_prem_rate_category**](GroupPremiumRateCategoriesApi.md#delete_group_prem_rate_category) | **DELETE** /groups/{groupID}/reports/{reportDefinitionKey}/premium-categories/{sequence} | Delete GroupPremRateCategory |
| [**get_group_prem_rate_category**](GroupPremiumRateCategoriesApi.md#get_group_prem_rate_category) | **GET** /groups/{groupID}/reports/{reportDefinitionKey}/premium-categories/{sequence} | Get GroupPremRateCategory |
| [**list_group_prem_rate_category**](GroupPremiumRateCategoriesApi.md#list_group_prem_rate_category) | **GET** /groups/{groupID}/reports/{reportDefinitionKey}/premium-categories | List GroupPremRateCategory |
| [**update_batch_group_prem_rate_category**](GroupPremiumRateCategoriesApi.md#update_batch_group_prem_rate_category) | **PUT** /groups/{groupID}/reports/{reportDefinitionKey}/premium-categories-batch | Create or Update Batch GroupPremRateCategory |


## create_group_prem_rate_category

> <GroupPremRateCategoryVBAResponse> create_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)

Create GroupPremRateCategory

Creates a new GroupPremRateCategory

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

api_instance = Vba::GroupPremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
report_definition_key = 56 # Integer | ReportDefinition Key
group_prem_rate_category = Vba::GroupPremRateCategory.new({group_id: 'group_id_example', report_definition_key: 37, prem_rate_category: 'prem_rate_category_example', sequence: 37}) # GroupPremRateCategory | 

begin
  # Create GroupPremRateCategory
  result = api_instance.create_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->create_group_prem_rate_category: #{e}"
end
```

#### Using the create_group_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPremRateCategoryVBAResponse>, Integer, Hash)> create_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)

```ruby
begin
  # Create GroupPremRateCategory
  data, status_code, headers = api_instance.create_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPremRateCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->create_group_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **group_prem_rate_category** | [**GroupPremRateCategory**](GroupPremRateCategory.md) |  |  |

### Return type

[**GroupPremRateCategoryVBAResponse**](GroupPremRateCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_prem_rate_category

> delete_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, sequence)

Delete GroupPremRateCategory

Deletes an GroupPremRateCategory

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

api_instance = Vba::GroupPremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
report_definition_key = 56 # Integer | ReportDefinition Key
sequence = 56 # Integer | Sequence

begin
  # Delete GroupPremRateCategory
  api_instance.delete_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, sequence)
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->delete_group_prem_rate_category: #{e}"
end
```

#### Using the delete_group_prem_rate_category_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, sequence)

```ruby
begin
  # Delete GroupPremRateCategory
  data, status_code, headers = api_instance.delete_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, sequence)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->delete_group_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **sequence** | **Integer** | Sequence |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_prem_rate_category

> <GroupPremRateCategoryVBAResponse> get_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, sequence)

Get GroupPremRateCategory

Gets GroupPremRateCategory

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

api_instance = Vba::GroupPremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
report_definition_key = 56 # Integer | ReportDefinition Key
sequence = 56 # Integer | Sequence

begin
  # Get GroupPremRateCategory
  result = api_instance.get_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, sequence)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->get_group_prem_rate_category: #{e}"
end
```

#### Using the get_group_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPremRateCategoryVBAResponse>, Integer, Hash)> get_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, sequence)

```ruby
begin
  # Get GroupPremRateCategory
  data, status_code, headers = api_instance.get_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, sequence)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPremRateCategoryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->get_group_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **sequence** | **Integer** | Sequence |  |

### Return type

[**GroupPremRateCategoryVBAResponse**](GroupPremRateCategoryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_prem_rate_category

> <GroupPremRateCategoryListVBAResponse> list_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, opts)

List GroupPremRateCategory

Lists all GroupPremRateCategory for the given groupID and reportDefinitionKey

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

api_instance = Vba::GroupPremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
report_definition_key = 56 # Integer | ReportDefinition Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPremRateCategory
  result = api_instance.list_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->list_group_prem_rate_category: #{e}"
end
```

#### Using the list_group_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPremRateCategoryListVBAResponse>, Integer, Hash)> list_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, opts)

```ruby
begin
  # List GroupPremRateCategory
  data, status_code, headers = api_instance.list_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPremRateCategoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->list_group_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPremRateCategoryListVBAResponse**](GroupPremRateCategoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_prem_rate_category

> <MultiCodeResponseListVBAResponse> update_batch_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)

Create or Update Batch GroupPremRateCategory

Create or Update multiple GroupPremRateCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPremiumRateCategoriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
report_definition_key = 56 # Integer | ReportDefinition Key
group_prem_rate_category = [Vba::GroupPremRateCategory.new({group_id: 'group_id_example', report_definition_key: 37, prem_rate_category: 'prem_rate_category_example', sequence: 37})] # Array<GroupPremRateCategory> | 

begin
  # Create or Update Batch GroupPremRateCategory
  result = api_instance.update_batch_group_prem_rate_category(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->update_batch_group_prem_rate_category: #{e}"
end
```

#### Using the update_batch_group_prem_rate_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)

```ruby
begin
  # Create or Update Batch GroupPremRateCategory
  data, status_code, headers = api_instance.update_batch_group_prem_rate_category_with_http_info(vbasoftware_database, group_id, report_definition_key, group_prem_rate_category)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPremiumRateCategoriesApi->update_batch_group_prem_rate_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **group_prem_rate_category** | [**Array&lt;GroupPremRateCategory&gt;**](GroupPremRateCategory.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

