# Vba::PlanBenefitPlaceAuthorizationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_place_auth**](PlanBenefitPlaceAuthorizationsApi.md#create_plan_benefits_place_auth) | **POST** /plans/{planID}/benefits/{benefitCode}/place-auths | Create PlanBenefitsPlaceAuth |
| [**delete_plan_benefits_place_auth**](PlanBenefitPlaceAuthorizationsApi.md#delete_plan_benefits_place_auth) | **DELETE** /plans/{planID}/benefits/{benefitCode}/place-auths/{placeCode} | Delete PlanBenefitsPlaceAuth |
| [**get_plan_benefits_place_auth**](PlanBenefitPlaceAuthorizationsApi.md#get_plan_benefits_place_auth) | **GET** /plans/{planID}/benefits/{benefitCode}/place-auths/{placeCode} | Get PlanBenefitsPlaceAuth |
| [**list_plan_benefits_place_auth**](PlanBenefitPlaceAuthorizationsApi.md#list_plan_benefits_place_auth) | **GET** /plans/{planID}/benefits/{benefitCode}/place-auths | List PlanBenefitsPlaceAuth |
| [**update_batch_plan_benefits_place_auth**](PlanBenefitPlaceAuthorizationsApi.md#update_batch_plan_benefits_place_auth) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-auths-batch | Create or Update Batch PlanBenefitsPlaceAuth |
| [**update_plan_benefits_place_auth**](PlanBenefitPlaceAuthorizationsApi.md#update_plan_benefits_place_auth) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-auths/{placeCode} | Update PlanBenefitsPlaceAuth |


## create_plan_benefits_place_auth

> <PlanBenefitsPlaceAuthVBAResponse> create_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)

Create PlanBenefitsPlaceAuth

Creates a new PlanBenefitsPlaceAuth

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

api_instance = Vba::PlanBenefitPlaceAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place_auth = Vba::PlanBenefitsPlaceAuth.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', auth_reqd: 'auth_reqd_example'}) # PlanBenefitsPlaceAuth | 

begin
  # Create PlanBenefitsPlaceAuth
  result = api_instance.create_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->create_plan_benefits_place_auth: #{e}"
end
```

#### Using the create_plan_benefits_place_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceAuthVBAResponse>, Integer, Hash)> create_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)

```ruby
begin
  # Create PlanBenefitsPlaceAuth
  data, status_code, headers = api_instance.create_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->create_plan_benefits_place_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place_auth** | [**PlanBenefitsPlaceAuth**](PlanBenefitsPlaceAuth.md) |  |  |

### Return type

[**PlanBenefitsPlaceAuthVBAResponse**](PlanBenefitsPlaceAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_place_auth

> delete_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, place_code)

Delete PlanBenefitsPlaceAuth

Deletes an PlanBenefitsPlaceAuth

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

api_instance = Vba::PlanBenefitPlaceAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Delete PlanBenefitsPlaceAuth
  api_instance.delete_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, place_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->delete_plan_benefits_place_auth: #{e}"
end
```

#### Using the delete_plan_benefits_place_auth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Delete PlanBenefitsPlaceAuth
  data, status_code, headers = api_instance.delete_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->delete_plan_benefits_place_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefits_place_auth

> <PlanBenefitsPlaceAuthVBAResponse> get_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, place_code)

Get PlanBenefitsPlaceAuth

Gets PlanBenefitsPlaceAuth

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

api_instance = Vba::PlanBenefitPlaceAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Get PlanBenefitsPlaceAuth
  result = api_instance.get_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->get_plan_benefits_place_auth: #{e}"
end
```

#### Using the get_plan_benefits_place_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceAuthVBAResponse>, Integer, Hash)> get_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Get PlanBenefitsPlaceAuth
  data, status_code, headers = api_instance.get_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->get_plan_benefits_place_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |

### Return type

[**PlanBenefitsPlaceAuthVBAResponse**](PlanBenefitsPlaceAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_place_auth

> <PlanBenefitsPlaceAuthListVBAResponse> list_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsPlaceAuth

Lists all PlanBenefitsPlaceAuth for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitPlaceAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsPlaceAuth
  result = api_instance.list_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->list_plan_benefits_place_auth: #{e}"
end
```

#### Using the list_plan_benefits_place_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceAuthListVBAResponse>, Integer, Hash)> list_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsPlaceAuth
  data, status_code, headers = api_instance.list_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceAuthListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->list_plan_benefits_place_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsPlaceAuthListVBAResponse**](PlanBenefitsPlaceAuthListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_place_auth

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)

Create or Update Batch PlanBenefitsPlaceAuth

Create or Update multiple PlanBenefitsPlaceAuth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitPlaceAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place_auth = [Vba::PlanBenefitsPlaceAuth.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', auth_reqd: 'auth_reqd_example'})] # Array<PlanBenefitsPlaceAuth> | 

begin
  # Create or Update Batch PlanBenefitsPlaceAuth
  result = api_instance.update_batch_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->update_batch_plan_benefits_place_auth: #{e}"
end
```

#### Using the update_batch_plan_benefits_place_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)

```ruby
begin
  # Create or Update Batch PlanBenefitsPlaceAuth
  data, status_code, headers = api_instance.update_batch_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->update_batch_plan_benefits_place_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place_auth** | [**Array&lt;PlanBenefitsPlaceAuth&gt;**](PlanBenefitsPlaceAuth.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_place_auth

> <PlanBenefitsPlaceAuthVBAResponse> update_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_auth)

Update PlanBenefitsPlaceAuth

Updates a specific PlanBenefitsPlaceAuth.

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

api_instance = Vba::PlanBenefitPlaceAuthorizationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code
plan_benefits_place_auth = Vba::PlanBenefitsPlaceAuth.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', auth_reqd: 'auth_reqd_example'}) # PlanBenefitsPlaceAuth | 

begin
  # Update PlanBenefitsPlaceAuth
  result = api_instance.update_plan_benefits_place_auth(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_auth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->update_plan_benefits_place_auth: #{e}"
end
```

#### Using the update_plan_benefits_place_auth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceAuthVBAResponse>, Integer, Hash)> update_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_auth)

```ruby
begin
  # Update PlanBenefitsPlaceAuth
  data, status_code, headers = api_instance.update_plan_benefits_place_auth_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_auth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceAuthVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceAuthorizationsApi->update_plan_benefits_place_auth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |
| **plan_benefits_place_auth** | [**PlanBenefitsPlaceAuth**](PlanBenefitsPlaceAuth.md) |  |  |

### Return type

[**PlanBenefitsPlaceAuthVBAResponse**](PlanBenefitsPlaceAuthVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

