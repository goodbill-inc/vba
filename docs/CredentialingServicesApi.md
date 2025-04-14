# Vba::CredentialingServicesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cred_service**](CredentialingServicesApi.md#create_cred_service) | **POST** /credentialing-services | Create CredService |
| [**delete_cred_service**](CredentialingServicesApi.md#delete_cred_service) | **DELETE** /credentialing-services/{credServiceKey} | Delete CredService |
| [**get_cred_service**](CredentialingServicesApi.md#get_cred_service) | **GET** /credentialing-services/{credServiceKey} | Get CredService |
| [**list_cred_service**](CredentialingServicesApi.md#list_cred_service) | **GET** /credentialing-services | List CredService |
| [**update_batch_cred_service**](CredentialingServicesApi.md#update_batch_cred_service) | **PUT** /credentialing-services-batch | Create or Update Batch CredService |
| [**update_cred_service**](CredentialingServicesApi.md#update_cred_service) | **PUT** /credentialing-services/{credServiceKey} | Update CredService |


## create_cred_service

> <CredServiceVBAResponse> create_cred_service(vbasoftware_database, cred_service)

Create CredService

Creates a new CredService

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

api_instance = Vba::CredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_service = Vba::CredService.new({cred_service_key: 37}) # CredService | 

begin
  # Create CredService
  result = api_instance.create_cred_service(vbasoftware_database, cred_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->create_cred_service: #{e}"
end
```

#### Using the create_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredServiceVBAResponse>, Integer, Hash)> create_cred_service_with_http_info(vbasoftware_database, cred_service)

```ruby
begin
  # Create CredService
  data, status_code, headers = api_instance.create_cred_service_with_http_info(vbasoftware_database, cred_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->create_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_service** | [**CredService**](CredService.md) |  |  |

### Return type

[**CredServiceVBAResponse**](CredServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cred_service

> delete_cred_service(vbasoftware_database, cred_service_key)

Delete CredService

Deletes an CredService

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

api_instance = Vba::CredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_service_key = 56 # Integer | CredService Key

begin
  # Delete CredService
  api_instance.delete_cred_service(vbasoftware_database, cred_service_key)
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->delete_cred_service: #{e}"
end
```

#### Using the delete_cred_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cred_service_with_http_info(vbasoftware_database, cred_service_key)

```ruby
begin
  # Delete CredService
  data, status_code, headers = api_instance.delete_cred_service_with_http_info(vbasoftware_database, cred_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->delete_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_service_key** | **Integer** | CredService Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cred_service

> <CredServiceVBAResponse> get_cred_service(vbasoftware_database, cred_service_key)

Get CredService

Gets CredService

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

api_instance = Vba::CredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_service_key = 56 # Integer | CredService Key

begin
  # Get CredService
  result = api_instance.get_cred_service(vbasoftware_database, cred_service_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->get_cred_service: #{e}"
end
```

#### Using the get_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredServiceVBAResponse>, Integer, Hash)> get_cred_service_with_http_info(vbasoftware_database, cred_service_key)

```ruby
begin
  # Get CredService
  data, status_code, headers = api_instance.get_cred_service_with_http_info(vbasoftware_database, cred_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->get_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_service_key** | **Integer** | CredService Key |  |

### Return type

[**CredServiceVBAResponse**](CredServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cred_service

> <CredServiceListVBAResponse> list_cred_service(vbasoftware_database, opts)

List CredService

Lists all CredService

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

api_instance = Vba::CredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CredService
  result = api_instance.list_cred_service(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->list_cred_service: #{e}"
end
```

#### Using the list_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredServiceListVBAResponse>, Integer, Hash)> list_cred_service_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CredService
  data, status_code, headers = api_instance.list_cred_service_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredServiceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->list_cred_service_with_http_info: #{e}"
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

[**CredServiceListVBAResponse**](CredServiceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cred_service

> <MultiCodeResponseListVBAResponse> update_batch_cred_service(vbasoftware_database, cred_service)

Create or Update Batch CredService

Create or Update multiple CredService at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_service = [Vba::CredService.new({cred_service_key: 37})] # Array<CredService> | 

begin
  # Create or Update Batch CredService
  result = api_instance.update_batch_cred_service(vbasoftware_database, cred_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->update_batch_cred_service: #{e}"
end
```

#### Using the update_batch_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cred_service_with_http_info(vbasoftware_database, cred_service)

```ruby
begin
  # Create or Update Batch CredService
  data, status_code, headers = api_instance.update_batch_cred_service_with_http_info(vbasoftware_database, cred_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->update_batch_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_service** | [**Array&lt;CredService&gt;**](CredService.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cred_service

> <CredServiceVBAResponse> update_cred_service(vbasoftware_database, cred_service_key, cred_service)

Update CredService

Updates a specific CredService.

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

api_instance = Vba::CredentialingServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cred_service_key = 56 # Integer | CredService Key
cred_service = Vba::CredService.new({cred_service_key: 37}) # CredService | 

begin
  # Update CredService
  result = api_instance.update_cred_service(vbasoftware_database, cred_service_key, cred_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->update_cred_service: #{e}"
end
```

#### Using the update_cred_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CredServiceVBAResponse>, Integer, Hash)> update_cred_service_with_http_info(vbasoftware_database, cred_service_key, cred_service)

```ruby
begin
  # Update CredService
  data, status_code, headers = api_instance.update_cred_service_with_http_info(vbasoftware_database, cred_service_key, cred_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CredServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CredentialingServicesApi->update_cred_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cred_service_key** | **Integer** | CredService Key |  |
| **cred_service** | [**CredService**](CredService.md) |  |  |

### Return type

[**CredServiceVBAResponse**](CredServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

