# Vba::CapitationServicesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_service**](CapitationServicesApi.md#create_capitation_service) | **POST** /capitation-services | Create CapitationService |
| [**delete_capitation_service**](CapitationServicesApi.md#delete_capitation_service) | **DELETE** /capitation-services/{capitationServiceKey} | Delete CapitationService |
| [**get_capitation_service**](CapitationServicesApi.md#get_capitation_service) | **GET** /capitation-services/{capitationServiceKey} | Get CapitationService |
| [**list_capitation_service**](CapitationServicesApi.md#list_capitation_service) | **GET** /capitation-services | List CapitationService |
| [**update_batch_capitation_service**](CapitationServicesApi.md#update_batch_capitation_service) | **PUT** /capitation-services-batch | Create or Update Batch CapitationService |
| [**update_capitation_service**](CapitationServicesApi.md#update_capitation_service) | **PUT** /capitation-services/{capitationServiceKey} | Update CapitationService |


## create_capitation_service

> <CapitationServiceVBAResponse> create_capitation_service(vbasoftware_database, capitation_service)

Create CapitationService

Creates a new CapitationService

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

api_instance = Vba::CapitationServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service = Vba::CapitationService.new({capitation_service_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', require_pcp: false}) # CapitationService | 

begin
  # Create CapitationService
  result = api_instance.create_capitation_service(vbasoftware_database, capitation_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->create_capitation_service: #{e}"
end
```

#### Using the create_capitation_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceVBAResponse>, Integer, Hash)> create_capitation_service_with_http_info(vbasoftware_database, capitation_service)

```ruby
begin
  # Create CapitationService
  data, status_code, headers = api_instance.create_capitation_service_with_http_info(vbasoftware_database, capitation_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->create_capitation_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service** | [**CapitationService**](CapitationService.md) |  |  |

### Return type

[**CapitationServiceVBAResponse**](CapitationServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_service

> delete_capitation_service(vbasoftware_database, capitation_service_key)

Delete CapitationService

Deletes an CapitationService

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

api_instance = Vba::CapitationServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key

begin
  # Delete CapitationService
  api_instance.delete_capitation_service(vbasoftware_database, capitation_service_key)
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->delete_capitation_service: #{e}"
end
```

#### Using the delete_capitation_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_service_with_http_info(vbasoftware_database, capitation_service_key)

```ruby
begin
  # Delete CapitationService
  data, status_code, headers = api_instance.delete_capitation_service_with_http_info(vbasoftware_database, capitation_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->delete_capitation_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_service

> <CapitationServiceVBAResponse> get_capitation_service(vbasoftware_database, capitation_service_key)

Get CapitationService

Gets CapitationService

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

api_instance = Vba::CapitationServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key

begin
  # Get CapitationService
  result = api_instance.get_capitation_service(vbasoftware_database, capitation_service_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->get_capitation_service: #{e}"
end
```

#### Using the get_capitation_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceVBAResponse>, Integer, Hash)> get_capitation_service_with_http_info(vbasoftware_database, capitation_service_key)

```ruby
begin
  # Get CapitationService
  data, status_code, headers = api_instance.get_capitation_service_with_http_info(vbasoftware_database, capitation_service_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->get_capitation_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |

### Return type

[**CapitationServiceVBAResponse**](CapitationServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_service

> <CapitationServiceListVBAResponse> list_capitation_service(vbasoftware_database, opts)

List CapitationService

Lists all CapitationService

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

api_instance = Vba::CapitationServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationService
  result = api_instance.list_capitation_service(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->list_capitation_service: #{e}"
end
```

#### Using the list_capitation_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceListVBAResponse>, Integer, Hash)> list_capitation_service_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationService
  data, status_code, headers = api_instance.list_capitation_service_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->list_capitation_service_with_http_info: #{e}"
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

[**CapitationServiceListVBAResponse**](CapitationServiceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_service

> <MultiCodeResponseListVBAResponse> update_batch_capitation_service(vbasoftware_database, capitation_service)

Create or Update Batch CapitationService

Create or Update multiple CapitationService at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service = [Vba::CapitationService.new({capitation_service_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', require_pcp: false})] # Array<CapitationService> | 

begin
  # Create or Update Batch CapitationService
  result = api_instance.update_batch_capitation_service(vbasoftware_database, capitation_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->update_batch_capitation_service: #{e}"
end
```

#### Using the update_batch_capitation_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_service_with_http_info(vbasoftware_database, capitation_service)

```ruby
begin
  # Create or Update Batch CapitationService
  data, status_code, headers = api_instance.update_batch_capitation_service_with_http_info(vbasoftware_database, capitation_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->update_batch_capitation_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service** | [**Array&lt;CapitationService&gt;**](CapitationService.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_service

> <CapitationServiceVBAResponse> update_capitation_service(vbasoftware_database, capitation_service_key, capitation_service)

Update CapitationService

Updates a specific CapitationService.

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

api_instance = Vba::CapitationServicesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_service_key = 56 # Integer | CapitationService Key
capitation_service = Vba::CapitationService.new({capitation_service_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', require_pcp: false}) # CapitationService | 

begin
  # Update CapitationService
  result = api_instance.update_capitation_service(vbasoftware_database, capitation_service_key, capitation_service)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->update_capitation_service: #{e}"
end
```

#### Using the update_capitation_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationServiceVBAResponse>, Integer, Hash)> update_capitation_service_with_http_info(vbasoftware_database, capitation_service_key, capitation_service)

```ruby
begin
  # Update CapitationService
  data, status_code, headers = api_instance.update_capitation_service_with_http_info(vbasoftware_database, capitation_service_key, capitation_service)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationServiceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationServicesApi->update_capitation_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_service_key** | **Integer** | CapitationService Key |  |
| **capitation_service** | [**CapitationService**](CapitationService.md) |  |  |

### Return type

[**CapitationServiceVBAResponse**](CapitationServiceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

