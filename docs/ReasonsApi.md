# Vba::ReasonsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reasons**](ReasonsApi.md#create_reasons) | **POST** /reasons | Create Reasons |
| [**delete_reasons**](ReasonsApi.md#delete_reasons) | **DELETE** /reasons/{reasonID} | Delete Reasons |
| [**get_reasons**](ReasonsApi.md#get_reasons) | **GET** /reasons/{reasonID} | Get Reasons |
| [**list_reasons**](ReasonsApi.md#list_reasons) | **GET** /reasons | List Reasons |
| [**update_batch_reasons**](ReasonsApi.md#update_batch_reasons) | **PUT** /reasons-batch | Create or Update Batch Reasons |
| [**update_reasons**](ReasonsApi.md#update_reasons) | **PUT** /reasons/{reasonID} | Update Reasons |


## create_reasons

> <ReasonsVBAResponse> create_reasons(vbasoftware_database, reasons)

Create Reasons

Creates a new Reasons

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

api_instance = Vba::ReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reasons = Vba::Reasons.new({reason_id: 37}) # Reasons | 

begin
  # Create Reasons
  result = api_instance.create_reasons(vbasoftware_database, reasons)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->create_reasons: #{e}"
end
```

#### Using the create_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReasonsVBAResponse>, Integer, Hash)> create_reasons_with_http_info(vbasoftware_database, reasons)

```ruby
begin
  # Create Reasons
  data, status_code, headers = api_instance.create_reasons_with_http_info(vbasoftware_database, reasons)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReasonsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->create_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reasons** | [**Reasons**](Reasons.md) |  |  |

### Return type

[**ReasonsVBAResponse**](ReasonsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reasons

> delete_reasons(vbasoftware_database, reason_id)

Delete Reasons

Deletes an Reasons

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

api_instance = Vba::ReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reason_id = 56 # Integer | Reason ID

begin
  # Delete Reasons
  api_instance.delete_reasons(vbasoftware_database, reason_id)
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->delete_reasons: #{e}"
end
```

#### Using the delete_reasons_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reasons_with_http_info(vbasoftware_database, reason_id)

```ruby
begin
  # Delete Reasons
  data, status_code, headers = api_instance.delete_reasons_with_http_info(vbasoftware_database, reason_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->delete_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reason_id** | **Integer** | Reason ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reasons

> <ReasonsVBAResponse> get_reasons(vbasoftware_database, reason_id)

Get Reasons

Gets Reasons

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

api_instance = Vba::ReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reason_id = 56 # Integer | Reason ID

begin
  # Get Reasons
  result = api_instance.get_reasons(vbasoftware_database, reason_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->get_reasons: #{e}"
end
```

#### Using the get_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReasonsVBAResponse>, Integer, Hash)> get_reasons_with_http_info(vbasoftware_database, reason_id)

```ruby
begin
  # Get Reasons
  data, status_code, headers = api_instance.get_reasons_with_http_info(vbasoftware_database, reason_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReasonsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->get_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reason_id** | **Integer** | Reason ID |  |

### Return type

[**ReasonsVBAResponse**](ReasonsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reasons

> <ReasonsListVBAResponse> list_reasons(vbasoftware_database)

List Reasons

Lists all Reasons 

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

api_instance = Vba::ReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Reasons
  result = api_instance.list_reasons(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->list_reasons: #{e}"
end
```

#### Using the list_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReasonsListVBAResponse>, Integer, Hash)> list_reasons_with_http_info(vbasoftware_database)

```ruby
begin
  # List Reasons
  data, status_code, headers = api_instance.list_reasons_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReasonsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->list_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ReasonsListVBAResponse**](ReasonsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reasons

> <MultiCodeResponseListVBAResponse> update_batch_reasons(vbasoftware_database, reasons)

Create or Update Batch Reasons

Create or Update multiple Reasons at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reasons = [Vba::Reasons.new({reason_id: 37})] # Array<Reasons> | 

begin
  # Create or Update Batch Reasons
  result = api_instance.update_batch_reasons(vbasoftware_database, reasons)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->update_batch_reasons: #{e}"
end
```

#### Using the update_batch_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reasons_with_http_info(vbasoftware_database, reasons)

```ruby
begin
  # Create or Update Batch Reasons
  data, status_code, headers = api_instance.update_batch_reasons_with_http_info(vbasoftware_database, reasons)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->update_batch_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reasons** | [**Array&lt;Reasons&gt;**](Reasons.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_reasons

> <ReasonsVBAResponse> update_reasons(vbasoftware_database, reason_id, reasons)

Update Reasons

Updates a specific Reasons.

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

api_instance = Vba::ReasonsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reason_id = 56 # Integer | Reason ID
reasons = Vba::Reasons.new({reason_id: 37}) # Reasons | 

begin
  # Update Reasons
  result = api_instance.update_reasons(vbasoftware_database, reason_id, reasons)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->update_reasons: #{e}"
end
```

#### Using the update_reasons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReasonsVBAResponse>, Integer, Hash)> update_reasons_with_http_info(vbasoftware_database, reason_id, reasons)

```ruby
begin
  # Update Reasons
  data, status_code, headers = api_instance.update_reasons_with_http_info(vbasoftware_database, reason_id, reasons)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReasonsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReasonsApi->update_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reason_id** | **Integer** | Reason ID |  |
| **reasons** | [**Reasons**](Reasons.md) |  |  |

### Return type

[**ReasonsVBAResponse**](ReasonsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

