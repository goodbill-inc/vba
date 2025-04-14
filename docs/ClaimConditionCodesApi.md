# Vba::ClaimConditionCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_condition_code**](ClaimConditionCodesApi.md#create_claim_condition_code) | **POST** /claim-condition-codes | Create ClaimConditionCode |
| [**delete_claim_condition_code**](ClaimConditionCodesApi.md#delete_claim_condition_code) | **DELETE** /claim-condition-codes/{conditionCode} | Delete ClaimConditionCode |
| [**get_claim_condition_code**](ClaimConditionCodesApi.md#get_claim_condition_code) | **GET** /claim-condition-codes/{conditionCode} | Get ClaimConditionCode |
| [**list_claim_condition_code**](ClaimConditionCodesApi.md#list_claim_condition_code) | **GET** /claim-condition-codes | List ClaimConditionCode |
| [**update_batch_claim_condition_code**](ClaimConditionCodesApi.md#update_batch_claim_condition_code) | **PUT** /claim-condition-codes-batch | Create or Update Batch ClaimConditionCode |
| [**update_claim_condition_code**](ClaimConditionCodesApi.md#update_claim_condition_code) | **PUT** /claim-condition-codes/{conditionCode} | Update ClaimConditionCode |


## create_claim_condition_code

> <ClaimConditionCodeVBAResponse> create_claim_condition_code(vbasoftware_database, claim_condition_code)

Create ClaimConditionCode

Creates a new ClaimConditionCode

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

api_instance = Vba::ClaimConditionCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_condition_code = Vba::ClaimConditionCode.new({condition_code: 'condition_code_example'}) # ClaimConditionCode | 

begin
  # Create ClaimConditionCode
  result = api_instance.create_claim_condition_code(vbasoftware_database, claim_condition_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->create_claim_condition_code: #{e}"
end
```

#### Using the create_claim_condition_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimConditionCodeVBAResponse>, Integer, Hash)> create_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code)

```ruby
begin
  # Create ClaimConditionCode
  data, status_code, headers = api_instance.create_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimConditionCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->create_claim_condition_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_condition_code** | [**ClaimConditionCode**](ClaimConditionCode.md) |  |  |

### Return type

[**ClaimConditionCodeVBAResponse**](ClaimConditionCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_condition_code

> delete_claim_condition_code(vbasoftware_database, condition_code)

Delete ClaimConditionCode

Deletes an ClaimConditionCode

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

api_instance = Vba::ClaimConditionCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
condition_code = 'condition_code_example' # String | Condition Code

begin
  # Delete ClaimConditionCode
  api_instance.delete_claim_condition_code(vbasoftware_database, condition_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->delete_claim_condition_code: #{e}"
end
```

#### Using the delete_claim_condition_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_condition_code_with_http_info(vbasoftware_database, condition_code)

```ruby
begin
  # Delete ClaimConditionCode
  data, status_code, headers = api_instance.delete_claim_condition_code_with_http_info(vbasoftware_database, condition_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->delete_claim_condition_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **condition_code** | **String** | Condition Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_condition_code

> <ClaimConditionCodeVBAResponse> get_claim_condition_code(vbasoftware_database, condition_code)

Get ClaimConditionCode

Gets ClaimConditionCode

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

api_instance = Vba::ClaimConditionCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
condition_code = 'condition_code_example' # String | Condition Code

begin
  # Get ClaimConditionCode
  result = api_instance.get_claim_condition_code(vbasoftware_database, condition_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->get_claim_condition_code: #{e}"
end
```

#### Using the get_claim_condition_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimConditionCodeVBAResponse>, Integer, Hash)> get_claim_condition_code_with_http_info(vbasoftware_database, condition_code)

```ruby
begin
  # Get ClaimConditionCode
  data, status_code, headers = api_instance.get_claim_condition_code_with_http_info(vbasoftware_database, condition_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimConditionCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->get_claim_condition_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **condition_code** | **String** | Condition Code |  |

### Return type

[**ClaimConditionCodeVBAResponse**](ClaimConditionCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_condition_code

> <ClaimConditionCodeListVBAResponse> list_claim_condition_code(vbasoftware_database, opts)

List ClaimConditionCode

Lists all ClaimConditionCode

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

api_instance = Vba::ClaimConditionCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimConditionCode
  result = api_instance.list_claim_condition_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->list_claim_condition_code: #{e}"
end
```

#### Using the list_claim_condition_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimConditionCodeListVBAResponse>, Integer, Hash)> list_claim_condition_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimConditionCode
  data, status_code, headers = api_instance.list_claim_condition_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimConditionCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->list_claim_condition_code_with_http_info: #{e}"
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

[**ClaimConditionCodeListVBAResponse**](ClaimConditionCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_condition_code

> <MultiCodeResponseListVBAResponse> update_batch_claim_condition_code(vbasoftware_database, claim_condition_code)

Create or Update Batch ClaimConditionCode

Create or Update multiple ClaimConditionCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimConditionCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_condition_code = [Vba::ClaimConditionCode.new({condition_code: 'condition_code_example'})] # Array<ClaimConditionCode> | 

begin
  # Create or Update Batch ClaimConditionCode
  result = api_instance.update_batch_claim_condition_code(vbasoftware_database, claim_condition_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->update_batch_claim_condition_code: #{e}"
end
```

#### Using the update_batch_claim_condition_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code)

```ruby
begin
  # Create or Update Batch ClaimConditionCode
  data, status_code, headers = api_instance.update_batch_claim_condition_code_with_http_info(vbasoftware_database, claim_condition_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->update_batch_claim_condition_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_condition_code** | [**Array&lt;ClaimConditionCode&gt;**](ClaimConditionCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_condition_code

> <ClaimConditionCodeVBAResponse> update_claim_condition_code(vbasoftware_database, condition_code, claim_condition_code)

Update ClaimConditionCode

Updates a specific ClaimConditionCode.

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

api_instance = Vba::ClaimConditionCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
condition_code = 'condition_code_example' # String | Condition Code
claim_condition_code = Vba::ClaimConditionCode.new({condition_code: 'condition_code_example'}) # ClaimConditionCode | 

begin
  # Update ClaimConditionCode
  result = api_instance.update_claim_condition_code(vbasoftware_database, condition_code, claim_condition_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->update_claim_condition_code: #{e}"
end
```

#### Using the update_claim_condition_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimConditionCodeVBAResponse>, Integer, Hash)> update_claim_condition_code_with_http_info(vbasoftware_database, condition_code, claim_condition_code)

```ruby
begin
  # Update ClaimConditionCode
  data, status_code, headers = api_instance.update_claim_condition_code_with_http_info(vbasoftware_database, condition_code, claim_condition_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimConditionCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimConditionCodesApi->update_claim_condition_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **condition_code** | **String** | Condition Code |  |
| **claim_condition_code** | [**ClaimConditionCode**](ClaimConditionCode.md) |  |  |

### Return type

[**ClaimConditionCodeVBAResponse**](ClaimConditionCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

