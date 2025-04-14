# Vba::HIPAAAdjustmentCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_adjustment_code**](HIPAAAdjustmentCodesApi.md#create_hipaa_adjustment_code) | **POST** /hipaa-adjustment-codes | Create HIPAAAdjustmentCode |
| [**delete_hipaa_adjustment_code**](HIPAAAdjustmentCodesApi.md#delete_hipaa_adjustment_code) | **DELETE** /hipaa-adjustment-codes/{hIPAACode} | Delete HIPAAAdjustmentCode |
| [**get_hipaa_adjustment_code**](HIPAAAdjustmentCodesApi.md#get_hipaa_adjustment_code) | **GET** /hipaa-adjustment-codes/{hIPAACode} | Get HIPAAAdjustmentCode |
| [**list_hipaa_adjustment_code**](HIPAAAdjustmentCodesApi.md#list_hipaa_adjustment_code) | **GET** /hipaa-adjustment-codes | List HIPAAAdjustmentCode |
| [**update_batch_hipaa_adjustment_code**](HIPAAAdjustmentCodesApi.md#update_batch_hipaa_adjustment_code) | **PUT** /hipaa-adjustment-codes-batch | Create or Update Batch HIPAAAdjustmentCode |
| [**update_hipaa_adjustment_code**](HIPAAAdjustmentCodesApi.md#update_hipaa_adjustment_code) | **PUT** /hipaa-adjustment-codes/{hIPAACode} | Update HIPAAAdjustmentCode |


## create_hipaa_adjustment_code

> <HIPAAAdjustmentCodeVBAResponse> create_hipaa_adjustment_code(vbasoftware_database, hipaa_adjustment_code)

Create HIPAAAdjustmentCode

Creates a new HIPAAAdjustmentCode

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

api_instance = Vba::HIPAAAdjustmentCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_adjustment_code = Vba::HIPAAAdjustmentCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAAdjustmentCode | 

begin
  # Create HIPAAAdjustmentCode
  result = api_instance.create_hipaa_adjustment_code(vbasoftware_database, hipaa_adjustment_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->create_hipaa_adjustment_code: #{e}"
end
```

#### Using the create_hipaa_adjustment_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAAdjustmentCodeVBAResponse>, Integer, Hash)> create_hipaa_adjustment_code_with_http_info(vbasoftware_database, hipaa_adjustment_code)

```ruby
begin
  # Create HIPAAAdjustmentCode
  data, status_code, headers = api_instance.create_hipaa_adjustment_code_with_http_info(vbasoftware_database, hipaa_adjustment_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAAdjustmentCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->create_hipaa_adjustment_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_adjustment_code** | [**HIPAAAdjustmentCode**](HIPAAAdjustmentCode.md) |  |  |

### Return type

[**HIPAAAdjustmentCodeVBAResponse**](HIPAAAdjustmentCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_adjustment_code

> delete_hipaa_adjustment_code(vbasoftware_database, h_ipaa_code)

Delete HIPAAAdjustmentCode

Deletes an HIPAAAdjustmentCode

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

api_instance = Vba::HIPAAAdjustmentCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAAAdjustmentCode
  api_instance.delete_hipaa_adjustment_code(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->delete_hipaa_adjustment_code: #{e}"
end
```

#### Using the delete_hipaa_adjustment_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_adjustment_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAAAdjustmentCode
  data, status_code, headers = api_instance.delete_hipaa_adjustment_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->delete_hipaa_adjustment_code_with_http_info: #{e}"
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


## get_hipaa_adjustment_code

> <HIPAAAdjustmentCodeVBAResponse> get_hipaa_adjustment_code(vbasoftware_database, h_ipaa_code)

Get HIPAAAdjustmentCode

Gets HIPAAAdjustmentCode

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

api_instance = Vba::HIPAAAdjustmentCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAAAdjustmentCode
  result = api_instance.get_hipaa_adjustment_code(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->get_hipaa_adjustment_code: #{e}"
end
```

#### Using the get_hipaa_adjustment_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAAdjustmentCodeVBAResponse>, Integer, Hash)> get_hipaa_adjustment_code_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAAAdjustmentCode
  data, status_code, headers = api_instance.get_hipaa_adjustment_code_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAAdjustmentCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->get_hipaa_adjustment_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAAAdjustmentCodeVBAResponse**](HIPAAAdjustmentCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_adjustment_code

> <HIPAAAdjustmentCodeListVBAResponse> list_hipaa_adjustment_code(vbasoftware_database)

List HIPAAAdjustmentCode

Lists all HIPAAAdjustmentCode given a specific 

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

api_instance = Vba::HIPAAAdjustmentCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAAAdjustmentCode
  result = api_instance.list_hipaa_adjustment_code(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->list_hipaa_adjustment_code: #{e}"
end
```

#### Using the list_hipaa_adjustment_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAAdjustmentCodeListVBAResponse>, Integer, Hash)> list_hipaa_adjustment_code_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAAAdjustmentCode
  data, status_code, headers = api_instance.list_hipaa_adjustment_code_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAAdjustmentCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->list_hipaa_adjustment_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAAAdjustmentCodeListVBAResponse**](HIPAAAdjustmentCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_adjustment_code

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_adjustment_code(vbasoftware_database, hipaa_adjustment_code)

Create or Update Batch HIPAAAdjustmentCode

Create or Update multiple HIPAAAdjustmentCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAAAdjustmentCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_adjustment_code = [Vba::HIPAAAdjustmentCode.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAAAdjustmentCode> | 

begin
  # Create or Update Batch HIPAAAdjustmentCode
  result = api_instance.update_batch_hipaa_adjustment_code(vbasoftware_database, hipaa_adjustment_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->update_batch_hipaa_adjustment_code: #{e}"
end
```

#### Using the update_batch_hipaa_adjustment_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_adjustment_code_with_http_info(vbasoftware_database, hipaa_adjustment_code)

```ruby
begin
  # Create or Update Batch HIPAAAdjustmentCode
  data, status_code, headers = api_instance.update_batch_hipaa_adjustment_code_with_http_info(vbasoftware_database, hipaa_adjustment_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->update_batch_hipaa_adjustment_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_adjustment_code** | [**Array&lt;HIPAAAdjustmentCode&gt;**](HIPAAAdjustmentCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_adjustment_code

> <HIPAAAdjustmentCodeVBAResponse> update_hipaa_adjustment_code(vbasoftware_database, h_ipaa_code, hipaa_adjustment_code)

Update HIPAAAdjustmentCode

Updates a specific HIPAAAdjustmentCode.

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

api_instance = Vba::HIPAAAdjustmentCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_adjustment_code = Vba::HIPAAAdjustmentCode.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAAdjustmentCode | 

begin
  # Update HIPAAAdjustmentCode
  result = api_instance.update_hipaa_adjustment_code(vbasoftware_database, h_ipaa_code, hipaa_adjustment_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->update_hipaa_adjustment_code: #{e}"
end
```

#### Using the update_hipaa_adjustment_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAAdjustmentCodeVBAResponse>, Integer, Hash)> update_hipaa_adjustment_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_adjustment_code)

```ruby
begin
  # Update HIPAAAdjustmentCode
  data, status_code, headers = api_instance.update_hipaa_adjustment_code_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_adjustment_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAAdjustmentCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAAdjustmentCodesApi->update_hipaa_adjustment_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_adjustment_code** | [**HIPAAAdjustmentCode**](HIPAAAdjustmentCode.md) |  |  |

### Return type

[**HIPAAAdjustmentCodeVBAResponse**](HIPAAAdjustmentCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

