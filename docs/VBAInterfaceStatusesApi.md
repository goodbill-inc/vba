# Vba::VBAInterfaceStatusesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vba_interface_status**](VBAInterfaceStatusesApi.md#create_vba_interface_status) | **POST** /vba-interface-statuses | Create VBAInterfaceStatus |
| [**delete_vba_interface_status**](VBAInterfaceStatusesApi.md#delete_vba_interface_status) | **DELETE** /vba-interface-statuses/{vBAInterfaceStatus} | Delete VBAInterfaceStatus |
| [**get_vba_interface_status**](VBAInterfaceStatusesApi.md#get_vba_interface_status) | **GET** /vba-interface-statuses/{vBAInterfaceStatus} | Get VBAInterfaceStatus |
| [**list_vba_interface_status**](VBAInterfaceStatusesApi.md#list_vba_interface_status) | **GET** /vba-interface-statuses | List VBAInterfaceStatus |
| [**update_batch_vba_interface_status**](VBAInterfaceStatusesApi.md#update_batch_vba_interface_status) | **PUT** /vba-interface-statuses-batch | Create or Update Batch VBAInterfaceStatus |
| [**update_vba_interface_status**](VBAInterfaceStatusesApi.md#update_vba_interface_status) | **PUT** /vba-interface-statuses/{vBAInterfaceStatus} | Update VBAInterfaceStatus |


## create_vba_interface_status

> <VBAInterfaceStatusVBAResponse> create_vba_interface_status(vbasoftware_database, vba_interface_status)

Create VBAInterfaceStatus

Creates a new VBAInterfaceStatus

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

api_instance = Vba::VBAInterfaceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface_status = Vba::VBAInterfaceStatus.new({vba_interface_status: 'vba_interface_status_example'}) # VBAInterfaceStatus | 

begin
  # Create VBAInterfaceStatus
  result = api_instance.create_vba_interface_status(vbasoftware_database, vba_interface_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->create_vba_interface_status: #{e}"
end
```

#### Using the create_vba_interface_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceStatusVBAResponse>, Integer, Hash)> create_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status)

```ruby
begin
  # Create VBAInterfaceStatus
  data, status_code, headers = api_instance.create_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->create_vba_interface_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface_status** | [**VBAInterfaceStatus**](VBAInterfaceStatus.md) |  |  |

### Return type

[**VBAInterfaceStatusVBAResponse**](VBAInterfaceStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_vba_interface_status

> delete_vba_interface_status(vbasoftware_database, v_ba_interface_status)

Delete VBAInterfaceStatus

Deletes an VBAInterfaceStatus

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

api_instance = Vba::VBAInterfaceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_status = 'v_ba_interface_status_example' # String | VBAInterface Status

begin
  # Delete VBAInterfaceStatus
  api_instance.delete_vba_interface_status(vbasoftware_database, v_ba_interface_status)
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->delete_vba_interface_status: #{e}"
end
```

#### Using the delete_vba_interface_status_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status)

```ruby
begin
  # Delete VBAInterfaceStatus
  data, status_code, headers = api_instance.delete_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->delete_vba_interface_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_status** | **String** | VBAInterface Status |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_vba_interface_status

> <VBAInterfaceStatusVBAResponse> get_vba_interface_status(vbasoftware_database, v_ba_interface_status)

Get VBAInterfaceStatus

Gets VBAInterfaceStatus

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

api_instance = Vba::VBAInterfaceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_status = 'v_ba_interface_status_example' # String | VBAInterface Status

begin
  # Get VBAInterfaceStatus
  result = api_instance.get_vba_interface_status(vbasoftware_database, v_ba_interface_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->get_vba_interface_status: #{e}"
end
```

#### Using the get_vba_interface_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceStatusVBAResponse>, Integer, Hash)> get_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status)

```ruby
begin
  # Get VBAInterfaceStatus
  data, status_code, headers = api_instance.get_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->get_vba_interface_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_status** | **String** | VBAInterface Status |  |

### Return type

[**VBAInterfaceStatusVBAResponse**](VBAInterfaceStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_vba_interface_status

> <VBAInterfaceStatusListVBAResponse> list_vba_interface_status(vbasoftware_database, opts)

List VBAInterfaceStatus

Lists all VBAInterfaceStatus

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

api_instance = Vba::VBAInterfaceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List VBAInterfaceStatus
  result = api_instance.list_vba_interface_status(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->list_vba_interface_status: #{e}"
end
```

#### Using the list_vba_interface_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceStatusListVBAResponse>, Integer, Hash)> list_vba_interface_status_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List VBAInterfaceStatus
  data, status_code, headers = api_instance.list_vba_interface_status_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceStatusListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->list_vba_interface_status_with_http_info: #{e}"
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

[**VBAInterfaceStatusListVBAResponse**](VBAInterfaceStatusListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_vba_interface_status

> <MultiCodeResponseListVBAResponse> update_batch_vba_interface_status(vbasoftware_database, vba_interface_status)

Create or Update Batch VBAInterfaceStatus

Create or Update multiple VBAInterfaceStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::VBAInterfaceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
vba_interface_status = [Vba::VBAInterfaceStatus.new({vba_interface_status: 'vba_interface_status_example'})] # Array<VBAInterfaceStatus> | 

begin
  # Create or Update Batch VBAInterfaceStatus
  result = api_instance.update_batch_vba_interface_status(vbasoftware_database, vba_interface_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->update_batch_vba_interface_status: #{e}"
end
```

#### Using the update_batch_vba_interface_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status)

```ruby
begin
  # Create or Update Batch VBAInterfaceStatus
  data, status_code, headers = api_instance.update_batch_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->update_batch_vba_interface_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **vba_interface_status** | [**Array&lt;VBAInterfaceStatus&gt;**](VBAInterfaceStatus.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_vba_interface_status

> <VBAInterfaceStatusVBAResponse> update_vba_interface_status(vbasoftware_database, v_ba_interface_status, vba_interface_status)

Update VBAInterfaceStatus

Updates a specific VBAInterfaceStatus.

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

api_instance = Vba::VBAInterfaceStatusesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
v_ba_interface_status = 'v_ba_interface_status_example' # String | VBAInterface Status
vba_interface_status = Vba::VBAInterfaceStatus.new({vba_interface_status: 'vba_interface_status_example'}) # VBAInterfaceStatus | 

begin
  # Update VBAInterfaceStatus
  result = api_instance.update_vba_interface_status(vbasoftware_database, v_ba_interface_status, vba_interface_status)
  p result
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->update_vba_interface_status: #{e}"
end
```

#### Using the update_vba_interface_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAInterfaceStatusVBAResponse>, Integer, Hash)> update_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, vba_interface_status)

```ruby
begin
  # Update VBAInterfaceStatus
  data, status_code, headers = api_instance.update_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, vba_interface_status)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAInterfaceStatusVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling VBAInterfaceStatusesApi->update_vba_interface_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **v_ba_interface_status** | **String** | VBAInterface Status |  |
| **vba_interface_status** | [**VBAInterfaceStatus**](VBAInterfaceStatus.md) |  |  |

### Return type

[**VBAInterfaceStatusVBAResponse**](VBAInterfaceStatusVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

