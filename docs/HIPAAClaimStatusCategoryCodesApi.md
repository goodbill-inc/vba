# Vba::HIPAAClaimStatusCategoryCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_claim_status_category_code**](HIPAAClaimStatusCategoryCodesApi.md#create_hipaa_claim_status_category_code) | **POST** /hipaa-claim-status-category-codes | Create HIPAAClaimStatusCategoryCode |
| [**delete_hipaa_claim_status_category_code**](HIPAAClaimStatusCategoryCodesApi.md#delete_hipaa_claim_status_category_code) | **DELETE** /hipaa-claim-status-category-codes/{hIPAACode} | Delete HIPAAClaimStatusCategoryCode |
| [**get_hipaa_claim_status_category_code**](HIPAAClaimStatusCategoryCodesApi.md#get_hipaa_claim_status_category_code) | **GET** /hipaa-claim-status-category-codes/{hIPAACode} | Get HIPAAClaimStatusCategoryCode |
| [**list_hipaa_claim_status_category_code**](HIPAAClaimStatusCategoryCodesApi.md#list_hipaa_claim_status_category_code) | **GET** /hipaa-claim-status-category-codes | List HIPAAClaimStatusCategoryCode |
| [**update_batch_hipaa_claim_status_category_code**](HIPAAClaimStatusCategoryCodesApi.md#update_batch_hipaa_claim_status_category_code) | **PUT** /hipaa-claim-status-category-codes-batch | Create or Update Batch HIPAAClaimStatusCategoryCode |
| [**update_hipaa_claim_status_category_code**](HIPAAClaimStatusCategoryCodesApi.md#update_hipaa_claim_status_category_code) | **PUT** /hipaa-claim-status-category-codes/{hIPAACode} | Update HIPAAClaimStatusCategoryCode |


## create_hipaa_claim_status_category_code

> <HIPAAClaimStatusCategoryCodeVBAResponse> create_hipaa_claim_status_category_code(vbasoftware_database, hipaa_claim_status_category_code)

Create HIPAAClaimStatusCategoryCode

Creates a new HIPAAClaimStatusCategoryCode

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

api_instance = Vba::HIPAAClaimStatusCategoryCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_claim_status_category_code = Vba::HIPAAClaimStatusCategoryCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAClaimStatusCategoryCode | 

begin
  # Create HIPAAClaimStatusCategoryCode
  result = api_instance.create_hipaa_claim_status_category_code(vbasoftware_database, hipaa_claim_status_category_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->create_hipaa_claim_status_category_code: #{e}"
end
```

#### Using the create_hipaa_claim_status_category_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCategoryCodeVBAResponse>, Integer, Hash)> create_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code)

```ruby
begin
  # Create HIPAAClaimStatusCategoryCode
  data, status_code, headers = api_instance.create_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCategoryCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->create_hipaa_claim_status_category_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_claim_status_category_code** | [**HIPAAClaimStatusCategoryCode**](HIPAAClaimStatusCategoryCode.md) |  |  |

### Return type

[**HIPAAClaimStatusCategoryCodeVBAResponse**](HIPAAClaimStatusCategoryCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_claim_status_category_code

> delete_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code)

Delete HIPAAClaimStatusCategoryCode

Deletes an HIPAAClaimStatusCategoryCode

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

api_instance = Vba::HIPAAClaimStatusCategoryCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAAClaimStatusCategoryCode
  api_instance.delete_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->delete_hipaa_claim_status_category_code: #{e}"
end
```

#### Using the delete_hipaa_claim_status_category_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAAClaimStatusCategoryCode
  data, status_code, headers = api_instance.delete_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->delete_hipaa_claim_status_category_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_hipaa_claim_status_category_code

> <HIPAAClaimStatusCategoryCodeVBAResponse> get_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code)

Get HIPAAClaimStatusCategoryCode

Gets HIPAAClaimStatusCategoryCode

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

api_instance = Vba::HIPAAClaimStatusCategoryCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAAClaimStatusCategoryCode
  result = api_instance.get_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->get_hipaa_claim_status_category_code: #{e}"
end
```

#### Using the get_hipaa_claim_status_category_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCategoryCodeVBAResponse>, Integer, Hash)> get_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAAClaimStatusCategoryCode
  data, status_code, headers = api_instance.get_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCategoryCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->get_hipaa_claim_status_category_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAAClaimStatusCategoryCodeVBAResponse**](HIPAAClaimStatusCategoryCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_claim_status_category_code

> <HIPAAClaimStatusCategoryCodeListVBAResponse> list_hipaa_claim_status_category_code(vbasoftware_database)

List HIPAAClaimStatusCategoryCode

Lists all HIPAAClaimStatusCategoryCode given a specific 

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

api_instance = Vba::HIPAAClaimStatusCategoryCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAAClaimStatusCategoryCode
  result = api_instance.list_hipaa_claim_status_category_code(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->list_hipaa_claim_status_category_code: #{e}"
end
```

#### Using the list_hipaa_claim_status_category_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCategoryCodeListVBAResponse>, Integer, Hash)> list_hipaa_claim_status_category_code_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAAClaimStatusCategoryCode
  data, status_code, headers = api_instance.list_hipaa_claim_status_category_code_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCategoryCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->list_hipaa_claim_status_category_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAAClaimStatusCategoryCodeListVBAResponse**](HIPAAClaimStatusCategoryCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_claim_status_category_code

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_claim_status_category_code(vbasoftware_database, hipaa_claim_status_category_code)

Create or Update Batch HIPAAClaimStatusCategoryCode

Create or Update multiple HIPAAClaimStatusCategoryCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAAClaimStatusCategoryCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_claim_status_category_code = [Vba::HIPAAClaimStatusCategoryCode.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAAClaimStatusCategoryCode> | 

begin
  # Create or Update Batch HIPAAClaimStatusCategoryCode
  result = api_instance.update_batch_hipaa_claim_status_category_code(vbasoftware_database, hipaa_claim_status_category_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->update_batch_hipaa_claim_status_category_code: #{e}"
end
```

#### Using the update_batch_hipaa_claim_status_category_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code)

```ruby
begin
  # Create or Update Batch HIPAAClaimStatusCategoryCode
  data, status_code, headers = api_instance.update_batch_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, hipaa_claim_status_category_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->update_batch_hipaa_claim_status_category_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_claim_status_category_code** | [**Array&lt;HIPAAClaimStatusCategoryCode&gt;**](HIPAAClaimStatusCategoryCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_claim_status_category_code

> <HIPAAClaimStatusCategoryCodeVBAResponse> update_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code)

Update HIPAAClaimStatusCategoryCode

Updates a specific HIPAAClaimStatusCategoryCode.

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

api_instance = Vba::HIPAAClaimStatusCategoryCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_claim_status_category_code = Vba::HIPAAClaimStatusCategoryCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAClaimStatusCategoryCode | 

begin
  # Update HIPAAClaimStatusCategoryCode
  result = api_instance.update_hipaa_claim_status_category_code(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->update_hipaa_claim_status_category_code: #{e}"
end
```

#### Using the update_hipaa_claim_status_category_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCategoryCodeVBAResponse>, Integer, Hash)> update_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code)

```ruby
begin
  # Update HIPAAClaimStatusCategoryCode
  data, status_code, headers = api_instance.update_hipaa_claim_status_category_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_claim_status_category_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCategoryCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCategoryCodesApi->update_hipaa_claim_status_category_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_claim_status_category_code** | [**HIPAAClaimStatusCategoryCode**](HIPAAClaimStatusCategoryCode.md) |  |  |

### Return type

[**HIPAAClaimStatusCategoryCodeVBAResponse**](HIPAAClaimStatusCategoryCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

