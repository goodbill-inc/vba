# Vba::ProviderCredentialingPracticesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_practice_detail**](ProviderCredentialingPracticesApi.md#create_provider_cred_practice_detail) | **POST** /provider-credentialing/{providerCredKey}/practices | Create ProviderCredPracticeDetail |
| [**delete_provider_cred_practice_detail**](ProviderCredentialingPracticesApi.md#delete_provider_cred_practice_detail) | **DELETE** /provider-credentialing/{providerCredKey}/practices/{credPracticeTypeKey} | Delete ProviderCredPracticeDetail |
| [**get_provider_cred_practice_detail**](ProviderCredentialingPracticesApi.md#get_provider_cred_practice_detail) | **GET** /provider-credentialing/{providerCredKey}/practices/{credPracticeTypeKey} | Get ProviderCredPracticeDetail |
| [**list_provider_cred_practice_detail**](ProviderCredentialingPracticesApi.md#list_provider_cred_practice_detail) | **GET** /provider-credentialing/{providerCredKey}/practices | List ProviderCredPracticeDetail |
| [**update_batch_provider_cred_practice_detail**](ProviderCredentialingPracticesApi.md#update_batch_provider_cred_practice_detail) | **PUT** /provider-credentialing/{providerCredKey}/practices-batch | Create or Update Batch ProviderCredPracticeDetail |
| [**update_provider_cred_practice_detail**](ProviderCredentialingPracticesApi.md#update_provider_cred_practice_detail) | **PUT** /provider-credentialing/{providerCredKey}/practices/{credPracticeTypeKey} | Update ProviderCredPracticeDetail |


## create_provider_cred_practice_detail

> <ProviderCredPracticeDetailVBAResponse> create_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)

Create ProviderCredPracticeDetail

Creates a new ProviderCredPracticeDetail

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

api_instance = Vba::ProviderCredentialingPracticesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_practice_detail = Vba::ProviderCredPracticeDetail.new({provider_cred_key: 37, cred_practice_type_key: 37}) # ProviderCredPracticeDetail | 

begin
  # Create ProviderCredPracticeDetail
  result = api_instance.create_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->create_provider_cred_practice_detail: #{e}"
end
```

#### Using the create_provider_cred_practice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeDetailVBAResponse>, Integer, Hash)> create_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)

```ruby
begin
  # Create ProviderCredPracticeDetail
  data, status_code, headers = api_instance.create_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->create_provider_cred_practice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_practice_detail** | [**ProviderCredPracticeDetail**](ProviderCredPracticeDetail.md) |  |  |

### Return type

[**ProviderCredPracticeDetailVBAResponse**](ProviderCredPracticeDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_practice_detail

> delete_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key)

Delete ProviderCredPracticeDetail

Deletes an ProviderCredPracticeDetail

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

api_instance = Vba::ProviderCredentialingPracticesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_practice_type_key = 56 # Integer | CredPracticeType Key

begin
  # Delete ProviderCredPracticeDetail
  api_instance.delete_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->delete_provider_cred_practice_detail: #{e}"
end
```

#### Using the delete_provider_cred_practice_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key)

```ruby
begin
  # Delete ProviderCredPracticeDetail
  data, status_code, headers = api_instance.delete_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->delete_provider_cred_practice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_practice_type_key** | **Integer** | CredPracticeType Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_practice_detail

> <ProviderCredPracticeDetailVBAResponse> get_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key)

Get ProviderCredPracticeDetail

Gets ProviderCredPracticeDetail

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

api_instance = Vba::ProviderCredentialingPracticesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_practice_type_key = 56 # Integer | CredPracticeType Key

begin
  # Get ProviderCredPracticeDetail
  result = api_instance.get_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->get_provider_cred_practice_detail: #{e}"
end
```

#### Using the get_provider_cred_practice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeDetailVBAResponse>, Integer, Hash)> get_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key)

```ruby
begin
  # Get ProviderCredPracticeDetail
  data, status_code, headers = api_instance.get_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->get_provider_cred_practice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_practice_type_key** | **Integer** | CredPracticeType Key |  |

### Return type

[**ProviderCredPracticeDetailVBAResponse**](ProviderCredPracticeDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_practice_detail

> <ProviderCredPracticeDetailListVBAResponse> list_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, opts)

List ProviderCredPracticeDetail

Lists all ProviderCredPracticeDetail for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingPracticesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredPracticeDetail
  result = api_instance.list_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->list_provider_cred_practice_detail: #{e}"
end
```

#### Using the list_provider_cred_practice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeDetailListVBAResponse>, Integer, Hash)> list_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredPracticeDetail
  data, status_code, headers = api_instance.list_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->list_provider_cred_practice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderCredPracticeDetailListVBAResponse**](ProviderCredPracticeDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_practice_detail

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)

Create or Update Batch ProviderCredPracticeDetail

Create or Update multiple ProviderCredPracticeDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingPracticesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_practice_detail = [Vba::ProviderCredPracticeDetail.new({provider_cred_key: 37, cred_practice_type_key: 37})] # Array<ProviderCredPracticeDetail> | 

begin
  # Create or Update Batch ProviderCredPracticeDetail
  result = api_instance.update_batch_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->update_batch_provider_cred_practice_detail: #{e}"
end
```

#### Using the update_batch_provider_cred_practice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)

```ruby
begin
  # Create or Update Batch ProviderCredPracticeDetail
  data, status_code, headers = api_instance.update_batch_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_practice_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->update_batch_provider_cred_practice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_practice_detail** | [**Array&lt;ProviderCredPracticeDetail&gt;**](ProviderCredPracticeDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_practice_detail

> <ProviderCredPracticeDetailVBAResponse> update_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail)

Update ProviderCredPracticeDetail

Updates a specific ProviderCredPracticeDetail.

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

api_instance = Vba::ProviderCredentialingPracticesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_practice_type_key = 56 # Integer | CredPracticeType Key
provider_cred_practice_detail = Vba::ProviderCredPracticeDetail.new({provider_cred_key: 37, cred_practice_type_key: 37}) # ProviderCredPracticeDetail | 

begin
  # Update ProviderCredPracticeDetail
  result = api_instance.update_provider_cred_practice_detail(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->update_provider_cred_practice_detail: #{e}"
end
```

#### Using the update_provider_cred_practice_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredPracticeDetailVBAResponse>, Integer, Hash)> update_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail)

```ruby
begin
  # Update ProviderCredPracticeDetail
  data, status_code, headers = api_instance.update_provider_cred_practice_detail_with_http_info(vbasoftware_database, provider_cred_key, cred_practice_type_key, provider_cred_practice_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredPracticeDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingPracticesApi->update_provider_cred_practice_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_practice_type_key** | **Integer** | CredPracticeType Key |  |
| **provider_cred_practice_detail** | [**ProviderCredPracticeDetail**](ProviderCredPracticeDetail.md) |  |  |

### Return type

[**ProviderCredPracticeDetailVBAResponse**](ProviderCredPracticeDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

