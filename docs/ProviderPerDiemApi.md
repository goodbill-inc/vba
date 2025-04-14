# Vba::ProviderPerDiemApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_per_diem**](ProviderPerDiemApi.md#create_provider_per_diem) | **POST** /providers/{providerID}/per-diems | Create ProviderPerDiem |
| [**delete_provider_per_diem**](ProviderPerDiemApi.md#delete_provider_per_diem) | **DELETE** /providers/{providerID}/per-diems/{providerPerDiemKey} | Delete ProviderPerDiem |
| [**get_provider_per_diem**](ProviderPerDiemApi.md#get_provider_per_diem) | **GET** /providers/{providerID}/per-diems/{providerPerDiemKey} | Get ProviderPerDiem |
| [**list_provider_per_diem**](ProviderPerDiemApi.md#list_provider_per_diem) | **GET** /providers/{providerID}/per-diems | List ProviderPerDiem |
| [**update_batch_provider_per_diem**](ProviderPerDiemApi.md#update_batch_provider_per_diem) | **PUT** /providers/{providerID}/per-diems-batch | Create or Update Batch ProviderPerDiem |
| [**update_provider_per_diem**](ProviderPerDiemApi.md#update_provider_per_diem) | **PUT** /providers/{providerID}/per-diems/{providerPerDiemKey} | Update ProviderPerDiem |


## create_provider_per_diem

> <ProviderPerDiemVBAResponse> create_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem)

Create ProviderPerDiem

Creates a new ProviderPerDiem

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

api_instance = Vba::ProviderPerDiemApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem = Vba::ProviderPerDiem.new({provider_per_diem_key: 37, apply_oon: false, e_r_rate: false, effective_date: Time.now, inpatient: false, provider_id: 'provider_id_example', unit_based: false}) # ProviderPerDiem | 

begin
  # Create ProviderPerDiem
  result = api_instance.create_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->create_provider_per_diem: #{e}"
end
```

#### Using the create_provider_per_diem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemVBAResponse>, Integer, Hash)> create_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem)

```ruby
begin
  # Create ProviderPerDiem
  data, status_code, headers = api_instance.create_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->create_provider_per_diem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem** | [**ProviderPerDiem**](ProviderPerDiem.md) |  |  |

### Return type

[**ProviderPerDiemVBAResponse**](ProviderPerDiemVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_per_diem

> delete_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem_key)

Delete ProviderPerDiem

Deletes an ProviderPerDiem

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

api_instance = Vba::ProviderPerDiemApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key

begin
  # Delete ProviderPerDiem
  api_instance.delete_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem_key)
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->delete_provider_per_diem: #{e}"
end
```

#### Using the delete_provider_per_diem_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key)

```ruby
begin
  # Delete ProviderPerDiem
  data, status_code, headers = api_instance.delete_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->delete_provider_per_diem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_per_diem

> <ProviderPerDiemVBAResponse> get_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem_key)

Get ProviderPerDiem

Gets ProviderPerDiem

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

api_instance = Vba::ProviderPerDiemApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key

begin
  # Get ProviderPerDiem
  result = api_instance.get_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->get_provider_per_diem: #{e}"
end
```

#### Using the get_provider_per_diem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemVBAResponse>, Integer, Hash)> get_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key)

```ruby
begin
  # Get ProviderPerDiem
  data, status_code, headers = api_instance.get_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->get_provider_per_diem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |

### Return type

[**ProviderPerDiemVBAResponse**](ProviderPerDiemVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_per_diem

> <ProviderPerDiemListVBAResponse> list_provider_per_diem(vbasoftware_database, provider_id)

List ProviderPerDiem

List ProviderPerDiem for a specific Provider

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

api_instance = Vba::ProviderPerDiemApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID

begin
  # List ProviderPerDiem
  result = api_instance.list_provider_per_diem(vbasoftware_database, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->list_provider_per_diem: #{e}"
end
```

#### Using the list_provider_per_diem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemListVBAResponse>, Integer, Hash)> list_provider_per_diem_with_http_info(vbasoftware_database, provider_id)

```ruby
begin
  # List ProviderPerDiem
  data, status_code, headers = api_instance.list_provider_per_diem_with_http_info(vbasoftware_database, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->list_provider_per_diem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**ProviderPerDiemListVBAResponse**](ProviderPerDiemListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_per_diem

> <MultiCodeResponseListVBAResponse> update_batch_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem)

Create or Update Batch ProviderPerDiem

Create or Update multiple ProviderPerDiem at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderPerDiemApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem = [Vba::ProviderPerDiem.new({provider_per_diem_key: 37, apply_oon: false, e_r_rate: false, effective_date: Time.now, inpatient: false, provider_id: 'provider_id_example', unit_based: false})] # Array<ProviderPerDiem> | 

begin
  # Create or Update Batch ProviderPerDiem
  result = api_instance.update_batch_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->update_batch_provider_per_diem: #{e}"
end
```

#### Using the update_batch_provider_per_diem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem)

```ruby
begin
  # Create or Update Batch ProviderPerDiem
  data, status_code, headers = api_instance.update_batch_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->update_batch_provider_per_diem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem** | [**Array&lt;ProviderPerDiem&gt;**](ProviderPerDiem.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_per_diem

> <ProviderPerDiemVBAResponse> update_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem)

Update ProviderPerDiem

Updates a specific ProviderPerDiem.

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

api_instance = Vba::ProviderPerDiemApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
provider_per_diem_key = 56 # Integer | ProviderPerDiem Key
provider_per_diem = Vba::ProviderPerDiem.new({provider_per_diem_key: 37, apply_oon: false, e_r_rate: false, effective_date: Time.now, inpatient: false, provider_id: 'provider_id_example', unit_based: false}) # ProviderPerDiem | 

begin
  # Update ProviderPerDiem
  result = api_instance.update_provider_per_diem(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->update_provider_per_diem: #{e}"
end
```

#### Using the update_provider_per_diem_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderPerDiemVBAResponse>, Integer, Hash)> update_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem)

```ruby
begin
  # Update ProviderPerDiem
  data, status_code, headers = api_instance.update_provider_per_diem_with_http_info(vbasoftware_database, provider_id, provider_per_diem_key, provider_per_diem)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderPerDiemVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderPerDiemApi->update_provider_per_diem_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **provider_per_diem_key** | **Integer** | ProviderPerDiem Key |  |
| **provider_per_diem** | [**ProviderPerDiem**](ProviderPerDiem.md) |  |  |

### Return type

[**ProviderPerDiemVBAResponse**](ProviderPerDiemVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

