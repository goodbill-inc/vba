# Vba::HIPAATiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_hipaa_tier**](HIPAATiersApi.md#create_hipaa_tier) | **POST** /hipaa-tiers | Create HIPAATier |
| [**delete_hipaa_tier**](HIPAATiersApi.md#delete_hipaa_tier) | **DELETE** /hipaa-tiers/{hIPAACode} | Delete HIPAATier |
| [**get_hipaa_tier**](HIPAATiersApi.md#get_hipaa_tier) | **GET** /hipaa-tiers/{hIPAACode} | Get HIPAATier |
| [**list_hipaa_tier**](HIPAATiersApi.md#list_hipaa_tier) | **GET** /hipaa-tiers | List HIPAATier |
| [**update_batch_hipaa_tier**](HIPAATiersApi.md#update_batch_hipaa_tier) | **PUT** /hipaa-tiers-batch | Create or Update Batch HIPAATier |
| [**update_hipaa_tier**](HIPAATiersApi.md#update_hipaa_tier) | **PUT** /hipaa-tiers/{hIPAACode} | Update HIPAATier |


## create_hipaa_tier

> <HIPAATierVBAResponse> create_hipaa_tier(vbasoftware_database, hipaa_tier)

Create HIPAATier

Creates a new HIPAATier

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

api_instance = Vba::HIPAATiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_tier = Vba::HIPAATier.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAATier | 

begin
  # Create HIPAATier
  result = api_instance.create_hipaa_tier(vbasoftware_database, hipaa_tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->create_hipaa_tier: #{e}"
end
```

#### Using the create_hipaa_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAATierVBAResponse>, Integer, Hash)> create_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier)

```ruby
begin
  # Create HIPAATier
  data, status_code, headers = api_instance.create_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAATierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->create_hipaa_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_tier** | [**HIPAATier**](HIPAATier.md) |  |  |

### Return type

[**HIPAATierVBAResponse**](HIPAATierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_hipaa_tier

> delete_hipaa_tier(vbasoftware_database, h_ipaa_code)

Delete HIPAATier

Deletes an HIPAATier

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

api_instance = Vba::HIPAATiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Delete HIPAATier
  api_instance.delete_hipaa_tier(vbasoftware_database, h_ipaa_code)
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->delete_hipaa_tier: #{e}"
end
```

#### Using the delete_hipaa_tier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Delete HIPAATier
  data, status_code, headers = api_instance.delete_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->delete_hipaa_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_hipaa_tier

> <HIPAATierVBAResponse> get_hipaa_tier(vbasoftware_database, h_ipaa_code)

Get HIPAATier

Gets HIPAATier

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

api_instance = Vba::HIPAATiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code

begin
  # Get HIPAATier
  result = api_instance.get_hipaa_tier(vbasoftware_database, h_ipaa_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->get_hipaa_tier: #{e}"
end
```

#### Using the get_hipaa_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAATierVBAResponse>, Integer, Hash)> get_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code)

```ruby
begin
  # Get HIPAATier
  data, status_code, headers = api_instance.get_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAATierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->get_hipaa_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |

### Return type

[**HIPAATierVBAResponse**](HIPAATierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_hipaa_tier

> <HIPAATierListVBAResponse> list_hipaa_tier(vbasoftware_database)

List HIPAATier

Lists all HIPAATier given a specific 

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

api_instance = Vba::HIPAATiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List HIPAATier
  result = api_instance.list_hipaa_tier(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->list_hipaa_tier: #{e}"
end
```

#### Using the list_hipaa_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAATierListVBAResponse>, Integer, Hash)> list_hipaa_tier_with_http_info(vbasoftware_database)

```ruby
begin
  # List HIPAATier
  data, status_code, headers = api_instance.list_hipaa_tier_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAATierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->list_hipaa_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**HIPAATierListVBAResponse**](HIPAATierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_hipaa_tier

> <MultiCodeResponseListVBAResponse> update_batch_hipaa_tier(vbasoftware_database, hipaa_tier)

Create or Update Batch HIPAATier

Create or Update multiple HIPAATier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::HIPAATiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
hipaa_tier = [Vba::HIPAATier.new({hipa_a_code: 'hipa_a_code_example'})] # Array<HIPAATier> | 

begin
  # Create or Update Batch HIPAATier
  result = api_instance.update_batch_hipaa_tier(vbasoftware_database, hipaa_tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->update_batch_hipaa_tier: #{e}"
end
```

#### Using the update_batch_hipaa_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier)

```ruby
begin
  # Create or Update Batch HIPAATier
  data, status_code, headers = api_instance.update_batch_hipaa_tier_with_http_info(vbasoftware_database, hipaa_tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->update_batch_hipaa_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **hipaa_tier** | [**Array&lt;HIPAATier&gt;**](HIPAATier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_hipaa_tier

> <HIPAATierVBAResponse> update_hipaa_tier(vbasoftware_database, h_ipaa_code, hipaa_tier)

Update HIPAATier

Updates a specific HIPAATier.

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

api_instance = Vba::HIPAATiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
h_ipaa_code = 'h_ipaa_code_example' # String | HIPAA Code
hipaa_tier = Vba::HIPAATier.new({hipa_a_code: 'hipa_a_code_example'}) # HIPAATier | 

begin
  # Update HIPAATier
  result = api_instance.update_hipaa_tier(vbasoftware_database, h_ipaa_code, hipaa_tier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->update_hipaa_tier: #{e}"
end
```

#### Using the update_hipaa_tier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HIPAATierVBAResponse>, Integer, Hash)> update_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_tier)

```ruby
begin
  # Update HIPAATier
  data, status_code, headers = api_instance.update_hipaa_tier_with_http_info(vbasoftware_database, h_ipaa_code, hipaa_tier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HIPAATierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling HIPAATiersApi->update_hipaa_tier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **h_ipaa_code** | **String** | HIPAA Code |  |
| **hipaa_tier** | [**HIPAATier**](HIPAATier.md) |  |  |

### Return type

[**HIPAATierVBAResponse**](HIPAATierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

