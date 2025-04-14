# Vba::PlanBenefitPlaceCoPaysApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefits_place_co_pay**](PlanBenefitPlaceCoPaysApi.md#create_plan_benefits_place_co_pay) | **POST** /plans/{planID}/benefits/{benefitCode}/place-co-pays | Create PlanBenefitsPlaceCoPay |
| [**delete_plan_benefits_place_co_pay**](PlanBenefitPlaceCoPaysApi.md#delete_plan_benefits_place_co_pay) | **DELETE** /plans/{planID}/benefits/{benefitCode}/place-co-pays/{placeCode} | Delete PlanBenefitsPlaceCoPay |
| [**get_plan_benefits_place_co_pay**](PlanBenefitPlaceCoPaysApi.md#get_plan_benefits_place_co_pay) | **GET** /plans/{planID}/benefits/{benefitCode}/place-co-pays/{placeCode} | Get PlanBenefitsPlaceCoPay |
| [**list_plan_benefits_place_co_pay**](PlanBenefitPlaceCoPaysApi.md#list_plan_benefits_place_co_pay) | **GET** /plans/{planID}/benefits/{benefitCode}/place-co-pays | List PlanBenefitsPlaceCoPay |
| [**update_batch_plan_benefits_place_co_pay**](PlanBenefitPlaceCoPaysApi.md#update_batch_plan_benefits_place_co_pay) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-co-pays-batch | Create or Update Batch PlanBenefitsPlaceCoPay |
| [**update_plan_benefits_place_co_pay**](PlanBenefitPlaceCoPaysApi.md#update_plan_benefits_place_co_pay) | **PUT** /plans/{planID}/benefits/{benefitCode}/place-co-pays/{placeCode} | Update PlanBenefitsPlaceCoPay |


## create_plan_benefits_place_co_pay

> <PlanBenefitsPlaceCoPayVBAResponse> create_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)

Create PlanBenefitsPlaceCoPay

Creates a new PlanBenefitsPlaceCoPay

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

api_instance = Vba::PlanBenefitPlaceCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place_co_pay = Vba::PlanBenefitsPlaceCoPay.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', copay_amt_net_oop: false, copay_amt_oop: false, copay_pct: 'copay_pct_example', copay_pct_net: 'copay_pct_net_example'}) # PlanBenefitsPlaceCoPay | 

begin
  # Create PlanBenefitsPlaceCoPay
  result = api_instance.create_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->create_plan_benefits_place_co_pay: #{e}"
end
```

#### Using the create_plan_benefits_place_co_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoPayVBAResponse>, Integer, Hash)> create_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)

```ruby
begin
  # Create PlanBenefitsPlaceCoPay
  data, status_code, headers = api_instance.create_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoPayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->create_plan_benefits_place_co_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place_co_pay** | [**PlanBenefitsPlaceCoPay**](PlanBenefitsPlaceCoPay.md) |  |  |

### Return type

[**PlanBenefitsPlaceCoPayVBAResponse**](PlanBenefitsPlaceCoPayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefits_place_co_pay

> delete_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, place_code)

Delete PlanBenefitsPlaceCoPay

Deletes an PlanBenefitsPlaceCoPay

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

api_instance = Vba::PlanBenefitPlaceCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Delete PlanBenefitsPlaceCoPay
  api_instance.delete_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, place_code)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->delete_plan_benefits_place_co_pay: #{e}"
end
```

#### Using the delete_plan_benefits_place_co_pay_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Delete PlanBenefitsPlaceCoPay
  data, status_code, headers = api_instance.delete_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->delete_plan_benefits_place_co_pay_with_http_info: #{e}"
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


## get_plan_benefits_place_co_pay

> <PlanBenefitsPlaceCoPayVBAResponse> get_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, place_code)

Get PlanBenefitsPlaceCoPay

Gets PlanBenefitsPlaceCoPay

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

api_instance = Vba::PlanBenefitPlaceCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code

begin
  # Get PlanBenefitsPlaceCoPay
  result = api_instance.get_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, place_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->get_plan_benefits_place_co_pay: #{e}"
end
```

#### Using the get_plan_benefits_place_co_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoPayVBAResponse>, Integer, Hash)> get_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)

```ruby
begin
  # Get PlanBenefitsPlaceCoPay
  data, status_code, headers = api_instance.get_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoPayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->get_plan_benefits_place_co_pay_with_http_info: #{e}"
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

[**PlanBenefitsPlaceCoPayVBAResponse**](PlanBenefitsPlaceCoPayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefits_place_co_pay

> <PlanBenefitsPlaceCoPayListVBAResponse> list_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitsPlaceCoPay

Lists all PlanBenefitsPlaceCoPay for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitPlaceCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitsPlaceCoPay
  result = api_instance.list_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->list_plan_benefits_place_co_pay: #{e}"
end
```

#### Using the list_plan_benefits_place_co_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoPayListVBAResponse>, Integer, Hash)> list_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitsPlaceCoPay
  data, status_code, headers = api_instance.list_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoPayListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->list_plan_benefits_place_co_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitsPlaceCoPayListVBAResponse**](PlanBenefitsPlaceCoPayListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefits_place_co_pay

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)

Create or Update Batch PlanBenefitsPlaceCoPay

Create or Update multiple PlanBenefitsPlaceCoPay at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitPlaceCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefits_place_co_pay = [Vba::PlanBenefitsPlaceCoPay.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', copay_amt_net_oop: false, copay_amt_oop: false, copay_pct: 'copay_pct_example', copay_pct_net: 'copay_pct_net_example'})] # Array<PlanBenefitsPlaceCoPay> | 

begin
  # Create or Update Batch PlanBenefitsPlaceCoPay
  result = api_instance.update_batch_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->update_batch_plan_benefits_place_co_pay: #{e}"
end
```

#### Using the update_batch_plan_benefits_place_co_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)

```ruby
begin
  # Create or Update Batch PlanBenefitsPlaceCoPay
  data, status_code, headers = api_instance.update_batch_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_pay)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->update_batch_plan_benefits_place_co_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefits_place_co_pay** | [**Array&lt;PlanBenefitsPlaceCoPay&gt;**](PlanBenefitsPlaceCoPay.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefits_place_co_pay

> <PlanBenefitsPlaceCoPayVBAResponse> update_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_pay)

Update PlanBenefitsPlaceCoPay

Updates a specific PlanBenefitsPlaceCoPay.

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

api_instance = Vba::PlanBenefitPlaceCoPaysApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
place_code = 'place_code_example' # String | Place Code
plan_benefits_place_co_pay = Vba::PlanBenefitsPlaceCoPay.new({plan_id: 'plan_id_example', benefit_code: 'benefit_code_example', place_code: 'place_code_example', copay_amt_net_oop: false, copay_amt_oop: false, copay_pct: 'copay_pct_example', copay_pct_net: 'copay_pct_net_example'}) # PlanBenefitsPlaceCoPay | 

begin
  # Update PlanBenefitsPlaceCoPay
  result = api_instance.update_plan_benefits_place_co_pay(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_pay)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->update_plan_benefits_place_co_pay: #{e}"
end
```

#### Using the update_plan_benefits_place_co_pay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitsPlaceCoPayVBAResponse>, Integer, Hash)> update_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_pay)

```ruby
begin
  # Update PlanBenefitsPlaceCoPay
  data, status_code, headers = api_instance.update_plan_benefits_place_co_pay_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_pay)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitsPlaceCoPayVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitPlaceCoPaysApi->update_plan_benefits_place_co_pay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **place_code** | **String** | Place Code |  |
| **plan_benefits_place_co_pay** | [**PlanBenefitsPlaceCoPay**](PlanBenefitsPlaceCoPay.md) |  |  |

### Return type

[**PlanBenefitsPlaceCoPayVBAResponse**](PlanBenefitsPlaceCoPayVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

