# Vba::ProviderCredentialingLicensesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_cred_license**](ProviderCredentialingLicensesApi.md#create_provider_cred_license) | **POST** /provider-credentialing/{providerCredKey}/licenses | Create ProviderCredLicense |
| [**delete_provider_cred_license**](ProviderCredentialingLicensesApi.md#delete_provider_cred_license) | **DELETE** /provider-credentialing/{providerCredKey}/licenses/{providerCredLicenseKey} | Delete ProviderCredLicense |
| [**get_provider_cred_license**](ProviderCredentialingLicensesApi.md#get_provider_cred_license) | **GET** /provider-credentialing/{providerCredKey}/licenses/{providerCredLicenseKey} | Get ProviderCredLicense |
| [**list_provider_cred_license**](ProviderCredentialingLicensesApi.md#list_provider_cred_license) | **GET** /provider-credentialing/{providerCredKey}/licenses | List ProviderCredLicense |
| [**update_batch_provider_cred_license**](ProviderCredentialingLicensesApi.md#update_batch_provider_cred_license) | **PUT** /provider-credentialing/{providerCredKey}/licenses-batch | Create or Update Batch ProviderCredLicense |
| [**update_provider_cred_license**](ProviderCredentialingLicensesApi.md#update_provider_cred_license) | **PUT** /provider-credentialing/{providerCredKey}/licenses/{providerCredLicenseKey} | Update ProviderCredLicense |


## create_provider_cred_license

> <ProviderCredLicenseVBAResponse> create_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license)

Create ProviderCredLicense

Creates a new ProviderCredLicense

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

api_instance = Vba::ProviderCredentialingLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_license = Vba::ProviderCredLicense.new({provider_cred_license_key: 37, provider_cred_key: 37}) # ProviderCredLicense | 

begin
  # Create ProviderCredLicense
  result = api_instance.create_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->create_provider_cred_license: #{e}"
end
```

#### Using the create_provider_cred_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredLicenseVBAResponse>, Integer, Hash)> create_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license)

```ruby
begin
  # Create ProviderCredLicense
  data, status_code, headers = api_instance.create_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredLicenseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->create_provider_cred_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_license** | [**ProviderCredLicense**](ProviderCredLicense.md) |  |  |

### Return type

[**ProviderCredLicenseVBAResponse**](ProviderCredLicenseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_cred_license

> delete_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license_key)

Delete ProviderCredLicense

Deletes an ProviderCredLicense

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

api_instance = Vba::ProviderCredentialingLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_license_key = 56 # Integer | ProviderCredLicense Key

begin
  # Delete ProviderCredLicense
  api_instance.delete_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->delete_provider_cred_license: #{e}"
end
```

#### Using the delete_provider_cred_license_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license_key)

```ruby
begin
  # Delete ProviderCredLicense
  data, status_code, headers = api_instance.delete_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->delete_provider_cred_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_license_key** | **Integer** | ProviderCredLicense Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_cred_license

> <ProviderCredLicenseVBAResponse> get_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license_key)

Get ProviderCredLicense

Gets ProviderCredLicense

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

api_instance = Vba::ProviderCredentialingLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_license_key = 56 # Integer | ProviderCredLicense Key

begin
  # Get ProviderCredLicense
  result = api_instance.get_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->get_provider_cred_license: #{e}"
end
```

#### Using the get_provider_cred_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredLicenseVBAResponse>, Integer, Hash)> get_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license_key)

```ruby
begin
  # Get ProviderCredLicense
  data, status_code, headers = api_instance.get_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredLicenseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->get_provider_cred_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_license_key** | **Integer** | ProviderCredLicense Key |  |

### Return type

[**ProviderCredLicenseVBAResponse**](ProviderCredLicenseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_cred_license

> <ProviderCredLicenseListVBAResponse> list_provider_cred_license(vbasoftware_database, provider_cred_key, opts)

List ProviderCredLicense

Lists all ProviderCredLicense for the given providerCredKey

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

api_instance = Vba::ProviderCredentialingLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderCredLicense
  result = api_instance.list_provider_cred_license(vbasoftware_database, provider_cred_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->list_provider_cred_license: #{e}"
end
```

#### Using the list_provider_cred_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredLicenseListVBAResponse>, Integer, Hash)> list_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, opts)

```ruby
begin
  # List ProviderCredLicense
  data, status_code, headers = api_instance.list_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredLicenseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->list_provider_cred_license_with_http_info: #{e}"
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

[**ProviderCredLicenseListVBAResponse**](ProviderCredLicenseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_cred_license

> <MultiCodeResponseListVBAResponse> update_batch_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license)

Create or Update Batch ProviderCredLicense

Create or Update multiple ProviderCredLicense at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderCredentialingLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_license = [Vba::ProviderCredLicense.new({provider_cred_license_key: 37, provider_cred_key: 37})] # Array<ProviderCredLicense> | 

begin
  # Create or Update Batch ProviderCredLicense
  result = api_instance.update_batch_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->update_batch_provider_cred_license: #{e}"
end
```

#### Using the update_batch_provider_cred_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license)

```ruby
begin
  # Create or Update Batch ProviderCredLicense
  data, status_code, headers = api_instance.update_batch_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->update_batch_provider_cred_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_license** | [**Array&lt;ProviderCredLicense&gt;**](ProviderCredLicense.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_cred_license

> <ProviderCredLicenseVBAResponse> update_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license_key, provider_cred_license)

Update ProviderCredLicense

Updates a specific ProviderCredLicense.

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

api_instance = Vba::ProviderCredentialingLicensesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_cred_key = 56 # Integer | ProviderCred Key
provider_cred_license_key = 56 # Integer | ProviderCredLicense Key
provider_cred_license = Vba::ProviderCredLicense.new({provider_cred_license_key: 37, provider_cred_key: 37}) # ProviderCredLicense | 

begin
  # Update ProviderCredLicense
  result = api_instance.update_provider_cred_license(vbasoftware_database, provider_cred_key, provider_cred_license_key, provider_cred_license)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->update_provider_cred_license: #{e}"
end
```

#### Using the update_provider_cred_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderCredLicenseVBAResponse>, Integer, Hash)> update_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license_key, provider_cred_license)

```ruby
begin
  # Update ProviderCredLicense
  data, status_code, headers = api_instance.update_provider_cred_license_with_http_info(vbasoftware_database, provider_cred_key, provider_cred_license_key, provider_cred_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderCredLicenseVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderCredentialingLicensesApi->update_provider_cred_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_cred_key** | **Integer** | ProviderCred Key |  |
| **provider_cred_license_key** | **Integer** | ProviderCredLicense Key |  |
| **provider_cred_license** | [**ProviderCredLicense**](ProviderCredLicense.md) |  |  |

### Return type

[**ProviderCredLicenseVBAResponse**](ProviderCredLicenseVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

