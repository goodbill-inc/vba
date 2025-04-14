# Vba::ProviderRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_rate**](ProviderRatesApi.md#create_provider_rate) | **POST** /providers/{providerId}/rates | Create Provider Rate |
| [**delete_provider_rate**](ProviderRatesApi.md#delete_provider_rate) | **DELETE** /providers/{providerId}/rates/{providerRateKey} | Delete ProviderRate |
| [**get_provider_rate**](ProviderRatesApi.md#get_provider_rate) | **GET** /providers/{providerId}/rates/{providerRateKey} | Get Provider Rate |
| [**list_provider_rates**](ProviderRatesApi.md#list_provider_rates) | **GET** /providers/{providerId}/rates | List Provider Rates |
| [**update_batch_provider_rate**](ProviderRatesApi.md#update_batch_provider_rate) | **PUT** /providers/{providerId}/rates-batch | Update Batch ProviderRate |
| [**update_provider_rate**](ProviderRatesApi.md#update_provider_rate) | **PUT** /providers/{providerId}/rates/{providerRateKey} | Update ProviderRate |


## create_provider_rate

> <ProviderRateVBAResponse> create_provider_rate(vbasoftware_database, provider_id, provider_rate)

Create Provider Rate

Creates a new Provider Rate

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

api_instance = Vba::ProviderRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate = Vba::ProviderRate.new({provider_rate_key: 37, add_on_rate_drg: false, add_on_rate_per_diem: false, inpatient: false, outpatient: false, provider_id: 'provider_id_example', rate_percent: false}) # ProviderRate | 

begin
  # Create Provider Rate
  result = api_instance.create_provider_rate(vbasoftware_database, provider_id, provider_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->create_provider_rate: #{e}"
end
```

#### Using the create_provider_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateVBAResponse>, Integer, Hash)> create_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate)

```ruby
begin
  # Create Provider Rate
  data, status_code, headers = api_instance.create_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->create_provider_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate** | [**ProviderRate**](ProviderRate.md) |  |  |

### Return type

[**ProviderRateVBAResponse**](ProviderRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_rate

> delete_provider_rate(vbasoftware_database, provider_id, provider_rate_key)

Delete ProviderRate

Deletes an ProviderRate

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

api_instance = Vba::ProviderRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | ProviderRate Key

begin
  # Delete ProviderRate
  api_instance.delete_provider_rate(vbasoftware_database, provider_id, provider_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->delete_provider_rate: #{e}"
end
```

#### Using the delete_provider_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate_key)

```ruby
begin
  # Delete ProviderRate
  data, status_code, headers = api_instance.delete_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->delete_provider_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | ProviderRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_rate

> <ProviderRateVBAResponse> get_provider_rate(vbasoftware_database, provider_id, provider_rate_key)

Get Provider Rate

Gets Provider Rate

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

api_instance = Vba::ProviderRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | ProviderRate Key

begin
  # Get Provider Rate
  result = api_instance.get_provider_rate(vbasoftware_database, provider_id, provider_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->get_provider_rate: #{e}"
end
```

#### Using the get_provider_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateVBAResponse>, Integer, Hash)> get_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate_key)

```ruby
begin
  # Get Provider Rate
  data, status_code, headers = api_instance.get_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->get_provider_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | ProviderRate Key |  |

### Return type

[**ProviderRateVBAResponse**](ProviderRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_rates

> <ProviderRateListVBAResponse> list_provider_rates(vbasoftware_database, provider_id)

List Provider Rates

List Provider Rates

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

api_instance = Vba::ProviderRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List Provider Rates
  result = api_instance.list_provider_rates(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->list_provider_rates: #{e}"
end
```

#### Using the list_provider_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateListVBAResponse>, Integer, Hash)> list_provider_rates_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List Provider Rates
  data, status_code, headers = api_instance.list_provider_rates_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->list_provider_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderRateListVBAResponse**](ProviderRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_rate

> <MultiCodeResponseListVBAResponse> update_batch_provider_rate(vbasoftware_database, provider_id, provider_rate)

Update Batch ProviderRate

Updates a multiple ProviderRate.

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

api_instance = Vba::ProviderRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate = [Vba::ProviderRate.new({provider_rate_key: 37, add_on_rate_drg: false, add_on_rate_per_diem: false, inpatient: false, outpatient: false, provider_id: 'provider_id_example', rate_percent: false})] # Array<ProviderRate> | 

begin
  # Update Batch ProviderRate
  result = api_instance.update_batch_provider_rate(vbasoftware_database, provider_id, provider_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->update_batch_provider_rate: #{e}"
end
```

#### Using the update_batch_provider_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate)

```ruby
begin
  # Update Batch ProviderRate
  data, status_code, headers = api_instance.update_batch_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->update_batch_provider_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate** | [**Array&lt;ProviderRate&gt;**](ProviderRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_rate

> <ProviderRateVBAResponse> update_provider_rate(vbasoftware_database, provider_id, provider_rate_key, provider_rate)

Update ProviderRate

Updates a specific ProviderRate.

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

api_instance = Vba::ProviderRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_rate_key = 56 # Integer | ProviderRate Key
provider_rate = Vba::ProviderRate.new({provider_rate_key: 37, add_on_rate_drg: false, add_on_rate_per_diem: false, inpatient: false, outpatient: false, provider_id: 'provider_id_example', rate_percent: false}) # ProviderRate | 

begin
  # Update ProviderRate
  result = api_instance.update_provider_rate(vbasoftware_database, provider_id, provider_rate_key, provider_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->update_provider_rate: #{e}"
end
```

#### Using the update_provider_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRateVBAResponse>, Integer, Hash)> update_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate)

```ruby
begin
  # Update ProviderRate
  data, status_code, headers = api_instance.update_provider_rate_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRatesApi->update_provider_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_rate_key** | **Integer** | ProviderRate Key |  |
| **provider_rate** | [**ProviderRate**](ProviderRate.md) |  |  |

### Return type

[**ProviderRateVBAResponse**](ProviderRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

