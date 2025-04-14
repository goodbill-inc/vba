# Vba::SpecialtyApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_or_update_batch_specialty**](SpecialtyApi.md#create_or_update_batch_specialty) | **PUT** /specialties-batch | Create or Update Batch Specialty |
| [**create_specialty**](SpecialtyApi.md#create_specialty) | **POST** /specialties | Create Specialty |
| [**delete_specialty**](SpecialtyApi.md#delete_specialty) | **DELETE** /specialties/{specialtyCode} | Delete Specialty |
| [**get_specialty**](SpecialtyApi.md#get_specialty) | **GET** /specialties/{specialtyCode} | Get Specialty |
| [**list_specialty**](SpecialtyApi.md#list_specialty) | **GET** /specialties | List Specialties |
| [**update_specialty**](SpecialtyApi.md#update_specialty) | **PUT** /specialties/{specialtyCode} | Update Specialty |


## create_or_update_batch_specialty

> <MultiCodeResponseListVBAResponse> create_or_update_batch_specialty(vbasoftware_database, specialty)

Create or Update Batch Specialty

Creates or Updates multiple Specialties

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

api_instance = Vba::SpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
specialty = [Vba::Specialty.new({specialty_code: 'specialty_code_example', pcp: false, specialist: false})] # Array<Specialty> | 

begin
  # Create or Update Batch Specialty
  result = api_instance.create_or_update_batch_specialty(vbasoftware_database, specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->create_or_update_batch_specialty: #{e}"
end
```

#### Using the create_or_update_batch_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> create_or_update_batch_specialty_with_http_info(vbasoftware_database, specialty)

```ruby
begin
  # Create or Update Batch Specialty
  data, status_code, headers = api_instance.create_or_update_batch_specialty_with_http_info(vbasoftware_database, specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->create_or_update_batch_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **specialty** | [**Array&lt;Specialty&gt;**](Specialty.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## create_specialty

> <SpecialtyVBAResponse> create_specialty(vbasoftware_database, specialty)

Create Specialty

Creates a new Specialty.

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

api_instance = Vba::SpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
specialty = Vba::Specialty.new({specialty_code: 'specialty_code_example', pcp: false, specialist: false}) # Specialty | 

begin
  # Create Specialty
  result = api_instance.create_specialty(vbasoftware_database, specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->create_specialty: #{e}"
end
```

#### Using the create_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpecialtyVBAResponse>, Integer, Hash)> create_specialty_with_http_info(vbasoftware_database, specialty)

```ruby
begin
  # Create Specialty
  data, status_code, headers = api_instance.create_specialty_with_http_info(vbasoftware_database, specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->create_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **specialty** | [**Specialty**](Specialty.md) |  |  |

### Return type

[**SpecialtyVBAResponse**](SpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_specialty

> delete_specialty(vbasoftware_database, specialty_code)

Delete Specialty

Deletes an Specialty

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

api_instance = Vba::SpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Delete Specialty
  api_instance.delete_specialty(vbasoftware_database, specialty_code)
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->delete_specialty: #{e}"
end
```

#### Using the delete_specialty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_specialty_with_http_info(vbasoftware_database, specialty_code)

```ruby
begin
  # Delete Specialty
  data, status_code, headers = api_instance.delete_specialty_with_http_info(vbasoftware_database, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->delete_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_specialty

> <SpecialtyVBAResponse> get_specialty(vbasoftware_database, specialty_code)

Get Specialty

Gets Specialty

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

api_instance = Vba::SpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Get Specialty
  result = api_instance.get_specialty(vbasoftware_database, specialty_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->get_specialty: #{e}"
end
```

#### Using the get_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpecialtyVBAResponse>, Integer, Hash)> get_specialty_with_http_info(vbasoftware_database, specialty_code)

```ruby
begin
  # Get Specialty
  data, status_code, headers = api_instance.get_specialty_with_http_info(vbasoftware_database, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->get_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

[**SpecialtyVBAResponse**](SpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_specialty

> <SpecialtyListVBAResponse> list_specialty(vbasoftware_database)

List Specialties

List all Specialties

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

api_instance = Vba::SpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Specialties
  result = api_instance.list_specialty(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->list_specialty: #{e}"
end
```

#### Using the list_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpecialtyListVBAResponse>, Integer, Hash)> list_specialty_with_http_info(vbasoftware_database)

```ruby
begin
  # List Specialties
  data, status_code, headers = api_instance.list_specialty_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpecialtyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->list_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**SpecialtyListVBAResponse**](SpecialtyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_specialty

> <SpecialtyVBAResponse> update_specialty(vbasoftware_database, specialty_code, specialty)

Update Specialty

Updates a specific Specialty.

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

api_instance = Vba::SpecialtyApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
specialty_code = 'specialty_code_example' # String | Specialty Code
specialty = Vba::Specialty.new({specialty_code: 'specialty_code_example', pcp: false, specialist: false}) # Specialty | 

begin
  # Update Specialty
  result = api_instance.update_specialty(vbasoftware_database, specialty_code, specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->update_specialty: #{e}"
end
```

#### Using the update_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpecialtyVBAResponse>, Integer, Hash)> update_specialty_with_http_info(vbasoftware_database, specialty_code, specialty)

```ruby
begin
  # Update Specialty
  data, status_code, headers = api_instance.update_specialty_with_http_info(vbasoftware_database, specialty_code, specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SpecialtyApi->update_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **specialty_code** | **String** | Specialty Code |  |
| **specialty** | [**Specialty**](Specialty.md) |  |  |

### Return type

[**SpecialtyVBAResponse**](SpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

