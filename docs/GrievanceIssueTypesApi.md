# Vba::GrievanceIssueTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grievance_issue_type**](GrievanceIssueTypesApi.md#create_grievance_issue_type) | **POST** /grievance-issue-types | Create GrievanceIssueType |
| [**delete_grievance_issue_type**](GrievanceIssueTypesApi.md#delete_grievance_issue_type) | **DELETE** /grievance-issue-types/{grievanceIssueType} | Delete GrievanceIssueType |
| [**get_grievance_issue_type**](GrievanceIssueTypesApi.md#get_grievance_issue_type) | **GET** /grievance-issue-types/{grievanceIssueType} | Get GrievanceIssueType |
| [**list_grievance_issue_type**](GrievanceIssueTypesApi.md#list_grievance_issue_type) | **GET** /grievance-issue-types | List GrievanceIssueType |
| [**update_batch_grievance_issue_type**](GrievanceIssueTypesApi.md#update_batch_grievance_issue_type) | **PUT** /grievance-issue-types-batch | Create or Update Batch GrievanceIssueType |
| [**update_grievance_issue_type**](GrievanceIssueTypesApi.md#update_grievance_issue_type) | **PUT** /grievance-issue-types/{grievanceIssueType} | Update GrievanceIssueType |


## create_grievance_issue_type

> <GrievanceIssueTypeVBAResponse> create_grievance_issue_type(vbasoftware_database, grievance_issue_type)

Create GrievanceIssueType

Creates a new GrievanceIssueType

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

api_instance = Vba::GrievanceIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_issue_type = Vba::GrievanceIssueType.new({grievance_issue_type: 'grievance_issue_type_example', default_issue_type: false}) # GrievanceIssueType | 

begin
  # Create GrievanceIssueType
  result = api_instance.create_grievance_issue_type(vbasoftware_database, grievance_issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->create_grievance_issue_type: #{e}"
end
```

#### Using the create_grievance_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceIssueTypeVBAResponse>, Integer, Hash)> create_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)

```ruby
begin
  # Create GrievanceIssueType
  data, status_code, headers = api_instance.create_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceIssueTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->create_grievance_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_issue_type** | [**GrievanceIssueType**](GrievanceIssueType.md) |  |  |

### Return type

[**GrievanceIssueTypeVBAResponse**](GrievanceIssueTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_grievance_issue_type

> delete_grievance_issue_type(vbasoftware_database, grievance_issue_type)

Delete GrievanceIssueType

Deletes an GrievanceIssueType

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

api_instance = Vba::GrievanceIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_issue_type = 'grievance_issue_type_example' # String | Grievance Issue Type

begin
  # Delete GrievanceIssueType
  api_instance.delete_grievance_issue_type(vbasoftware_database, grievance_issue_type)
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->delete_grievance_issue_type: #{e}"
end
```

#### Using the delete_grievance_issue_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)

```ruby
begin
  # Delete GrievanceIssueType
  data, status_code, headers = api_instance.delete_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->delete_grievance_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_issue_type** | **String** | Grievance Issue Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_grievance_issue_type

> <GrievanceIssueTypeVBAResponse> get_grievance_issue_type(vbasoftware_database, grievance_issue_type)

Get GrievanceIssueType

Gets GrievanceIssueType

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

api_instance = Vba::GrievanceIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_issue_type = 'grievance_issue_type_example' # String | Grievance Issue Type

begin
  # Get GrievanceIssueType
  result = api_instance.get_grievance_issue_type(vbasoftware_database, grievance_issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->get_grievance_issue_type: #{e}"
end
```

#### Using the get_grievance_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceIssueTypeVBAResponse>, Integer, Hash)> get_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)

```ruby
begin
  # Get GrievanceIssueType
  data, status_code, headers = api_instance.get_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceIssueTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->get_grievance_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_issue_type** | **String** | Grievance Issue Type |  |

### Return type

[**GrievanceIssueTypeVBAResponse**](GrievanceIssueTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_grievance_issue_type

> <GrievanceIssueTypeListVBAResponse> list_grievance_issue_type(vbasoftware_database, opts)

List GrievanceIssueType

Lists all GrievanceIssueType

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

api_instance = Vba::GrievanceIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GrievanceIssueType
  result = api_instance.list_grievance_issue_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->list_grievance_issue_type: #{e}"
end
```

#### Using the list_grievance_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceIssueTypeListVBAResponse>, Integer, Hash)> list_grievance_issue_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GrievanceIssueType
  data, status_code, headers = api_instance.list_grievance_issue_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceIssueTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->list_grievance_issue_type_with_http_info: #{e}"
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

[**GrievanceIssueTypeListVBAResponse**](GrievanceIssueTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_grievance_issue_type

> <MultiCodeResponseListVBAResponse> update_batch_grievance_issue_type(vbasoftware_database, grievance_issue_type)

Create or Update Batch GrievanceIssueType

Create or Update multiple GrievanceIssueType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GrievanceIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_issue_type = [Vba::GrievanceIssueType.new({grievance_issue_type: 'grievance_issue_type_example', default_issue_type: false})] # Array<GrievanceIssueType> | 

begin
  # Create or Update Batch GrievanceIssueType
  result = api_instance.update_batch_grievance_issue_type(vbasoftware_database, grievance_issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->update_batch_grievance_issue_type: #{e}"
end
```

#### Using the update_batch_grievance_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)

```ruby
begin
  # Create or Update Batch GrievanceIssueType
  data, status_code, headers = api_instance.update_batch_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->update_batch_grievance_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_issue_type** | [**Array&lt;GrievanceIssueType&gt;**](GrievanceIssueType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_grievance_issue_type

> <GrievanceIssueTypeVBAResponse> update_grievance_issue_type(vbasoftware_database, grievance_issue_type, grievance_issue_type2)

Update GrievanceIssueType

Updates a specific GrievanceIssueType.

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

api_instance = Vba::GrievanceIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_issue_type = 'grievance_issue_type_example' # String | Grievance Issue Type
grievance_issue_type2 = Vba::GrievanceIssueType.new({grievance_issue_type: 'grievance_issue_type_example', default_issue_type: false}) # GrievanceIssueType | 

begin
  # Update GrievanceIssueType
  result = api_instance.update_grievance_issue_type(vbasoftware_database, grievance_issue_type, grievance_issue_type2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->update_grievance_issue_type: #{e}"
end
```

#### Using the update_grievance_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceIssueTypeVBAResponse>, Integer, Hash)> update_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type, grievance_issue_type2)

```ruby
begin
  # Update GrievanceIssueType
  data, status_code, headers = api_instance.update_grievance_issue_type_with_http_info(vbasoftware_database, grievance_issue_type, grievance_issue_type2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceIssueTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceIssueTypesApi->update_grievance_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_issue_type** | **String** | Grievance Issue Type |  |
| **grievance_issue_type2** | [**GrievanceIssueType**](GrievanceIssueType.md) |  |  |

### Return type

[**GrievanceIssueTypeVBAResponse**](GrievanceIssueTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

