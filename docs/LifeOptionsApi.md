# Vba::LifeOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_grace_period_types**](LifeOptionsApi.md#list_grace_period_types) | **GET** /grace-period-types | List Grace Period Types |
| [**list_maturity_age_types**](LifeOptionsApi.md#list_maturity_age_types) | **GET** /maturity-age-types | List Maturity Age Types |


## list_grace_period_types

> <StringStaticOptionListVBAResponse> list_grace_period_types(vbasoftware_database)

List Grace Period Types

List of key/value pairs

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

api_instance = Vba::LifeOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Grace Period Types
  result = api_instance.list_grace_period_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LifeOptionsApi->list_grace_period_types: #{e}"
end
```

#### Using the list_grace_period_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_grace_period_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Grace Period Types
  data, status_code, headers = api_instance.list_grace_period_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LifeOptionsApi->list_grace_period_types_with_http_info: #{e}"
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


## list_maturity_age_types

> <StringStaticOptionListVBAResponse> list_maturity_age_types(vbasoftware_database)

List Maturity Age Types

List of key/value pairs

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

api_instance = Vba::LifeOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Maturity Age Types
  result = api_instance.list_maturity_age_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling LifeOptionsApi->list_maturity_age_types: #{e}"
end
```

#### Using the list_maturity_age_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_maturity_age_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Maturity Age Types
  data, status_code, headers = api_instance.list_maturity_age_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling LifeOptionsApi->list_maturity_age_types_with_http_info: #{e}"
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

