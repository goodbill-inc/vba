# Vba::HIPAABenefitCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_benefit_code**](HIPAABenefitCodesApi.md#create_hipaa_benefit_code) | **POST** /hipaa-benefit-codes | Create HIPAABenefitCode |
| [**delete_hipaa_benefit_code**](HIPAABenefitCodesApi.md#delete_hipaa_benefit_code) | **DELETE** /hipaa-benefit-codes/{hIPAACode} | Delete HIPAABenefitCode |
| [**get_hipaa_benefit_code**](HIPAABenefitCodesApi.md#get_hipaa_benefit_code) | **GET** /hipaa-benefit-codes/{hIPAACode} | Get HIPAABenefitCode |
| [**list_hipaa_benefit_code**](HIPAABenefitCodesApi.md#list_hipaa_benefit_code) | **GET** /hipaa-benefit-codes | List HIPAABenefitCode |
| [**update_batch_hipaa_benefit_code**](HIPAABenefitCodesApi.md#update_batch_hipaa_benefit_code) | **PUT** /hipaa-benefit-codes-batch | Create or Update Batch HIPAABenefitCode |
| [**update_hipaa_benefit_code**](HIPAABenefitCodesApi.md#update_hipaa_benefit_code) | **PUT** /hipaa-benefit-codes/{hIPAACode} | Update HIPAABenefitCode |


## create_hipaa_benefit_code

> <HIPAABenefitCodeVBAResponse> create_hipaa_benefit_code(vbasoftware_database, hipaa_benefit_code)

Create HIPAABenefitCode

Creates a new HIPAABenefitCode

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

api_instance = Vba::HIPAABenefitCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_benefit_code = Vba::HIPAABenefitCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAABenefitCode | 

begin
  # Create HIPAABenefitCode
  result = api_instance.create_hipaa_benefit_code(vbasoftware_database, hipaa_benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->create_hipaa_benefit_code: #{e}"
end
```

#### Using the create_hipaa_benefit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAABenefitCodeVBAResponse>, Integer, Hash)> create_hipaa_benefit_code_with_http_info(vbasoftware_database, hipaa_benefit_code)

```ruby
begin
  # Create HIPAABenefitCode
  data, status_code, headers = api_instance.create_hipaa_benefit_code_with_http_info(vbasoftware_database, hipaa_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAABenefitCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->create_hipaa_benefit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_benefit_code** | [**HIPAABenefitCode**](HIPAABenefitCode.md) |  |  |

### Return type

[**HIPAABenefitCodeVBAResponse**](HIPAABenefitCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_benefit_code

> delete_hipaa_benefit_code(vbasoftware_database, h_ipaa_code)

Delete HIPAABenefitCode

Deletes an HIPAABenefitCode

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

api_instance = Vba::HIPAABenefitCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAABenefitCode
  api_instance.delete_hipaa_benefit_code(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->delete_hipaa_benefit_code: #{e}"
end
```

#### Using the delete_hipaa_benefit_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_benefit_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAABenefitCode
  data, status_code, headers = api_instance.delete_hipaa_benefit_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->delete_hipaa_benefit_code_with_http_info: #{e}"
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


## get_hipaa_benefit_code

> <HIPAABenefitCodeVBAResponse> get_hipaa_benefit_code(vbasoftware_database, h_ipaa_code)

Get HIPAABenefitCode

Gets HIPAABenefitCode

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

api_instance = Vba::HIPAABenefitCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAABenefitCode
  result = api_instance.get_hipaa_benefit_code(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->get_hipaa_benefit_code: #{e}"
end
```

#### Using the get_hipaa_benefit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAABenefitCodeVBAResponse>, Integer, Hash)> get_hipaa_benefit_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAABenefitCode
  data, status_code, headers = api_instance.get_hipaa_benefit_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAABenefitCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->get_hipaa_benefit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAABenefitCodeVBAResponse**](HIPAABenefitCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_benefit_code

> <HIPAABenefitCodeListVBAResponse> list_hipaa_benefit_code(vbasoftware_database)

List HIPAABenefitCode

Lists all HIPAABenefitCode given a specific 

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

api_instance = Vba::HIPAABenefitCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAABenefitCode
  result = api_instance.list_hipaa_benefit_code(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->list_hipaa_benefit_code: #{e}"
end
```

#### Using the list_hipaa_benefit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAABenefitCodeListVBAResponse>, Integer, Hash)> list_hipaa_benefit_code_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAABenefitCode
  data, status_code, headers = api_instance.list_hipaa_benefit_code_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAABenefitCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->list_hipaa_benefit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAABenefitCodeListVBAResponse**](HIPAABenefitCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_benefit_code

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_benefit_code(vbasoftware_database, hipaa_benefit_code)

Create or Update Batch HIPAABenefitCode

Create or Update multiple HIPAABenefitCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAABenefitCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_benefit_code = [Vba::HIPAABenefitCode.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAABenefitCode> | 

begin
  # Create or Update Batch HIPAABenefitCode
  result = api_instance.update_batch_hipaa_benefit_code(vbasoftware_database, hipaa_benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->update_batch_hipaa_benefit_code: #{e}"
end
```

#### Using the update_batch_hipaa_benefit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_benefit_code_with_http_info(vbasoftware_database, hipaa_benefit_code)

```ruby
begin
  # Create or Update Batch HIPAABenefitCode
  data, status_code, headers = api_instance.update_batch_hipaa_benefit_code_with_http_info(vbasoftware_database, hipaa_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->update_batch_hipaa_benefit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_benefit_code** | [**Array&lt;HIPAABenefitCode&gt;**](HIPAABenefitCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_benefit_code

> <HIPAABenefitCodeVBAResponse> update_hipaa_benefit_code(vbasoftware_database, h_ipaa_code, hipaa_benefit_code)

Update HIPAABenefitCode

Updates a specific HIPAABenefitCode.

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

api_instance = Vba::HIPAABenefitCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_benefit_code = Vba::HIPAABenefitCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAABenefitCode | 

begin
  # Update HIPAABenefitCode
  result = api_instance.update_hipaa_benefit_code(vbasoftware_database, h_ipaa_code, hipaa_benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->update_hipaa_benefit_code: #{e}"
end
```

#### Using the update_hipaa_benefit_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAABenefitCodeVBAResponse>, Integer, Hash)> update_hipaa_benefit_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_benefit_code)

```ruby
begin
  # Update HIPAABenefitCode
  data, status_code, headers = api_instance.update_hipaa_benefit_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAABenefitCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAABenefitCodesApi->update_hipaa_benefit_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_benefit_code** | [**HIPAABenefitCode**](HIPAABenefitCode.md) |  |  |

### Return type

[**HIPAABenefitCodeVBAResponse**](HIPAABenefitCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

