# Vba::PlanBenefitPlaceExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_place**](PlanBenefitPlaceExCodesApi.md#create_plan_benefits_place) | **POST** /plans/{planID}/benefits/{benefitCode}/place-ex-codes | Create PlanBenefitsPlace |
| [**delete_plan_benefits_place**](PlanBenefitPlaceExCodesApi.md#delete_plan_benefits_place) | **DELETE** /plans/{planID}/benefits/{benefitCode}/place-ex-codes/{placeCode} | Delete PlanBenefitsPlace |
| [**get_plan_benefits_place**](PlanBenefitPlaceExCodesApi.md#get_plan_benefits_place) | **GET** /plans/{planID}/benefits/{benefitCode}/place-ex-codes/{placeCode} | Get PlanBenefitsPlace |
| [**list_plan_benefits_place**](PlanBenefitPlaceExCodesApi.md#list_plan_benefits_place) | **GET** /plans/{planID}/benefits/{benefitCode}/place-ex-codes | List PlanBenefitsPlace |
| [**update_batch_plan_benefits_place**](PlanBenefitPlaceExCodesApi.md#update_batch_plan_benefits_place) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-ex-codes-batch | Create or Update Batch PlanBenefitsPlace |
| [**update_plan_benefits_place**](PlanBenefitPlaceExCodesApi.md#update_plan_benefits_place) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-ex-codes/{placeCode} | Update PlanBenefitsPlace |


## create_plan_benefits_place

> <PlanBenefitsPlaceVBAResponse> create_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)

Create PlanBenefitsPlace

Creates a new PlanBenefitsPlace

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

api_instance = Vba::PlanBenefitPlaceExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place = Vba::PlanBenefitsPlace.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example'}) # PlanBenefitsPlace | 

begin
  # Create PlanBenefitsPlace
  result = api_instance.create_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->create_plan_benefits_place: #{e}"
end
```

#### Using the create_plan_benefits_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceVBAResponse>, Integer, Hash)> create_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)

```ruby
begin
  # Create PlanBenefitsPlace
  data, status_code, headers = api_instance.create_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->create_plan_benefits_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place** | [**PlanBenefitsPlace**](PlanBenefitsPlace.md) |  |  |

### Return type

[**PlanBenefitsPlaceVBAResponse**](PlanBenefitsPlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_place

> delete_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, place_code)

Delete PlanBenefitsPlace

Deletes an PlanBenefitsPlace

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

api_instance = Vba::PlanBenefitPlaceExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Delete PlanBenefitsPlace
  api_instance.delete_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, place_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->delete_plan_benefits_place: #{e}"
end
```

#### Using the delete_plan_benefits_place_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Delete PlanBenefitsPlace
  data, status_code, headers = api_instance.delete_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->delete_plan_benefits_place_with_http_info: #{e}"
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


## get_plan_benefits_place

> <PlanBenefitsPlaceVBAResponse> get_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, place_code)

Get PlanBenefitsPlace

Gets PlanBenefitsPlace

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

api_instance = Vba::PlanBenefitPlaceExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Get PlanBenefitsPlace
  result = api_instance.get_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->get_plan_benefits_place: #{e}"
end
```

#### Using the get_plan_benefits_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceVBAResponse>, Integer, Hash)> get_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Get PlanBenefitsPlace
  data, status_code, headers = api_instance.get_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->get_plan_benefits_place_with_http_info: #{e}"
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

[**PlanBenefitsPlaceVBAResponse**](PlanBenefitsPlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_place

> <PlanBenefitsPlaceListVBAResponse> list_plan_benefits_place(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsPlace

Lists all PlanBenefitsPlace for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitPlaceExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsPlace
  result = api_instance.list_plan_benefits_place(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->list_plan_benefits_place: #{e}"
end
```

#### Using the list_plan_benefits_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceListVBAResponse>, Integer, Hash)> list_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsPlace
  data, status_code, headers = api_instance.list_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->list_plan_benefits_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsPlaceListVBAResponse**](PlanBenefitsPlaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_place

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)

Create or Update Batch PlanBenefitsPlace

Create or Update multiple PlanBenefitsPlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitPlaceExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place = [Vba::PlanBenefitsPlace.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example'})] # Array<PlanBenefitsPlace> | 

begin
  # Create or Update Batch PlanBenefitsPlace
  result = api_instance.update_batch_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->update_batch_plan_benefits_place: #{e}"
end
```

#### Using the update_batch_plan_benefits_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)

```ruby
begin
  # Create or Update Batch PlanBenefitsPlace
  data, status_code, headers = api_instance.update_batch_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->update_batch_plan_benefits_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place** | [**Array&lt;PlanBenefitsPlace&gt;**](PlanBenefitsPlace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_place

> <PlanBenefitsPlaceVBAResponse> update_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place)

Update PlanBenefitsPlace

Updates a specific PlanBenefitsPlace.

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

api_instance = Vba::PlanBenefitPlaceExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code
plan_benefits_place = Vba::PlanBenefitsPlace.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example'}) # PlanBenefitsPlace | 

begin
  # Update PlanBenefitsPlace
  result = api_instance.update_plan_benefits_place(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->update_plan_benefits_place: #{e}"
end
```

#### Using the update_plan_benefits_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceVBAResponse>, Integer, Hash)> update_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place)

```ruby
begin
  # Update PlanBenefitsPlace
  data, status_code, headers = api_instance.update_plan_benefits_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceExCodesApi->update_plan_benefits_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |
| **plan_benefits_place** | [**PlanBenefitsPlace**](PlanBenefitsPlace.md) |  |  |

### Return type

[**PlanBenefitsPlaceVBAResponse**](PlanBenefitsPlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

