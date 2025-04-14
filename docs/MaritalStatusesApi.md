# Vba::MaritalStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_marital_status**](MaritalStatusesApi.md#create_marital_status) | **POST** /marital-statuses | Create MaritalStatus |
| [**delete_marital_status**](MaritalStatusesApi.md#delete_marital_status) | **DELETE** /marital-statuses/{maritalStatus} | Delete MaritalStatus |
| [**get_marital_status**](MaritalStatusesApi.md#get_marital_status) | **GET** /marital-statuses/{maritalStatus} | Get MaritalStatus |
| [**list_marital_status**](MaritalStatusesApi.md#list_marital_status) | **GET** /marital-statuses | List MaritalStatus |
| [**update_batch_marital_status**](MaritalStatusesApi.md#update_batch_marital_status) | **PUT** /marital-statuses-batch | Create or Update Batch MaritalStatus |
| [**update_marital_status**](MaritalStatusesApi.md#update_marital_status) | **PUT** /marital-statuses/{maritalStatus} | Update MaritalStatus |


## create_marital_status

> <MaritalStatusVBAResponse> create_marital_status(vbasoftware_database, marital_status)

Create MaritalStatus

Creates a new MaritalStatus

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

api_instance = Vba::MaritalStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
marital_status = Vba::MaritalStatus.new({marital_status: 'marital_status_example'}) # MaritalStatus | 

begin
  # Create MaritalStatus
  result = api_instance.create_marital_status(vbasoftware_database, marital_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->create_marital_status: #{e}"
end
```

#### Using the create_marital_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaritalStatusVBAResponse>, Integer, Hash)> create_marital_status_with_http_info(vbasoftware_database, marital_status)

```ruby
begin
  # Create MaritalStatus
  data, status_code, headers = api_instance.create_marital_status_with_http_info(vbasoftware_database, marital_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaritalStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->create_marital_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **marital_status** | [**MaritalStatus**](MaritalStatus.md) |  |  |

### Return type

[**MaritalStatusVBAResponse**](MaritalStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_marital_status

> delete_marital_status(vbasoftware_database, marital_status)

Delete MaritalStatus

Deletes an MaritalStatus

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

api_instance = Vba::MaritalStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
marital_status = 'marital_status_example' # String | Marital Status

begin
  # Delete MaritalStatus
  api_instance.delete_marital_status(vbasoftware_database, marital_status)
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->delete_marital_status: #{e}"
end
```

#### Using the delete_marital_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_marital_status_with_http_info(vbasoftware_database, marital_status)

```ruby
begin
  # Delete MaritalStatus
  data, status_code, headers = api_instance.delete_marital_status_with_http_info(vbasoftware_database, marital_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->delete_marital_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **marital_status** | **String** | Marital Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_marital_status

> <MaritalStatusVBAResponse> get_marital_status(vbasoftware_database, marital_status)

Get MaritalStatus

Gets MaritalStatus

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

api_instance = Vba::MaritalStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
marital_status = 'marital_status_example' # String | Marital Status

begin
  # Get MaritalStatus
  result = api_instance.get_marital_status(vbasoftware_database, marital_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->get_marital_status: #{e}"
end
```

#### Using the get_marital_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaritalStatusVBAResponse>, Integer, Hash)> get_marital_status_with_http_info(vbasoftware_database, marital_status)

```ruby
begin
  # Get MaritalStatus
  data, status_code, headers = api_instance.get_marital_status_with_http_info(vbasoftware_database, marital_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaritalStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->get_marital_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **marital_status** | **String** | Marital Status |  |

### Return type

[**MaritalStatusVBAResponse**](MaritalStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_marital_status

> <MaritalStatusListVBAResponse> list_marital_status(vbasoftware_database)

List MaritalStatus

Lists all MaritalStatus 

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

api_instance = Vba::MaritalStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List MaritalStatus
  result = api_instance.list_marital_status(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->list_marital_status: #{e}"
end
```

#### Using the list_marital_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaritalStatusListVBAResponse>, Integer, Hash)> list_marital_status_with_http_info(vbasoftware_database)

```ruby
begin
  # List MaritalStatus
  data, status_code, headers = api_instance.list_marital_status_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaritalStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->list_marital_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**MaritalStatusListVBAResponse**](MaritalStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_marital_status

> <MultiCodeResponseListVBAResponse> update_batch_marital_status(vbasoftware_database, marital_status)

Create or Update Batch MaritalStatus

Create or Update multiple MaritalStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MaritalStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
marital_status = [Vba::MaritalStatus.new({marital_status: 'marital_status_example'})] # Array<MaritalStatus> | 

begin
  # Create or Update Batch MaritalStatus
  result = api_instance.update_batch_marital_status(vbasoftware_database, marital_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->update_batch_marital_status: #{e}"
end
```

#### Using the update_batch_marital_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_marital_status_with_http_info(vbasoftware_database, marital_status)

```ruby
begin
  # Create or Update Batch MaritalStatus
  data, status_code, headers = api_instance.update_batch_marital_status_with_http_info(vbasoftware_database, marital_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->update_batch_marital_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **marital_status** | [**Array&lt;MaritalStatus&gt;**](MaritalStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_marital_status

> <MaritalStatusVBAResponse> update_marital_status(vbasoftware_database, marital_status, marital_status2)

Update MaritalStatus

Updates a specific MaritalStatus.

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

api_instance = Vba::MaritalStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
marital_status = 'marital_status_example' # String | Marital Status
marital_status2 = Vba::MaritalStatus.new({marital_status: 'marital_status_example'}) # MaritalStatus | 

begin
  # Update MaritalStatus
  result = api_instance.update_marital_status(vbasoftware_database, marital_status, marital_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->update_marital_status: #{e}"
end
```

#### Using the update_marital_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MaritalStatusVBAResponse>, Integer, Hash)> update_marital_status_with_http_info(vbasoftware_database, marital_status, marital_status2)

```ruby
begin
  # Update MaritalStatus
  data, status_code, headers = api_instance.update_marital_status_with_http_info(vbasoftware_database, marital_status, marital_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MaritalStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MaritalStatusesApi->update_marital_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **marital_status** | **String** | Marital Status |  |
| **marital_status2** | [**MaritalStatus**](MaritalStatus.md) |  |  |

### Return type

[**MaritalStatusVBAResponse**](MaritalStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

