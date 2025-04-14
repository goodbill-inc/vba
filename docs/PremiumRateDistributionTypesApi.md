# Vba::PremiumRateDistributionTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_premium_rate_distribution_types**](PremiumRateDistributionTypesApi.md#list_premium_rate_distribution_types) | **GET** /premium-rate-distribution-types | List Premium Rate Distribution Types |


## list_premium_rate_distribution_types

> <StringStaticOptionListVBAResponse> list_premium_rate_distribution_types(vbasoftware_database)

List Premium Rate Distribution Types

List Premium Rate Distribution Types

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

api_instance = Vba::PremiumRateDistributionTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Premium Rate Distribution Types
  result = api_instance.list_premium_rate_distribution_types(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateDistributionTypesApi->list_premium_rate_distribution_types: #{e}"
end
```

#### Using the list_premium_rate_distribution_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_premium_rate_distribution_types_with_http_info(vbasoftware_database)

```ruby
begin
  # List Premium Rate Distribution Types
  data, status_code, headers = api_instance.list_premium_rate_distribution_types_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateDistributionTypesApi->list_premium_rate_distribution_types_with_http_info: #{e}"
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

