# Vba::CredentialingAttestationMethodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_attestation_method**](CredentialingAttestationMethodsApi.md#create_cred_attestation_method) | **POST** /credentialing-attestation-methods | Create CredAttestationMethod |
| [**delete_cred_attestation_method**](CredentialingAttestationMethodsApi.md#delete_cred_attestation_method) | **DELETE** /credentialing-attestation-methods/{credAttestationMethodKey} | Delete CredAttestationMethod |
| [**get_cred_attestation_method**](CredentialingAttestationMethodsApi.md#get_cred_attestation_method) | **GET** /credentialing-attestation-methods/{credAttestationMethodKey} | Get CredAttestationMethod |
| [**list_cred_attestation_method**](CredentialingAttestationMethodsApi.md#list_cred_attestation_method) | **GET** /credentialing-attestation-methods | List CredAttestationMethod |
| [**update_batch_cred_attestation_method**](CredentialingAttestationMethodsApi.md#update_batch_cred_attestation_method) | **PUT** /credentialing-attestation-methods-batch | Create or Update Batch CredAttestationMethod |
| [**update_cred_attestation_method**](CredentialingAttestationMethodsApi.md#update_cred_attestation_method) | **PUT** /credentialing-attestation-methods/{credAttestationMethodKey} | Update CredAttestationMethod |


## create_cred_attestation_method

> <CredAttestationMethodVBAResponse> create_cred_attestation_method(vbasoftware_database, cred_attestation_method)

Create CredAttestationMethod

Creates a new CredAttestationMethod

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

api_instance = Vba::CredentialingAttestationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_method = Vba::CredAttestationMethod.new({cred_attestation_method_key: 37}) # CredAttestationMethod | 

begin
  # Create CredAttestationMethod
  result = api_instance.create_cred_attestation_method(vbasoftware_database, cred_attestation_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->create_cred_attestation_method: #{e}"
end
```

#### Using the create_cred_attestation_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationMethodVBAResponse>, Integer, Hash)> create_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method)

```ruby
begin
  # Create CredAttestationMethod
  data, status_code, headers = api_instance.create_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->create_cred_attestation_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_method** | [**CredAttestationMethod**](CredAttestationMethod.md) |  |  |

### Return type

[**CredAttestationMethodVBAResponse**](CredAttestationMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_attestation_method

> delete_cred_attestation_method(vbasoftware_database, cred_attestation_method_key)

Delete CredAttestationMethod

Deletes an CredAttestationMethod

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

api_instance = Vba::CredentialingAttestationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_method_key = 56 # Integer | CredAttestationMethod Key

begin
  # Delete CredAttestationMethod
  api_instance.delete_cred_attestation_method(vbasoftware_database, cred_attestation_method_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->delete_cred_attestation_method: #{e}"
end
```

#### Using the delete_cred_attestation_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method_key)

```ruby
begin
  # Delete CredAttestationMethod
  data, status_code, headers = api_instance.delete_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->delete_cred_attestation_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_method_key** | **Integer** | CredAttestationMethod Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_attestation_method

> <CredAttestationMethodVBAResponse> get_cred_attestation_method(vbasoftware_database, cred_attestation_method_key)

Get CredAttestationMethod

Gets CredAttestationMethod

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

api_instance = Vba::CredentialingAttestationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_method_key = 56 # Integer | CredAttestationMethod Key

begin
  # Get CredAttestationMethod
  result = api_instance.get_cred_attestation_method(vbasoftware_database, cred_attestation_method_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->get_cred_attestation_method: #{e}"
end
```

#### Using the get_cred_attestation_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationMethodVBAResponse>, Integer, Hash)> get_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method_key)

```ruby
begin
  # Get CredAttestationMethod
  data, status_code, headers = api_instance.get_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->get_cred_attestation_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_method_key** | **Integer** | CredAttestationMethod Key |  |

### Return type

[**CredAttestationMethodVBAResponse**](CredAttestationMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_attestation_method

> <CredAttestationMethodListVBAResponse> list_cred_attestation_method(vbasoftware_database, opts)

List CredAttestationMethod

Lists all CredAttestationMethod

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

api_instance = Vba::CredentialingAttestationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredAttestationMethod
  result = api_instance.list_cred_attestation_method(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->list_cred_attestation_method: #{e}"
end
```

#### Using the list_cred_attestation_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationMethodListVBAResponse>, Integer, Hash)> list_cred_attestation_method_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredAttestationMethod
  data, status_code, headers = api_instance.list_cred_attestation_method_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationMethodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->list_cred_attestation_method_with_http_info: #{e}"
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

[**CredAttestationMethodListVBAResponse**](CredAttestationMethodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_attestation_method

> <MultiCodeResponseListVBAResponse> update_batch_cred_attestation_method(vbasoftware_database, cred_attestation_method)

Create or Update Batch CredAttestationMethod

Create or Update multiple CredAttestationMethod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingAttestationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_method = [Vba::CredAttestationMethod.new({cred_attestation_method_key: 37})] # Array<CredAttestationMethod> | 

begin
  # Create or Update Batch CredAttestationMethod
  result = api_instance.update_batch_cred_attestation_method(vbasoftware_database, cred_attestation_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->update_batch_cred_attestation_method: #{e}"
end
```

#### Using the update_batch_cred_attestation_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method)

```ruby
begin
  # Create or Update Batch CredAttestationMethod
  data, status_code, headers = api_instance.update_batch_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->update_batch_cred_attestation_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_method** | [**Array&lt;CredAttestationMethod&gt;**](CredAttestationMethod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_attestation_method

> <CredAttestationMethodVBAResponse> update_cred_attestation_method(vbasoftware_database, cred_attestation_method_key, cred_attestation_method)

Update CredAttestationMethod

Updates a specific CredAttestationMethod.

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

api_instance = Vba::CredentialingAttestationMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_attestation_method_key = 56 # Integer | CredAttestationMethod Key
cred_attestation_method = Vba::CredAttestationMethod.new({cred_attestation_method_key: 37}) # CredAttestationMethod | 

begin
  # Update CredAttestationMethod
  result = api_instance.update_cred_attestation_method(vbasoftware_database, cred_attestation_method_key, cred_attestation_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->update_cred_attestation_method: #{e}"
end
```

#### Using the update_cred_attestation_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredAttestationMethodVBAResponse>, Integer, Hash)> update_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method_key, cred_attestation_method)

```ruby
begin
  # Update CredAttestationMethod
  data, status_code, headers = api_instance.update_cred_attestation_method_with_http_info(vbasoftware_database, cred_attestation_method_key, cred_attestation_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredAttestationMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingAttestationMethodsApi->update_cred_attestation_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_attestation_method_key** | **Integer** | CredAttestationMethod Key |  |
| **cred_attestation_method** | [**CredAttestationMethod**](CredAttestationMethod.md) |  |  |

### Return type

[**CredAttestationMethodVBAResponse**](CredAttestationMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

