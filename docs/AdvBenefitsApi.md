# Vba::AdvBenefitsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_plan**](AdvBenefitsApi.md#copy_plan) | **POST** /plans-copy | Copy Plan |


## copy_plan

> <PlansVBAResponse> copy_plan(vbasoftware_database, plan_copy)

Copy Plan

Copies an existing plan.  This copy can be to a completely new Plan ID, or to overwrite an existing Plan ID.

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

api_instance = Vba::AdvBenefitsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
plan_copy = Vba::PlanCopy.new # PlanCopy | 

begin
  # Copy Plan
  result = api_instance.copy_plan(vbasoftware_database, plan_copy)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvBenefitsApi->copy_plan: #{e}"
end
```

#### Using the copy_plan_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PlansVBAResponse>, Integer, Hash)> copy_plan_with_http_info(vbasoftware_database, plan_copy)

```ruby
begin
  # Copy Plan
  data, status_code, headers = api_instance.copy_plan_with_http_info(vbasoftware_database, plan_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PlansVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvBenefitsApi->copy_plan_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **plan_copy** | [**PlanCopy**](PlanCopy.md) |  |  |

### Return type

[**PlansVBAResponse**](PlansVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

