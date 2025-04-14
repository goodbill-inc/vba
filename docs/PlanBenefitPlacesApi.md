# Vba::PlanBenefitPlacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_ben_code_place**](PlanBenefitPlacesApi.md#create_plan_ben_code_place) | **POST** /plans/{planID}/benefits/{benefitCode}/places | Create PlanBenCodePlace |
| [**delete_plan_ben_code_place**](PlanBenefitPlacesApi.md#delete_plan_ben_code_place) | **DELETE** /plans/{planID}/benefits/{benefitCode}/places/{placeCode} | Delete PlanBenCodePlace |
| [**get_plan_ben_code_place**](PlanBenefitPlacesApi.md#get_plan_ben_code_place) | **GET** /plans/{planID}/benefits/{benefitCode}/places/{placeCode} | Get PlanBenCodePlace |
| [**list_plan_ben_code_place**](PlanBenefitPlacesApi.md#list_plan_ben_code_place) | **GET** /plans/{planID}/benefits/{benefitCode}/places | List PlanBenCodePlace |
| [**update_batch_plan_ben_code_place**](PlanBenefitPlacesApi.md#update_batch_plan_ben_code_place) | **PUT** /plans/{planID}/benefits/{benefitCode}/places-batch | Create or Update Batch PlanBenCodePlace |
| [**update_plan_ben_code_place**](PlanBenefitPlacesApi.md#update_plan_ben_code_place) | **PUT** /plans/{planID}/benefits/{benefitCode}/places/{placeCode} | Update PlanBenCodePlace |


## create_plan_ben_code_place

> <PlanBenCodePlaceVBAResponse> create_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)

Create PlanBenCodePlace

Creates a new PlanBenCodePlace

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

api_instance = Vba::PlanBenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_place = Vba::PlanBenCodePlace.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', exclude: false}) # PlanBenCodePlace | 

begin
  # Create PlanBenCodePlace
  result = api_instance.create_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->create_plan_ben_code_place: #{e}"
end
```

#### Using the create_plan_ben_code_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodePlaceVBAResponse>, Integer, Hash)> create_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)

```ruby
begin
  # Create PlanBenCodePlace
  data, status_code, headers = api_instance.create_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->create_plan_ben_code_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_place** | [**PlanBenCodePlace**](PlanBenCodePlace.md) |  |  |

### Return type

[**PlanBenCodePlaceVBAResponse**](PlanBenCodePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_ben_code_place

> delete_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code)

Delete PlanBenCodePlace

Deletes an PlanBenCodePlace

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

api_instance = Vba::PlanBenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Delete PlanBenCodePlace
  api_instance.delete_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->delete_plan_ben_code_place: #{e}"
end
```

#### Using the delete_plan_ben_code_place_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Delete PlanBenCodePlace
  data, status_code, headers = api_instance.delete_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->delete_plan_ben_code_place_with_http_info: #{e}"
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


## get_plan_ben_code_place

> <PlanBenCodePlaceVBAResponse> get_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code)

Get PlanBenCodePlace

Gets PlanBenCodePlace

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

api_instance = Vba::PlanBenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Get PlanBenCodePlace
  result = api_instance.get_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->get_plan_ben_code_place: #{e}"
end
```

#### Using the get_plan_ben_code_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodePlaceVBAResponse>, Integer, Hash)> get_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Get PlanBenCodePlace
  data, status_code, headers = api_instance.get_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->get_plan_ben_code_place_with_http_info: #{e}"
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

[**PlanBenCodePlaceVBAResponse**](PlanBenCodePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_ben_code_place

> <PlanBenCodePlaceListVBAResponse> list_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code)

List PlanBenCodePlace

Lists all PlanBenCodePlace for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenCodePlace
  result = api_instance.list_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->list_plan_ben_code_place: #{e}"
end
```

#### Using the list_plan_ben_code_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodePlaceListVBAResponse>, Integer, Hash)> list_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenCodePlace
  data, status_code, headers = api_instance.list_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodePlaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->list_plan_ben_code_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenCodePlaceListVBAResponse**](PlanBenCodePlaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_ben_code_place

> <MultiCodeResponseListVBAResponse> update_batch_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)

Create or Update Batch PlanBenCodePlace

Create or Update multiple PlanBenCodePlace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_ben_code_place = [Vba::PlanBenCodePlace.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', exclude: false})] # Array<PlanBenCodePlace> | 

begin
  # Create or Update Batch PlanBenCodePlace
  result = api_instance.update_batch_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->update_batch_plan_ben_code_place: #{e}"
end
```

#### Using the update_batch_plan_ben_code_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)

```ruby
begin
  # Create or Update Batch PlanBenCodePlace
  data, status_code, headers = api_instance.update_batch_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->update_batch_plan_ben_code_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_ben_code_place** | [**Array&lt;PlanBenCodePlace&gt;**](PlanBenCodePlace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_ben_code_place

> <PlanBenCodePlaceVBAResponse> update_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place)

Update PlanBenCodePlace

Updates a specific PlanBenCodePlace.

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

api_instance = Vba::PlanBenefitPlacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code
plan_ben_code_place = Vba::PlanBenCodePlace.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', exclude: false}) # PlanBenCodePlace | 

begin
  # Update PlanBenCodePlace
  result = api_instance.update_plan_ben_code_place(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->update_plan_ben_code_place: #{e}"
end
```

#### Using the update_plan_ben_code_place_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenCodePlaceVBAResponse>, Integer, Hash)> update_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place)

```ruby
begin
  # Update PlanBenCodePlace
  data, status_code, headers = api_instance.update_plan_ben_code_place_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_ben_code_place)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenCodePlaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlacesApi->update_plan_ben_code_place_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |
| **plan_ben_code_place** | [**PlanBenCodePlace**](PlanBenCodePlace.md) |  |  |

### Return type

[**PlanBenCodePlaceVBAResponse**](PlanBenCodePlaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

