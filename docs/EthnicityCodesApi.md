# Vba::EthnicityCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ethnicity_code**](EthnicityCodesApi.md#create_ethnicity_code) | **POST** /ethnicity-codes | Create EthnicityCode |
| [**delete_ethnicity_code**](EthnicityCodesApi.md#delete_ethnicity_code) | **DELETE** /ethnicity-codes/{ethnicityCode} | Delete EthnicityCode |
| [**get_ethnicity_code**](EthnicityCodesApi.md#get_ethnicity_code) | **GET** /ethnicity-codes/{ethnicityCode} | Get EthnicityCode |
| [**list_ethnicity_code**](EthnicityCodesApi.md#list_ethnicity_code) | **GET** /ethnicity-codes | List EthnicityCode |
| [**update_batch_ethnicity_code**](EthnicityCodesApi.md#update_batch_ethnicity_code) | **PUT** /ethnicity-codes-batch | Create or Update Batch EthnicityCode |
| [**update_ethnicity_code**](EthnicityCodesApi.md#update_ethnicity_code) | **PUT** /ethnicity-codes/{ethnicityCode} | Update EthnicityCode |


## create_ethnicity_code

> <EthnicityCodeVBAResponse> create_ethnicity_code(vbasoftware_database, ethnicity_code)

Create EthnicityCode

Creates a new EthnicityCode

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

api_instance = Vba::EthnicityCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ethnicity_code = Vba::EthnicityCode.new({ethnicity_code: 'ethnicity_code_example'}) # EthnicityCode | 

begin
  # Create EthnicityCode
  result = api_instance.create_ethnicity_code(vbasoftware_database, ethnicity_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->create_ethnicity_code: #{e}"
end
```

#### Using the create_ethnicity_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EthnicityCodeVBAResponse>, Integer, Hash)> create_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)

```ruby
begin
  # Create EthnicityCode
  data, status_code, headers = api_instance.create_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EthnicityCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->create_ethnicity_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ethnicity_code** | [**EthnicityCode**](EthnicityCode.md) |  |  |

### Return type

[**EthnicityCodeVBAResponse**](EthnicityCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_ethnicity_code

> delete_ethnicity_code(vbasoftware_database, ethnicity_code)

Delete EthnicityCode

Deletes an EthnicityCode

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

api_instance = Vba::EthnicityCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ethnicity_code = 'ethnicity_code_example' # String | Ethnicity Code

begin
  # Delete EthnicityCode
  api_instance.delete_ethnicity_code(vbasoftware_database, ethnicity_code)
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->delete_ethnicity_code: #{e}"
end
```

#### Using the delete_ethnicity_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)

```ruby
begin
  # Delete EthnicityCode
  data, status_code, headers = api_instance.delete_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->delete_ethnicity_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ethnicity_code** | **String** | Ethnicity Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_ethnicity_code

> <EthnicityCodeVBAResponse> get_ethnicity_code(vbasoftware_database, ethnicity_code)

Get EthnicityCode

Gets EthnicityCode

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

api_instance = Vba::EthnicityCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ethnicity_code = 'ethnicity_code_example' # String | Ethnicity Code

begin
  # Get EthnicityCode
  result = api_instance.get_ethnicity_code(vbasoftware_database, ethnicity_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->get_ethnicity_code: #{e}"
end
```

#### Using the get_ethnicity_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EthnicityCodeVBAResponse>, Integer, Hash)> get_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)

```ruby
begin
  # Get EthnicityCode
  data, status_code, headers = api_instance.get_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EthnicityCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->get_ethnicity_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ethnicity_code** | **String** | Ethnicity Code |  |

### Return type

[**EthnicityCodeVBAResponse**](EthnicityCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_ethnicity_code

> <EthnicityCodeListVBAResponse> list_ethnicity_code(vbasoftware_database, opts)

List EthnicityCode

Lists all EthnicityCode

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

api_instance = Vba::EthnicityCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EthnicityCode
  result = api_instance.list_ethnicity_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->list_ethnicity_code: #{e}"
end
```

#### Using the list_ethnicity_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EthnicityCodeListVBAResponse>, Integer, Hash)> list_ethnicity_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List EthnicityCode
  data, status_code, headers = api_instance.list_ethnicity_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EthnicityCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->list_ethnicity_code_with_http_info: #{e}"
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

[**EthnicityCodeListVBAResponse**](EthnicityCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_ethnicity_code

> <MultiCodeResponseListVBAResponse> update_batch_ethnicity_code(vbasoftware_database, ethnicity_code)

Create or Update Batch EthnicityCode

Create or Update multiple EthnicityCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EthnicityCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ethnicity_code = [Vba::EthnicityCode.new({ethnicity_code: 'ethnicity_code_example'})] # Array<EthnicityCode> | 

begin
  # Create or Update Batch EthnicityCode
  result = api_instance.update_batch_ethnicity_code(vbasoftware_database, ethnicity_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->update_batch_ethnicity_code: #{e}"
end
```

#### Using the update_batch_ethnicity_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)

```ruby
begin
  # Create or Update Batch EthnicityCode
  data, status_code, headers = api_instance.update_batch_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->update_batch_ethnicity_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ethnicity_code** | [**Array&lt;EthnicityCode&gt;**](EthnicityCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_ethnicity_code

> <EthnicityCodeVBAResponse> update_ethnicity_code(vbasoftware_database, ethnicity_code, ethnicity_code2)

Update EthnicityCode

Updates a specific EthnicityCode.

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

api_instance = Vba::EthnicityCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
ethnicity_code = 'ethnicity_code_example' # String | Ethnicity Code
ethnicity_code2 = Vba::EthnicityCode.new({ethnicity_code: 'ethnicity_code_example'}) # EthnicityCode | 

begin
  # Update EthnicityCode
  result = api_instance.update_ethnicity_code(vbasoftware_database, ethnicity_code, ethnicity_code2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->update_ethnicity_code: #{e}"
end
```

#### Using the update_ethnicity_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EthnicityCodeVBAResponse>, Integer, Hash)> update_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code, ethnicity_code2)

```ruby
begin
  # Update EthnicityCode
  data, status_code, headers = api_instance.update_ethnicity_code_with_http_info(vbasoftware_database, ethnicity_code, ethnicity_code2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EthnicityCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EthnicityCodesApi->update_ethnicity_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **ethnicity_code** | **String** | Ethnicity Code |  |
| **ethnicity_code2** | [**EthnicityCode**](EthnicityCode.md) |  |  |

### Return type

[**EthnicityCodeVBAResponse**](EthnicityCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

