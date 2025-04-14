# Vba::HIPAAReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_reason**](HIPAAReasonsApi.md#create_hipaa_reason) | **POST** /hipaa-reasons | Create HIPAAReason |
| [**delete_hipaa_reason**](HIPAAReasonsApi.md#delete_hipaa_reason) | **DELETE** /hipaa-reasons/{hIPAACode} | Delete HIPAAReason |
| [**get_hipaa_reason**](HIPAAReasonsApi.md#get_hipaa_reason) | **GET** /hipaa-reasons/{hIPAACode} | Get HIPAAReason |
| [**list_hipaa_reason**](HIPAAReasonsApi.md#list_hipaa_reason) | **GET** /hipaa-reasons | List HIPAAReason |
| [**update_batch_hipaa_reason**](HIPAAReasonsApi.md#update_batch_hipaa_reason) | **PUT** /hipaa-reasons-batch | Create or Update Batch HIPAAReason |
| [**update_hipaa_reason**](HIPAAReasonsApi.md#update_hipaa_reason) | **PUT** /hipaa-reasons/{hIPAACode} | Update HIPAAReason |


## create_hipaa_reason

> <HIPAAReasonVBAResponse> create_hipaa_reason(vbasoftware_database, hipaa_reason)

Create HIPAAReason

Creates a new HIPAAReason

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

api_instance = Vba::HIPAAReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_reason = Vba::HIPAAReason.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAReason | 

begin
  # Create HIPAAReason
  result = api_instance.create_hipaa_reason(vbasoftware_database, hipaa_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->create_hipaa_reason: #{e}"
end
```

#### Using the create_hipaa_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAReasonVBAResponse>, Integer, Hash)> create_hipaa_reason_with_http_info(vbasoftware_database, hipaa_reason)

```ruby
begin
  # Create HIPAAReason
  data, status_code, headers = api_instance.create_hipaa_reason_with_http_info(vbasoftware_database, hipaa_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->create_hipaa_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_reason** | [**HIPAAReason**](HIPAAReason.md) |  |  |

### Return type

[**HIPAAReasonVBAResponse**](HIPAAReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_reason

> delete_hipaa_reason(vbasoftware_database, h_ipaa_code)

Delete HIPAAReason

Deletes an HIPAAReason

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

api_instance = Vba::HIPAAReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAAReason
  api_instance.delete_hipaa_reason(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->delete_hipaa_reason: #{e}"
end
```

#### Using the delete_hipaa_reason_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_reason_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAAReason
  data, status_code, headers = api_instance.delete_hipaa_reason_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->delete_hipaa_reason_with_http_info: #{e}"
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


## get_hipaa_reason

> <HIPAAReasonVBAResponse> get_hipaa_reason(vbasoftware_database, h_ipaa_code)

Get HIPAAReason

Gets HIPAAReason

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

api_instance = Vba::HIPAAReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAAReason
  result = api_instance.get_hipaa_reason(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->get_hipaa_reason: #{e}"
end
```

#### Using the get_hipaa_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAReasonVBAResponse>, Integer, Hash)> get_hipaa_reason_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAAReason
  data, status_code, headers = api_instance.get_hipaa_reason_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->get_hipaa_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAAReasonVBAResponse**](HIPAAReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_reason

> <HIPAAReasonListVBAResponse> list_hipaa_reason(vbasoftware_database)

List HIPAAReason

Lists all HIPAAReason given a specific 

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

api_instance = Vba::HIPAAReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAAReason
  result = api_instance.list_hipaa_reason(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->list_hipaa_reason: #{e}"
end
```

#### Using the list_hipaa_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAReasonListVBAResponse>, Integer, Hash)> list_hipaa_reason_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAAReason
  data, status_code, headers = api_instance.list_hipaa_reason_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAReasonListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->list_hipaa_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAAReasonListVBAResponse**](HIPAAReasonListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_reason

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_reason(vbasoftware_database, hipaa_reason)

Create or Update Batch HIPAAReason

Create or Update multiple HIPAAReason at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAAReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_reason = [Vba::HIPAAReason.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAAReason> | 

begin
  # Create or Update Batch HIPAAReason
  result = api_instance.update_batch_hipaa_reason(vbasoftware_database, hipaa_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->update_batch_hipaa_reason: #{e}"
end
```

#### Using the update_batch_hipaa_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_reason_with_http_info(vbasoftware_database, hipaa_reason)

```ruby
begin
  # Create or Update Batch HIPAAReason
  data, status_code, headers = api_instance.update_batch_hipaa_reason_with_http_info(vbasoftware_database, hipaa_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->update_batch_hipaa_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_reason** | [**Array&lt;HIPAAReason&gt;**](HIPAAReason.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_reason

> <HIPAAReasonVBAResponse> update_hipaa_reason(vbasoftware_database, h_ipaa_code, hipaa_reason)

Update HIPAAReason

Updates a specific HIPAAReason.

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

api_instance = Vba::HIPAAReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_reason = Vba::HIPAAReason.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAReason | 

begin
  # Update HIPAAReason
  result = api_instance.update_hipaa_reason(vbasoftware_database, h_ipaa_code, hipaa_reason)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->update_hipaa_reason: #{e}"
end
```

#### Using the update_hipaa_reason_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAReasonVBAResponse>, Integer, Hash)> update_hipaa_reason_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_reason)

```ruby
begin
  # Update HIPAAReason
  data, status_code, headers = api_instance.update_hipaa_reason_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_reason)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAReasonVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAReasonsApi->update_hipaa_reason_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_reason** | [**HIPAAReason**](HIPAAReason.md) |  |  |

### Return type

[**HIPAAReasonVBAResponse**](HIPAAReasonVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

