# Vba::ErrorSeverityApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_error_severity**](ErrorSeverityApi.md#create_error_severity) | **POST** /error-severities | Create ErrorSeverity |
| [**delete_error_severity**](ErrorSeverityApi.md#delete_error_severity) | **DELETE** /error-severities/{errorSeverity} | Delete ErrorSeverity |
| [**get_error_severity**](ErrorSeverityApi.md#get_error_severity) | **GET** /error-severities/{errorSeverity} | Get ErrorSeverity |
| [**list_error_severity**](ErrorSeverityApi.md#list_error_severity) | **GET** /error-severities | List ErrorSeverity |
| [**update_batch_error_severity**](ErrorSeverityApi.md#update_batch_error_severity) | **PUT** /error-severities-batch | Create or Update Batch ErrorSeverity |
| [**update_error_severity**](ErrorSeverityApi.md#update_error_severity) | **PUT** /error-severities/{errorSeverity} | Update ErrorSeverity |


## create_error_severity

> <ErrorSeverityVBAResponse> create_error_severity(vbasoftware_database, error_severity)

Create ErrorSeverity

Creates a new ErrorSeverity

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

api_instance = Vba::ErrorSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_severity = Vba::ErrorSeverity.new({error_severity: 37}) # ErrorSeverity | 

begin
  # Create ErrorSeverity
  result = api_instance.create_error_severity(vbasoftware_database, error_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->create_error_severity: #{e}"
end
```

#### Using the create_error_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorSeverityVBAResponse>, Integer, Hash)> create_error_severity_with_http_info(vbasoftware_database, error_severity)

```ruby
begin
  # Create ErrorSeverity
  data, status_code, headers = api_instance.create_error_severity_with_http_info(vbasoftware_database, error_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorSeverityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->create_error_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_severity** | [**ErrorSeverity**](ErrorSeverity.md) |  |  |

### Return type

[**ErrorSeverityVBAResponse**](ErrorSeverityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_error_severity

> delete_error_severity(vbasoftware_database, error_severity)

Delete ErrorSeverity

Deletes an ErrorSeverity

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

api_instance = Vba::ErrorSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_severity = 56 # Integer | Error Severity

begin
  # Delete ErrorSeverity
  api_instance.delete_error_severity(vbasoftware_database, error_severity)
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->delete_error_severity: #{e}"
end
```

#### Using the delete_error_severity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_error_severity_with_http_info(vbasoftware_database, error_severity)

```ruby
begin
  # Delete ErrorSeverity
  data, status_code, headers = api_instance.delete_error_severity_with_http_info(vbasoftware_database, error_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->delete_error_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_severity** | **Integer** | Error Severity |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_error_severity

> <ErrorSeverityVBAResponse> get_error_severity(vbasoftware_database, error_severity)

Get ErrorSeverity

Gets ErrorSeverity

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

api_instance = Vba::ErrorSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_severity = 56 # Integer | Error Severity

begin
  # Get ErrorSeverity
  result = api_instance.get_error_severity(vbasoftware_database, error_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->get_error_severity: #{e}"
end
```

#### Using the get_error_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorSeverityVBAResponse>, Integer, Hash)> get_error_severity_with_http_info(vbasoftware_database, error_severity)

```ruby
begin
  # Get ErrorSeverity
  data, status_code, headers = api_instance.get_error_severity_with_http_info(vbasoftware_database, error_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorSeverityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->get_error_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_severity** | **Integer** | Error Severity |  |

### Return type

[**ErrorSeverityVBAResponse**](ErrorSeverityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_error_severity

> <ErrorSeverityListVBAResponse> list_error_severity(vbasoftware_database, opts)

List ErrorSeverity

Lists all ErrorSeverity

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

api_instance = Vba::ErrorSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ErrorSeverity
  result = api_instance.list_error_severity(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->list_error_severity: #{e}"
end
```

#### Using the list_error_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorSeverityListVBAResponse>, Integer, Hash)> list_error_severity_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ErrorSeverity
  data, status_code, headers = api_instance.list_error_severity_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorSeverityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->list_error_severity_with_http_info: #{e}"
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

[**ErrorSeverityListVBAResponse**](ErrorSeverityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_error_severity

> <MultiCodeResponseListVBAResponse> update_batch_error_severity(vbasoftware_database, error_severity)

Create or Update Batch ErrorSeverity

Create or Update multiple ErrorSeverity at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ErrorSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_severity = [Vba::ErrorSeverity.new({error_severity: 37})] # Array<ErrorSeverity> | 

begin
  # Create or Update Batch ErrorSeverity
  result = api_instance.update_batch_error_severity(vbasoftware_database, error_severity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->update_batch_error_severity: #{e}"
end
```

#### Using the update_batch_error_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_error_severity_with_http_info(vbasoftware_database, error_severity)

```ruby
begin
  # Create or Update Batch ErrorSeverity
  data, status_code, headers = api_instance.update_batch_error_severity_with_http_info(vbasoftware_database, error_severity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->update_batch_error_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_severity** | [**Array&lt;ErrorSeverity&gt;**](ErrorSeverity.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_error_severity

> <ErrorSeverityVBAResponse> update_error_severity(vbasoftware_database, error_severity, error_severity2)

Update ErrorSeverity

Updates a specific ErrorSeverity.

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

api_instance = Vba::ErrorSeverityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
error_severity = 56 # Integer | Error Severity
error_severity2 = Vba::ErrorSeverity.new({error_severity: 37}) # ErrorSeverity | 

begin
  # Update ErrorSeverity
  result = api_instance.update_error_severity(vbasoftware_database, error_severity, error_severity2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->update_error_severity: #{e}"
end
```

#### Using the update_error_severity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ErrorSeverityVBAResponse>, Integer, Hash)> update_error_severity_with_http_info(vbasoftware_database, error_severity, error_severity2)

```ruby
begin
  # Update ErrorSeverity
  data, status_code, headers = api_instance.update_error_severity_with_http_info(vbasoftware_database, error_severity, error_severity2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ErrorSeverityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ErrorSeverityApi->update_error_severity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **error_severity** | **Integer** | Error Severity |  |
| **error_severity2** | [**ErrorSeverity**](ErrorSeverity.md) |  |  |

### Return type

[**ErrorSeverityVBAResponse**](ErrorSeverityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

