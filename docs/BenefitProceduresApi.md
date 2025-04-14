# Vba::BenefitProceduresApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit_procedures**](BenefitProceduresApi.md#create_benefit_procedures) | **POST** /benefits/{benefitCode}/procedures | Create BenefitProcedures |
| [**delete_benefit_procedures**](BenefitProceduresApi.md#delete_benefit_procedures) | **DELETE** /benefits/{benefitCode}/procedures/{fromProcedure} | Delete BenefitProcedures |
| [**get_benefit_procedures**](BenefitProceduresApi.md#get_benefit_procedures) | **GET** /benefits/{benefitCode}/procedures/{fromProcedure} | Get BenefitProcedures |
| [**list_benefit_procedures**](BenefitProceduresApi.md#list_benefit_procedures) | **GET** /benefits/{benefitCode}/procedures | List BenefitProcedures |
| [**update_batch_benefit_procedures**](BenefitProceduresApi.md#update_batch_benefit_procedures) | **PUT** /benefits/{benefitCode}/procedures-batch | Create or Update Batch BenefitProcedures |
| [**update_benefit_procedures**](BenefitProceduresApi.md#update_benefit_procedures) | **PUT** /benefits/{benefitCode}/procedures/{fromProcedure} | Update BenefitProcedures |


## create_benefit_procedures

> <BenefitProceduresVBAResponse> create_benefit_procedures(vbasoftware_database, benefit_code, benefit_procedures)

Create BenefitProcedures

Creates a new BenefitProcedures

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

api_instance = Vba::BenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_procedures = Vba::BenefitProcedures.new({benefit_code: 'benefit_code_example', from_procedure: 'from_procedure_example', exclude: false}) # BenefitProcedures | 

begin
  # Create BenefitProcedures
  result = api_instance.create_benefit_procedures(vbasoftware_database, benefit_code, benefit_procedures)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->create_benefit_procedures: #{e}"
end
```

#### Using the create_benefit_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProceduresVBAResponse>, Integer, Hash)> create_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, benefit_procedures)

```ruby
begin
  # Create BenefitProcedures
  data, status_code, headers = api_instance.create_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, benefit_procedures)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProceduresVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->create_benefit_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_procedures** | [**BenefitProcedures**](BenefitProcedures.md) |  |  |

### Return type

[**BenefitProceduresVBAResponse**](BenefitProceduresVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_procedures

> delete_benefit_procedures(vbasoftware_database, benefit_code, from_procedure)

Delete BenefitProcedures

Deletes an BenefitProcedures

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

api_instance = Vba::BenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Delete BenefitProcedures
  api_instance.delete_benefit_procedures(vbasoftware_database, benefit_code, from_procedure)
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->delete_benefit_procedures: #{e}"
end
```

#### Using the delete_benefit_procedures_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, from_procedure)

```ruby
begin
  # Delete BenefitProcedures
  data, status_code, headers = api_instance.delete_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->delete_benefit_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit_procedures

> <BenefitProceduresVBAResponse> get_benefit_procedures(vbasoftware_database, benefit_code, from_procedure)

Get BenefitProcedures

Gets BenefitProcedures

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

api_instance = Vba::BenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
from_procedure = 'from_procedure_example' # String | From Procedure

begin
  # Get BenefitProcedures
  result = api_instance.get_benefit_procedures(vbasoftware_database, benefit_code, from_procedure)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->get_benefit_procedures: #{e}"
end
```

#### Using the get_benefit_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProceduresVBAResponse>, Integer, Hash)> get_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, from_procedure)

```ruby
begin
  # Get BenefitProcedures
  data, status_code, headers = api_instance.get_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, from_procedure)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProceduresVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->get_benefit_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_procedure** | **String** | From Procedure |  |

### Return type

[**BenefitProceduresVBAResponse**](BenefitProceduresVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_procedures

> <BenefitProceduresListVBAResponse> list_benefit_procedures(vbasoftware_database, benefit_code)

List BenefitProcedures

Lists all BenefitProcedures benefitCode

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

api_instance = Vba::BenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List BenefitProcedures
  result = api_instance.list_benefit_procedures(vbasoftware_database, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->list_benefit_procedures: #{e}"
end
```

#### Using the list_benefit_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProceduresListVBAResponse>, Integer, Hash)> list_benefit_procedures_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # List BenefitProcedures
  data, status_code, headers = api_instance.list_benefit_procedures_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProceduresListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->list_benefit_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitProceduresListVBAResponse**](BenefitProceduresListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefit_procedures

> <MultiCodeResponseListVBAResponse> update_batch_benefit_procedures(vbasoftware_database, benefit_code, benefit_procedures)

Create or Update Batch BenefitProcedures

Create or Update multiple BenefitProcedures at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_procedures = [Vba::BenefitProcedures.new({benefit_code: 'benefit_code_example', from_procedure: 'from_procedure_example', exclude: false})] # Array<BenefitProcedures> | 

begin
  # Create or Update Batch BenefitProcedures
  result = api_instance.update_batch_benefit_procedures(vbasoftware_database, benefit_code, benefit_procedures)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->update_batch_benefit_procedures: #{e}"
end
```

#### Using the update_batch_benefit_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, benefit_procedures)

```ruby
begin
  # Create or Update Batch BenefitProcedures
  data, status_code, headers = api_instance.update_batch_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, benefit_procedures)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->update_batch_benefit_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_procedures** | [**Array&lt;BenefitProcedures&gt;**](BenefitProcedures.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit_procedures

> <BenefitProceduresVBAResponse> update_benefit_procedures(vbasoftware_database, benefit_code, from_procedure, benefit_procedures)

Update BenefitProcedures

Updates a specific BenefitProcedures.

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

api_instance = Vba::BenefitProceduresApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
from_procedure = 'from_procedure_example' # String | From Procedure
benefit_procedures = Vba::BenefitProcedures.new({benefit_code: 'benefit_code_example', from_procedure: 'from_procedure_example', exclude: false}) # BenefitProcedures | 

begin
  # Update BenefitProcedures
  result = api_instance.update_benefit_procedures(vbasoftware_database, benefit_code, from_procedure, benefit_procedures)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->update_benefit_procedures: #{e}"
end
```

#### Using the update_benefit_procedures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitProceduresVBAResponse>, Integer, Hash)> update_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, from_procedure, benefit_procedures)

```ruby
begin
  # Update BenefitProcedures
  data, status_code, headers = api_instance.update_benefit_procedures_with_http_info(vbasoftware_database, benefit_code, from_procedure, benefit_procedures)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitProceduresVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitProceduresApi->update_benefit_procedures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **from_procedure** | **String** | From Procedure |  |
| **benefit_procedures** | [**BenefitProcedures**](BenefitProcedures.md) |  |  |

### Return type

[**BenefitProceduresVBAResponse**](BenefitProceduresVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

