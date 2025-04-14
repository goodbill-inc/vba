# Vba::PlanBenefitRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_plan_benefit_rate**](PlanBenefitRatesApi.md#create_plan_benefit_rate) | **POST** /plans/{planID}/benefits/{benefitCode}/rates | Create PlanBenefitRate |
| [**delete_plan_benefit_rate**](PlanBenefitRatesApi.md#delete_plan_benefit_rate) | **DELETE** /plans/{planID}/benefits/{benefitCode}/rates/{planBenefitRateKey} | Delete PlanBenefitRate |
| [**get_plan_benefit_rate**](PlanBenefitRatesApi.md#get_plan_benefit_rate) | **GET** /plans/{planID}/benefits/{benefitCode}/rates/{planBenefitRateKey} | Get PlanBenefitRate |
| [**list_plan_benefit_rate**](PlanBenefitRatesApi.md#list_plan_benefit_rate) | **GET** /plans/{planID}/benefits/{benefitCode}/rates | List PlanBenefitRate |
| [**update_batch_plan_benefit_rate**](PlanBenefitRatesApi.md#update_batch_plan_benefit_rate) | **PUT** /plans/{planID}/benefits/{benefitCode}/rates-batch | Create or Update Batch PlanBenefitRate |
| [**update_plan_benefit_rate**](PlanBenefitRatesApi.md#update_plan_benefit_rate) | **PUT** /plans/{planID}/benefits/{benefitCode}/rates/{planBenefitRateKey} | Update PlanBenefitRate |


## create_plan_benefit_rate

> <PlanBenefitRateVBAResponse> create_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)

Create PlanBenefitRate

Creates a new PlanBenefitRate

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

api_instance = Vba::PlanBenefitRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_rate = Vba::PlanBenefitRate.new({plan_benefit_rate_key: 37, benefit_code: 'benefit_code_example', effective_date: Time.now, plan_id: 'plan_id_example', rate: 3.56, rate_pct: false, rate_type: 'rate_type_example'}) # PlanBenefitRate | 

begin
  # Create PlanBenefitRate
  result = api_instance.create_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->create_plan_benefit_rate: #{e}"
end
```

#### Using the create_plan_benefit_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitRateVBAResponse>, Integer, Hash)> create_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)

```ruby
begin
  # Create PlanBenefitRate
  data, status_code, headers = api_instance.create_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->create_plan_benefit_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_rate** | [**PlanBenefitRate**](PlanBenefitRate.md) |  |  |

### Return type

[**PlanBenefitRateVBAResponse**](PlanBenefitRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_plan_benefit_rate

> delete_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)

Delete PlanBenefitRate

Deletes an PlanBenefitRate

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

api_instance = Vba::PlanBenefitRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_rate_key = 56 # Integer | PlanBenefitRate Key

begin
  # Delete PlanBenefitRate
  api_instance.delete_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->delete_plan_benefit_rate: #{e}"
end
```

#### Using the delete_plan_benefit_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)

```ruby
begin
  # Delete PlanBenefitRate
  data, status_code, headers = api_instance.delete_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->delete_plan_benefit_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_rate_key** | **Integer** | PlanBenefitRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_plan_benefit_rate

> <PlanBenefitRateVBAResponse> get_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)

Get PlanBenefitRate

Gets PlanBenefitRate

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

api_instance = Vba::PlanBenefitRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_rate_key = 56 # Integer | PlanBenefitRate Key

begin
  # Get PlanBenefitRate
  result = api_instance.get_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->get_plan_benefit_rate: #{e}"
end
```

#### Using the get_plan_benefit_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitRateVBAResponse>, Integer, Hash)> get_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)

```ruby
begin
  # Get PlanBenefitRate
  data, status_code, headers = api_instance.get_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->get_plan_benefit_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_rate_key** | **Integer** | PlanBenefitRate Key |  |

### Return type

[**PlanBenefitRateVBAResponse**](PlanBenefitRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_rate

> <PlanBenefitRateListVBAResponse> list_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code)

List PlanBenefitRate

Lists all PlanBenefitRate for the given planID and benefitCode

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

api_instance = Vba::PlanBenefitRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # List PlanBenefitRate
  result = api_instance.list_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->list_plan_benefit_rate: #{e}"
end
```

#### Using the list_plan_benefit_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitRateListVBAResponse>, Integer, Hash)> list_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code)

```ruby
begin
  # List PlanBenefitRate
  data, status_code, headers = api_instance.list_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->list_plan_benefit_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**PlanBenefitRateListVBAResponse**](PlanBenefitRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_plan_benefit_rate

> <MultiCodeResponseListVBAResponse> update_batch_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)

Create or Update Batch PlanBenefitRate

Create or Update multiple PlanBenefitRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PlanBenefitRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_rate = [Vba::PlanBenefitRate.new({plan_benefit_rate_key: 37, benefit_code: 'benefit_code_example', effective_date: Time.now, plan_id: 'plan_id_example', rate: 3.56, rate_pct: false, rate_type: 'rate_type_example'})] # Array<PlanBenefitRate> | 

begin
  # Create or Update Batch PlanBenefitRate
  result = api_instance.update_batch_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->update_batch_plan_benefit_rate: #{e}"
end
```

#### Using the update_batch_plan_benefit_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)

```ruby
begin
  # Create or Update Batch PlanBenefitRate
  data, status_code, headers = api_instance.update_batch_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->update_batch_plan_benefit_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_rate** | [**Array&lt;PlanBenefitRate&gt;**](PlanBenefitRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_plan_benefit_rate

> <PlanBenefitRateVBAResponse> update_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key, plan_benefit_rate)

Update PlanBenefitRate

Updates a specific PlanBenefitRate.

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

api_instance = Vba::PlanBenefitRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | Plan ID
benefit_code = 'benefit_code_example' # String | Benefit Code
plan_benefit_rate_key = 56 # Integer | PlanBenefitRate Key
plan_benefit_rate = Vba::PlanBenefitRate.new({plan_benefit_rate_key: 37, benefit_code: 'benefit_code_example', effective_date: Time.now, plan_id: 'plan_id_example', rate: 3.56, rate_pct: false, rate_type: 'rate_type_example'}) # PlanBenefitRate | 

begin
  # Update PlanBenefitRate
  result = api_instance.update_plan_benefit_rate(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key, plan_benefit_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->update_plan_benefit_rate: #{e}"
end
```

#### Using the update_plan_benefit_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlanBenefitRateVBAResponse>, Integer, Hash)> update_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key, plan_benefit_rate)

```ruby
begin
  # Update PlanBenefitRate
  data, status_code, headers = api_instance.update_plan_benefit_rate_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_rate_key, plan_benefit_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlanBenefitRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PlanBenefitRatesApi->update_plan_benefit_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | Plan ID |  |
| **benefit_code** | **String** | Benefit Code |  |
| **plan_benefit_rate_key** | **Integer** | PlanBenefitRate Key |  |
| **plan_benefit_rate** | [**PlanBenefitRate**](PlanBenefitRate.md) |  |  |

### Return type

[**PlanBenefitRateVBAResponse**](PlanBenefitRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

