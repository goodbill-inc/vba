# Vba::SecurityAreaOverridesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_security_area_override**](SecurityAreaOverridesApi.md#create_security_area_override) | **POST** /security-area-overrides | Create SecurityAreaOverride |
| [**delete_security_area_override**](SecurityAreaOverridesApi.md#delete_security_area_override) | **DELETE** /security-area-overrides/{securityAreaOverrideKey} | Delete SecurityAreaOverride |
| [**get_security_area_override**](SecurityAreaOverridesApi.md#get_security_area_override) | **GET** /security-area-overrides/{securityAreaOverrideKey} | Get SecurityAreaOverride |
| [**list_security_area_override**](SecurityAreaOverridesApi.md#list_security_area_override) | **GET** /security-area-overrides | List SecurityAreaOverride |
| [**update_batch_security_area_override**](SecurityAreaOverridesApi.md#update_batch_security_area_override) | **PUT** /security-area-overrides | Create or Update Batch SecurityAreaOverride |
| [**update_security_area_override**](SecurityAreaOverridesApi.md#update_security_area_override) | **PUT** /security-area-overrides/{securityAreaOverrideKey} | Update SecurityAreaOverride |


## create_security_area_override

> <SecurityAreaOverrideVBAResponse> create_security_area_override(vbasoftware_database, security_area_override)

Create SecurityAreaOverride

Creates a new SecurityAreaOverride

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

api_instance = Vba::SecurityAreaOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area_override = Vba::SecurityAreaOverride.new({security_area_override_key: 37, override_all: false, override_exclude: false}) # SecurityAreaOverride | 

begin
  # Create SecurityAreaOverride
  result = api_instance.create_security_area_override(vbasoftware_database, security_area_override)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->create_security_area_override: #{e}"
end
```

#### Using the create_security_area_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaOverrideVBAResponse>, Integer, Hash)> create_security_area_override_with_http_info(vbasoftware_database, security_area_override)

```ruby
begin
  # Create SecurityAreaOverride
  data, status_code, headers = api_instance.create_security_area_override_with_http_info(vbasoftware_database, security_area_override)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaOverrideVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->create_security_area_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area_override** | [**SecurityAreaOverride**](SecurityAreaOverride.md) |  |  |

### Return type

[**SecurityAreaOverrideVBAResponse**](SecurityAreaOverrideVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_security_area_override

> delete_security_area_override(vbasoftware_database, security_area_override_key)

Delete SecurityAreaOverride

Deletes an SecurityAreaOverride

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

api_instance = Vba::SecurityAreaOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area_override_key = 56 # Integer | SecurityAreaOverride Key

begin
  # Delete SecurityAreaOverride
  api_instance.delete_security_area_override(vbasoftware_database, security_area_override_key)
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->delete_security_area_override: #{e}"
end
```

#### Using the delete_security_area_override_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_security_area_override_with_http_info(vbasoftware_database, security_area_override_key)

```ruby
begin
  # Delete SecurityAreaOverride
  data, status_code, headers = api_instance.delete_security_area_override_with_http_info(vbasoftware_database, security_area_override_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->delete_security_area_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area_override_key** | **Integer** | SecurityAreaOverride Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_security_area_override

> <SecurityAreaOverrideVBAResponse> get_security_area_override(vbasoftware_database, security_area_override_key)

Get SecurityAreaOverride

Gets SecurityAreaOverride

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

api_instance = Vba::SecurityAreaOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area_override_key = 56 # Integer | SecurityAreaOverride Key

begin
  # Get SecurityAreaOverride
  result = api_instance.get_security_area_override(vbasoftware_database, security_area_override_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->get_security_area_override: #{e}"
end
```

#### Using the get_security_area_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaOverrideVBAResponse>, Integer, Hash)> get_security_area_override_with_http_info(vbasoftware_database, security_area_override_key)

```ruby
begin
  # Get SecurityAreaOverride
  data, status_code, headers = api_instance.get_security_area_override_with_http_info(vbasoftware_database, security_area_override_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaOverrideVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->get_security_area_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area_override_key** | **Integer** | SecurityAreaOverride Key |  |

### Return type

[**SecurityAreaOverrideVBAResponse**](SecurityAreaOverrideVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_security_area_override

> <SecurityAreaOverrideListVBAResponse> list_security_area_override(vbasoftware_database, opts)

List SecurityAreaOverride

Lists all SecurityAreaOverride with optional securityArea filter

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

api_instance = Vba::SecurityAreaOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  security_area: 'security_area_example' # String | Security Area
}

begin
  # List SecurityAreaOverride
  result = api_instance.list_security_area_override(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->list_security_area_override: #{e}"
end
```

#### Using the list_security_area_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaOverrideListVBAResponse>, Integer, Hash)> list_security_area_override_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List SecurityAreaOverride
  data, status_code, headers = api_instance.list_security_area_override_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaOverrideListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->list_security_area_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area** | **String** | Security Area | [optional] |

### Return type

[**SecurityAreaOverrideListVBAResponse**](SecurityAreaOverrideListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_security_area_override

> <MultiCodeResponseListVBAResponse> update_batch_security_area_override(vbasoftware_database, security_area_override)

Create or Update Batch SecurityAreaOverride

Create or Update multiple SecurityAreaOverride at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SecurityAreaOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area_override = [Vba::SecurityAreaOverride.new({security_area_override_key: 37, override_all: false, override_exclude: false})] # Array<SecurityAreaOverride> | 

begin
  # Create or Update Batch SecurityAreaOverride
  result = api_instance.update_batch_security_area_override(vbasoftware_database, security_area_override)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->update_batch_security_area_override: #{e}"
end
```

#### Using the update_batch_security_area_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_security_area_override_with_http_info(vbasoftware_database, security_area_override)

```ruby
begin
  # Create or Update Batch SecurityAreaOverride
  data, status_code, headers = api_instance.update_batch_security_area_override_with_http_info(vbasoftware_database, security_area_override)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->update_batch_security_area_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area_override** | [**Array&lt;SecurityAreaOverride&gt;**](SecurityAreaOverride.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_security_area_override

> <SecurityAreaOverrideVBAResponse> update_security_area_override(vbasoftware_database, security_area_override_key, security_area_override)

Update SecurityAreaOverride

Updates a specific SecurityAreaOverride.

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

api_instance = Vba::SecurityAreaOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
security_area_override_key = 56 # Integer | SecurityAreaOverride Key
security_area_override = Vba::SecurityAreaOverride.new({security_area_override_key: 37, override_all: false, override_exclude: false}) # SecurityAreaOverride | 

begin
  # Update SecurityAreaOverride
  result = api_instance.update_security_area_override(vbasoftware_database, security_area_override_key, security_area_override)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->update_security_area_override: #{e}"
end
```

#### Using the update_security_area_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SecurityAreaOverrideVBAResponse>, Integer, Hash)> update_security_area_override_with_http_info(vbasoftware_database, security_area_override_key, security_area_override)

```ruby
begin
  # Update SecurityAreaOverride
  data, status_code, headers = api_instance.update_security_area_override_with_http_info(vbasoftware_database, security_area_override_key, security_area_override)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SecurityAreaOverrideVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SecurityAreaOverridesApi->update_security_area_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **security_area_override_key** | **Integer** | SecurityAreaOverride Key |  |
| **security_area_override** | [**SecurityAreaOverride**](SecurityAreaOverride.md) |  |  |

### Return type

[**SecurityAreaOverrideVBAResponse**](SecurityAreaOverrideVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

