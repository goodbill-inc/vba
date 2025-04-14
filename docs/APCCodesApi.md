# Vba::APCCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_apc_codes**](APCCodesApi.md#create_apc_codes) | **POST** /apc-codes | Create APCCodes |
| [**delete_apc_codes**](APCCodesApi.md#delete_apc_codes) | **DELETE** /apc-codes/{apcCode} | Delete APCCodes |
| [**get_apc_codes**](APCCodesApi.md#get_apc_codes) | **GET** /apc-codes/{apcCode} | Get APCCodes |
| [**list_apc_codes**](APCCodesApi.md#list_apc_codes) | **GET** /apc-codes | List APCCodes |
| [**update_apc_codes**](APCCodesApi.md#update_apc_codes) | **PUT** /apc-codes/{apcCode} | Update APCCodes |
| [**update_batch_apc_codes**](APCCodesApi.md#update_batch_apc_codes) | **PUT** /apc-codes-batch | Create or Update Batch APCCodes |


## create_apc_codes

> <APCCodesVBAResponse> create_apc_codes(vbasoftware_database, apc_codes)

Create APCCodes

Creates a new APCCodes

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

api_instance = Vba::APCCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_codes = Vba::APCCodes.new({ap_c_code: 'ap_c_code_example'}) # APCCodes | 

begin
  # Create APCCodes
  result = api_instance.create_apc_codes(vbasoftware_database, apc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->create_apc_codes: #{e}"
end
```

#### Using the create_apc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCCodesVBAResponse>, Integer, Hash)> create_apc_codes_with_http_info(vbasoftware_database, apc_codes)

```ruby
begin
  # Create APCCodes
  data, status_code, headers = api_instance.create_apc_codes_with_http_info(vbasoftware_database, apc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->create_apc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_codes** | [**APCCodes**](APCCodes.md) |  |  |

### Return type

[**APCCodesVBAResponse**](APCCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_apc_codes

> delete_apc_codes(vbasoftware_database, apc_code)

Delete APCCodes

Deletes an APCCodes

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

api_instance = Vba::APCCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_code = 'apc_code_example' # String | APC Code

begin
  # Delete APCCodes
  api_instance.delete_apc_codes(vbasoftware_database, apc_code)
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->delete_apc_codes: #{e}"
end
```

#### Using the delete_apc_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_apc_codes_with_http_info(vbasoftware_database, apc_code)

```ruby
begin
  # Delete APCCodes
  data, status_code, headers = api_instance.delete_apc_codes_with_http_info(vbasoftware_database, apc_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->delete_apc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_code** | **String** | APC Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_apc_codes

> <APCCodesVBAResponse> get_apc_codes(vbasoftware_database, apc_code)

Get APCCodes

Gets APCCodes

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

api_instance = Vba::APCCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_code = 'apc_code_example' # String | APC Code

begin
  # Get APCCodes
  result = api_instance.get_apc_codes(vbasoftware_database, apc_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->get_apc_codes: #{e}"
end
```

#### Using the get_apc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCCodesVBAResponse>, Integer, Hash)> get_apc_codes_with_http_info(vbasoftware_database, apc_code)

```ruby
begin
  # Get APCCodes
  data, status_code, headers = api_instance.get_apc_codes_with_http_info(vbasoftware_database, apc_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->get_apc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_code** | **String** | APC Code |  |

### Return type

[**APCCodesVBAResponse**](APCCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_apc_codes

> <APCCodesListVBAResponse> list_apc_codes(vbasoftware_database, opts)

List APCCodes

Lists all APCCodes

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

api_instance = Vba::APCCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List APCCodes
  result = api_instance.list_apc_codes(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->list_apc_codes: #{e}"
end
```

#### Using the list_apc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCCodesListVBAResponse>, Integer, Hash)> list_apc_codes_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List APCCodes
  data, status_code, headers = api_instance.list_apc_codes_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->list_apc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**APCCodesListVBAResponse**](APCCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_apc_codes

> <APCCodesVBAResponse> update_apc_codes(vbasoftware_database, apc_code, apc_codes)

Update APCCodes

Updates a specific APCCodes.

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

api_instance = Vba::APCCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_code = 'apc_code_example' # String | APC Code
apc_codes = Vba::APCCodes.new({ap_c_code: 'ap_c_code_example'}) # APCCodes | 

begin
  # Update APCCodes
  result = api_instance.update_apc_codes(vbasoftware_database, apc_code, apc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->update_apc_codes: #{e}"
end
```

#### Using the update_apc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APCCodesVBAResponse>, Integer, Hash)> update_apc_codes_with_http_info(vbasoftware_database, apc_code, apc_codes)

```ruby
begin
  # Update APCCodes
  data, status_code, headers = api_instance.update_apc_codes_with_http_info(vbasoftware_database, apc_code, apc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APCCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->update_apc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_code** | **String** | APC Code |  |
| **apc_codes** | [**APCCodes**](APCCodes.md) |  |  |

### Return type

[**APCCodesVBAResponse**](APCCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_batch_apc_codes

> <MultiCodeResponseListVBAResponse> update_batch_apc_codes(vbasoftware_database, apc_codes)

Create or Update Batch APCCodes

Create or Update multiple APCCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::APCCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
apc_codes = [Vba::APCCodes.new({ap_c_code: 'ap_c_code_example'})] # Array<APCCodes> | 

begin
  # Create or Update Batch APCCodes
  result = api_instance.update_batch_apc_codes(vbasoftware_database, apc_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->update_batch_apc_codes: #{e}"
end
```

#### Using the update_batch_apc_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_apc_codes_with_http_info(vbasoftware_database, apc_codes)

```ruby
begin
  # Create or Update Batch APCCodes
  data, status_code, headers = api_instance.update_batch_apc_codes_with_http_info(vbasoftware_database, apc_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling APCCodesApi->update_batch_apc_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **apc_codes** | [**Array&lt;APCCodes&gt;**](APCCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

