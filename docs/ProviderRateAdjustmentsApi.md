# Vba::ProviderRateAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_rate_adjust**](ProviderRateAdjustmentsApi.md#create_provider_rate_adjust) | **POST** /providers/{providerId}/rates/{providerRateKey}/adjustments | Create ProviderRateAdjust |
| [**delete_provider_rate_adjust**](ProviderRateAdjustmentsApi.md#delete_provider_rate_adjust) | **DELETE** /providers/{providerId}/rates/{providerRateKey}/adjustments/{providerRateAdjustKey} | Delete ProviderRateAdjust |
| [**get_provider_rate_adjust**](ProviderRateAdjustmentsApi.md#get_provider_rate_adjust) | **GET** /providers/{providerId}/rates/{providerRateKey}/adjustments/{providerRateAdjustKey} | Get ProviderRateAdjust |
| [**list_provider_rate_adjustments**](ProviderRateAdjustmentsApi.md#list_provider_rate_adjustments) | **GET** /providers/{providerId}/rates/{providerRateKey}/adjustments | List Provider Rate Adjustments |
| [**update_batch_provider_rate_adjust**](ProviderRateAdjustmentsApi.md#update_batch_provider_rate_adjust) | **PUT** /providers/{providerId}/rates/{providerRateKey}/adjustments-batch | Update Batch ProviderRateAdjust |
| [**update_provider_rate_adjust**](ProviderRateAdjustmentsApi.md#update_provider_rate_adjust) | **PUT** /providers/{providerId}/rates/{providerRateKey}/adjustments/{providerRateAdjustKey} | Update ProviderRateAdjust |


## create_provider_rate_adjust

> <ProviderRateAdjustVBAResponse> create_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)

Create ProviderRateAdjust

Creates a new ProviderRateAdjust

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

api_instance = Vba::ProviderRateAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_adjust = Vba::ProviderRateAdjust.new({provider_rate_adjust_key: 37, adjust_seq: 37, provider_rate_key: 37}) # ProviderRateAdjust | 

begin
  # Create ProviderRateAdjust
  result = api_instance.create_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->create_provider_rate_adjust: #{e}"
end
```

#### Using the create_provider_rate_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateAdjustVBAResponse>, Integer, Hash)> create_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)

```ruby
begin
  # Create ProviderRateAdjust
  data, status_code, headers = api_instance.create_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->create_provider_rate_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_adjust** | [**ProviderRateAdjust**](ProviderRateAdjust.md) |  |  |

### Return type

[**ProviderRateAdjustVBAResponse**](ProviderRateAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_rate_adjust

> delete_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)

Delete ProviderRateAdjust

Deletes an ProviderRateAdjust

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

api_instance = Vba::ProviderRateAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_adjust_key = 56 # Integer | Provider Rate Adjust Key

begin
  # Delete ProviderRateAdjust
  api_instance.delete_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->delete_provider_rate_adjust: #{e}"
end
```

#### Using the delete_provider_rate_adjust_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)

```ruby
begin
  # Delete ProviderRateAdjust
  data, status_code, headers = api_instance.delete_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->delete_provider_rate_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_adjust_key** | **Integer** | Provider Rate Adjust Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_rate_adjust

> <ProviderRateAdjustVBAResponse> get_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)

Get ProviderRateAdjust

Gets ProviderRateAdjust

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

api_instance = Vba::ProviderRateAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_adjust_key = 56 # Integer | Provider Rate Adjust Key

begin
  # Get ProviderRateAdjust
  result = api_instance.get_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->get_provider_rate_adjust: #{e}"
end
```

#### Using the get_provider_rate_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateAdjustVBAResponse>, Integer, Hash)> get_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)

```ruby
begin
  # Get ProviderRateAdjust
  data, status_code, headers = api_instance.get_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->get_provider_rate_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_adjust_key** | **Integer** | Provider Rate Adjust Key |  |

### Return type

[**ProviderRateAdjustVBAResponse**](ProviderRateAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_rate_adjustments

> <ProviderRateAdjustListVBAResponse> list_provider_rate_adjustments(vbasoftware_database, provider_id, provider_rate_key)

List Provider Rate Adjustments

List Adjustments for a specific Provider Rate 

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

api_instance = Vba::ProviderRateAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key

begin
  # List Provider Rate Adjustments
  result = api_instance.list_provider_rate_adjustments(vbasoftware_database, provider_id, provider_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->list_provider_rate_adjustments: #{e}"
end
```

#### Using the list_provider_rate_adjustments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateAdjustListVBAResponse>, Integer, Hash)> list_provider_rate_adjustments_with_http_info(vbasoftware_database, provider_id, provider_rate_key)

```ruby
begin
  # List Provider Rate Adjustments
  data, status_code, headers = api_instance.list_provider_rate_adjustments_with_http_info(vbasoftware_database, provider_id, provider_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateAdjustListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->list_provider_rate_adjustments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |

### Return type

[**ProviderRateAdjustListVBAResponse**](ProviderRateAdjustListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_rate_adjust

> <MultiCodeResponseListVBAResponse> update_batch_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)

Update Batch ProviderRateAdjust

Create or Update multiple ProviderRateAdjust.

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

api_instance = Vba::ProviderRateAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_adjust = [Vba::ProviderRateAdjust.new({provider_rate_adjust_key: 37, adjust_seq: 37, provider_rate_key: 37})] # Array<ProviderRateAdjust> | 

begin
  # Update Batch ProviderRateAdjust
  result = api_instance.update_batch_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->update_batch_provider_rate_adjust: #{e}"
end
```

#### Using the update_batch_provider_rate_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)

```ruby
begin
  # Update Batch ProviderRateAdjust
  data, status_code, headers = api_instance.update_batch_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->update_batch_provider_rate_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_adjust** | [**Array&lt;ProviderRateAdjust&gt;**](ProviderRateAdjust.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_rate_adjust

> <ProviderRateAdjustVBAResponse> update_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust)

Update ProviderRateAdjust

Updates a specific ProviderRateAdjust.

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

api_instance = Vba::ProviderRateAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | Provider Rate Key
provider_rate_adjust_key = 56 # Integer | Provider Rate Adjust Key
provider_rate_adjust = Vba::ProviderRateAdjust.new({provider_rate_adjust_key: 37, adjust_seq: 37, provider_rate_key: 37}) # ProviderRateAdjust | 

begin
  # Update ProviderRateAdjust
  result = api_instance.update_provider_rate_adjust(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->update_provider_rate_adjust: #{e}"
end
```

#### Using the update_provider_rate_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateAdjustVBAResponse>, Integer, Hash)> update_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust)

```ruby
begin
  # Update ProviderRateAdjust
  data, status_code, headers = api_instance.update_provider_rate_adjust_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_adjust_key, provider_rate_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRateAdjustmentsApi->update_provider_rate_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | Provider Rate Key |  |
| **provider_rate_adjust_key** | **Integer** | Provider Rate Adjust Key |  |
| **provider_rate_adjust** | [**ProviderRateAdjust**](ProviderRateAdjust.md) |  |  |

### Return type

[**ProviderRateAdjustVBAResponse**](ProviderRateAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

