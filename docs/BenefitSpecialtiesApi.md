# Vba::BenefitSpecialtiesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit_specialty**](BenefitSpecialtiesApi.md#create_benefit_specialty) | **POST** /benefits/{benefitCode}/specialty-codes | Create BenefitSpecialty |
| [**delete_benefit_specialty**](BenefitSpecialtiesApi.md#delete_benefit_specialty) | **DELETE** /benefits/{benefitCode}/specialty-codes/{specialtyCode} | Delete BenefitSpecialty |
| [**get_benefit_specialty**](BenefitSpecialtiesApi.md#get_benefit_specialty) | **GET** /benefits/{benefitCode}/specialty-codes/{specialtyCode} | Get BenefitSpecialty |
| [**list_benefit_specialty**](BenefitSpecialtiesApi.md#list_benefit_specialty) | **GET** /benefits/{benefitCode}/specialty-codes | List BenefitSpecialty |
| [**update_batch_benefit_specialty**](BenefitSpecialtiesApi.md#update_batch_benefit_specialty) | **PUT** /benefits/{benefitCode}/specialty-codes-batch | Create or Update Batch BenefitSpecialty |
| [**update_benefit_specialty**](BenefitSpecialtiesApi.md#update_benefit_specialty) | **PUT** /benefits/{benefitCode}/specialty-codes/{specialtyCode} | Update BenefitSpecialty |


## create_benefit_specialty

> <BenefitSpecialtyVBAResponse> create_benefit_specialty(vbasoftware_database, benefit_code, benefit_specialty)

Create BenefitSpecialty

Creates a new BenefitSpecialty

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

api_instance = Vba::BenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_specialty = Vba::BenefitSpecialty.new({benefit_code: 'benefit_code_example', specialty_code: 'specialty_code_example', exclude: false}) # BenefitSpecialty | 

begin
  # Create BenefitSpecialty
  result = api_instance.create_benefit_specialty(vbasoftware_database, benefit_code, benefit_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->create_benefit_specialty: #{e}"
end
```

#### Using the create_benefit_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitSpecialtyVBAResponse>, Integer, Hash)> create_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, benefit_specialty)

```ruby
begin
  # Create BenefitSpecialty
  data, status_code, headers = api_instance.create_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, benefit_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->create_benefit_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_specialty** | [**BenefitSpecialty**](BenefitSpecialty.md) |  |  |

### Return type

[**BenefitSpecialtyVBAResponse**](BenefitSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_specialty

> delete_benefit_specialty(vbasoftware_database, benefit_code, specialty_code)

Delete BenefitSpecialty

Deletes an BenefitSpecialty

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

api_instance = Vba::BenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Delete BenefitSpecialty
  api_instance.delete_benefit_specialty(vbasoftware_database, benefit_code, specialty_code)
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->delete_benefit_specialty: #{e}"
end
```

#### Using the delete_benefit_specialty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, specialty_code)

```ruby
begin
  # Delete BenefitSpecialty
  data, status_code, headers = api_instance.delete_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->delete_benefit_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit_specialty

> <BenefitSpecialtyVBAResponse> get_benefit_specialty(vbasoftware_database, benefit_code, specialty_code)

Get BenefitSpecialty

Gets BenefitSpecialty

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

api_instance = Vba::BenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
specialty_code = 'specialty_code_example' # String | Specialty Code

begin
  # Get BenefitSpecialty
  result = api_instance.get_benefit_specialty(vbasoftware_database, benefit_code, specialty_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->get_benefit_specialty: #{e}"
end
```

#### Using the get_benefit_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitSpecialtyVBAResponse>, Integer, Hash)> get_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, specialty_code)

```ruby
begin
  # Get BenefitSpecialty
  data, status_code, headers = api_instance.get_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, specialty_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->get_benefit_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **specialty_code** | **String** | Specialty Code |  |

### Return type

[**BenefitSpecialtyVBAResponse**](BenefitSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_specialty

> <BenefitSpecialtyListVBAResponse> list_benefit_specialty(vbasoftware_database, benefit_code)

List BenefitSpecialty

Lists all BenefitSpecialty benefitCode

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

api_instance = Vba::BenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List BenefitSpecialty
  result = api_instance.list_benefit_specialty(vbasoftware_database, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->list_benefit_specialty: #{e}"
end
```

#### Using the list_benefit_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitSpecialtyListVBAResponse>, Integer, Hash)> list_benefit_specialty_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # List BenefitSpecialty
  data, status_code, headers = api_instance.list_benefit_specialty_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitSpecialtyListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->list_benefit_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitSpecialtyListVBAResponse**](BenefitSpecialtyListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefit_specialty

> <MultiCodeResponseListVBAResponse> update_batch_benefit_specialty(vbasoftware_database, benefit_code, benefit_specialty)

Create or Update Batch BenefitSpecialty

Create or Update multiple BenefitSpecialty at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_specialty = [Vba::BenefitSpecialty.new({benefit_code: 'benefit_code_example', specialty_code: 'specialty_code_example', exclude: false})] # Array<BenefitSpecialty> | 

begin
  # Create or Update Batch BenefitSpecialty
  result = api_instance.update_batch_benefit_specialty(vbasoftware_database, benefit_code, benefit_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->update_batch_benefit_specialty: #{e}"
end
```

#### Using the update_batch_benefit_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, benefit_specialty)

```ruby
begin
  # Create or Update Batch BenefitSpecialty
  data, status_code, headers = api_instance.update_batch_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, benefit_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->update_batch_benefit_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_specialty** | [**Array&lt;BenefitSpecialty&gt;**](BenefitSpecialty.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit_specialty

> <BenefitSpecialtyVBAResponse> update_benefit_specialty(vbasoftware_database, benefit_code, specialty_code, benefit_specialty)

Update BenefitSpecialty

Updates a specific BenefitSpecialty.

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

api_instance = Vba::BenefitSpecialtiesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
specialty_code = 'specialty_code_example' # String | Specialty Code
benefit_specialty = Vba::BenefitSpecialty.new({benefit_code: 'benefit_code_example', specialty_code: 'specialty_code_example', exclude: false}) # BenefitSpecialty | 

begin
  # Update BenefitSpecialty
  result = api_instance.update_benefit_specialty(vbasoftware_database, benefit_code, specialty_code, benefit_specialty)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->update_benefit_specialty: #{e}"
end
```

#### Using the update_benefit_specialty_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitSpecialtyVBAResponse>, Integer, Hash)> update_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, specialty_code, benefit_specialty)

```ruby
begin
  # Update BenefitSpecialty
  data, status_code, headers = api_instance.update_benefit_specialty_with_http_info(vbasoftware_database, benefit_code, specialty_code, benefit_specialty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitSpecialtyVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitSpecialtiesApi->update_benefit_specialty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **specialty_code** | **String** | Specialty Code |  |
| **benefit_specialty** | [**BenefitSpecialty**](BenefitSpecialty.md) |  |  |

### Return type

[**BenefitSpecialtyVBAResponse**](BenefitSpecialtyVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

