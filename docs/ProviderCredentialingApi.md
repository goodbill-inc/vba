# Vba::ProviderCredentialingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred**](ProviderCredentialingApi.md#create_provider_cred) | **POST** /providers/{providerID}/credentialing | Create ProviderCred |
| [**delete_provider_cred**](ProviderCredentialingApi.md#delete_provider_cred) | **DELETE** /providers/{providerID}/credentialing/{providerCredKey} | Delete ProviderCred |
| [**get_provider_cred**](ProviderCredentialingApi.md#get_provider_cred) | **GET** /providers/{providerID}/credentialing/{providerCredKey} | Get ProviderCred |
| [**list_provider_cred**](ProviderCredentialingApi.md#list_provider_cred) | **GET** /providers/{providerID}/credentialing | List ProviderCred |
| [**update_batch_provider_cred**](ProviderCredentialingApi.md#update_batch_provider_cred) | **PUT** /providers/{providerID}/credentialing-batch | Create or Update Batch ProviderCred |
| [**update_provider_cred**](ProviderCredentialingApi.md#update_provider_cred) | **PUT** /providers/{providerID}/credentialing/{providerCredKey} | Update ProviderCred |


## create_provider_cred

> <ProviderCredVBAResponse> create_provider_cred(vbasoftware_database, provider_id, provider_cred)

Create ProviderCred

Creates a new ProviderCred

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

api_instance = Vba::ProviderCredentialingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_cred = Vba::ProviderCred.new({provider_cred_key: 37, cred_type_key: 37, effective_date: Time.now, provider_id: 'provider_id_example'}) # ProviderCred | 

begin
  # Create ProviderCred
  result = api_instance.create_provider_cred(vbasoftware_database, provider_id, provider_cred)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->create_provider_cred: #{e}"
end
```

#### Using the create_provider_cred_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredVBAResponse>, Integer, Hash)> create_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred)

```ruby
begin
  # Create ProviderCred
  data, status_code, headers = api_instance.create_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->create_provider_cred_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_cred** | [**ProviderCred**](ProviderCred.md) |  |  |

### Return type

[**ProviderCredVBAResponse**](ProviderCredVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred

> delete_provider_cred(vbasoftware_database, provider_id, provider_cred_key)

Delete ProviderCred

Deletes an ProviderCred

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

api_instance = Vba::ProviderCredentialingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_cred_key = 56 # Integer | ProviderCred Key

begin
  # Delete ProviderCred
  api_instance.delete_provider_cred(vbasoftware_database, provider_id, provider_cred_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->delete_provider_cred: #{e}"
end
```

#### Using the delete_provider_cred_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred_key)

```ruby
begin
  # Delete ProviderCred
  data, status_code, headers = api_instance.delete_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->delete_provider_cred_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred

> <ProviderCredVBAResponse> get_provider_cred(vbasoftware_database, provider_id, provider_cred_key)

Get ProviderCred

Gets ProviderCred

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

api_instance = Vba::ProviderCredentialingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_cred_key = 56 # Integer | ProviderCred Key

begin
  # Get ProviderCred
  result = api_instance.get_provider_cred(vbasoftware_database, provider_id, provider_cred_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->get_provider_cred: #{e}"
end
```

#### Using the get_provider_cred_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredVBAResponse>, Integer, Hash)> get_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred_key)

```ruby
begin
  # Get ProviderCred
  data, status_code, headers = api_instance.get_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->get_provider_cred_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |

### Return type

[**ProviderCredVBAResponse**](ProviderCredVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred

> <ProviderCredListVBAResponse> list_provider_cred(vbasoftware_database, provider_id, opts)

List ProviderCred

Lists all ProviderCred for the given providerID

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

api_instance = Vba::ProviderCredentialingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCred
  result = api_instance.list_provider_cred(vbasoftware_database, provider_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->list_provider_cred: #{e}"
end
```

#### Using the list_provider_cred_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredListVBAResponse>, Integer, Hash)> list_provider_cred_with_http_info(vbasoftware_database, provider_id, opts)

```ruby
begin
  # List ProviderCred
  data, status_code, headers = api_instance.list_provider_cred_with_http_info(vbasoftware_database, provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->list_provider_cred_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderCredListVBAResponse**](ProviderCredListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred(vbasoftware_database, provider_id, provider_cred)

Create or Update Batch ProviderCred

Create or Update multiple ProviderCred at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_cred = [Vba::ProviderCred.new({provider_cred_key: 37, cred_type_key: 37, effective_date: Time.now, provider_id: 'provider_id_example'})] # Array<ProviderCred> | 

begin
  # Create or Update Batch ProviderCred
  result = api_instance.update_batch_provider_cred(vbasoftware_database, provider_id, provider_cred)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->update_batch_provider_cred: #{e}"
end
```

#### Using the update_batch_provider_cred_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred)

```ruby
begin
  # Create or Update Batch ProviderCred
  data, status_code, headers = api_instance.update_batch_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->update_batch_provider_cred_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_cred** | [**Array&lt;ProviderCred&gt;**](ProviderCred.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred

> <ProviderCredVBAResponse> update_provider_cred(vbasoftware_database, provider_id, provider_cred_key, provider_cred)

Update ProviderCred

Updates a specific ProviderCred.

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

api_instance = Vba::ProviderCredentialingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred = Vba::ProviderCred.new({provider_cred_key: 37, cred_type_key: 37, effective_date: Time.now, provider_id: 'provider_id_example'}) # ProviderCred | 

begin
  # Update ProviderCred
  result = api_instance.update_provider_cred(vbasoftware_database, provider_id, provider_cred_key, provider_cred)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->update_provider_cred: #{e}"
end
```

#### Using the update_provider_cred_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredVBAResponse>, Integer, Hash)> update_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred_key, provider_cred)

```ruby
begin
  # Update ProviderCred
  data, status_code, headers = api_instance.update_provider_cred_with_http_info(vbasoftware_database, provider_id, provider_cred_key, provider_cred)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingApi->update_provider_cred_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred** | [**ProviderCred**](ProviderCred.md) |  |  |

### Return type

[**ProviderCredVBAResponse**](ProviderCredVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

