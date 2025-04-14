# Vba::FundingAccountSignaturesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_funding_account_signature**](FundingAccountSignaturesApi.md#create_funding_account_signature) | **POST** /funding-accounts/{accountKey}/signatures | Create FundingAccountSignature |
| [**delete_funding_account_signature**](FundingAccountSignaturesApi.md#delete_funding_account_signature) | **DELETE** /funding-accounts/{accountKey}/signatures/{fundingAccountSignatureKey} | Delete FundingAccountSignature |
| [**get_funding_account_signature**](FundingAccountSignaturesApi.md#get_funding_account_signature) | **GET** /funding-accounts/{accountKey}/signatures/{fundingAccountSignatureKey} | Get FundingAccountSignature |
| [**list_funding_account_signature**](FundingAccountSignaturesApi.md#list_funding_account_signature) | **GET** /funding-accounts/{accountKey}/signatures | List FundingAccountSignature |
| [**update_batch_funding_account_signature**](FundingAccountSignaturesApi.md#update_batch_funding_account_signature) | **PUT** /funding-accounts/{accountKey}/signatures-batch | Create or Update Batch FundingAccountSignature |
| [**update_funding_account_signature**](FundingAccountSignaturesApi.md#update_funding_account_signature) | **PUT** /funding-accounts/{accountKey}/signatures/{fundingAccountSignatureKey} | Update FundingAccountSignature |


## create_funding_account_signature

> <FundingAccountSignatureVBAResponse> create_funding_account_signature(vbasoftware_database, account_key, funding_account_signature)

Create FundingAccountSignature

Creates a new FundingAccountSignature

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

api_instance = Vba::FundingAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
funding_account_signature = Vba::FundingAccountSignature.new({funding_account_signature_key: 37, account_key: 37, effective_date: Time.now, signature_key: 37}) # FundingAccountSignature | 

begin
  # Create FundingAccountSignature
  result = api_instance.create_funding_account_signature(vbasoftware_database, account_key, funding_account_signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->create_funding_account_signature: #{e}"
end
```

#### Using the create_funding_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountSignatureVBAResponse>, Integer, Hash)> create_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature)

```ruby
begin
  # Create FundingAccountSignature
  data, status_code, headers = api_instance.create_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountSignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->create_funding_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **funding_account_signature** | [**FundingAccountSignature**](FundingAccountSignature.md) |  |  |

### Return type

[**FundingAccountSignatureVBAResponse**](FundingAccountSignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_funding_account_signature

> delete_funding_account_signature(vbasoftware_database, account_key, funding_account_signature_key)

Delete FundingAccountSignature

Deletes an FundingAccountSignature

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

api_instance = Vba::FundingAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
funding_account_signature_key = 56 # Integer | FundingAccountSignature Key

begin
  # Delete FundingAccountSignature
  api_instance.delete_funding_account_signature(vbasoftware_database, account_key, funding_account_signature_key)
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->delete_funding_account_signature: #{e}"
end
```

#### Using the delete_funding_account_signature_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature_key)

```ruby
begin
  # Delete FundingAccountSignature
  data, status_code, headers = api_instance.delete_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->delete_funding_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **funding_account_signature_key** | **Integer** | FundingAccountSignature Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_funding_account_signature

> <FundingAccountSignatureVBAResponse> get_funding_account_signature(vbasoftware_database, account_key, funding_account_signature_key)

Get FundingAccountSignature

Gets FundingAccountSignature

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

api_instance = Vba::FundingAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
funding_account_signature_key = 56 # Integer | FundingAccountSignature Key

begin
  # Get FundingAccountSignature
  result = api_instance.get_funding_account_signature(vbasoftware_database, account_key, funding_account_signature_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->get_funding_account_signature: #{e}"
end
```

#### Using the get_funding_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountSignatureVBAResponse>, Integer, Hash)> get_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature_key)

```ruby
begin
  # Get FundingAccountSignature
  data, status_code, headers = api_instance.get_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountSignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->get_funding_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **funding_account_signature_key** | **Integer** | FundingAccountSignature Key |  |

### Return type

[**FundingAccountSignatureVBAResponse**](FundingAccountSignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_funding_account_signature

> <FundingAccountSignatureListVBAResponse> list_funding_account_signature(vbasoftware_database, account_key, opts)

List FundingAccountSignature

Lists all FundingAccountSignature for the given accountKey

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

api_instance = Vba::FundingAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FundingAccountSignature
  result = api_instance.list_funding_account_signature(vbasoftware_database, account_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->list_funding_account_signature: #{e}"
end
```

#### Using the list_funding_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountSignatureListVBAResponse>, Integer, Hash)> list_funding_account_signature_with_http_info(vbasoftware_database, account_key, opts)

```ruby
begin
  # List FundingAccountSignature
  data, status_code, headers = api_instance.list_funding_account_signature_with_http_info(vbasoftware_database, account_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountSignatureListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->list_funding_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**FundingAccountSignatureListVBAResponse**](FundingAccountSignatureListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_funding_account_signature

> <MultiCodeResponseListVBAResponse> update_batch_funding_account_signature(vbasoftware_database, account_key, funding_account_signature)

Create or Update Batch FundingAccountSignature

Create or Update multiple FundingAccountSignature at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FundingAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
funding_account_signature = [Vba::FundingAccountSignature.new({funding_account_signature_key: 37, account_key: 37, effective_date: Time.now, signature_key: 37})] # Array<FundingAccountSignature> | 

begin
  # Create or Update Batch FundingAccountSignature
  result = api_instance.update_batch_funding_account_signature(vbasoftware_database, account_key, funding_account_signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->update_batch_funding_account_signature: #{e}"
end
```

#### Using the update_batch_funding_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature)

```ruby
begin
  # Create or Update Batch FundingAccountSignature
  data, status_code, headers = api_instance.update_batch_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->update_batch_funding_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **funding_account_signature** | [**Array&lt;FundingAccountSignature&gt;**](FundingAccountSignature.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_funding_account_signature

> <FundingAccountSignatureVBAResponse> update_funding_account_signature(vbasoftware_database, account_key, funding_account_signature_key, funding_account_signature)

Update FundingAccountSignature

Updates a specific FundingAccountSignature.

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

api_instance = Vba::FundingAccountSignaturesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
account_key = 56 # Integer | Account Key
funding_account_signature_key = 56 # Integer | FundingAccountSignature Key
funding_account_signature = Vba::FundingAccountSignature.new({funding_account_signature_key: 37, account_key: 37, effective_date: Time.now, signature_key: 37}) # FundingAccountSignature | 

begin
  # Update FundingAccountSignature
  result = api_instance.update_funding_account_signature(vbasoftware_database, account_key, funding_account_signature_key, funding_account_signature)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->update_funding_account_signature: #{e}"
end
```

#### Using the update_funding_account_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FundingAccountSignatureVBAResponse>, Integer, Hash)> update_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature_key, funding_account_signature)

```ruby
begin
  # Update FundingAccountSignature
  data, status_code, headers = api_instance.update_funding_account_signature_with_http_info(vbasoftware_database, account_key, funding_account_signature_key, funding_account_signature)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FundingAccountSignatureVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FundingAccountSignaturesApi->update_funding_account_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **account_key** | **Integer** | Account Key |  |
| **funding_account_signature_key** | **Integer** | FundingAccountSignature Key |  |
| **funding_account_signature** | [**FundingAccountSignature**](FundingAccountSignature.md) |  |  |

### Return type

[**FundingAccountSignatureVBAResponse**](FundingAccountSignatureVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

