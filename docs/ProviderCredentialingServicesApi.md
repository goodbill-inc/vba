# Vba::ProviderCredentialingServicesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_service**](ProviderCredentialingServicesApi.md#create_provider_cred_service) | **POST** /provider-credentialing/{providerCredKey}/services | Create ProviderCredService |
| [**delete_provider_cred_service**](ProviderCredentialingServicesApi.md#delete_provider_cred_service) | **DELETE** /provider-credentialing/{providerCredKey}/services/{credServiceKey} | Delete ProviderCredService |
| [**get_provider_cred_service**](ProviderCredentialingServicesApi.md#get_provider_cred_service) | **GET** /provider-credentialing/{providerCredKey}/services/{credServiceKey} | Get ProviderCredService |
| [**list_provider_cred_service**](ProviderCredentialingServicesApi.md#list_provider_cred_service) | **GET** /provider-credentialing/{providerCredKey}/services | List ProviderCredService |
| [**update_batch_provider_cred_service**](ProviderCredentialingServicesApi.md#update_batch_provider_cred_service) | **PUT** /provider-credentialing/{providerCredKey}/services-batch | Create or Update Batch ProviderCredService |
| [**update_provider_cred_service**](ProviderCredentialingServicesApi.md#update_provider_cred_service) | **PUT** /provider-credentialing/{providerCredKey}/services/{credServiceKey} | Update ProviderCredService |


## create_provider_cred_service

> <ProviderCredServiceVBAResponse> create_provider_cred_service(vbasoftware_database, provider_cred_key, provider_cred_service)

Create ProviderCredService

Creates a new ProviderCredService

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

api_instance = Vba::ProviderCredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_service = Vba::ProviderCredService.new({provider_cred_key: 37, cred_service_key: 37}) # ProviderCredService | 

begin
  # Create ProviderCredService
  result = api_instance.create_provider_cred_service(vbasoftware_database, provider_cred_key, provider_cred_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->create_provider_cred_service: #{e}"
end
```

#### Using the create_provider_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredServiceVBAResponse>, Integer, Hash)> create_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_service)

```ruby
begin
  # Create ProviderCredService
  data, status_code, headers = api_instance.create_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->create_provider_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_service** | [**ProviderCredService**](ProviderCredService.md) |  |  |

### Return type

[**ProviderCredServiceVBAResponse**](ProviderCredServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_service

> delete_provider_cred_service(vbasoftware_database, provider_cred_key, cred_service_key)

Delete ProviderCredService

Deletes an ProviderCredService

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

api_instance = Vba::ProviderCredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_service_key = 56 # Integer | CredService Key

begin
  # Delete ProviderCredService
  api_instance.delete_provider_cred_service(vbasoftware_database, provider_cred_key, cred_service_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->delete_provider_cred_service: #{e}"
end
```

#### Using the delete_provider_cred_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, cred_service_key)

```ruby
begin
  # Delete ProviderCredService
  data, status_code, headers = api_instance.delete_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, cred_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->delete_provider_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_service_key** | **Integer** | CredService Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_service

> <ProviderCredServiceVBAResponse> get_provider_cred_service(vbasoftware_database, provider_cred_key, cred_service_key)

Get ProviderCredService

Gets ProviderCredService

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

api_instance = Vba::ProviderCredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_service_key = 56 # Integer | CredService Key

begin
  # Get ProviderCredService
  result = api_instance.get_provider_cred_service(vbasoftware_database, provider_cred_key, cred_service_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->get_provider_cred_service: #{e}"
end
```

#### Using the get_provider_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredServiceVBAResponse>, Integer, Hash)> get_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, cred_service_key)

```ruby
begin
  # Get ProviderCredService
  data, status_code, headers = api_instance.get_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, cred_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->get_provider_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_service_key** | **Integer** | CredService Key |  |

### Return type

[**ProviderCredServiceVBAResponse**](ProviderCredServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_service

> <ProviderCredServiceListVBAResponse> list_provider_cred_service(vbasoftware_database, provider_cred_key, opts)

List ProviderCredService

Lists all ProviderCredService for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredService
  result = api_instance.list_provider_cred_service(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->list_provider_cred_service: #{e}"
end
```

#### Using the list_provider_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredServiceListVBAResponse>, Integer, Hash)> list_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredService
  data, status_code, headers = api_instance.list_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredServiceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->list_provider_cred_service_with_http_info: #{e}"
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

[**ProviderCredServiceListVBAResponse**](ProviderCredServiceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_service

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_service(vbasoftware_database, provider_cred_key, provider_cred_service)

Create or Update Batch ProviderCredService

Create or Update multiple ProviderCredService at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_service = [Vba::ProviderCredService.new({provider_cred_key: 37, cred_service_key: 37})] # Array<ProviderCredService> | 

begin
  # Create or Update Batch ProviderCredService
  result = api_instance.update_batch_provider_cred_service(vbasoftware_database, provider_cred_key, provider_cred_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->update_batch_provider_cred_service: #{e}"
end
```

#### Using the update_batch_provider_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_service)

```ruby
begin
  # Create or Update Batch ProviderCredService
  data, status_code, headers = api_instance.update_batch_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->update_batch_provider_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_service** | [**Array&lt;ProviderCredService&gt;**](ProviderCredService.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_service

> <ProviderCredServiceVBAResponse> update_provider_cred_service(vbasoftware_database, provider_cred_key, cred_service_key, provider_cred_service)

Update ProviderCredService

Updates a specific ProviderCredService.

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

api_instance = Vba::ProviderCredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
cred_service_key = 56 # Integer | CredService Key
provider_cred_service = Vba::ProviderCredService.new({provider_cred_key: 37, cred_service_key: 37}) # ProviderCredService | 

begin
  # Update ProviderCredService
  result = api_instance.update_provider_cred_service(vbasoftware_database, provider_cred_key, cred_service_key, provider_cred_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->update_provider_cred_service: #{e}"
end
```

#### Using the update_provider_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredServiceVBAResponse>, Integer, Hash)> update_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, cred_service_key, provider_cred_service)

```ruby
begin
  # Update ProviderCredService
  data, status_code, headers = api_instance.update_provider_cred_service_with_http_info(vbasoftware_database, provider_cred_key, cred_service_key, provider_cred_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingServicesApi->update_provider_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **cred_service_key** | **Integer** | CredService Key |  |
| **provider_cred_service** | [**ProviderCredService**](ProviderCredService.md) |  |  |

### Return type

[**ProviderCredServiceVBAResponse**](ProviderCredServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

