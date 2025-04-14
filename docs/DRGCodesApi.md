# Vba::DRGCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_drg_codes**](DRGCodesApi.md#create_drg_codes) | **POST** /drg-codes | Create DRGCodes |
| [**delete_drg_codes**](DRGCodesApi.md#delete_drg_codes) | **DELETE** /drg-codes/{dRGCode} | Delete DRGCodes |
| [**get_drg_codes**](DRGCodesApi.md#get_drg_codes) | **GET** /drg-codes/{dRGCode} | Get DRGCodes |
| [**update_batch_drg_codes**](DRGCodesApi.md#update_batch_drg_codes) | **PUT** /drg-codes-batch | Create or Update Batch DRGCodes |
| [**update_drg_codes**](DRGCodesApi.md#update_drg_codes) | **PUT** /drg-codes/{dRGCode} | Update DRGCodes |


## create_drg_codes

> <DRGCodesVBAResponse> create_drg_codes(vbasoftware_database, drg_codes)

Create DRGCodes

Creates a new DRGCodes

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

api_instance = Vba::DRGCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_codes = Vba::DRGCodes.new({dr_g_code: 'dr_g_code_example'}) # DRGCodes | 

begin
  # Create DRGCodes
  result = api_instance.create_drg_codes(vbasoftware_database, drg_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->create_drg_codes: #{e}"
end
```

#### Using the create_drg_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGCodesVBAResponse>, Integer, Hash)> create_drg_codes_with_http_info(vbasoftware_database, drg_codes)

```ruby
begin
  # Create DRGCodes
  data, status_code, headers = api_instance.create_drg_codes_with_http_info(vbasoftware_database, drg_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->create_drg_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_codes** | [**DRGCodes**](DRGCodes.md) |  |  |

### Return type

[**DRGCodesVBAResponse**](DRGCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_drg_codes

> delete_drg_codes(vbasoftware_database, d_rg_code)

Delete DRGCodes

Deletes an DRGCodes

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

api_instance = Vba::DRGCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
d_rg_code = 'd_rg_code_example' # String | DRG Code

begin
  # Delete DRGCodes
  api_instance.delete_drg_codes(vbasoftware_database, d_rg_code)
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->delete_drg_codes: #{e}"
end
```

#### Using the delete_drg_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_drg_codes_with_http_info(vbasoftware_database, d_rg_code)

```ruby
begin
  # Delete DRGCodes
  data, status_code, headers = api_instance.delete_drg_codes_with_http_info(vbasoftware_database, d_rg_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->delete_drg_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **d_rg_code** | **String** | DRG Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_drg_codes

> <DRGCodesVBAResponse> get_drg_codes(vbasoftware_database, d_rg_code)

Get DRGCodes

Gets DRGCodes

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

api_instance = Vba::DRGCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
d_rg_code = 'd_rg_code_example' # String | DRG Code

begin
  # Get DRGCodes
  result = api_instance.get_drg_codes(vbasoftware_database, d_rg_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->get_drg_codes: #{e}"
end
```

#### Using the get_drg_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGCodesVBAResponse>, Integer, Hash)> get_drg_codes_with_http_info(vbasoftware_database, d_rg_code)

```ruby
begin
  # Get DRGCodes
  data, status_code, headers = api_instance.get_drg_codes_with_http_info(vbasoftware_database, d_rg_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->get_drg_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **d_rg_code** | **String** | DRG Code |  |

### Return type

[**DRGCodesVBAResponse**](DRGCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_drg_codes

> <MultiCodeResponseListVBAResponse> update_batch_drg_codes(vbasoftware_database, drg_codes)

Create or Update Batch DRGCodes

Create or Update multiple DRGCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DRGCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
drg_codes = [Vba::DRGCodes.new({dr_g_code: 'dr_g_code_example'})] # Array<DRGCodes> | 

begin
  # Create or Update Batch DRGCodes
  result = api_instance.update_batch_drg_codes(vbasoftware_database, drg_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->update_batch_drg_codes: #{e}"
end
```

#### Using the update_batch_drg_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_drg_codes_with_http_info(vbasoftware_database, drg_codes)

```ruby
begin
  # Create or Update Batch DRGCodes
  data, status_code, headers = api_instance.update_batch_drg_codes_with_http_info(vbasoftware_database, drg_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->update_batch_drg_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **drg_codes** | [**Array&lt;DRGCodes&gt;**](DRGCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_drg_codes

> <DRGCodesVBAResponse> update_drg_codes(vbasoftware_database, d_rg_code, drg_codes)

Update DRGCodes

Updates a specific DRGCodes.

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

api_instance = Vba::DRGCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
d_rg_code = 'd_rg_code_example' # String | DRG Code
drg_codes = Vba::DRGCodes.new({dr_g_code: 'dr_g_code_example'}) # DRGCodes | 

begin
  # Update DRGCodes
  result = api_instance.update_drg_codes(vbasoftware_database, d_rg_code, drg_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->update_drg_codes: #{e}"
end
```

#### Using the update_drg_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DRGCodesVBAResponse>, Integer, Hash)> update_drg_codes_with_http_info(vbasoftware_database, d_rg_code, drg_codes)

```ruby
begin
  # Update DRGCodes
  data, status_code, headers = api_instance.update_drg_codes_with_http_info(vbasoftware_database, d_rg_code, drg_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DRGCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DRGCodesApi->update_drg_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **d_rg_code** | **String** | DRG Code |  |
| **drg_codes** | [**DRGCodes**](DRGCodes.md) |  |  |

### Return type

[**DRGCodesVBAResponse**](DRGCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

