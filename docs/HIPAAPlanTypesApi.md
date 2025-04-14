# Vba::HIPAAPlanTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_plan_type**](HIPAAPlanTypesApi.md#create_hipaa_plan_type) | **POST** /hipaa-plan-types | Create HIPAAPlanType |
| [**delete_hipaa_plan_type**](HIPAAPlanTypesApi.md#delete_hipaa_plan_type) | **DELETE** /hipaa-plan-types/{hIPAACode} | Delete HIPAAPlanType |
| [**get_hipaa_plan_type**](HIPAAPlanTypesApi.md#get_hipaa_plan_type) | **GET** /hipaa-plan-types/{hIPAACode} | Get HIPAAPlanType |
| [**list_hipaa_plan_type**](HIPAAPlanTypesApi.md#list_hipaa_plan_type) | **GET** /hipaa-plan-types | List HIPAAPlanType |
| [**update_batch_hipaa_plan_type**](HIPAAPlanTypesApi.md#update_batch_hipaa_plan_type) | **PUT** /hipaa-plan-types-batch | Create or Update Batch HIPAAPlanType |
| [**update_hipaa_plan_type**](HIPAAPlanTypesApi.md#update_hipaa_plan_type) | **PUT** /hipaa-plan-types/{hIPAACode} | Update HIPAAPlanType |


## create_hipaa_plan_type

> <HIPAAPlanTypeVBAResponse> create_hipaa_plan_type(vbasoftware_database, hipaa_plan_type)

Create HIPAAPlanType

Creates a new HIPAAPlanType

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

api_instance = Vba::HIPAAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_plan_type = Vba::HIPAAPlanType.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAPlanType | 

begin
  # Create HIPAAPlanType
  result = api_instance.create_hipaa_plan_type(vbasoftware_database, hipaa_plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->create_hipaa_plan_type: #{e}"
end
```

#### Using the create_hipaa_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAPlanTypeVBAResponse>, Integer, Hash)> create_hipaa_plan_type_with_http_info(vbasoftware_database, hipaa_plan_type)

```ruby
begin
  # Create HIPAAPlanType
  data, status_code, headers = api_instance.create_hipaa_plan_type_with_http_info(vbasoftware_database, hipaa_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAPlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->create_hipaa_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_plan_type** | [**HIPAAPlanType**](HIPAAPlanType.md) |  |  |

### Return type

[**HIPAAPlanTypeVBAResponse**](HIPAAPlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_plan_type

> delete_hipaa_plan_type(vbasoftware_database, h_ipaa_code)

Delete HIPAAPlanType

Deletes an HIPAAPlanType

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

api_instance = Vba::HIPAAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAAPlanType
  api_instance.delete_hipaa_plan_type(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->delete_hipaa_plan_type: #{e}"
end
```

#### Using the delete_hipaa_plan_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_plan_type_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAAPlanType
  data, status_code, headers = api_instance.delete_hipaa_plan_type_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->delete_hipaa_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_hipaa_plan_type

> <HIPAAPlanTypeVBAResponse> get_hipaa_plan_type(vbasoftware_database, h_ipaa_code)

Get HIPAAPlanType

Gets HIPAAPlanType

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

api_instance = Vba::HIPAAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAAPlanType
  result = api_instance.get_hipaa_plan_type(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->get_hipaa_plan_type: #{e}"
end
```

#### Using the get_hipaa_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAPlanTypeVBAResponse>, Integer, Hash)> get_hipaa_plan_type_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAAPlanType
  data, status_code, headers = api_instance.get_hipaa_plan_type_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAPlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->get_hipaa_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAAPlanTypeVBAResponse**](HIPAAPlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_plan_type

> <HIPAAPlanTypeListVBAResponse> list_hipaa_plan_type(vbasoftware_database)

List HIPAAPlanType

Lists all HIPAAPlanType given a specific 

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

api_instance = Vba::HIPAAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAAPlanType
  result = api_instance.list_hipaa_plan_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->list_hipaa_plan_type: #{e}"
end
```

#### Using the list_hipaa_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAPlanTypeListVBAResponse>, Integer, Hash)> list_hipaa_plan_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAAPlanType
  data, status_code, headers = api_instance.list_hipaa_plan_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAPlanTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->list_hipaa_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAAPlanTypeListVBAResponse**](HIPAAPlanTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_plan_type

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_plan_type(vbasoftware_database, hipaa_plan_type)

Create or Update Batch HIPAAPlanType

Create or Update multiple HIPAAPlanType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_plan_type = [Vba::HIPAAPlanType.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAAPlanType> | 

begin
  # Create or Update Batch HIPAAPlanType
  result = api_instance.update_batch_hipaa_plan_type(vbasoftware_database, hipaa_plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->update_batch_hipaa_plan_type: #{e}"
end
```

#### Using the update_batch_hipaa_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_plan_type_with_http_info(vbasoftware_database, hipaa_plan_type)

```ruby
begin
  # Create or Update Batch HIPAAPlanType
  data, status_code, headers = api_instance.update_batch_hipaa_plan_type_with_http_info(vbasoftware_database, hipaa_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->update_batch_hipaa_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_plan_type** | [**Array&lt;HIPAAPlanType&gt;**](HIPAAPlanType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_plan_type

> <HIPAAPlanTypeVBAResponse> update_hipaa_plan_type(vbasoftware_database, h_ipaa_code, hipaa_plan_type)

Update HIPAAPlanType

Updates a specific HIPAAPlanType.

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

api_instance = Vba::HIPAAPlanTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_plan_type = Vba::HIPAAPlanType.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAAPlanType | 

begin
  # Update HIPAAPlanType
  result = api_instance.update_hipaa_plan_type(vbasoftware_database, h_ipaa_code, hipaa_plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->update_hipaa_plan_type: #{e}"
end
```

#### Using the update_hipaa_plan_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAAPlanTypeVBAResponse>, Integer, Hash)> update_hipaa_plan_type_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_plan_type)

```ruby
begin
  # Update HIPAAPlanType
  data, status_code, headers = api_instance.update_hipaa_plan_type_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAAPlanTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAAPlanTypesApi->update_hipaa_plan_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_plan_type** | [**HIPAAPlanType**](HIPAAPlanType.md) |  |  |

### Return type

[**HIPAAPlanTypeVBAResponse**](HIPAAPlanTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

