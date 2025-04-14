# Vba::ProviderSpecialtyApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_provider_specialty**](ProviderSpecialtyApi.md#create_batch_provider_specialty) | **PUT** /providers/{providerId}/specialties-batch | Create Batch ProviderSpecialty |
| [**create_provider_specialty**](ProviderSpecialtyApi.md#create_provider_specialty) | **POST** /providers/{providerId}/specialties/{specialtyCode} | Create ProviderSpecialty |
| [**delete_provider_specialty**](ProviderSpecialtyApi.md#delete_provider_specialty) | **DELETE** /providers/{providerId}/specialties/{specialtyCode} | Delete ProviderSpecialty |
| [**get_provider_specialty**](ProviderSpecialtyApi.md#get_provider_specialty) | **GET** /providers/{providerId}/specialties/{specialtyCode} | Get ProviderSpecialty |
| [**list_provider_specialties_for_provider**](ProviderSpecialtyApi.md#list_provider_specialties_for_provider) | **GET** /providers/{providerId}/specialties | List ProviderSpecialty by Provider |


## create_batch_provider_specialty

> <MultiCodeResponseListVBAResponse> create_batch_provider_specialty(vbasoftware_database, provider_id, provider_specialty)

Create Batch ProviderSpecialty

Creates multiple ProviderSpecialties at one time.

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

api_instance = Vba::ProviderSpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider id
provider_specialty = [Vba::ProviderSpecialty.new({provider_id: 'provider_id_example', specialty_code: 'specialty_code_example'})] # Array<ProviderSpecialty> | 

begin
  # Create Batch ProviderSpecialty
  result = api_instance.create_batch_provider_specialty(vbasoftware_database, provider_id, provider_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->create_batch_provider_specialty: #{e}"
end
```

#### Using the create_batch_provider_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_batch_provider_specialty_with_http_info(vbasoftware_database, provider_id, provider_specialty)

```ruby
begin
  # Create Batch ProviderSpecialty
  data, status_code, headers = api_instance.create_batch_provider_specialty_with_http_info(vbasoftware_database, provider_id, provider_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->create_batch_provider_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider id |  |
| **provider_specialty** | [**Array&lt;ProviderSpecialty&gt;**](ProviderSpecialty.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_provider_specialty

> <ProviderSpecialtyVBAResponse> create_provider_specialty(vbasoftware_database, provider_id, specialty_code)

Create ProviderSpecialty

Creates a new ProviderSpecialty by assigning an existing Specialty to a Provider.

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

api_instance = Vba::ProviderSpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider id
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Create ProviderSpecialty
  result = api_instance.create_provider_specialty(vbasoftware_database, provider_id, specialty_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->create_provider_specialty: #{e}"
end
```

#### Using the create_provider_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSpecialtyVBAResponse>, Integer, Hash)> create_provider_specialty_with_http_info(vbasoftware_database, provider_id, specialty_code)

```ruby
begin
  # Create ProviderSpecialty
  data, status_code, headers = api_instance.create_provider_specialty_with_http_info(vbasoftware_database, provider_id, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->create_provider_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider id |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

[**ProviderSpecialtyVBAResponse**](ProviderSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_provider_specialty

> delete_provider_specialty(vbasoftware_database, provider_id, specialty_code)

Delete ProviderSpecialty

Deletes an ProviderSpecialty

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

api_instance = Vba::ProviderSpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider id
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Delete ProviderSpecialty
  api_instance.delete_provider_specialty(vbasoftware_database, provider_id, specialty_code)
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->delete_provider_specialty: #{e}"
end
```

#### Using the delete_provider_specialty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_specialty_with_http_info(vbasoftware_database, provider_id, specialty_code)

```ruby
begin
  # Delete ProviderSpecialty
  data, status_code, headers = api_instance.delete_provider_specialty_with_http_info(vbasoftware_database, provider_id, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->delete_provider_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider id |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_specialty

> <ProviderSpecialtyVBAResponse> get_provider_specialty(vbasoftware_database, provider_id, specialty_code)

Get ProviderSpecialty

Gets ProviderSpecialty

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

api_instance = Vba::ProviderSpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider id
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Get ProviderSpecialty
  result = api_instance.get_provider_specialty(vbasoftware_database, provider_id, specialty_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->get_provider_specialty: #{e}"
end
```

#### Using the get_provider_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSpecialtyVBAResponse>, Integer, Hash)> get_provider_specialty_with_http_info(vbasoftware_database, provider_id, specialty_code)

```ruby
begin
  # Get ProviderSpecialty
  data, status_code, headers = api_instance.get_provider_specialty_with_http_info(vbasoftware_database, provider_id, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->get_provider_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider id |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

[**ProviderSpecialtyVBAResponse**](ProviderSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_specialties_for_provider

> <ProviderSpecialtyListVBAResponse> list_provider_specialties_for_provider(vbasoftware_database, provider_id)

List ProviderSpecialty by Provider

Gets a List of ProviderSpecialty for a given Provider ID

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

api_instance = Vba::ProviderSpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider id

begin
  # List ProviderSpecialty by Provider
  result = api_instance.list_provider_specialties_for_provider(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->list_provider_specialties_for_provider: #{e}"
end
```

#### Using the list_provider_specialties_for_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderSpecialtyListVBAResponse>, Integer, Hash)> list_provider_specialties_for_provider_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderSpecialty by Provider
  data, status_code, headers = api_instance.list_provider_specialties_for_provider_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderSpecialtyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderSpecialtyApi->list_provider_specialties_for_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider id |  |

### Return type

[**ProviderSpecialtyListVBAResponse**](ProviderSpecialtyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

