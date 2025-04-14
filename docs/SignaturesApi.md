# Vba::SignaturesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_signature**](SignaturesApi.md#create_signature) | **POST** /signatures | Create Signature |
| [**delete_signature**](SignaturesApi.md#delete_signature) | **DELETE** /signatures/{signatureKey} | Delete Signature |
| [**get_signature**](SignaturesApi.md#get_signature) | **GET** /signatures/{signatureKey} | Get Signature |
| [**list_signature**](SignaturesApi.md#list_signature) | **GET** /signatures | List Signature |
| [**update_batch_signature**](SignaturesApi.md#update_batch_signature) | **PUT** /signatures-batch | Create or Update Batch Signature |
| [**update_signature**](SignaturesApi.md#update_signature) | **PUT** /signatures/{signatureKey} | Update Signature |


## create_signature

> <SignatureVBAResponse> create_signature(vbasoftware_database, signature)

Create Signature

Creates a new Signature

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

api_instance = Vba::SignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
signature = Vba::Signature.new({signature_key: 37, signature_file: 'signature_file_example'}) # Signature | 

begin
  # Create Signature
  result = api_instance.create_signature(vbasoftware_database, signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->create_signature: #{e}"
end
```

#### Using the create_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureVBAResponse>, Integer, Hash)> create_signature_with_http_info(vbasoftware_database, signature)

```ruby
begin
  # Create Signature
  data, status_code, headers = api_instance.create_signature_with_http_info(vbasoftware_database, signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->create_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **signature** | [**Signature**](Signature.md) |  |  |

### Return type

[**SignatureVBAResponse**](SignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_signature

> delete_signature(vbasoftware_database, signature_key)

Delete Signature

Deletes an Signature

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

api_instance = Vba::SignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
signature_key = 56 # Integer | Signature Key

begin
  # Delete Signature
  api_instance.delete_signature(vbasoftware_database, signature_key)
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->delete_signature: #{e}"
end
```

#### Using the delete_signature_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_signature_with_http_info(vbasoftware_database, signature_key)

```ruby
begin
  # Delete Signature
  data, status_code, headers = api_instance.delete_signature_with_http_info(vbasoftware_database, signature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->delete_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **signature_key** | **Integer** | Signature Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_signature

> <SignatureVBAResponse> get_signature(vbasoftware_database, signature_key)

Get Signature

Gets Signature

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

api_instance = Vba::SignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
signature_key = 56 # Integer | Signature Key

begin
  # Get Signature
  result = api_instance.get_signature(vbasoftware_database, signature_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->get_signature: #{e}"
end
```

#### Using the get_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureVBAResponse>, Integer, Hash)> get_signature_with_http_info(vbasoftware_database, signature_key)

```ruby
begin
  # Get Signature
  data, status_code, headers = api_instance.get_signature_with_http_info(vbasoftware_database, signature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->get_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **signature_key** | **Integer** | Signature Key |  |

### Return type

[**SignatureVBAResponse**](SignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_signature

> <SignatureListVBAResponse> list_signature(vbasoftware_database, opts)

List Signature

Lists all Signature

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

api_instance = Vba::SignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Signature
  result = api_instance.list_signature(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->list_signature: #{e}"
end
```

#### Using the list_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureListVBAResponse>, Integer, Hash)> list_signature_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Signature
  data, status_code, headers = api_instance.list_signature_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->list_signature_with_http_info: #{e}"
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

[**SignatureListVBAResponse**](SignatureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_signature

> <MultiCodeResponseListVBAResponse> update_batch_signature(vbasoftware_database, signature)

Create or Update Batch Signature

Create or Update multiple Signature at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
signature = [Vba::Signature.new({signature_key: 37, signature_file: 'signature_file_example'})] # Array<Signature> | 

begin
  # Create or Update Batch Signature
  result = api_instance.update_batch_signature(vbasoftware_database, signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->update_batch_signature: #{e}"
end
```

#### Using the update_batch_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_signature_with_http_info(vbasoftware_database, signature)

```ruby
begin
  # Create or Update Batch Signature
  data, status_code, headers = api_instance.update_batch_signature_with_http_info(vbasoftware_database, signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->update_batch_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **signature** | [**Array&lt;Signature&gt;**](Signature.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_signature

> <SignatureVBAResponse> update_signature(vbasoftware_database, signature_key, signature)

Update Signature

Updates a specific Signature.

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

api_instance = Vba::SignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
signature_key = 56 # Integer | Signature Key
signature = Vba::Signature.new({signature_key: 37, signature_file: 'signature_file_example'}) # Signature | 

begin
  # Update Signature
  result = api_instance.update_signature(vbasoftware_database, signature_key, signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->update_signature: #{e}"
end
```

#### Using the update_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SignatureVBAResponse>, Integer, Hash)> update_signature_with_http_info(vbasoftware_database, signature_key, signature)

```ruby
begin
  # Update Signature
  data, status_code, headers = api_instance.update_signature_with_http_info(vbasoftware_database, signature_key, signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SignaturesApi->update_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **signature_key** | **Integer** | Signature Key |  |
| **signature** | [**Signature**](Signature.md) |  |  |

### Return type

[**SignatureVBAResponse**](SignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

