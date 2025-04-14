# Vba::BenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_benefit**](BenefitsApi.md#create_benefit) | **POST** /benefits | Create Benefit |
| [**delete_benefit_codes**](BenefitsApi.md#delete_benefit_codes) | **DELETE** /benefits/{benefitCode} | Delete a Benefit |
| [**get_benefit**](BenefitsApi.md#get_benefit) | **GET** /benefits/{benefitCode} | Get a Benefit |
| [**list_benefit_levels**](BenefitsApi.md#list_benefit_levels) | **GET** /benefit-levels | List Benefit Levels |
| [**list_benefit_plan_dental_designation_types**](BenefitsApi.md#list_benefit_plan_dental_designation_types) | **GET** /benefit-plan-dental-designation-types | List Benefit Plan Dental Designation Types |
| [**list_benefit_plan_maximum_coverage_types**](BenefitsApi.md#list_benefit_plan_maximum_coverage_types) | **GET** /benefit-plan-maximum-coverage-types | List Benefit Plan Maximum Scope Types |
| [**list_benefit_plan_maximum_network_types**](BenefitsApi.md#list_benefit_plan_maximum_network_types) | **GET** /benefit-plan-maximum-network-types | List Benefit Plan Maximum Network Types |
| [**list_benefit_plan_maximum_per_types**](BenefitsApi.md#list_benefit_plan_maximum_per_types) | **GET** /benefit-plan-maximum-per-types | List Benefit Plan Maximum Per Types |
| [**list_benefit_plan_maximum_types**](BenefitsApi.md#list_benefit_plan_maximum_types) | **GET** /benefit-plan-maximum-types | List Benefit Plan Maximum Types |
| [**list_benefit_plan_riders**](BenefitsApi.md#list_benefit_plan_riders) | **GET** /plans/{planId}/benefits/riders | List Benefit Riders |
| [**list_benefit_rate_max_types**](BenefitsApi.md#list_benefit_rate_max_types) | **GET** /benefit-rate-max-types | List Benefit Rate Max Types |
| [**list_benefit_rate_types**](BenefitsApi.md#list_benefit_rate_types) | **GET** /benefit-rate-types | List Benefit Rate Types |
| [**list_benefits**](BenefitsApi.md#list_benefits) | **GET** /benefits | List Benefits |
| [**list_out_of_pocket_calculations**](BenefitsApi.md#list_out_of_pocket_calculations) | **GET** /oop-calculations | List Out of Pocket (OOP) Calculations |
| [**list_out_of_pocket_types**](BenefitsApi.md#list_out_of_pocket_types) | **GET** /oop-types | List Out of Pocket (OOP) Types |
| [**list_plan_benefit_amount_types**](BenefitsApi.md#list_plan_benefit_amount_types) | **GET** /plan-benefit-amount-types | List Plan Benefit Amount Types |
| [**list_plan_benefit_co_pay_per_types**](BenefitsApi.md#list_plan_benefit_co_pay_per_types) | **GET** /plan-benefit-co-pay-per-types | List Plan Benefit Co-Pay Per Types |
| [**update_batch_benefits**](BenefitsApi.md#update_batch_benefits) | **PUT** /benefits-batch | Create or Update Batch of Benefits |
| [**update_benefit**](BenefitsApi.md#update_benefit) | **PUT** /benefits/{benefitCode} | Update Benefit |


## create_benefit

> <BenefitCodesVBAResponse> create_benefit(vbasoftware_database, benefit_codes)

Create Benefit

Creates a new Benefit

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_codes = Vba::BenefitCodes.new({benefit_code: 'benefit_code_example', allow_flat_tax: false, medicare: 'medicare_example', pend_flag: 'pend_flag_example'}) # BenefitCodes | 

begin
  # Create Benefit
  result = api_instance.create_benefit(vbasoftware_database, benefit_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->create_benefit: #{e}"
end
```

#### Using the create_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCodesVBAResponse>, Integer, Hash)> create_benefit_with_http_info(vbasoftware_database, benefit_codes)

```ruby
begin
  # Create Benefit
  data, status_code, headers = api_instance.create_benefit_with_http_info(vbasoftware_database, benefit_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->create_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_codes** | [**BenefitCodes**](BenefitCodes.md) |  |  |

### Return type

[**BenefitCodesVBAResponse**](BenefitCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_benefit_codes

> delete_benefit_codes(vbasoftware_database, benefit_code)

Delete a Benefit

Deletes a specific Benefit by Benefit Code

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Delete a Benefit
  api_instance.delete_benefit_codes(vbasoftware_database, benefit_code)
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->delete_benefit_codes: #{e}"
end
```

#### Using the delete_benefit_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_benefit_codes_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # Delete a Benefit
  data, status_code, headers = api_instance.delete_benefit_codes_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->delete_benefit_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_benefit

> <BenefitCodesVBAResponse> get_benefit(vbasoftware_database, benefit_code)

Get a Benefit

Gets a specific Benefit by Benefit Code

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code

begin
  # Get a Benefit
  result = api_instance.get_benefit(vbasoftware_database, benefit_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->get_benefit: #{e}"
end
```

#### Using the get_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCodesVBAResponse>, Integer, Hash)> get_benefit_with_http_info(vbasoftware_database, benefit_code)

```ruby
begin
  # Get a Benefit
  data, status_code, headers = api_instance.get_benefit_with_http_info(vbasoftware_database, benefit_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->get_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |

### Return type

[**BenefitCodesVBAResponse**](BenefitCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_levels

> <StringStaticOptionListVBAResponse> list_benefit_levels(vbasoftware_database)

List Benefit Levels

List of all Benefit Levels with Key, Display and Description

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Levels
  result = api_instance.list_benefit_levels(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_levels: #{e}"
end
```

#### Using the list_benefit_levels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_levels_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Levels
  data, status_code, headers = api_instance.list_benefit_levels_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_levels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_plan_dental_designation_types

> <StringStaticOptionListVBAResponse> list_benefit_plan_dental_designation_types(vbasoftware_database)

List Benefit Plan Dental Designation Types

List of all Benefit Plan Dental Designation Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Plan Dental Designation Types
  result = api_instance.list_benefit_plan_dental_designation_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_dental_designation_types: #{e}"
end
```

#### Using the list_benefit_plan_dental_designation_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_plan_dental_designation_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Plan Dental Designation Types
  data, status_code, headers = api_instance.list_benefit_plan_dental_designation_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_dental_designation_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_plan_maximum_coverage_types

> <StringStaticOptionListVBAResponse> list_benefit_plan_maximum_coverage_types(vbasoftware_database)

List Benefit Plan Maximum Scope Types

List of all Benefit Plan Maximum Coverage Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Plan Maximum Scope Types
  result = api_instance.list_benefit_plan_maximum_coverage_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_coverage_types: #{e}"
end
```

#### Using the list_benefit_plan_maximum_coverage_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_plan_maximum_coverage_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Plan Maximum Scope Types
  data, status_code, headers = api_instance.list_benefit_plan_maximum_coverage_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_coverage_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_plan_maximum_network_types

> <StringStaticOptionListVBAResponse> list_benefit_plan_maximum_network_types(vbasoftware_database)

List Benefit Plan Maximum Network Types

List of all Benefit Plan Maximum Network Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Plan Maximum Network Types
  result = api_instance.list_benefit_plan_maximum_network_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_network_types: #{e}"
end
```

#### Using the list_benefit_plan_maximum_network_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_plan_maximum_network_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Plan Maximum Network Types
  data, status_code, headers = api_instance.list_benefit_plan_maximum_network_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_network_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_plan_maximum_per_types

> <StringStaticOptionListVBAResponse> list_benefit_plan_maximum_per_types(vbasoftware_database)

List Benefit Plan Maximum Per Types

List of all Benefit Plan Maximum Per Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Plan Maximum Per Types
  result = api_instance.list_benefit_plan_maximum_per_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_per_types: #{e}"
end
```

#### Using the list_benefit_plan_maximum_per_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_plan_maximum_per_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Plan Maximum Per Types
  data, status_code, headers = api_instance.list_benefit_plan_maximum_per_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_per_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_plan_maximum_types

> <StringStaticOptionListVBAResponse> list_benefit_plan_maximum_types(vbasoftware_database)

List Benefit Plan Maximum Types

List of all Benefit Plan Maximum Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Plan Maximum Types
  result = api_instance.list_benefit_plan_maximum_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_types: #{e}"
end
```

#### Using the list_benefit_plan_maximum_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_plan_maximum_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Plan Maximum Types
  data, status_code, headers = api_instance.list_benefit_plan_maximum_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_maximum_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_plan_riders

> <BenefitCodesListVBAResponse> list_benefit_plan_riders(vbasoftware_database, plan_id, opts)

List Benefit Riders

Lists all Benefits that are Riders on a specific Plan

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_id = 'plan_id_example' # String | PlanId
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Benefit Riders
  result = api_instance.list_benefit_plan_riders(vbasoftware_database, plan_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_riders: #{e}"
end
```

#### Using the list_benefit_plan_riders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCodesListVBAResponse>, Integer, Hash)> list_benefit_plan_riders_with_http_info(vbasoftware_database, plan_id, opts)

```ruby
begin
  # List Benefit Riders
  data, status_code, headers = api_instance.list_benefit_plan_riders_with_http_info(vbasoftware_database, plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_plan_riders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_id** | **String** | PlanId |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**BenefitCodesListVBAResponse**](BenefitCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_rate_max_types

> <StringStaticOptionListVBAResponse> list_benefit_rate_max_types(vbasoftware_database)

List Benefit Rate Max Types

List all Benefit Rate Max Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Rate Max Types
  result = api_instance.list_benefit_rate_max_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_rate_max_types: #{e}"
end
```

#### Using the list_benefit_rate_max_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_rate_max_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Rate Max Types
  data, status_code, headers = api_instance.list_benefit_rate_max_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_rate_max_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefit_rate_types

> <StringStaticOptionListVBAResponse> list_benefit_rate_types(vbasoftware_database)

List Benefit Rate Types

List all Benefit Rate Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Benefit Rate Types
  result = api_instance.list_benefit_rate_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_rate_types: #{e}"
end
```

#### Using the list_benefit_rate_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_benefit_rate_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Benefit Rate Types
  data, status_code, headers = api_instance.list_benefit_rate_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefit_rate_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_benefits

> <BenefitCodesListVBAResponse> list_benefits(vbasoftware_database, opts)

List Benefits

Lists all Benefits with optional Benefit Category

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  benefit_category: 'benefit_category_example', # String | Filter
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Benefits
  result = api_instance.list_benefits(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefits: #{e}"
end
```

#### Using the list_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCodesListVBAResponse>, Integer, Hash)> list_benefits_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Benefits
  data, status_code, headers = api_instance.list_benefits_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **benefit_category** | **String** | Filter | [optional] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**BenefitCodesListVBAResponse**](BenefitCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_out_of_pocket_calculations

> <StringStaticOptionListVBAResponse> list_out_of_pocket_calculations(vbasoftware_database)

List Out of Pocket (OOP) Calculations

List all Out of Pocket (OOP) Calculation key/value pairings.

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Out of Pocket (OOP) Calculations
  result = api_instance.list_out_of_pocket_calculations(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_out_of_pocket_calculations: #{e}"
end
```

#### Using the list_out_of_pocket_calculations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_out_of_pocket_calculations_with_http_info(vbasoftware_database)

```ruby
begin
  # List Out of Pocket (OOP) Calculations
  data, status_code, headers = api_instance.list_out_of_pocket_calculations_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_out_of_pocket_calculations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_out_of_pocket_types

> <StringStaticOptionListVBAResponse> list_out_of_pocket_types(vbasoftware_database)

List Out of Pocket (OOP) Types

List all Out of Pocket (OOP) Type key/value pairings.

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Out of Pocket (OOP) Types
  result = api_instance.list_out_of_pocket_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_out_of_pocket_types: #{e}"
end
```

#### Using the list_out_of_pocket_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_out_of_pocket_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Out of Pocket (OOP) Types
  data, status_code, headers = api_instance.list_out_of_pocket_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_out_of_pocket_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_amount_types

> <StringStaticOptionListVBAResponse> list_plan_benefit_amount_types(vbasoftware_database)

List Plan Benefit Amount Types

List Plan Benefit Amount Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Plan Benefit Amount Types
  result = api_instance.list_plan_benefit_amount_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_plan_benefit_amount_types: #{e}"
end
```

#### Using the list_plan_benefit_amount_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_plan_benefit_amount_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Plan Benefit Amount Types
  data, status_code, headers = api_instance.list_plan_benefit_amount_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_plan_benefit_amount_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_plan_benefit_co_pay_per_types

> <StringStaticOptionListVBAResponse> list_plan_benefit_co_pay_per_types(vbasoftware_database)

List Plan Benefit Co-Pay Per Types

List Plan Benefit Co-Pay Per Types

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Plan Benefit Co-Pay Per Types
  result = api_instance.list_plan_benefit_co_pay_per_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_plan_benefit_co_pay_per_types: #{e}"
end
```

#### Using the list_plan_benefit_co_pay_per_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_plan_benefit_co_pay_per_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Plan Benefit Co-Pay Per Types
  data, status_code, headers = api_instance.list_plan_benefit_co_pay_per_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->list_plan_benefit_co_pay_per_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_benefits

> <MultiCodeResponseListVBAResponse> update_batch_benefits(vbasoftware_database, benefit_codes)

Create or Update Batch of Benefits

Create or Update multiple Benefits at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_codes = [Vba::BenefitCodes.new({benefit_code: 'benefit_code_example', allow_flat_tax: false, medicare: 'medicare_example', pend_flag: 'pend_flag_example'})] # Array<BenefitCodes> | 

begin
  # Create or Update Batch of Benefits
  result = api_instance.update_batch_benefits(vbasoftware_database, benefit_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->update_batch_benefits: #{e}"
end
```

#### Using the update_batch_benefits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_benefits_with_http_info(vbasoftware_database, benefit_codes)

```ruby
begin
  # Create or Update Batch of Benefits
  data, status_code, headers = api_instance.update_batch_benefits_with_http_info(vbasoftware_database, benefit_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->update_batch_benefits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_codes** | [**Array&lt;BenefitCodes&gt;**](BenefitCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_benefit

> <BenefitCodesVBAResponse> update_benefit(vbasoftware_database, benefit_code, benefit_codes)

Update Benefit

Updates a specific Benefit

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

api_instance = Vba::BenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
benefit_code = 'benefit_code_example' # String | Benefit Code
benefit_codes = Vba::BenefitCodes.new({benefit_code: 'benefit_code_example', allow_flat_tax: false, medicare: 'medicare_example', pend_flag: 'pend_flag_example'}) # BenefitCodes | 

begin
  # Update Benefit
  result = api_instance.update_benefit(vbasoftware_database, benefit_code, benefit_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->update_benefit: #{e}"
end
```

#### Using the update_benefit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BenefitCodesVBAResponse>, Integer, Hash)> update_benefit_with_http_info(vbasoftware_database, benefit_code, benefit_codes)

```ruby
begin
  # Update Benefit
  data, status_code, headers = api_instance.update_benefit_with_http_info(vbasoftware_database, benefit_code, benefit_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BenefitCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling BenefitsApi->update_benefit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **benefit_code** | **String** | Benefit Code |  |
| **benefit_codes** | [**BenefitCodes**](BenefitCodes.md) |  |  |

### Return type

[**BenefitCodesVBAResponse**](BenefitCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

