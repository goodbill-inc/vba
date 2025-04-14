# Vba::ReportDefinitionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_definition**](ReportDefinitionsApi.md#create_report_definition) | **POST** /report-definitions | Create ReportDefinition |
| [**delete_report_definition**](ReportDefinitionsApi.md#delete_report_definition) | **DELETE** /report-definitions/{reportDefinitionKey} | Delete ReportDefinition |
| [**get_report_definition**](ReportDefinitionsApi.md#get_report_definition) | **GET** /report-definitions/{reportDefinitionKey} | Get ReportDefinition |
| [**list_report_definition**](ReportDefinitionsApi.md#list_report_definition) | **GET** /report-definitions | List ReportDefinition |
| [**update_batch_report_definition**](ReportDefinitionsApi.md#update_batch_report_definition) | **PUT** /report-definitions-batch | Create or Update Batch ReportDefinition |
| [**update_report_definition**](ReportDefinitionsApi.md#update_report_definition) | **PUT** /report-definitions/{reportDefinitionKey} | Update ReportDefinition |


## create_report_definition

> <ReportDefinitionVBAResponse> create_report_definition(vbasoftware_database, report_definition)

Create ReportDefinition

Creates a new ReportDefinition

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

api_instance = Vba::ReportDefinitionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition = Vba::ReportDefinition.new({report_definition_key: 37, combine_navigation: false, exclude_adjustment_category: false, exclude_other_category: false, exclude_total_category: false, group_categories_only: false, navigation_report: false, report_description: 'report_description_example', report_id: 'report_id_example', report_name: 'report_name_example', schedule_report: false, series_report: false, trackable_report: false}) # ReportDefinition | 

begin
  # Create ReportDefinition
  result = api_instance.create_report_definition(vbasoftware_database, report_definition)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->create_report_definition: #{e}"
end
```

#### Using the create_report_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportDefinitionVBAResponse>, Integer, Hash)> create_report_definition_with_http_info(vbasoftware_database, report_definition)

```ruby
begin
  # Create ReportDefinition
  data, status_code, headers = api_instance.create_report_definition_with_http_info(vbasoftware_database, report_definition)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportDefinitionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->create_report_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition** | [**ReportDefinition**](ReportDefinition.md) |  |  |

### Return type

[**ReportDefinitionVBAResponse**](ReportDefinitionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_definition

> delete_report_definition(vbasoftware_database, report_definition_key)

Delete ReportDefinition

Deletes an ReportDefinition

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

api_instance = Vba::ReportDefinitionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key

begin
  # Delete ReportDefinition
  api_instance.delete_report_definition(vbasoftware_database, report_definition_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->delete_report_definition: #{e}"
end
```

#### Using the delete_report_definition_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_definition_with_http_info(vbasoftware_database, report_definition_key)

```ruby
begin
  # Delete ReportDefinition
  data, status_code, headers = api_instance.delete_report_definition_with_http_info(vbasoftware_database, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->delete_report_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_definition

> <ReportDefinitionVBAResponse> get_report_definition(vbasoftware_database, report_definition_key)

Get ReportDefinition

Gets ReportDefinition

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

api_instance = Vba::ReportDefinitionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key

begin
  # Get ReportDefinition
  result = api_instance.get_report_definition(vbasoftware_database, report_definition_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->get_report_definition: #{e}"
end
```

#### Using the get_report_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportDefinitionVBAResponse>, Integer, Hash)> get_report_definition_with_http_info(vbasoftware_database, report_definition_key)

```ruby
begin
  # Get ReportDefinition
  data, status_code, headers = api_instance.get_report_definition_with_http_info(vbasoftware_database, report_definition_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportDefinitionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->get_report_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |

### Return type

[**ReportDefinitionVBAResponse**](ReportDefinitionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_definition

> <ReportDefinitionListVBAResponse> list_report_definition(vbasoftware_database, opts)

List ReportDefinition

Lists all ReportDefinition

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

api_instance = Vba::ReportDefinitionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  criteria_object: 'criteria_object_example', # String | Criteria Object
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportDefinition
  result = api_instance.list_report_definition(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->list_report_definition: #{e}"
end
```

#### Using the list_report_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportDefinitionListVBAResponse>, Integer, Hash)> list_report_definition_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportDefinition
  data, status_code, headers = api_instance.list_report_definition_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportDefinitionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->list_report_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **criteria_object** | **String** | Criteria Object | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportDefinitionListVBAResponse**](ReportDefinitionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_definition

> <MultiCodeResponseListVBAResponse> update_batch_report_definition(vbasoftware_database, report_definition)

Create or Update Batch ReportDefinition

Create or Update multiple ReportDefinition at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportDefinitionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition = [Vba::ReportDefinition.new({report_definition_key: 37, combine_navigation: false, exclude_adjustment_category: false, exclude_other_category: false, exclude_total_category: false, group_categories_only: false, navigation_report: false, report_description: 'report_description_example', report_id: 'report_id_example', report_name: 'report_name_example', schedule_report: false, series_report: false, trackable_report: false})] # Array<ReportDefinition> | 

begin
  # Create or Update Batch ReportDefinition
  result = api_instance.update_batch_report_definition(vbasoftware_database, report_definition)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->update_batch_report_definition: #{e}"
end
```

#### Using the update_batch_report_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_definition_with_http_info(vbasoftware_database, report_definition)

```ruby
begin
  # Create or Update Batch ReportDefinition
  data, status_code, headers = api_instance.update_batch_report_definition_with_http_info(vbasoftware_database, report_definition)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->update_batch_report_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition** | [**Array&lt;ReportDefinition&gt;**](ReportDefinition.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_definition

> <ReportDefinitionVBAResponse> update_report_definition(vbasoftware_database, report_definition_key, report_definition)

Update ReportDefinition

Updates a specific ReportDefinition.

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

api_instance = Vba::ReportDefinitionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_definition = Vba::ReportDefinition.new({report_definition_key: 37, combine_navigation: false, exclude_adjustment_category: false, exclude_other_category: false, exclude_total_category: false, group_categories_only: false, navigation_report: false, report_description: 'report_description_example', report_id: 'report_id_example', report_name: 'report_name_example', schedule_report: false, series_report: false, trackable_report: false}) # ReportDefinition | 

begin
  # Update ReportDefinition
  result = api_instance.update_report_definition(vbasoftware_database, report_definition_key, report_definition)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->update_report_definition: #{e}"
end
```

#### Using the update_report_definition_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportDefinitionVBAResponse>, Integer, Hash)> update_report_definition_with_http_info(vbasoftware_database, report_definition_key, report_definition)

```ruby
begin
  # Update ReportDefinition
  data, status_code, headers = api_instance.update_report_definition_with_http_info(vbasoftware_database, report_definition_key, report_definition)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportDefinitionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportDefinitionsApi->update_report_definition_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_definition** | [**ReportDefinition**](ReportDefinition.md) |  |  |

### Return type

[**ReportDefinitionVBAResponse**](ReportDefinitionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

