# Vba::FundingStatementFormatsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_statement_format**](FundingStatementFormatsApi.md#create_funding_statement_format) | **POST** /funding-statement-formats | Create FundingStatementFormat |
| [**delete_funding_statement_format**](FundingStatementFormatsApi.md#delete_funding_statement_format) | **DELETE** /funding-statement-formats/{statementFormatKey} | Delete FundingStatementFormat |
| [**get_funding_statement_format**](FundingStatementFormatsApi.md#get_funding_statement_format) | **GET** /funding-statement-formats/{statementFormatKey} | Get FundingStatementFormat |
| [**list_funding_statement_format**](FundingStatementFormatsApi.md#list_funding_statement_format) | **GET** /funding-statement-formats | List FundingStatementFormat |
| [**update_batch_funding_statement_format**](FundingStatementFormatsApi.md#update_batch_funding_statement_format) | **PUT** /funding-statement-formats-batch | Create or Update Batch FundingStatementFormat |
| [**update_funding_statement_format**](FundingStatementFormatsApi.md#update_funding_statement_format) | **PUT** /funding-statement-formats/{statementFormatKey} | Update FundingStatementFormat |


## create_funding_statement_format

> <FundingStatementFormatVBAResponse> create_funding_statement_format(vbasoftware_database, funding_statement_format)

Create FundingStatementFormat

Creates a new FundingStatementFormat

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

api_instance = Vba::FundingStatementFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_statement_format = Vba::FundingStatementFormat.new({statement_format_key: 37}) # FundingStatementFormat | 

begin
  # Create FundingStatementFormat
  result = api_instance.create_funding_statement_format(vbasoftware_database, funding_statement_format)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->create_funding_statement_format: #{e}"
end
```

#### Using the create_funding_statement_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingStatementFormatVBAResponse>, Integer, Hash)> create_funding_statement_format_with_http_info(vbasoftware_database, funding_statement_format)

```ruby
begin
  # Create FundingStatementFormat
  data, status_code, headers = api_instance.create_funding_statement_format_with_http_info(vbasoftware_database, funding_statement_format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingStatementFormatVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->create_funding_statement_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_statement_format** | [**FundingStatementFormat**](FundingStatementFormat.md) |  |  |

### Return type

[**FundingStatementFormatVBAResponse**](FundingStatementFormatVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_statement_format

> delete_funding_statement_format(vbasoftware_database, statement_format_key)

Delete FundingStatementFormat

Deletes an FundingStatementFormat

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

api_instance = Vba::FundingStatementFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
statement_format_key = 56 # Integer | Statement Format Key

begin
  # Delete FundingStatementFormat
  api_instance.delete_funding_statement_format(vbasoftware_database, statement_format_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->delete_funding_statement_format: #{e}"
end
```

#### Using the delete_funding_statement_format_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_statement_format_with_http_info(vbasoftware_database, statement_format_key)

```ruby
begin
  # Delete FundingStatementFormat
  data, status_code, headers = api_instance.delete_funding_statement_format_with_http_info(vbasoftware_database, statement_format_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->delete_funding_statement_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **statement_format_key** | **Integer** | Statement Format Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_statement_format

> <FundingStatementFormatVBAResponse> get_funding_statement_format(vbasoftware_database, statement_format_key)

Get FundingStatementFormat

Gets FundingStatementFormat

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

api_instance = Vba::FundingStatementFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
statement_format_key = 56 # Integer | Statement Format Key

begin
  # Get FundingStatementFormat
  result = api_instance.get_funding_statement_format(vbasoftware_database, statement_format_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->get_funding_statement_format: #{e}"
end
```

#### Using the get_funding_statement_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingStatementFormatVBAResponse>, Integer, Hash)> get_funding_statement_format_with_http_info(vbasoftware_database, statement_format_key)

```ruby
begin
  # Get FundingStatementFormat
  data, status_code, headers = api_instance.get_funding_statement_format_with_http_info(vbasoftware_database, statement_format_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingStatementFormatVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->get_funding_statement_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **statement_format_key** | **Integer** | Statement Format Key |  |

### Return type

[**FundingStatementFormatVBAResponse**](FundingStatementFormatVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_statement_format

> <FundingStatementFormatListVBAResponse> list_funding_statement_format(vbasoftware_database, opts)

List FundingStatementFormat

Lists all FundingStatementFormat

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

api_instance = Vba::FundingStatementFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingStatementFormat
  result = api_instance.list_funding_statement_format(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->list_funding_statement_format: #{e}"
end
```

#### Using the list_funding_statement_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingStatementFormatListVBAResponse>, Integer, Hash)> list_funding_statement_format_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FundingStatementFormat
  data, status_code, headers = api_instance.list_funding_statement_format_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingStatementFormatListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->list_funding_statement_format_with_http_info: #{e}"
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

[**FundingStatementFormatListVBAResponse**](FundingStatementFormatListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_statement_format

> <MultiCodeResponseListVBAResponse> update_batch_funding_statement_format(vbasoftware_database, funding_statement_format)

Create or Update Batch FundingStatementFormat

Create or Update multiple FundingStatementFormat at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingStatementFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
funding_statement_format = [Vba::FundingStatementFormat.new({statement_format_key: 37})] # Array<FundingStatementFormat> | 

begin
  # Create or Update Batch FundingStatementFormat
  result = api_instance.update_batch_funding_statement_format(vbasoftware_database, funding_statement_format)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->update_batch_funding_statement_format: #{e}"
end
```

#### Using the update_batch_funding_statement_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_statement_format_with_http_info(vbasoftware_database, funding_statement_format)

```ruby
begin
  # Create or Update Batch FundingStatementFormat
  data, status_code, headers = api_instance.update_batch_funding_statement_format_with_http_info(vbasoftware_database, funding_statement_format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->update_batch_funding_statement_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **funding_statement_format** | [**Array&lt;FundingStatementFormat&gt;**](FundingStatementFormat.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_statement_format

> <FundingStatementFormatVBAResponse> update_funding_statement_format(vbasoftware_database, statement_format_key, funding_statement_format)

Update FundingStatementFormat

Updates a specific FundingStatementFormat.

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

api_instance = Vba::FundingStatementFormatsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
statement_format_key = 56 # Integer | Statement Format Key
funding_statement_format = Vba::FundingStatementFormat.new({statement_format_key: 37}) # FundingStatementFormat | 

begin
  # Update FundingStatementFormat
  result = api_instance.update_funding_statement_format(vbasoftware_database, statement_format_key, funding_statement_format)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->update_funding_statement_format: #{e}"
end
```

#### Using the update_funding_statement_format_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingStatementFormatVBAResponse>, Integer, Hash)> update_funding_statement_format_with_http_info(vbasoftware_database, statement_format_key, funding_statement_format)

```ruby
begin
  # Update FundingStatementFormat
  data, status_code, headers = api_instance.update_funding_statement_format_with_http_info(vbasoftware_database, statement_format_key, funding_statement_format)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingStatementFormatVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingStatementFormatsApi->update_funding_statement_format_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **statement_format_key** | **Integer** | Statement Format Key |  |
| **funding_statement_format** | [**FundingStatementFormat**](FundingStatementFormat.md) |  |  |

### Return type

[**FundingStatementFormatVBAResponse**](FundingStatementFormatVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

