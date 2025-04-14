# Vba::AdvCapitationApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**capitation_generate**](AdvCapitationApi.md#capitation_generate) | **POST** /capitation-generate | Capitation Generate |
| [**capitation_generate_assign**](AdvCapitationApi.md#capitation_generate_assign) | **POST** /capitation-generate-assign | Capitation Generate Assign |
| [**capitation_generate_set_unassigned**](AdvCapitationApi.md#capitation_generate_set_unassigned) | **POST** /capitation-generate-set-unassigned | Capitation Generate Set Unassigned |


## capitation_generate

> capitation_generate(vbasoftware_database, capitation_generate)

Capitation Generate

Generates Capitation records and attaches those to a new Capitation Transaction based on entered criteria.

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

api_instance = Vba::AdvCapitationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_generate = Vba::CapitationGenerate.new # CapitationGenerate | 

begin
  # Capitation Generate
  api_instance.capitation_generate(vbasoftware_database, capitation_generate)
rescue Vba::ApiError => e
  puts "Error when calling AdvCapitationApi->capitation_generate: #{e}"
end
```

#### Using the capitation_generate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capitation_generate_with_http_info(vbasoftware_database, capitation_generate)

```ruby
begin
  # Capitation Generate
  data, status_code, headers = api_instance.capitation_generate_with_http_info(vbasoftware_database, capitation_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvCapitationApi->capitation_generate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_generate** | [**CapitationGenerate**](CapitationGenerate.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined


## capitation_generate_assign

> <CapitationTransactionVBAResponse> capitation_generate_assign(vbasoftware_database, capitation_generate)

Capitation Generate Assign

Takes selected unassigned list of CapitationKeys and a valid Payee, and attaches them to a newly created Capitation Transaction.

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

api_instance = Vba::AdvCapitationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_generate = Vba::CapitationGenerate.new # CapitationGenerate | 

begin
  # Capitation Generate Assign
  result = api_instance.capitation_generate_assign(vbasoftware_database, capitation_generate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling AdvCapitationApi->capitation_generate_assign: #{e}"
end
```

#### Using the capitation_generate_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationTransactionVBAResponse>, Integer, Hash)> capitation_generate_assign_with_http_info(vbasoftware_database, capitation_generate)

```ruby
begin
  # Capitation Generate Assign
  data, status_code, headers = api_instance.capitation_generate_assign_with_http_info(vbasoftware_database, capitation_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationTransactionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling AdvCapitationApi->capitation_generate_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_generate** | [**CapitationGenerate**](CapitationGenerate.md) |  |  |

### Return type

[**CapitationTransactionVBAResponse**](CapitationTransactionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## capitation_generate_set_unassigned

> capitation_generate_set_unassigned(vbasoftware_database, capitation_generate)

Capitation Generate Set Unassigned

Takes existing unassigned capitation records and attaches them to the chosen Provider on a newly created Capitation Transaction.

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

api_instance = Vba::AdvCapitationApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_generate = Vba::CapitationGenerate.new # CapitationGenerate | 

begin
  # Capitation Generate Set Unassigned
  api_instance.capitation_generate_set_unassigned(vbasoftware_database, capitation_generate)
rescue Vba::ApiError => e
  puts "Error when calling AdvCapitationApi->capitation_generate_set_unassigned: #{e}"
end
```

#### Using the capitation_generate_set_unassigned_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> capitation_generate_set_unassigned_with_http_info(vbasoftware_database, capitation_generate)

```ruby
begin
  # Capitation Generate Set Unassigned
  data, status_code, headers = api_instance.capitation_generate_set_unassigned_with_http_info(vbasoftware_database, capitation_generate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling AdvCapitationApi->capitation_generate_set_unassigned_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_generate** | [**CapitationGenerate**](CapitationGenerate.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: Not defined

