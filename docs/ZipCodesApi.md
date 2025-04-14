# Vba::ZipCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_zip_codes**](ZipCodesApi.md#create_zip_codes) | **POST** /zip-codes | Create ZipCodes |
| [**delete_zip_codes**](ZipCodesApi.md#delete_zip_codes) | **DELETE** /zip-codes/{zipCode} | Delete ZipCodes |
| [**get_zip_codes**](ZipCodesApi.md#get_zip_codes) | **GET** /zip-codes/{zipCode} | Get ZipCodes |
| [**list_zip_codes**](ZipCodesApi.md#list_zip_codes) | **GET** /zip-codes | List ZipCodes |
| [**update_batch_zip_codes**](ZipCodesApi.md#update_batch_zip_codes) | **PUT** /zip-codes-batch | Create or Update Batch ZipCodes |
| [**update_zip_codes**](ZipCodesApi.md#update_zip_codes) | **PUT** /zip-codes/{zipCode} | Update ZipCodes |


## create_zip_codes

> <ZipCodesVBAResponse> create_zip_codes(vbasoftware_database, zip_codes)

Create ZipCodes

Creates a new ZipCodes

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

api_instance = Vba::ZipCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
zip_codes = Vba::ZipCodes.new({zip_code: 'zip_code_example'}) # ZipCodes | 

begin
  # Create ZipCodes
  result = api_instance.create_zip_codes(vbasoftware_database, zip_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->create_zip_codes: #{e}"
end
```

#### Using the create_zip_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ZipCodesVBAResponse>, Integer, Hash)> create_zip_codes_with_http_info(vbasoftware_database, zip_codes)

```ruby
begin
  # Create ZipCodes
  data, status_code, headers = api_instance.create_zip_codes_with_http_info(vbasoftware_database, zip_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ZipCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->create_zip_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **zip_codes** | [**ZipCodes**](ZipCodes.md) |  |  |

### Return type

[**ZipCodesVBAResponse**](ZipCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_zip_codes

> delete_zip_codes(vbasoftware_database, zip_code)

Delete ZipCodes

Deletes an ZipCodes

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

api_instance = Vba::ZipCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
zip_code = 'zip_code_example' # String | Zip Code

begin
  # Delete ZipCodes
  api_instance.delete_zip_codes(vbasoftware_database, zip_code)
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->delete_zip_codes: #{e}"
end
```

#### Using the delete_zip_codes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_zip_codes_with_http_info(vbasoftware_database, zip_code)

```ruby
begin
  # Delete ZipCodes
  data, status_code, headers = api_instance.delete_zip_codes_with_http_info(vbasoftware_database, zip_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->delete_zip_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **zip_code** | **String** | Zip Code |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_zip_codes

> <ZipCodesVBAResponse> get_zip_codes(vbasoftware_database, zip_code)

Get ZipCodes

Gets ZipCodes

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

api_instance = Vba::ZipCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
zip_code = 'zip_code_example' # String | Zip Code

begin
  # Get ZipCodes
  result = api_instance.get_zip_codes(vbasoftware_database, zip_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->get_zip_codes: #{e}"
end
```

#### Using the get_zip_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ZipCodesVBAResponse>, Integer, Hash)> get_zip_codes_with_http_info(vbasoftware_database, zip_code)

```ruby
begin
  # Get ZipCodes
  data, status_code, headers = api_instance.get_zip_codes_with_http_info(vbasoftware_database, zip_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ZipCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->get_zip_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **zip_code** | **String** | Zip Code |  |

### Return type

[**ZipCodesVBAResponse**](ZipCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_zip_codes

> <ZipCodesListVBAResponse> list_zip_codes(vbasoftware_database)

List ZipCodes

Lists all ZipCodes 

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

api_instance = Vba::ZipCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List ZipCodes
  result = api_instance.list_zip_codes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->list_zip_codes: #{e}"
end
```

#### Using the list_zip_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ZipCodesListVBAResponse>, Integer, Hash)> list_zip_codes_with_http_info(vbasoftware_database)

```ruby
begin
  # List ZipCodes
  data, status_code, headers = api_instance.list_zip_codes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ZipCodesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->list_zip_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ZipCodesListVBAResponse**](ZipCodesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_zip_codes

> <MultiCodeResponseListVBAResponse> update_batch_zip_codes(vbasoftware_database, zip_codes)

Create or Update Batch ZipCodes

Create or Update multiple ZipCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ZipCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
zip_codes = [Vba::ZipCodes.new({zip_code: 'zip_code_example'})] # Array<ZipCodes> | 

begin
  # Create or Update Batch ZipCodes
  result = api_instance.update_batch_zip_codes(vbasoftware_database, zip_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->update_batch_zip_codes: #{e}"
end
```

#### Using the update_batch_zip_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_zip_codes_with_http_info(vbasoftware_database, zip_codes)

```ruby
begin
  # Create or Update Batch ZipCodes
  data, status_code, headers = api_instance.update_batch_zip_codes_with_http_info(vbasoftware_database, zip_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->update_batch_zip_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **zip_codes** | [**Array&lt;ZipCodes&gt;**](ZipCodes.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_zip_codes

> <ZipCodesVBAResponse> update_zip_codes(vbasoftware_database, zip_code, zip_codes)

Update ZipCodes

Updates a specific ZipCodes.

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

api_instance = Vba::ZipCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
zip_code = 'zip_code_example' # String | Zip Code
zip_codes = Vba::ZipCodes.new({zip_code: 'zip_code_example'}) # ZipCodes | 

begin
  # Update ZipCodes
  result = api_instance.update_zip_codes(vbasoftware_database, zip_code, zip_codes)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->update_zip_codes: #{e}"
end
```

#### Using the update_zip_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ZipCodesVBAResponse>, Integer, Hash)> update_zip_codes_with_http_info(vbasoftware_database, zip_code, zip_codes)

```ruby
begin
  # Update ZipCodes
  data, status_code, headers = api_instance.update_zip_codes_with_http_info(vbasoftware_database, zip_code, zip_codes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ZipCodesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZipCodesApi->update_zip_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **zip_code** | **String** | Zip Code |  |
| **zip_codes** | [**ZipCodes**](ZipCodes.md) |  |  |

### Return type

[**ZipCodesVBAResponse**](ZipCodesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

