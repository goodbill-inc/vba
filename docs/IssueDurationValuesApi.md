# Vba::IssueDurationValuesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_issue_duration_value**](IssueDurationValuesApi.md#create_issue_duration_value) | **POST** /issue-duration-values | Create IssueDurationValue |
| [**delete_issue_duration_value**](IssueDurationValuesApi.md#delete_issue_duration_value) | **DELETE** /issue-duration-values/{issueDurationValueKey} | Delete IssueDurationValue |
| [**get_issue_duration_value**](IssueDurationValuesApi.md#get_issue_duration_value) | **GET** /issue-duration-values/{issueDurationValueKey} | Get IssueDurationValue |
| [**list_issue_duration_value**](IssueDurationValuesApi.md#list_issue_duration_value) | **GET** /issue-duration-values | List IssueDurationValue |
| [**update_batch_issue_duration_value**](IssueDurationValuesApi.md#update_batch_issue_duration_value) | **PUT** /issue-duration-values-batch | Create or Update Batch IssueDurationValue |
| [**update_issue_duration_value**](IssueDurationValuesApi.md#update_issue_duration_value) | **PUT** /issue-duration-values/{issueDurationValueKey} | Update IssueDurationValue |


## create_issue_duration_value

> <IssueDurationValueVBAResponse> create_issue_duration_value(vbasoftware_database, issue_duration_value)

Create IssueDurationValue

Creates a new IssueDurationValue

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

api_instance = Vba::IssueDurationValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value = Vba::IssueDurationValue.new({issue_duration_value_key: 37}) # IssueDurationValue | 

begin
  # Create IssueDurationValue
  result = api_instance.create_issue_duration_value(vbasoftware_database, issue_duration_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->create_issue_duration_value: #{e}"
end
```

#### Using the create_issue_duration_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueVBAResponse>, Integer, Hash)> create_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value)

```ruby
begin
  # Create IssueDurationValue
  data, status_code, headers = api_instance.create_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->create_issue_duration_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value** | [**IssueDurationValue**](IssueDurationValue.md) |  |  |

### Return type

[**IssueDurationValueVBAResponse**](IssueDurationValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_issue_duration_value

> delete_issue_duration_value(vbasoftware_database, issue_duration_value_key)

Delete IssueDurationValue

Deletes an IssueDurationValue

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

api_instance = Vba::IssueDurationValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_key = 56 # Integer | IssueDurationValue Key

begin
  # Delete IssueDurationValue
  api_instance.delete_issue_duration_value(vbasoftware_database, issue_duration_value_key)
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->delete_issue_duration_value: #{e}"
end
```

#### Using the delete_issue_duration_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value_key)

```ruby
begin
  # Delete IssueDurationValue
  data, status_code, headers = api_instance.delete_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->delete_issue_duration_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_key** | **Integer** | IssueDurationValue Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_issue_duration_value

> <IssueDurationValueVBAResponse> get_issue_duration_value(vbasoftware_database, issue_duration_value_key)

Get IssueDurationValue

Gets IssueDurationValue

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

api_instance = Vba::IssueDurationValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_key = 56 # Integer | IssueDurationValue Key

begin
  # Get IssueDurationValue
  result = api_instance.get_issue_duration_value(vbasoftware_database, issue_duration_value_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->get_issue_duration_value: #{e}"
end
```

#### Using the get_issue_duration_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueVBAResponse>, Integer, Hash)> get_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value_key)

```ruby
begin
  # Get IssueDurationValue
  data, status_code, headers = api_instance.get_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->get_issue_duration_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_key** | **Integer** | IssueDurationValue Key |  |

### Return type

[**IssueDurationValueVBAResponse**](IssueDurationValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_issue_duration_value

> <IssueDurationValueListVBAResponse> list_issue_duration_value(vbasoftware_database, opts)

List IssueDurationValue

Lists all IssueDurationValue

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

api_instance = Vba::IssueDurationValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  type_filter: 'type_filter_example', # String | Type Filter
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List IssueDurationValue
  result = api_instance.list_issue_duration_value(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->list_issue_duration_value: #{e}"
end
```

#### Using the list_issue_duration_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueListVBAResponse>, Integer, Hash)> list_issue_duration_value_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List IssueDurationValue
  data, status_code, headers = api_instance.list_issue_duration_value_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->list_issue_duration_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **type_filter** | **String** | Type Filter | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**IssueDurationValueListVBAResponse**](IssueDurationValueListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_issue_duration_value

> <MultiCodeResponseListVBAResponse> update_batch_issue_duration_value(vbasoftware_database, issue_duration_value)

Create or Update Batch IssueDurationValue

Create or Update multiple IssueDurationValue at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::IssueDurationValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value = [Vba::IssueDurationValue.new({issue_duration_value_key: 37})] # Array<IssueDurationValue> | 

begin
  # Create or Update Batch IssueDurationValue
  result = api_instance.update_batch_issue_duration_value(vbasoftware_database, issue_duration_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->update_batch_issue_duration_value: #{e}"
end
```

#### Using the update_batch_issue_duration_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value)

```ruby
begin
  # Create or Update Batch IssueDurationValue
  data, status_code, headers = api_instance.update_batch_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->update_batch_issue_duration_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value** | [**Array&lt;IssueDurationValue&gt;**](IssueDurationValue.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_issue_duration_value

> <IssueDurationValueVBAResponse> update_issue_duration_value(vbasoftware_database, issue_duration_value_key, issue_duration_value)

Update IssueDurationValue

Updates a specific IssueDurationValue.

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

api_instance = Vba::IssueDurationValuesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
issue_duration_value_key = 56 # Integer | IssueDurationValue Key
issue_duration_value = Vba::IssueDurationValue.new({issue_duration_value_key: 37}) # IssueDurationValue | 

begin
  # Update IssueDurationValue
  result = api_instance.update_issue_duration_value(vbasoftware_database, issue_duration_value_key, issue_duration_value)
  p result
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->update_issue_duration_value: #{e}"
end
```

#### Using the update_issue_duration_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueDurationValueVBAResponse>, Integer, Hash)> update_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value_key, issue_duration_value)

```ruby
begin
  # Update IssueDurationValue
  data, status_code, headers = api_instance.update_issue_duration_value_with_http_info(vbasoftware_database, issue_duration_value_key, issue_duration_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueDurationValueVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling IssueDurationValuesApi->update_issue_duration_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **issue_duration_value_key** | **Integer** | IssueDurationValue Key |  |
| **issue_duration_value** | [**IssueDurationValue**](IssueDurationValue.md) |  |  |

### Return type

[**IssueDurationValueVBAResponse**](IssueDurationValueVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

