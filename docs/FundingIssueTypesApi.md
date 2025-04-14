# Vba::FundingIssueTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_issue_type**](FundingIssueTypesApi.md#create_funding_issue_type) | **POST** /funding-issue-types | Create FundingIssueType |
| [**delete_funding_issue_type**](FundingIssueTypesApi.md#delete_funding_issue_type) | **DELETE** /funding-issue-types/{issueType} | Delete FundingIssueType |
| [**get_funding_issue_type**](FundingIssueTypesApi.md#get_funding_issue_type) | **GET** /funding-issue-types/{issueType} | Get FundingIssueType |
| [**list_funding_issue_type**](FundingIssueTypesApi.md#list_funding_issue_type) | **GET** /funding-issue-types | List FundingIssueType |
| [**update_batch_funding_issue_type**](FundingIssueTypesApi.md#update_batch_funding_issue_type) | **PUT** /funding-issue-types-batch | Create or Update Batch FundingIssueType |
| [**update_funding_issue_type**](FundingIssueTypesApi.md#update_funding_issue_type) | **PUT** /funding-issue-types/{issueType} | Update FundingIssueType |


## create_funding_issue_type

> <FundingIssueTypeVBAResponse> create_funding_issue_type(vbasoftware_database, funding_issue_type)

Create FundingIssueType

Creates a new FundingIssueType

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

api_instance = Vba::FundingIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_issue_type = Vba::FundingIssueType.new({issue_type: 'issue_type_example'}) # FundingIssueType | 

begin
  # Create FundingIssueType
  result = api_instance.create_funding_issue_type(vbasoftware_database, funding_issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->create_funding_issue_type: #{e}"
end
```

#### Using the create_funding_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIssueTypeVBAResponse>, Integer, Hash)> create_funding_issue_type_with_http_info(vbasoftware_database, funding_issue_type)

```ruby
begin
  # Create FundingIssueType
  data, status_code, headers = api_instance.create_funding_issue_type_with_http_info(vbasoftware_database, funding_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIssueTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->create_funding_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_issue_type** | [**FundingIssueType**](FundingIssueType.md) |  |  |

### Return type

[**FundingIssueTypeVBAResponse**](FundingIssueTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_issue_type

> delete_funding_issue_type(vbasoftware_database, issue_type)

Delete FundingIssueType

Deletes an FundingIssueType

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

api_instance = Vba::FundingIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_type = 'issue_type_example' # String | Issue Type

begin
  # Delete FundingIssueType
  api_instance.delete_funding_issue_type(vbasoftware_database, issue_type)
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->delete_funding_issue_type: #{e}"
end
```

#### Using the delete_funding_issue_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_issue_type_with_http_info(vbasoftware_database, issue_type)

```ruby
begin
  # Delete FundingIssueType
  data, status_code, headers = api_instance.delete_funding_issue_type_with_http_info(vbasoftware_database, issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->delete_funding_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_type** | **String** | Issue Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_issue_type

> <FundingIssueTypeVBAResponse> get_funding_issue_type(vbasoftware_database, issue_type)

Get FundingIssueType

Gets FundingIssueType

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

api_instance = Vba::FundingIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_type = 'issue_type_example' # String | Issue Type

begin
  # Get FundingIssueType
  result = api_instance.get_funding_issue_type(vbasoftware_database, issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->get_funding_issue_type: #{e}"
end
```

#### Using the get_funding_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIssueTypeVBAResponse>, Integer, Hash)> get_funding_issue_type_with_http_info(vbasoftware_database, issue_type)

```ruby
begin
  # Get FundingIssueType
  data, status_code, headers = api_instance.get_funding_issue_type_with_http_info(vbasoftware_database, issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIssueTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->get_funding_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_type** | **String** | Issue Type |  |

### Return type

[**FundingIssueTypeVBAResponse**](FundingIssueTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_issue_type

> <FundingIssueTypeListVBAResponse> list_funding_issue_type(vbasoftware_database, opts)

List FundingIssueType

Lists all FundingIssueType

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

api_instance = Vba::FundingIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingIssueType
  result = api_instance.list_funding_issue_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->list_funding_issue_type: #{e}"
end
```

#### Using the list_funding_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIssueTypeListVBAResponse>, Integer, Hash)> list_funding_issue_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingIssueType
  data, status_code, headers = api_instance.list_funding_issue_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIssueTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->list_funding_issue_type_with_http_info: #{e}"
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

[**FundingIssueTypeListVBAResponse**](FundingIssueTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_issue_type

> <MultiCodeResponseListVBAResponse> update_batch_funding_issue_type(vbasoftware_database, funding_issue_type)

Create or Update Batch FundingIssueType

Create or Update multiple FundingIssueType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_issue_type = [Vba::FundingIssueType.new({issue_type: 'issue_type_example'})] # Array<FundingIssueType> | 

begin
  # Create or Update Batch FundingIssueType
  result = api_instance.update_batch_funding_issue_type(vbasoftware_database, funding_issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->update_batch_funding_issue_type: #{e}"
end
```

#### Using the update_batch_funding_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_issue_type_with_http_info(vbasoftware_database, funding_issue_type)

```ruby
begin
  # Create or Update Batch FundingIssueType
  data, status_code, headers = api_instance.update_batch_funding_issue_type_with_http_info(vbasoftware_database, funding_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->update_batch_funding_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_issue_type** | [**Array&lt;FundingIssueType&gt;**](FundingIssueType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_issue_type

> <FundingIssueTypeVBAResponse> update_funding_issue_type(vbasoftware_database, issue_type, funding_issue_type)

Update FundingIssueType

Updates a specific FundingIssueType.

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

api_instance = Vba::FundingIssueTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_type = 'issue_type_example' # String | Issue Type
funding_issue_type = Vba::FundingIssueType.new({issue_type: 'issue_type_example'}) # FundingIssueType | 

begin
  # Update FundingIssueType
  result = api_instance.update_funding_issue_type(vbasoftware_database, issue_type, funding_issue_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->update_funding_issue_type: #{e}"
end
```

#### Using the update_funding_issue_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingIssueTypeVBAResponse>, Integer, Hash)> update_funding_issue_type_with_http_info(vbasoftware_database, issue_type, funding_issue_type)

```ruby
begin
  # Update FundingIssueType
  data, status_code, headers = api_instance.update_funding_issue_type_with_http_info(vbasoftware_database, issue_type, funding_issue_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingIssueTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingIssueTypesApi->update_funding_issue_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_type** | **String** | Issue Type |  |
| **funding_issue_type** | [**FundingIssueType**](FundingIssueType.md) |  |  |

### Return type

[**FundingIssueTypeVBAResponse**](FundingIssueTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

