# Vba::CareCaseProvidersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_provider**](CareCaseProvidersApi.md#create_care_case_provider) | **POST** /cases/{caseKey}/providers | Create CareCaseProvider |
| [**delete_care_case_provider**](CareCaseProvidersApi.md#delete_care_case_provider) | **DELETE** /cases/{caseKey}/providers/{careCaseProviderKey} | Delete CareCaseProvider |
| [**get_care_case_provider**](CareCaseProvidersApi.md#get_care_case_provider) | **GET** /cases/{caseKey}/providers/{careCaseProviderKey} | Get CareCaseProvider |
| [**list_care_case_provider**](CareCaseProvidersApi.md#list_care_case_provider) | **GET** /cases/{caseKey}/providers | List CareCaseProvider |
| [**update_batch_care_case_provider**](CareCaseProvidersApi.md#update_batch_care_case_provider) | **PUT** /cases/{caseKey}/providers-batch | Create or Update Batch CareCaseProvider |
| [**update_care_case_provider**](CareCaseProvidersApi.md#update_care_case_provider) | **PUT** /cases/{caseKey}/providers/{careCaseProviderKey} | Update CareCaseProvider |


## create_care_case_provider

> <CareCaseProviderVBAResponse> create_care_case_provider(vbasoftware_database, case_key, care_case_provider)

Create CareCaseProvider

Creates a new CareCaseProvider

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

api_instance = Vba::CareCaseProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_provider = Vba::CareCaseProvider.new({care_case_provider_key: 37, case_key: 37}) # CareCaseProvider | 

begin
  # Create CareCaseProvider
  result = api_instance.create_care_case_provider(vbasoftware_database, case_key, care_case_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->create_care_case_provider: #{e}"
end
```

#### Using the create_care_case_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseProviderVBAResponse>, Integer, Hash)> create_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider)

```ruby
begin
  # Create CareCaseProvider
  data, status_code, headers = api_instance.create_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->create_care_case_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_provider** | [**CareCaseProvider**](CareCaseProvider.md) |  |  |

### Return type

[**CareCaseProviderVBAResponse**](CareCaseProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_provider

> delete_care_case_provider(vbasoftware_database, case_key, care_case_provider_key)

Delete CareCaseProvider

Deletes an CareCaseProvider

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

api_instance = Vba::CareCaseProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_provider_key = 56 # Integer | CareCaseProvider Key

begin
  # Delete CareCaseProvider
  api_instance.delete_care_case_provider(vbasoftware_database, case_key, care_case_provider_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->delete_care_case_provider: #{e}"
end
```

#### Using the delete_care_case_provider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider_key)

```ruby
begin
  # Delete CareCaseProvider
  data, status_code, headers = api_instance.delete_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->delete_care_case_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_provider_key** | **Integer** | CareCaseProvider Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_provider

> <CareCaseProviderVBAResponse> get_care_case_provider(vbasoftware_database, case_key, care_case_provider_key)

Get CareCaseProvider

Gets CareCaseProvider

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

api_instance = Vba::CareCaseProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_provider_key = 56 # Integer | CareCaseProvider Key

begin
  # Get CareCaseProvider
  result = api_instance.get_care_case_provider(vbasoftware_database, case_key, care_case_provider_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->get_care_case_provider: #{e}"
end
```

#### Using the get_care_case_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseProviderVBAResponse>, Integer, Hash)> get_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider_key)

```ruby
begin
  # Get CareCaseProvider
  data, status_code, headers = api_instance.get_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->get_care_case_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_provider_key** | **Integer** | CareCaseProvider Key |  |

### Return type

[**CareCaseProviderVBAResponse**](CareCaseProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_provider

> <CareCaseProviderListVBAResponse> list_care_case_provider(vbasoftware_database, case_key, opts)

List CareCaseProvider

Lists all CareCaseProvider for the given caseKey

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

api_instance = Vba::CareCaseProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseProvider
  result = api_instance.list_care_case_provider(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->list_care_case_provider: #{e}"
end
```

#### Using the list_care_case_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseProviderListVBAResponse>, Integer, Hash)> list_care_case_provider_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseProvider
  data, status_code, headers = api_instance.list_care_case_provider_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseProviderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->list_care_case_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseProviderListVBAResponse**](CareCaseProviderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_provider

> <MultiCodeResponseListVBAResponse> update_batch_care_case_provider(vbasoftware_database, case_key, care_case_provider)

Create or Update Batch CareCaseProvider

Create or Update multiple CareCaseProvider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_provider = [Vba::CareCaseProvider.new({care_case_provider_key: 37, case_key: 37})] # Array<CareCaseProvider> | 

begin
  # Create or Update Batch CareCaseProvider
  result = api_instance.update_batch_care_case_provider(vbasoftware_database, case_key, care_case_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->update_batch_care_case_provider: #{e}"
end
```

#### Using the update_batch_care_case_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider)

```ruby
begin
  # Create or Update Batch CareCaseProvider
  data, status_code, headers = api_instance.update_batch_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->update_batch_care_case_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_provider** | [**Array&lt;CareCaseProvider&gt;**](CareCaseProvider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_provider

> <CareCaseProviderVBAResponse> update_care_case_provider(vbasoftware_database, case_key, care_case_provider_key, care_case_provider)

Update CareCaseProvider

Updates a specific CareCaseProvider.

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

api_instance = Vba::CareCaseProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_provider_key = 56 # Integer | CareCaseProvider Key
care_case_provider = Vba::CareCaseProvider.new({care_case_provider_key: 37, case_key: 37}) # CareCaseProvider | 

begin
  # Update CareCaseProvider
  result = api_instance.update_care_case_provider(vbasoftware_database, case_key, care_case_provider_key, care_case_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->update_care_case_provider: #{e}"
end
```

#### Using the update_care_case_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseProviderVBAResponse>, Integer, Hash)> update_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider_key, care_case_provider)

```ruby
begin
  # Update CareCaseProvider
  data, status_code, headers = api_instance.update_care_case_provider_with_http_info(vbasoftware_database, case_key, care_case_provider_key, care_case_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseProvidersApi->update_care_case_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_provider_key** | **Integer** | CareCaseProvider Key |  |
| **care_case_provider** | [**CareCaseProvider**](CareCaseProvider.md) |  |  |

### Return type

[**CareCaseProviderVBAResponse**](CareCaseProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

