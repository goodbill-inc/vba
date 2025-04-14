# Vba::ProviderCLIACertificatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_clia_certificate_provider**](ProviderCLIACertificatesApi.md#create_clia_certificate_provider) | **POST** /providers/{providerID}/clia-certificates | Create CLIACertificateProvider |
| [**delete_clia_certificate_provider**](ProviderCLIACertificatesApi.md#delete_clia_certificate_provider) | **DELETE** /providers/{providerID}/clia-certificates/{certificateID}/{effectiveDate} | Delete CLIACertificateProvider |
| [**get_clia_certificate_provider**](ProviderCLIACertificatesApi.md#get_clia_certificate_provider) | **GET** /providers/{providerID}/clia-certificates/{certificateID}/{effectiveDate} | Get CLIACertificateProvider |
| [**list_clia_certificate_provider**](ProviderCLIACertificatesApi.md#list_clia_certificate_provider) | **GET** /providers/{providerID}/clia-certificates | List CLIACertificateProvider |
| [**update_batch_clia_certificate_provider**](ProviderCLIACertificatesApi.md#update_batch_clia_certificate_provider) | **PUT** /providers/{providerID}/clia-certificates-batch | Create or Update Batch CLIACertificateProvider |
| [**update_clia_certificate_provider**](ProviderCLIACertificatesApi.md#update_clia_certificate_provider) | **PUT** /providers/{providerID}/clia-certificates/{certificateID}/{effectiveDate} | Update CLIACertificateProvider |


## create_clia_certificate_provider

> <CLIACertificateProviderVBAResponse> create_clia_certificate_provider(vbasoftware_database, provider_id, clia_certificate_provider)

Create CLIACertificateProvider

Creates a new CLIACertificateProvider

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

api_instance = Vba::ProviderCLIACertificatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
clia_certificate_provider = Vba::CLIACertificateProvider.new({certificate_id: 37, provider_id: 'provider_id_example', effective_date: Time.now}) # CLIACertificateProvider | 

begin
  # Create CLIACertificateProvider
  result = api_instance.create_clia_certificate_provider(vbasoftware_database, provider_id, clia_certificate_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->create_clia_certificate_provider: #{e}"
end
```

#### Using the create_clia_certificate_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProviderVBAResponse>, Integer, Hash)> create_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, clia_certificate_provider)

```ruby
begin
  # Create CLIACertificateProvider
  data, status_code, headers = api_instance.create_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, clia_certificate_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->create_clia_certificate_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **clia_certificate_provider** | [**CLIACertificateProvider**](CLIACertificateProvider.md) |  |  |

### Return type

[**CLIACertificateProviderVBAResponse**](CLIACertificateProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_clia_certificate_provider

> delete_clia_certificate_provider(vbasoftware_database, provider_id, certificate_id, effective_date)

Delete CLIACertificateProvider

Deletes an CLIACertificateProvider

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

api_instance = Vba::ProviderCLIACertificatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
certificate_id = 56 # Integer | Certificate ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete CLIACertificateProvider
  api_instance.delete_clia_certificate_provider(vbasoftware_database, provider_id, certificate_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->delete_clia_certificate_provider: #{e}"
end
```

#### Using the delete_clia_certificate_provider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, certificate_id, effective_date)

```ruby
begin
  # Delete CLIACertificateProvider
  data, status_code, headers = api_instance.delete_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, certificate_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->delete_clia_certificate_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_clia_certificate_provider

> <CLIACertificateProviderVBAResponse> get_clia_certificate_provider(vbasoftware_database, provider_id, certificate_id, effective_date)

Get CLIACertificateProvider

Gets CLIACertificateProvider

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

api_instance = Vba::ProviderCLIACertificatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
certificate_id = 56 # Integer | Certificate ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get CLIACertificateProvider
  result = api_instance.get_clia_certificate_provider(vbasoftware_database, provider_id, certificate_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->get_clia_certificate_provider: #{e}"
end
```

#### Using the get_clia_certificate_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProviderVBAResponse>, Integer, Hash)> get_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, certificate_id, effective_date)

```ruby
begin
  # Get CLIACertificateProvider
  data, status_code, headers = api_instance.get_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, certificate_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->get_clia_certificate_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**CLIACertificateProviderVBAResponse**](CLIACertificateProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_clia_certificate_provider

> <CLIACertificateProviderListVBAResponse> list_clia_certificate_provider(vbasoftware_database, provider_id, opts)

List CLIACertificateProvider

Lists all CLIACertificateProvider for the given providerID

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

api_instance = Vba::ProviderCLIACertificatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CLIACertificateProvider
  result = api_instance.list_clia_certificate_provider(vbasoftware_database, provider_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->list_clia_certificate_provider: #{e}"
end
```

#### Using the list_clia_certificate_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProviderListVBAResponse>, Integer, Hash)> list_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, opts)

```ruby
begin
  # List CLIACertificateProvider
  data, status_code, headers = api_instance.list_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProviderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->list_clia_certificate_provider_with_http_info: #{e}"
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

[**CLIACertificateProviderListVBAResponse**](CLIACertificateProviderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_clia_certificate_provider

> <MultiCodeResponseListVBAResponse> update_batch_clia_certificate_provider(vbasoftware_database, provider_id, clia_certificate_provider)

Create or Update Batch CLIACertificateProvider

Create or Update multiple CLIACertificateProvider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCLIACertificatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
clia_certificate_provider = [Vba::CLIACertificateProvider.new({certificate_id: 37, provider_id: 'provider_id_example', effective_date: Time.now})] # Array<CLIACertificateProvider> | 

begin
  # Create or Update Batch CLIACertificateProvider
  result = api_instance.update_batch_clia_certificate_provider(vbasoftware_database, provider_id, clia_certificate_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->update_batch_clia_certificate_provider: #{e}"
end
```

#### Using the update_batch_clia_certificate_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, clia_certificate_provider)

```ruby
begin
  # Create or Update Batch CLIACertificateProvider
  data, status_code, headers = api_instance.update_batch_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, clia_certificate_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->update_batch_clia_certificate_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **clia_certificate_provider** | [**Array&lt;CLIACertificateProvider&gt;**](CLIACertificateProvider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_clia_certificate_provider

> <CLIACertificateProviderVBAResponse> update_clia_certificate_provider(vbasoftware_database, provider_id, certificate_id, effective_date, clia_certificate_provider)

Update CLIACertificateProvider

Updates a specific CLIACertificateProvider.

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

api_instance = Vba::ProviderCLIACertificatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
certificate_id = 56 # Integer | Certificate ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
clia_certificate_provider = Vba::CLIACertificateProvider.new({certificate_id: 37, provider_id: 'provider_id_example', effective_date: Time.now}) # CLIACertificateProvider | 

begin
  # Update CLIACertificateProvider
  result = api_instance.update_clia_certificate_provider(vbasoftware_database, provider_id, certificate_id, effective_date, clia_certificate_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->update_clia_certificate_provider: #{e}"
end
```

#### Using the update_clia_certificate_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CLIACertificateProviderVBAResponse>, Integer, Hash)> update_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, certificate_id, effective_date, clia_certificate_provider)

```ruby
begin
  # Update CLIACertificateProvider
  data, status_code, headers = api_instance.update_clia_certificate_provider_with_http_info(vbasoftware_database, provider_id, certificate_id, effective_date, clia_certificate_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CLIACertificateProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCLIACertificatesApi->update_clia_certificate_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **certificate_id** | **Integer** | Certificate ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **clia_certificate_provider** | [**CLIACertificateProvider**](CLIACertificateProvider.md) |  |  |

### Return type

[**CLIACertificateProviderVBAResponse**](CLIACertificateProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

