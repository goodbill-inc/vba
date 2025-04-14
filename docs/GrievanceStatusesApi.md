# Vba::GrievanceStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_grievance_status**](GrievanceStatusesApi.md#create_grievance_status) | **POST** /grievance-statuses | Create GrievanceStatus |
| [**delete_grievance_status**](GrievanceStatusesApi.md#delete_grievance_status) | **DELETE** /grievance-statuses/{grievanceStatus} | Delete GrievanceStatus |
| [**get_grievance_status**](GrievanceStatusesApi.md#get_grievance_status) | **GET** /grievance-statuses/{grievanceStatus} | Get GrievanceStatus |
| [**list_grievance_status**](GrievanceStatusesApi.md#list_grievance_status) | **GET** /grievance-statuses | List GrievanceStatus |
| [**update_batch_grievance_status**](GrievanceStatusesApi.md#update_batch_grievance_status) | **PUT** /grievance-statuses-batch | Create or Update Batch GrievanceStatus |
| [**update_grievance_status**](GrievanceStatusesApi.md#update_grievance_status) | **PUT** /grievance-statuses/{grievanceStatus} | Update GrievanceStatus |


## create_grievance_status

> <GrievanceStatusVBAResponse> create_grievance_status(vbasoftware_database, grievance_status)

Create GrievanceStatus

Creates a new GrievanceStatus

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

api_instance = Vba::GrievanceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_status = Vba::GrievanceStatus.new({grievance_status: 'grievance_status_example', default_status: false}) # GrievanceStatus | 

begin
  # Create GrievanceStatus
  result = api_instance.create_grievance_status(vbasoftware_database, grievance_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->create_grievance_status: #{e}"
end
```

#### Using the create_grievance_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceStatusVBAResponse>, Integer, Hash)> create_grievance_status_with_http_info(vbasoftware_database, grievance_status)

```ruby
begin
  # Create GrievanceStatus
  data, status_code, headers = api_instance.create_grievance_status_with_http_info(vbasoftware_database, grievance_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->create_grievance_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_status** | [**GrievanceStatus**](GrievanceStatus.md) |  |  |

### Return type

[**GrievanceStatusVBAResponse**](GrievanceStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_grievance_status

> delete_grievance_status(vbasoftware_database, grievance_status)

Delete GrievanceStatus

Deletes an GrievanceStatus

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

api_instance = Vba::GrievanceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_status = 'grievance_status_example' # String | Grievance Status

begin
  # Delete GrievanceStatus
  api_instance.delete_grievance_status(vbasoftware_database, grievance_status)
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->delete_grievance_status: #{e}"
end
```

#### Using the delete_grievance_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_grievance_status_with_http_info(vbasoftware_database, grievance_status)

```ruby
begin
  # Delete GrievanceStatus
  data, status_code, headers = api_instance.delete_grievance_status_with_http_info(vbasoftware_database, grievance_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->delete_grievance_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_status** | **String** | Grievance Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_grievance_status

> <GrievanceStatusVBAResponse> get_grievance_status(vbasoftware_database, grievance_status)

Get GrievanceStatus

Gets GrievanceStatus

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

api_instance = Vba::GrievanceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_status = 'grievance_status_example' # String | Grievance Status

begin
  # Get GrievanceStatus
  result = api_instance.get_grievance_status(vbasoftware_database, grievance_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->get_grievance_status: #{e}"
end
```

#### Using the get_grievance_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceStatusVBAResponse>, Integer, Hash)> get_grievance_status_with_http_info(vbasoftware_database, grievance_status)

```ruby
begin
  # Get GrievanceStatus
  data, status_code, headers = api_instance.get_grievance_status_with_http_info(vbasoftware_database, grievance_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->get_grievance_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_status** | **String** | Grievance Status |  |

### Return type

[**GrievanceStatusVBAResponse**](GrievanceStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_grievance_status

> <GrievanceStatusListVBAResponse> list_grievance_status(vbasoftware_database, opts)

List GrievanceStatus

Lists all GrievanceStatus

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

api_instance = Vba::GrievanceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GrievanceStatus
  result = api_instance.list_grievance_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->list_grievance_status: #{e}"
end
```

#### Using the list_grievance_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceStatusListVBAResponse>, Integer, Hash)> list_grievance_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GrievanceStatus
  data, status_code, headers = api_instance.list_grievance_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->list_grievance_status_with_http_info: #{e}"
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

[**GrievanceStatusListVBAResponse**](GrievanceStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_grievance_status

> <MultiCodeResponseListVBAResponse> update_batch_grievance_status(vbasoftware_database, grievance_status)

Create or Update Batch GrievanceStatus

Create or Update multiple GrievanceStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GrievanceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_status = [Vba::GrievanceStatus.new({grievance_status: 'grievance_status_example', default_status: false})] # Array<GrievanceStatus> | 

begin
  # Create or Update Batch GrievanceStatus
  result = api_instance.update_batch_grievance_status(vbasoftware_database, grievance_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->update_batch_grievance_status: #{e}"
end
```

#### Using the update_batch_grievance_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_grievance_status_with_http_info(vbasoftware_database, grievance_status)

```ruby
begin
  # Create or Update Batch GrievanceStatus
  data, status_code, headers = api_instance.update_batch_grievance_status_with_http_info(vbasoftware_database, grievance_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->update_batch_grievance_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_status** | [**Array&lt;GrievanceStatus&gt;**](GrievanceStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_grievance_status

> <GrievanceStatusVBAResponse> update_grievance_status(vbasoftware_database, grievance_status, grievance_status2)

Update GrievanceStatus

Updates a specific GrievanceStatus.

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

api_instance = Vba::GrievanceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
grievance_status = 'grievance_status_example' # String | Grievance Status
grievance_status2 = Vba::GrievanceStatus.new({grievance_status: 'grievance_status_example', default_status: false}) # GrievanceStatus | 

begin
  # Update GrievanceStatus
  result = api_instance.update_grievance_status(vbasoftware_database, grievance_status, grievance_status2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->update_grievance_status: #{e}"
end
```

#### Using the update_grievance_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GrievanceStatusVBAResponse>, Integer, Hash)> update_grievance_status_with_http_info(vbasoftware_database, grievance_status, grievance_status2)

```ruby
begin
  # Update GrievanceStatus
  data, status_code, headers = api_instance.update_grievance_status_with_http_info(vbasoftware_database, grievance_status, grievance_status2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GrievanceStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GrievanceStatusesApi->update_grievance_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **grievance_status** | **String** | Grievance Status |  |
| **grievance_status2** | [**GrievanceStatus**](GrievanceStatus.md) |  |  |

### Return type

[**GrievanceStatusVBAResponse**](GrievanceStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

