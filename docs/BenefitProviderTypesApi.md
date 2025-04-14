# Vba::BenefitProviderTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit_provider_types**](BenefitProviderTypesApi.md#create_benefit_provider_types) | **POST** /benefits/{benefitCode}/provider-types | Create BenefitProviderTypes |
| [**delete_benefit_provider_types**](BenefitProviderTypesApi.md#delete_benefit_provider_types) | **DELETE** /benefits/{benefitCode}/provider-types/{providerType} | Delete BenefitProviderTypes |
| [**get_benefit_provider_types**](BenefitProviderTypesApi.md#get_benefit_provider_types) | **GET** /benefits/{benefitCode}/provider-types/{providerType} | Get BenefitProviderTypes |
| [**list_benefit_provider_types**](BenefitProviderTypesApi.md#list_benefit_provider_types) | **GET** /benefits/{benefitCode}/provider-types | List BenefitProviderTypes |
| [**update_batch_benefit_provider_types**](BenefitProviderTypesApi.md#update_batch_benefit_provider_types) | **PUT** /benefits/{benefitCode}/provider-types-batch | Create or Update Batch BenefitProviderTypes |
| [**update_benefit_provider_types**](BenefitProviderTypesApi.md#update_benefit_provider_types) | **PUT** /benefits/{benefitCode}/provider-types/{providerType} | Update BenefitProviderTypes |


## create_benefit_provider_types

> <BenefitProviderTypesVBAResponse> create_benefit_provider_types(vbasoftware_database, benefit_code, benefit_provider_types)

Create BenefitProviderTypes

Creates a new BenefitProviderTypes

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

api_instance = Vba::BenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_provider_types = Vba::BenefitProviderTypes.new({benefit_code: 'benefit_code_example', provider_type: 'provider_type_example', exclude: false}) # BenefitProviderTypes | 

begin
  # Create BenefitProviderTypes
  result = api_instance.create_benefit_provider_types(vbasoftware_database, benefit_code, benefit_provider_types)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->create_benefit_provider_types: #{e}"
end
```

#### Using the create_benefit_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProviderTypesVBAResponse>, Integer, Hash)> create_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, benefit_provider_types)

```ruby
begin
  # Create BenefitProviderTypes
  data, status_code, headers = api_instance.create_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, benefit_provider_types)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProviderTypesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->create_benefit_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_provider_types** | [**BenefitProviderTypes**](BenefitProviderTypes.md) |  |  |

### Return type

[**BenefitProviderTypesVBAResponse**](BenefitProviderTypesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_provider_types

> delete_benefit_provider_types(vbasoftware_database, benefit_code, provider_type)

Delete BenefitProviderTypes

Deletes an BenefitProviderTypes

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

api_instance = Vba::BenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Delete BenefitProviderTypes
  api_instance.delete_benefit_provider_types(vbasoftware_database, benefit_code, provider_type)
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->delete_benefit_provider_types: #{e}"
end
```

#### Using the delete_benefit_provider_types_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, provider_type)

```ruby
begin
  # Delete BenefitProviderTypes
  data, status_code, headers = api_instance.delete_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->delete_benefit_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit_provider_types

> <BenefitProviderTypesVBAResponse> get_benefit_provider_types(vbasoftware_database, benefit_code, provider_type)

Get BenefitProviderTypes

Gets BenefitProviderTypes

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

api_instance = Vba::BenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
provider_type = 'provider_type_example' # String | Provider Type

begin
  # Get BenefitProviderTypes
  result = api_instance.get_benefit_provider_types(vbasoftware_database, benefit_code, provider_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->get_benefit_provider_types: #{e}"
end
```

#### Using the get_benefit_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProviderTypesVBAResponse>, Integer, Hash)> get_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, provider_type)

```ruby
begin
  # Get BenefitProviderTypes
  data, status_code, headers = api_instance.get_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, provider_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProviderTypesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->get_benefit_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **provider_type** | **String** | Provider Type |  |

### Return type

[**BenefitProviderTypesVBAResponse**](BenefitProviderTypesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_provider_types

> <BenefitProviderTypesListVBAResponse> list_benefit_provider_types(vbasoftware_database, benefit_code)

List BenefitProviderTypes

Lists all BenefitProviderTypes benefitCode

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

api_instance = Vba::BenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List BenefitProviderTypes
  result = api_instance.list_benefit_provider_types(vbasoftware_database, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->list_benefit_provider_types: #{e}"
end
```

#### Using the list_benefit_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProviderTypesListVBAResponse>, Integer, Hash)> list_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # List BenefitProviderTypes
  data, status_code, headers = api_instance.list_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProviderTypesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->list_benefit_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitProviderTypesListVBAResponse**](BenefitProviderTypesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefit_provider_types

> <MultiCodeResponseListVBAResponse> update_batch_benefit_provider_types(vbasoftware_database, benefit_code, benefit_provider_types)

Create or Update Batch BenefitProviderTypes

Create or Update multiple BenefitProviderTypes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_provider_types = [Vba::BenefitProviderTypes.new({benefit_code: 'benefit_code_example', provider_type: 'provider_type_example', exclude: false})] # Array<BenefitProviderTypes> | 

begin
  # Create or Update Batch BenefitProviderTypes
  result = api_instance.update_batch_benefit_provider_types(vbasoftware_database, benefit_code, benefit_provider_types)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->update_batch_benefit_provider_types: #{e}"
end
```

#### Using the update_batch_benefit_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, benefit_provider_types)

```ruby
begin
  # Create or Update Batch BenefitProviderTypes
  data, status_code, headers = api_instance.update_batch_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, benefit_provider_types)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->update_batch_benefit_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_provider_types** | [**Array&lt;BenefitProviderTypes&gt;**](BenefitProviderTypes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit_provider_types

> <BenefitProviderTypesVBAResponse> update_benefit_provider_types(vbasoftware_database, benefit_code, provider_type, benefit_provider_types)

Update BenefitProviderTypes

Updates a specific BenefitProviderTypes.

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

api_instance = Vba::BenefitProviderTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
provider_type = 'provider_type_example' # String | Provider Type
benefit_provider_types = Vba::BenefitProviderTypes.new({benefit_code: 'benefit_code_example', provider_type: 'provider_type_example', exclude: false}) # BenefitProviderTypes | 

begin
  # Update BenefitProviderTypes
  result = api_instance.update_benefit_provider_types(vbasoftware_database, benefit_code, provider_type, benefit_provider_types)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->update_benefit_provider_types: #{e}"
end
```

#### Using the update_benefit_provider_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProviderTypesVBAResponse>, Integer, Hash)> update_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, provider_type, benefit_provider_types)

```ruby
begin
  # Update BenefitProviderTypes
  data, status_code, headers = api_instance.update_benefit_provider_types_with_http_info(vbasoftware_database, benefit_code, provider_type, benefit_provider_types)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProviderTypesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProviderTypesApi->update_benefit_provider_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **provider_type** | **String** | Provider Type |  |
| **benefit_provider_types** | [**BenefitProviderTypes**](BenefitProviderTypes.md) |  |  |

### Return type

[**BenefitProviderTypesVBAResponse**](BenefitProviderTypesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

