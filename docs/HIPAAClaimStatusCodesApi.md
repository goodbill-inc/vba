# Vba::HIPAAClaimStatusCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_claim_status_code**](HIPAAClaimStatusCodesApi.md#create_hipaa_claim_status_code) | **POST** /hipaa-claim-status-codes | Create HIPAAClaimStatusCode |
| [**delete_hipaa_claim_status_code**](HIPAAClaimStatusCodesApi.md#delete_hipaa_claim_status_code) | **DELETE** /hipaa-claim-status-codes/{hIPAACode} | Delete HIPAAClaimStatusCode |
| [**get_hipaa_claim_status_code**](HIPAAClaimStatusCodesApi.md#get_hipaa_claim_status_code) | **GET** /hipaa-claim-status-codes/{hIPAACode} | Get HIPAAClaimStatusCode |
| [**list_hipaa_claim_status_code**](HIPAAClaimStatusCodesApi.md#list_hipaa_claim_status_code) | **GET** /hipaa-claim-status-codes | List HIPAAClaimStatusCode |
| [**update_batch_hipaa_claim_status_code**](HIPAAClaimStatusCodesApi.md#update_batch_hipaa_claim_status_code) | **PUT** /hipaa-claim-status-codes-batch | Create or Update Batch HIPAAClaimStatusCode |
| [**update_hipaa_claim_status_code**](HIPAAClaimStatusCodesApi.md#update_hipaa_claim_status_code) | **PUT** /hipaa-claim-status-codes/{hIPAACode} | Update HIPAAClaimStatusCode |


## create_hipaa_claim_status_code

> <HIPAAClaimStatusCodeVBAResponse> create_hipaa_claim_status_code(vbasoftware_database, hipaa_claim_status_code)

Create HIPAAClaimStatusCode

Creates a new HIPAAClaimStatusCode

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

api_instance = Vba::HIPAAClaimStatusCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_claim_status_code = Vba::HIPAAClaimStatusCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAClaimStatusCode | 

begin
  # Create HIPAAClaimStatusCode
  result = api_instance.create_hipaa_claim_status_code(vbasoftware_database, hipaa_claim_status_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->create_hipaa_claim_status_code: #{e}"
end
```

#### Using the create_hipaa_claim_status_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCodeVBAResponse>, Integer, Hash)> create_hipaa_claim_status_code_with_http_info(vbasoftware_database, hipaa_claim_status_code)

```ruby
begin
  # Create HIPAAClaimStatusCode
  data, status_code, headers = api_instance.create_hipaa_claim_status_code_with_http_info(vbasoftware_database, hipaa_claim_status_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->create_hipaa_claim_status_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_claim_status_code** | [**HIPAAClaimStatusCode**](HIPAAClaimStatusCode.md) |  |  |

### Return type

[**HIPAAClaimStatusCodeVBAResponse**](HIPAAClaimStatusCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_claim_status_code

> delete_hipaa_claim_status_code(vbasoftware_database, h_ipaa_code)

Delete HIPAAClaimStatusCode

Deletes an HIPAAClaimStatusCode

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

api_instance = Vba::HIPAAClaimStatusCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAAClaimStatusCode
  api_instance.delete_hipaa_claim_status_code(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->delete_hipaa_claim_status_code: #{e}"
end
```

#### Using the delete_hipaa_claim_status_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_claim_status_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAAClaimStatusCode
  data, status_code, headers = api_instance.delete_hipaa_claim_status_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->delete_hipaa_claim_status_code_with_http_info: #{e}"
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


## get_hipaa_claim_status_code

> <HIPAAClaimStatusCodeVBAResponse> get_hipaa_claim_status_code(vbasoftware_database, h_ipaa_code)

Get HIPAAClaimStatusCode

Gets HIPAAClaimStatusCode

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

api_instance = Vba::HIPAAClaimStatusCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAAClaimStatusCode
  result = api_instance.get_hipaa_claim_status_code(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->get_hipaa_claim_status_code: #{e}"
end
```

#### Using the get_hipaa_claim_status_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCodeVBAResponse>, Integer, Hash)> get_hipaa_claim_status_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAAClaimStatusCode
  data, status_code, headers = api_instance.get_hipaa_claim_status_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->get_hipaa_claim_status_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAAClaimStatusCodeVBAResponse**](HIPAAClaimStatusCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_claim_status_code

> <HIPAAClaimStatusCodeListVBAResponse> list_hipaa_claim_status_code(vbasoftware_database)

List HIPAAClaimStatusCode

Lists all HIPAAClaimStatusCode given a specific 

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

api_instance = Vba::HIPAAClaimStatusCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAAClaimStatusCode
  result = api_instance.list_hipaa_claim_status_code(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->list_hipaa_claim_status_code: #{e}"
end
```

#### Using the list_hipaa_claim_status_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCodeListVBAResponse>, Integer, Hash)> list_hipaa_claim_status_code_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAAClaimStatusCode
  data, status_code, headers = api_instance.list_hipaa_claim_status_code_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->list_hipaa_claim_status_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAAClaimStatusCodeListVBAResponse**](HIPAAClaimStatusCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_claim_status_code

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_claim_status_code(vbasoftware_database, hipaa_claim_status_code)

Create or Update Batch HIPAAClaimStatusCode

Create or Update multiple HIPAAClaimStatusCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAAClaimStatusCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_claim_status_code = [Vba::HIPAAClaimStatusCode.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAAClaimStatusCode> | 

begin
  # Create or Update Batch HIPAAClaimStatusCode
  result = api_instance.update_batch_hipaa_claim_status_code(vbasoftware_database, hipaa_claim_status_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->update_batch_hipaa_claim_status_code: #{e}"
end
```

#### Using the update_batch_hipaa_claim_status_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_claim_status_code_with_http_info(vbasoftware_database, hipaa_claim_status_code)

```ruby
begin
  # Create or Update Batch HIPAAClaimStatusCode
  data, status_code, headers = api_instance.update_batch_hipaa_claim_status_code_with_http_info(vbasoftware_database, hipaa_claim_status_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->update_batch_hipaa_claim_status_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_claim_status_code** | [**Array&lt;HIPAAClaimStatusCode&gt;**](HIPAAClaimStatusCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_claim_status_code

> <HIPAAClaimStatusCodeVBAResponse> update_hipaa_claim_status_code(vbasoftware_database, h_ipaa_code, hipaa_claim_status_code)

Update HIPAAClaimStatusCode

Updates a specific HIPAAClaimStatusCode.

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

api_instance = Vba::HIPAAClaimStatusCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_claim_status_code = Vba::HIPAAClaimStatusCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAClaimStatusCode | 

begin
  # Update HIPAAClaimStatusCode
  result = api_instance.update_hipaa_claim_status_code(vbasoftware_database, h_ipaa_code, hipaa_claim_status_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->update_hipaa_claim_status_code: #{e}"
end
```

#### Using the update_hipaa_claim_status_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAClaimStatusCodeVBAResponse>, Integer, Hash)> update_hipaa_claim_status_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_claim_status_code)

```ruby
begin
  # Update HIPAAClaimStatusCode
  data, status_code, headers = api_instance.update_hipaa_claim_status_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_claim_status_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAClaimStatusCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAClaimStatusCodesApi->update_hipaa_claim_status_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_claim_status_code** | [**HIPAAClaimStatusCode**](HIPAAClaimStatusCode.md) |  |  |

### Return type

[**HIPAAClaimStatusCodeVBAResponse**](HIPAAClaimStatusCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

