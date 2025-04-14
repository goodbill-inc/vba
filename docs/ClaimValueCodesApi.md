# Vba::ClaimValueCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_value_code**](ClaimValueCodesApi.md#create_claim_value_code) | **POST** /claim-value-codes | Create ClaimValueCode |
| [**delete_claim_value_code**](ClaimValueCodesApi.md#delete_claim_value_code) | **DELETE** /claim-value-codes/{valueCode} | Delete ClaimValueCode |
| [**get_claim_value_code**](ClaimValueCodesApi.md#get_claim_value_code) | **GET** /claim-value-codes/{valueCode} | Get ClaimValueCode |
| [**list_claim_value_code**](ClaimValueCodesApi.md#list_claim_value_code) | **GET** /claim-value-codes | List ClaimValueCode |
| [**update_batch_claim_value_code**](ClaimValueCodesApi.md#update_batch_claim_value_code) | **PUT** /claim-value-codes-batch | Create or Update Batch ClaimValueCode |
| [**update_claim_value_code**](ClaimValueCodesApi.md#update_claim_value_code) | **PUT** /claim-value-codes/{valueCode} | Update ClaimValueCode |


## create_claim_value_code

> <ClaimValueCodeVBAResponse> create_claim_value_code(vbasoftware_database, claim_value_code)

Create ClaimValueCode

Creates a new ClaimValueCode

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

api_instance = Vba::ClaimValueCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_value_code = Vba::ClaimValueCode.new({value_code: 'value_code_example'}) # ClaimValueCode | 

begin
  # Create ClaimValueCode
  result = api_instance.create_claim_value_code(vbasoftware_database, claim_value_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->create_claim_value_code: #{e}"
end
```

#### Using the create_claim_value_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimValueCodeVBAResponse>, Integer, Hash)> create_claim_value_code_with_http_info(vbasoftware_database, claim_value_code)

```ruby
begin
  # Create ClaimValueCode
  data, status_code, headers = api_instance.create_claim_value_code_with_http_info(vbasoftware_database, claim_value_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimValueCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->create_claim_value_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_value_code** | [**ClaimValueCode**](ClaimValueCode.md) |  |  |

### Return type

[**ClaimValueCodeVBAResponse**](ClaimValueCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_value_code

> delete_claim_value_code(vbasoftware_database, value_code)

Delete ClaimValueCode

Deletes an ClaimValueCode

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

api_instance = Vba::ClaimValueCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
value_code = 'value_code_example' # String | Value Code

begin
  # Delete ClaimValueCode
  api_instance.delete_claim_value_code(vbasoftware_database, value_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->delete_claim_value_code: #{e}"
end
```

#### Using the delete_claim_value_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_value_code_with_http_info(vbasoftware_database, value_code)

```ruby
begin
  # Delete ClaimValueCode
  data, status_code, headers = api_instance.delete_claim_value_code_with_http_info(vbasoftware_database, value_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->delete_claim_value_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **value_code** | **String** | Value Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_value_code

> <ClaimValueCodeVBAResponse> get_claim_value_code(vbasoftware_database, value_code)

Get ClaimValueCode

Gets ClaimValueCode

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

api_instance = Vba::ClaimValueCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
value_code = 'value_code_example' # String | Value Code

begin
  # Get ClaimValueCode
  result = api_instance.get_claim_value_code(vbasoftware_database, value_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->get_claim_value_code: #{e}"
end
```

#### Using the get_claim_value_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimValueCodeVBAResponse>, Integer, Hash)> get_claim_value_code_with_http_info(vbasoftware_database, value_code)

```ruby
begin
  # Get ClaimValueCode
  data, status_code, headers = api_instance.get_claim_value_code_with_http_info(vbasoftware_database, value_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimValueCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->get_claim_value_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **value_code** | **String** | Value Code |  |

### Return type

[**ClaimValueCodeVBAResponse**](ClaimValueCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_value_code

> <ClaimValueCodeListVBAResponse> list_claim_value_code(vbasoftware_database, opts)

List ClaimValueCode

Lists all ClaimValueCode

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

api_instance = Vba::ClaimValueCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimValueCode
  result = api_instance.list_claim_value_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->list_claim_value_code: #{e}"
end
```

#### Using the list_claim_value_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimValueCodeListVBAResponse>, Integer, Hash)> list_claim_value_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimValueCode
  data, status_code, headers = api_instance.list_claim_value_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimValueCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->list_claim_value_code_with_http_info: #{e}"
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

[**ClaimValueCodeListVBAResponse**](ClaimValueCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_value_code

> <MultiCodeResponseListVBAResponse> update_batch_claim_value_code(vbasoftware_database, claim_value_code)

Create or Update Batch ClaimValueCode

Create or Update multiple ClaimValueCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimValueCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_value_code = [Vba::ClaimValueCode.new({value_code: 'value_code_example'})] # Array<ClaimValueCode> | 

begin
  # Create or Update Batch ClaimValueCode
  result = api_instance.update_batch_claim_value_code(vbasoftware_database, claim_value_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->update_batch_claim_value_code: #{e}"
end
```

#### Using the update_batch_claim_value_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_value_code_with_http_info(vbasoftware_database, claim_value_code)

```ruby
begin
  # Create or Update Batch ClaimValueCode
  data, status_code, headers = api_instance.update_batch_claim_value_code_with_http_info(vbasoftware_database, claim_value_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->update_batch_claim_value_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_value_code** | [**Array&lt;ClaimValueCode&gt;**](ClaimValueCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_value_code

> <ClaimValueCodeVBAResponse> update_claim_value_code(vbasoftware_database, value_code, claim_value_code)

Update ClaimValueCode

Updates a specific ClaimValueCode.

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

api_instance = Vba::ClaimValueCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
value_code = 'value_code_example' # String | Value Code
claim_value_code = Vba::ClaimValueCode.new({value_code: 'value_code_example'}) # ClaimValueCode | 

begin
  # Update ClaimValueCode
  result = api_instance.update_claim_value_code(vbasoftware_database, value_code, claim_value_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->update_claim_value_code: #{e}"
end
```

#### Using the update_claim_value_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimValueCodeVBAResponse>, Integer, Hash)> update_claim_value_code_with_http_info(vbasoftware_database, value_code, claim_value_code)

```ruby
begin
  # Update ClaimValueCode
  data, status_code, headers = api_instance.update_claim_value_code_with_http_info(vbasoftware_database, value_code, claim_value_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimValueCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimValueCodesApi->update_claim_value_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **value_code** | **String** | Value Code |  |
| **claim_value_code** | [**ClaimValueCode**](ClaimValueCode.md) |  |  |

### Return type

[**ClaimValueCodeVBAResponse**](ClaimValueCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

