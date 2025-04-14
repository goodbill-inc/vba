# Vba::PayorAccountSignaturesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payor_account_signature**](PayorAccountSignaturesApi.md#create_payor_account_signature) | **POST** /payor-account-signatures | Create PayorAccountSignature |
| [**delete_payor_account_signature**](PayorAccountSignaturesApi.md#delete_payor_account_signature) | **DELETE** /payor-account-signatures/{payorAccountSignatureKey} | Delete PayorAccountSignature |
| [**get_payor_account_signature**](PayorAccountSignaturesApi.md#get_payor_account_signature) | **GET** /payor-account-signatures/{payorAccountSignatureKey} | Get PayorAccountSignature |
| [**list_payor_account_signature**](PayorAccountSignaturesApi.md#list_payor_account_signature) | **GET** /payor-account-signatures | List PayorAccountSignature |
| [**update_batch_payor_account_signature**](PayorAccountSignaturesApi.md#update_batch_payor_account_signature) | **PUT** /payor-account-signatures-batch | Create or Update Batch PayorAccountSignature |
| [**update_payor_account_signature**](PayorAccountSignaturesApi.md#update_payor_account_signature) | **PUT** /payor-account-signatures/{payorAccountSignatureKey} | Update PayorAccountSignature |


## create_payor_account_signature

> <PayorAccountSignatureVBAResponse> create_payor_account_signature(vbasoftware_database, payor_account_signature)

Create PayorAccountSignature

Creates a new PayorAccountSignature

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

api_instance = Vba::PayorAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_signature = Vba::PayorAccountSignature.new({payor_account_signature_key: 37, effective_date: Time.now, payor_account_key: 37, required: false, signature_key: 37}) # PayorAccountSignature | 

begin
  # Create PayorAccountSignature
  result = api_instance.create_payor_account_signature(vbasoftware_database, payor_account_signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->create_payor_account_signature: #{e}"
end
```

#### Using the create_payor_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountSignatureVBAResponse>, Integer, Hash)> create_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature)

```ruby
begin
  # Create PayorAccountSignature
  data, status_code, headers = api_instance.create_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountSignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->create_payor_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_signature** | [**PayorAccountSignature**](PayorAccountSignature.md) |  |  |

### Return type

[**PayorAccountSignatureVBAResponse**](PayorAccountSignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_payor_account_signature

> delete_payor_account_signature(vbasoftware_database, payor_account_signature_key)

Delete PayorAccountSignature

Deletes an PayorAccountSignature

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

api_instance = Vba::PayorAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_signature_key = 56 # Integer | PayorAccountSignature Key

begin
  # Delete PayorAccountSignature
  api_instance.delete_payor_account_signature(vbasoftware_database, payor_account_signature_key)
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->delete_payor_account_signature: #{e}"
end
```

#### Using the delete_payor_account_signature_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature_key)

```ruby
begin
  # Delete PayorAccountSignature
  data, status_code, headers = api_instance.delete_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->delete_payor_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_signature_key** | **Integer** | PayorAccountSignature Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_payor_account_signature

> <PayorAccountSignatureVBAResponse> get_payor_account_signature(vbasoftware_database, payor_account_signature_key)

Get PayorAccountSignature

Gets PayorAccountSignature

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

api_instance = Vba::PayorAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_signature_key = 56 # Integer | PayorAccountSignature Key

begin
  # Get PayorAccountSignature
  result = api_instance.get_payor_account_signature(vbasoftware_database, payor_account_signature_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->get_payor_account_signature: #{e}"
end
```

#### Using the get_payor_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountSignatureVBAResponse>, Integer, Hash)> get_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature_key)

```ruby
begin
  # Get PayorAccountSignature
  data, status_code, headers = api_instance.get_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountSignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->get_payor_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_signature_key** | **Integer** | PayorAccountSignature Key |  |

### Return type

[**PayorAccountSignatureVBAResponse**](PayorAccountSignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_payor_account_signature

> <PayorAccountSignatureListVBAResponse> list_payor_account_signature(vbasoftware_database, opts)

List PayorAccountSignature

Lists all PayorAccountSignature

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

api_instance = Vba::PayorAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PayorAccountSignature
  result = api_instance.list_payor_account_signature(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->list_payor_account_signature: #{e}"
end
```

#### Using the list_payor_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountSignatureListVBAResponse>, Integer, Hash)> list_payor_account_signature_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PayorAccountSignature
  data, status_code, headers = api_instance.list_payor_account_signature_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountSignatureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->list_payor_account_signature_with_http_info: #{e}"
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

[**PayorAccountSignatureListVBAResponse**](PayorAccountSignatureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_payor_account_signature

> <MultiCodeResponseListVBAResponse> update_batch_payor_account_signature(vbasoftware_database, payor_account_signature)

Create or Update Batch PayorAccountSignature

Create or Update multiple PayorAccountSignature at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PayorAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_signature = [Vba::PayorAccountSignature.new({payor_account_signature_key: 37, effective_date: Time.now, payor_account_key: 37, required: false, signature_key: 37})] # Array<PayorAccountSignature> | 

begin
  # Create or Update Batch PayorAccountSignature
  result = api_instance.update_batch_payor_account_signature(vbasoftware_database, payor_account_signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->update_batch_payor_account_signature: #{e}"
end
```

#### Using the update_batch_payor_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature)

```ruby
begin
  # Create or Update Batch PayorAccountSignature
  data, status_code, headers = api_instance.update_batch_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->update_batch_payor_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_signature** | [**Array&lt;PayorAccountSignature&gt;**](PayorAccountSignature.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_payor_account_signature

> <PayorAccountSignatureVBAResponse> update_payor_account_signature(vbasoftware_database, payor_account_signature_key, payor_account_signature)

Update PayorAccountSignature

Updates a specific PayorAccountSignature.

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

api_instance = Vba::PayorAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
payor_account_signature_key = 56 # Integer | PayorAccountSignature Key
payor_account_signature = Vba::PayorAccountSignature.new({payor_account_signature_key: 37, effective_date: Time.now, payor_account_key: 37, required: false, signature_key: 37}) # PayorAccountSignature | 

begin
  # Update PayorAccountSignature
  result = api_instance.update_payor_account_signature(vbasoftware_database, payor_account_signature_key, payor_account_signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->update_payor_account_signature: #{e}"
end
```

#### Using the update_payor_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PayorAccountSignatureVBAResponse>, Integer, Hash)> update_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature_key, payor_account_signature)

```ruby
begin
  # Update PayorAccountSignature
  data, status_code, headers = api_instance.update_payor_account_signature_with_http_info(vbasoftware_database, payor_account_signature_key, payor_account_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PayorAccountSignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PayorAccountSignaturesApi->update_payor_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **payor_account_signature_key** | **Integer** | PayorAccountSignature Key |  |
| **payor_account_signature** | [**PayorAccountSignature**](PayorAccountSignature.md) |  |  |

### Return type

[**PayorAccountSignatureVBAResponse**](PayorAccountSignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

