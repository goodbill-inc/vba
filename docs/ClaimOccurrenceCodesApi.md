# Vba::ClaimOccurrenceCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_occurrence_code**](ClaimOccurrenceCodesApi.md#create_claim_occurrence_code) | **POST** /claim-occurrence-codes | Create ClaimOccurrenceCode |
| [**delete_claim_occurrence_code**](ClaimOccurrenceCodesApi.md#delete_claim_occurrence_code) | **DELETE** /claim-occurrence-codes/{occurrenceCode} | Delete ClaimOccurrenceCode |
| [**get_claim_occurrence_code**](ClaimOccurrenceCodesApi.md#get_claim_occurrence_code) | **GET** /claim-occurrence-codes/{occurrenceCode} | Get ClaimOccurrenceCode |
| [**list_claim_occurrence_code**](ClaimOccurrenceCodesApi.md#list_claim_occurrence_code) | **GET** /claim-occurrence-codes | List ClaimOccurrenceCode |
| [**update_batch_claim_occurrence_code**](ClaimOccurrenceCodesApi.md#update_batch_claim_occurrence_code) | **PUT** /claim-occurrence-codes-batch | Create or Update Batch ClaimOccurrenceCode |
| [**update_claim_occurrence_code**](ClaimOccurrenceCodesApi.md#update_claim_occurrence_code) | **PUT** /claim-occurrence-codes/{occurrenceCode} | Update ClaimOccurrenceCode |


## create_claim_occurrence_code

> <ClaimOccurrenceCodeVBAResponse> create_claim_occurrence_code(vbasoftware_database, claim_occurrence_code)

Create ClaimOccurrenceCode

Creates a new ClaimOccurrenceCode

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

api_instance = Vba::ClaimOccurrenceCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_occurrence_code = Vba::ClaimOccurrenceCode.new({occurrence_code: 'occurrence_code_example'}) # ClaimOccurrenceCode | 

begin
  # Create ClaimOccurrenceCode
  result = api_instance.create_claim_occurrence_code(vbasoftware_database, claim_occurrence_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->create_claim_occurrence_code: #{e}"
end
```

#### Using the create_claim_occurrence_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimOccurrenceCodeVBAResponse>, Integer, Hash)> create_claim_occurrence_code_with_http_info(vbasoftware_database, claim_occurrence_code)

```ruby
begin
  # Create ClaimOccurrenceCode
  data, status_code, headers = api_instance.create_claim_occurrence_code_with_http_info(vbasoftware_database, claim_occurrence_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimOccurrenceCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->create_claim_occurrence_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_occurrence_code** | [**ClaimOccurrenceCode**](ClaimOccurrenceCode.md) |  |  |

### Return type

[**ClaimOccurrenceCodeVBAResponse**](ClaimOccurrenceCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_occurrence_code

> delete_claim_occurrence_code(vbasoftware_database, occurrence_code)

Delete ClaimOccurrenceCode

Deletes an ClaimOccurrenceCode

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

api_instance = Vba::ClaimOccurrenceCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occurrence_code = 'occurrence_code_example' # String | Occurrence Code

begin
  # Delete ClaimOccurrenceCode
  api_instance.delete_claim_occurrence_code(vbasoftware_database, occurrence_code)
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->delete_claim_occurrence_code: #{e}"
end
```

#### Using the delete_claim_occurrence_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_occurrence_code_with_http_info(vbasoftware_database, occurrence_code)

```ruby
begin
  # Delete ClaimOccurrenceCode
  data, status_code, headers = api_instance.delete_claim_occurrence_code_with_http_info(vbasoftware_database, occurrence_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->delete_claim_occurrence_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occurrence_code** | **String** | Occurrence Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_occurrence_code

> <ClaimOccurrenceCodeVBAResponse> get_claim_occurrence_code(vbasoftware_database, occurrence_code)

Get ClaimOccurrenceCode

Gets ClaimOccurrenceCode

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

api_instance = Vba::ClaimOccurrenceCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occurrence_code = 'occurrence_code_example' # String | Occurrence Code

begin
  # Get ClaimOccurrenceCode
  result = api_instance.get_claim_occurrence_code(vbasoftware_database, occurrence_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->get_claim_occurrence_code: #{e}"
end
```

#### Using the get_claim_occurrence_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimOccurrenceCodeVBAResponse>, Integer, Hash)> get_claim_occurrence_code_with_http_info(vbasoftware_database, occurrence_code)

```ruby
begin
  # Get ClaimOccurrenceCode
  data, status_code, headers = api_instance.get_claim_occurrence_code_with_http_info(vbasoftware_database, occurrence_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimOccurrenceCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->get_claim_occurrence_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occurrence_code** | **String** | Occurrence Code |  |

### Return type

[**ClaimOccurrenceCodeVBAResponse**](ClaimOccurrenceCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_occurrence_code

> <ClaimOccurrenceCodeListVBAResponse> list_claim_occurrence_code(vbasoftware_database, opts)

List ClaimOccurrenceCode

Lists all ClaimOccurrenceCode

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

api_instance = Vba::ClaimOccurrenceCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimOccurrenceCode
  result = api_instance.list_claim_occurrence_code(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->list_claim_occurrence_code: #{e}"
end
```

#### Using the list_claim_occurrence_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimOccurrenceCodeListVBAResponse>, Integer, Hash)> list_claim_occurrence_code_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimOccurrenceCode
  data, status_code, headers = api_instance.list_claim_occurrence_code_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimOccurrenceCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->list_claim_occurrence_code_with_http_info: #{e}"
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

[**ClaimOccurrenceCodeListVBAResponse**](ClaimOccurrenceCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_occurrence_code

> <MultiCodeResponseListVBAResponse> update_batch_claim_occurrence_code(vbasoftware_database, claim_occurrence_code)

Create or Update Batch ClaimOccurrenceCode

Create or Update multiple ClaimOccurrenceCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimOccurrenceCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_occurrence_code = [Vba::ClaimOccurrenceCode.new({occurrence_code: 'occurrence_code_example'})] # Array<ClaimOccurrenceCode> | 

begin
  # Create or Update Batch ClaimOccurrenceCode
  result = api_instance.update_batch_claim_occurrence_code(vbasoftware_database, claim_occurrence_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->update_batch_claim_occurrence_code: #{e}"
end
```

#### Using the update_batch_claim_occurrence_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_occurrence_code_with_http_info(vbasoftware_database, claim_occurrence_code)

```ruby
begin
  # Create or Update Batch ClaimOccurrenceCode
  data, status_code, headers = api_instance.update_batch_claim_occurrence_code_with_http_info(vbasoftware_database, claim_occurrence_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->update_batch_claim_occurrence_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_occurrence_code** | [**Array&lt;ClaimOccurrenceCode&gt;**](ClaimOccurrenceCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_occurrence_code

> <ClaimOccurrenceCodeVBAResponse> update_claim_occurrence_code(vbasoftware_database, occurrence_code, claim_occurrence_code)

Update ClaimOccurrenceCode

Updates a specific ClaimOccurrenceCode.

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

api_instance = Vba::ClaimOccurrenceCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
occurrence_code = 'occurrence_code_example' # String | Occurrence Code
claim_occurrence_code = Vba::ClaimOccurrenceCode.new({occurrence_code: 'occurrence_code_example'}) # ClaimOccurrenceCode | 

begin
  # Update ClaimOccurrenceCode
  result = api_instance.update_claim_occurrence_code(vbasoftware_database, occurrence_code, claim_occurrence_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->update_claim_occurrence_code: #{e}"
end
```

#### Using the update_claim_occurrence_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimOccurrenceCodeVBAResponse>, Integer, Hash)> update_claim_occurrence_code_with_http_info(vbasoftware_database, occurrence_code, claim_occurrence_code)

```ruby
begin
  # Update ClaimOccurrenceCode
  data, status_code, headers = api_instance.update_claim_occurrence_code_with_http_info(vbasoftware_database, occurrence_code, claim_occurrence_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimOccurrenceCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimOccurrenceCodesApi->update_claim_occurrence_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **occurrence_code** | **String** | Occurrence Code |  |
| **claim_occurrence_code** | [**ClaimOccurrenceCode**](ClaimOccurrenceCode.md) |  |  |

### Return type

[**ClaimOccurrenceCodeVBAResponse**](ClaimOccurrenceCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

