# Vba::ForfeitureStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_forfeiture_status**](ForfeitureStatusesApi.md#create_forfeiture_status) | **POST** /forfeiture-statuses | Create ForfeitureStatus |
| [**delete_forfeiture_status**](ForfeitureStatusesApi.md#delete_forfeiture_status) | **DELETE** /forfeiture-statuses/{forfeitureStatus} | Delete ForfeitureStatus |
| [**get_forfeiture_status**](ForfeitureStatusesApi.md#get_forfeiture_status) | **GET** /forfeiture-statuses/{forfeitureStatus} | Get ForfeitureStatus |
| [**list_forfeiture_status**](ForfeitureStatusesApi.md#list_forfeiture_status) | **GET** /forfeiture-statuses | List ForfeitureStatus |
| [**update_batch_forfeiture_status**](ForfeitureStatusesApi.md#update_batch_forfeiture_status) | **PUT** /forfeiture-statuses-batch | Create or Update Batch ForfeitureStatus |
| [**update_forfeiture_status**](ForfeitureStatusesApi.md#update_forfeiture_status) | **PUT** /forfeiture-statuses/{forfeitureStatus} | Update ForfeitureStatus |


## create_forfeiture_status

> <ForfeitureStatusVBAResponse> create_forfeiture_status(vbasoftware_database, forfeiture_status)

Create ForfeitureStatus

Creates a new ForfeitureStatus

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

api_instance = Vba::ForfeitureStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
forfeiture_status = Vba::ForfeitureStatus.new({forfeiture_status: 'forfeiture_status_example', default_status: false}) # ForfeitureStatus | 

begin
  # Create ForfeitureStatus
  result = api_instance.create_forfeiture_status(vbasoftware_database, forfeiture_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->create_forfeiture_status: #{e}"
end
```

#### Using the create_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForfeitureStatusVBAResponse>, Integer, Hash)> create_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)

```ruby
begin
  # Create ForfeitureStatus
  data, status_code, headers = api_instance.create_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForfeitureStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->create_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **forfeiture_status** | [**ForfeitureStatus**](ForfeitureStatus.md) |  |  |

### Return type

[**ForfeitureStatusVBAResponse**](ForfeitureStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_forfeiture_status

> delete_forfeiture_status(vbasoftware_database, forfeiture_status)

Delete ForfeitureStatus

Deletes an ForfeitureStatus

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

api_instance = Vba::ForfeitureStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
forfeiture_status = 'forfeiture_status_example' # String | Forfeiture Status

begin
  # Delete ForfeitureStatus
  api_instance.delete_forfeiture_status(vbasoftware_database, forfeiture_status)
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->delete_forfeiture_status: #{e}"
end
```

#### Using the delete_forfeiture_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)

```ruby
begin
  # Delete ForfeitureStatus
  data, status_code, headers = api_instance.delete_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->delete_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **forfeiture_status** | **String** | Forfeiture Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_forfeiture_status

> <ForfeitureStatusVBAResponse> get_forfeiture_status(vbasoftware_database, forfeiture_status)

Get ForfeitureStatus

Gets ForfeitureStatus

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

api_instance = Vba::ForfeitureStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
forfeiture_status = 'forfeiture_status_example' # String | Forfeiture Status

begin
  # Get ForfeitureStatus
  result = api_instance.get_forfeiture_status(vbasoftware_database, forfeiture_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->get_forfeiture_status: #{e}"
end
```

#### Using the get_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForfeitureStatusVBAResponse>, Integer, Hash)> get_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)

```ruby
begin
  # Get ForfeitureStatus
  data, status_code, headers = api_instance.get_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForfeitureStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->get_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **forfeiture_status** | **String** | Forfeiture Status |  |

### Return type

[**ForfeitureStatusVBAResponse**](ForfeitureStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_forfeiture_status

> <ForfeitureStatusListVBAResponse> list_forfeiture_status(vbasoftware_database)

List ForfeitureStatus

Lists all ForfeitureStatus 

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

api_instance = Vba::ForfeitureStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List ForfeitureStatus
  result = api_instance.list_forfeiture_status(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->list_forfeiture_status: #{e}"
end
```

#### Using the list_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForfeitureStatusListVBAResponse>, Integer, Hash)> list_forfeiture_status_with_http_info(vbasoftware_database)

```ruby
begin
  # List ForfeitureStatus
  data, status_code, headers = api_instance.list_forfeiture_status_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForfeitureStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->list_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**ForfeitureStatusListVBAResponse**](ForfeitureStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_forfeiture_status

> <MultiCodeResponseListVBAResponse> update_batch_forfeiture_status(vbasoftware_database, forfeiture_status)

Create or Update Batch ForfeitureStatus

Create or Update multiple ForfeitureStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ForfeitureStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
forfeiture_status = [Vba::ForfeitureStatus.new({forfeiture_status: 'forfeiture_status_example', default_status: false})] # Array<ForfeitureStatus> | 

begin
  # Create or Update Batch ForfeitureStatus
  result = api_instance.update_batch_forfeiture_status(vbasoftware_database, forfeiture_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->update_batch_forfeiture_status: #{e}"
end
```

#### Using the update_batch_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)

```ruby
begin
  # Create or Update Batch ForfeitureStatus
  data, status_code, headers = api_instance.update_batch_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->update_batch_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **forfeiture_status** | [**Array&lt;ForfeitureStatus&gt;**](ForfeitureStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_forfeiture_status

> <ForfeitureStatusVBAResponse> update_forfeiture_status(vbasoftware_database, forfeiture_status, forfeiture_status2)

Update ForfeitureStatus

Updates a specific ForfeitureStatus.

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

api_instance = Vba::ForfeitureStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
forfeiture_status = 'forfeiture_status_example' # String | Forfeiture Status
forfeiture_status2 = Vba::ForfeitureStatus.new({forfeiture_status: 'forfeiture_status_example', default_status: false}) # ForfeitureStatus | 

begin
  # Update ForfeitureStatus
  result = api_instance.update_forfeiture_status(vbasoftware_database, forfeiture_status, forfeiture_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->update_forfeiture_status: #{e}"
end
```

#### Using the update_forfeiture_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ForfeitureStatusVBAResponse>, Integer, Hash)> update_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status, forfeiture_status2)

```ruby
begin
  # Update ForfeitureStatus
  data, status_code, headers = api_instance.update_forfeiture_status_with_http_info(vbasoftware_database, forfeiture_status, forfeiture_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ForfeitureStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ForfeitureStatusesApi->update_forfeiture_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **forfeiture_status** | **String** | Forfeiture Status |  |
| **forfeiture_status2** | [**ForfeitureStatus**](ForfeitureStatus.md) |  |  |

### Return type

[**ForfeitureStatusVBAResponse**](ForfeitureStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

