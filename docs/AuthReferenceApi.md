# Vba::AuthReferenceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_reference**](AuthReferenceApi.md#create_auth_reference) | **POST** /auths/{originalAuthNumber}/references | Create AuthReference |
| [**delete_auth_reference**](AuthReferenceApi.md#delete_auth_reference) | **DELETE** /auths/{originalAuthNumber}/references/{referencedAuthNumber} | Delete AuthReference |
| [**get_auth_reference**](AuthReferenceApi.md#get_auth_reference) | **GET** /auths/{originalAuthNumber}/references/{referencedAuthNumber} | Get AuthReference |
| [**list_auth_reference_for_auth**](AuthReferenceApi.md#list_auth_reference_for_auth) | **GET** /auths/{originalAuthNumber}/references | List AuthReferences |
| [**update_auth_reference**](AuthReferenceApi.md#update_auth_reference) | **PUT** /auths/{originalAuthNumber}/references/{referencedAuthNumber} | Update AuthReference |
| [**update_batch_auth_reference**](AuthReferenceApi.md#update_batch_auth_reference) | **PUT** /auths/{originalAuthNumber}/references-batch | Update Batch AuthReference |


## create_auth_reference

> <AuthReferenceVBAResponse> create_auth_reference(vbasoftware_database, original_auth_number, auth_reference)

Create AuthReference

Creates a new AuthReference from an existing Auth

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

api_instance = Vba::AuthReferenceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_auth_number = 'original_auth_number_example' # String | Original Auth Number
auth_reference = Vba::AuthReference.new({original_auth_number: 'original_auth_number_example', referenced_auth_number: 'referenced_auth_number_example', reference_type: 'reference_type_example'}) # AuthReference | 

begin
  # Create AuthReference
  result = api_instance.create_auth_reference(vbasoftware_database, original_auth_number, auth_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->create_auth_reference: #{e}"
end
```

#### Using the create_auth_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReferenceVBAResponse>, Integer, Hash)> create_auth_reference_with_http_info(vbasoftware_database, original_auth_number, auth_reference)

```ruby
begin
  # Create AuthReference
  data, status_code, headers = api_instance.create_auth_reference_with_http_info(vbasoftware_database, original_auth_number, auth_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->create_auth_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_auth_number** | **String** | Original Auth Number |  |
| **auth_reference** | [**AuthReference**](AuthReference.md) |  |  |

### Return type

[**AuthReferenceVBAResponse**](AuthReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_auth_reference

> delete_auth_reference(vbasoftware_database, original_auth_number, referenced_auth_number)

Delete AuthReference

Deletes an AuthReference

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

api_instance = Vba::AuthReferenceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_auth_number = 'original_auth_number_example' # String | Original Auth Number
referenced_auth_number = 'referenced_auth_number_example' # String | Referenced Auth Number

begin
  # Delete AuthReference
  api_instance.delete_auth_reference(vbasoftware_database, original_auth_number, referenced_auth_number)
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->delete_auth_reference: #{e}"
end
```

#### Using the delete_auth_reference_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_auth_reference_with_http_info(vbasoftware_database, original_auth_number, referenced_auth_number)

```ruby
begin
  # Delete AuthReference
  data, status_code, headers = api_instance.delete_auth_reference_with_http_info(vbasoftware_database, original_auth_number, referenced_auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->delete_auth_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_auth_number** | **String** | Original Auth Number |  |
| **referenced_auth_number** | **String** | Referenced Auth Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_auth_reference

> <AuthReferenceVBAResponse> get_auth_reference(vbasoftware_database, original_auth_number, referenced_auth_number)

Get AuthReference

Gets AuthReference

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

api_instance = Vba::AuthReferenceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_auth_number = 'original_auth_number_example' # String | Original Auth Number
referenced_auth_number = 'referenced_auth_number_example' # String | Referenced Auth Number

begin
  # Get AuthReference
  result = api_instance.get_auth_reference(vbasoftware_database, original_auth_number, referenced_auth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->get_auth_reference: #{e}"
end
```

#### Using the get_auth_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReferenceVBAResponse>, Integer, Hash)> get_auth_reference_with_http_info(vbasoftware_database, original_auth_number, referenced_auth_number)

```ruby
begin
  # Get AuthReference
  data, status_code, headers = api_instance.get_auth_reference_with_http_info(vbasoftware_database, original_auth_number, referenced_auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->get_auth_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_auth_number** | **String** | Original Auth Number |  |
| **referenced_auth_number** | **String** | Referenced Auth Number |  |

### Return type

[**AuthReferenceVBAResponse**](AuthReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_auth_reference_for_auth

> <AuthListVBAResponse> list_auth_reference_for_auth(vbasoftware_database, original_auth_number)

List AuthReferences

Lists all AuthReference for an existing Auth

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

api_instance = Vba::AuthReferenceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_auth_number = 'original_auth_number_example' # String | Original Auth Number

begin
  # List AuthReferences
  result = api_instance.list_auth_reference_for_auth(vbasoftware_database, original_auth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->list_auth_reference_for_auth: #{e}"
end
```

#### Using the list_auth_reference_for_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthListVBAResponse>, Integer, Hash)> list_auth_reference_for_auth_with_http_info(vbasoftware_database, original_auth_number)

```ruby
begin
  # List AuthReferences
  data, status_code, headers = api_instance.list_auth_reference_for_auth_with_http_info(vbasoftware_database, original_auth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->list_auth_reference_for_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_auth_number** | **String** | Original Auth Number |  |

### Return type

[**AuthListVBAResponse**](AuthListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_auth_reference

> <AuthReferenceVBAResponse> update_auth_reference(vbasoftware_database, original_auth_number, referenced_auth_number, auth_reference)

Update AuthReference

Updates a specific AuthReference.

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

api_instance = Vba::AuthReferenceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_auth_number = 'original_auth_number_example' # String | Original Auth Number
referenced_auth_number = 'referenced_auth_number_example' # String | Referenced Auth Number
auth_reference = Vba::AuthReference.new({original_auth_number: 'original_auth_number_example', referenced_auth_number: 'referenced_auth_number_example', reference_type: 'reference_type_example'}) # AuthReference | 

begin
  # Update AuthReference
  result = api_instance.update_auth_reference(vbasoftware_database, original_auth_number, referenced_auth_number, auth_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->update_auth_reference: #{e}"
end
```

#### Using the update_auth_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthReferenceVBAResponse>, Integer, Hash)> update_auth_reference_with_http_info(vbasoftware_database, original_auth_number, referenced_auth_number, auth_reference)

```ruby
begin
  # Update AuthReference
  data, status_code, headers = api_instance.update_auth_reference_with_http_info(vbasoftware_database, original_auth_number, referenced_auth_number, auth_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthReferenceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->update_auth_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_auth_number** | **String** | Original Auth Number |  |
| **referenced_auth_number** | **String** | Referenced Auth Number |  |
| **auth_reference** | [**AuthReference**](AuthReference.md) |  |  |

### Return type

[**AuthReferenceVBAResponse**](AuthReferenceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_auth_reference

> <MultiCodeResponseListVBAResponse> update_batch_auth_reference(vbasoftware_database, original_auth_number, auth_reference)

Update Batch AuthReference

Updates a multiple AuthReference.

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

api_instance = Vba::AuthReferenceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
original_auth_number = 'original_auth_number_example' # String | Original Auth Number
auth_reference = [Vba::AuthReference.new({original_auth_number: 'original_auth_number_example', referenced_auth_number: 'referenced_auth_number_example', reference_type: 'reference_type_example'})] # Array<AuthReference> | 

begin
  # Update Batch AuthReference
  result = api_instance.update_batch_auth_reference(vbasoftware_database, original_auth_number, auth_reference)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->update_batch_auth_reference: #{e}"
end
```

#### Using the update_batch_auth_reference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_auth_reference_with_http_info(vbasoftware_database, original_auth_number, auth_reference)

```ruby
begin
  # Update Batch AuthReference
  data, status_code, headers = api_instance.update_batch_auth_reference_with_http_info(vbasoftware_database, original_auth_number, auth_reference)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AuthReferenceApi->update_batch_auth_reference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **original_auth_number** | **String** | Original Auth Number |  |
| **auth_reference** | [**Array&lt;AuthReference&gt;**](AuthReference.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

