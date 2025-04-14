# Vba::CareManagersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_manager**](CareManagersApi.md#create_care_manager) | **POST** /care-managers | Create CareManager |
| [**delete_care_manager**](CareManagersApi.md#delete_care_manager) | **DELETE** /care-managers/{careManagerKey} | Delete CareManager |
| [**get_care_manager**](CareManagersApi.md#get_care_manager) | **GET** /care-managers/{careManagerKey} | Get CareManager |
| [**list_care_manager**](CareManagersApi.md#list_care_manager) | **GET** /care-managers | List CareManager |
| [**update_batch_care_manager**](CareManagersApi.md#update_batch_care_manager) | **PUT** /care-managers-batch | Create or Update Batch CareManager |
| [**update_care_manager**](CareManagersApi.md#update_care_manager) | **PUT** /care-managers/{careManagerKey} | Update CareManager |


## create_care_manager

> <CareManagerVBAResponse> create_care_manager(vbasoftware_database, care_manager)

Create CareManager

Creates a new CareManager

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

api_instance = Vba::CareManagersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager = Vba::CareManager.new({care_manager_key: 37, accepting_cases: false, care_plan_all_fg: false, care_type_all_fg: false}) # CareManager | 

begin
  # Create CareManager
  result = api_instance.create_care_manager(vbasoftware_database, care_manager)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->create_care_manager: #{e}"
end
```

#### Using the create_care_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerVBAResponse>, Integer, Hash)> create_care_manager_with_http_info(vbasoftware_database, care_manager)

```ruby
begin
  # Create CareManager
  data, status_code, headers = api_instance.create_care_manager_with_http_info(vbasoftware_database, care_manager)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->create_care_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager** | [**CareManager**](CareManager.md) |  |  |

### Return type

[**CareManagerVBAResponse**](CareManagerVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_manager

> delete_care_manager(vbasoftware_database, care_manager_key)

Delete CareManager

Deletes an CareManager

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

api_instance = Vba::CareManagersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key

begin
  # Delete CareManager
  api_instance.delete_care_manager(vbasoftware_database, care_manager_key)
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->delete_care_manager: #{e}"
end
```

#### Using the delete_care_manager_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_manager_with_http_info(vbasoftware_database, care_manager_key)

```ruby
begin
  # Delete CareManager
  data, status_code, headers = api_instance.delete_care_manager_with_http_info(vbasoftware_database, care_manager_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->delete_care_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_manager

> <CareManagerVBAResponse> get_care_manager(vbasoftware_database, care_manager_key)

Get CareManager

Gets CareManager

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

api_instance = Vba::CareManagersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key

begin
  # Get CareManager
  result = api_instance.get_care_manager(vbasoftware_database, care_manager_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->get_care_manager: #{e}"
end
```

#### Using the get_care_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerVBAResponse>, Integer, Hash)> get_care_manager_with_http_info(vbasoftware_database, care_manager_key)

```ruby
begin
  # Get CareManager
  data, status_code, headers = api_instance.get_care_manager_with_http_info(vbasoftware_database, care_manager_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->get_care_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |

### Return type

[**CareManagerVBAResponse**](CareManagerVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_manager

> <CareManagerListVBAResponse> list_care_manager(vbasoftware_database, opts)

List CareManager

Lists all CareManager

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

api_instance = Vba::CareManagersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareManager
  result = api_instance.list_care_manager(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->list_care_manager: #{e}"
end
```

#### Using the list_care_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerListVBAResponse>, Integer, Hash)> list_care_manager_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CareManager
  data, status_code, headers = api_instance.list_care_manager_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->list_care_manager_with_http_info: #{e}"
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

[**CareManagerListVBAResponse**](CareManagerListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_manager

> <MultiCodeResponseListVBAResponse> update_batch_care_manager(vbasoftware_database, care_manager)

Create or Update Batch CareManager

Create or Update multiple CareManager at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareManagersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager = [Vba::CareManager.new({care_manager_key: 37, accepting_cases: false, care_plan_all_fg: false, care_type_all_fg: false})] # Array<CareManager> | 

begin
  # Create or Update Batch CareManager
  result = api_instance.update_batch_care_manager(vbasoftware_database, care_manager)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->update_batch_care_manager: #{e}"
end
```

#### Using the update_batch_care_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_manager_with_http_info(vbasoftware_database, care_manager)

```ruby
begin
  # Create or Update Batch CareManager
  data, status_code, headers = api_instance.update_batch_care_manager_with_http_info(vbasoftware_database, care_manager)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->update_batch_care_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager** | [**Array&lt;CareManager&gt;**](CareManager.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_manager

> <CareManagerVBAResponse> update_care_manager(vbasoftware_database, care_manager_key, care_manager)

Update CareManager

Updates a specific CareManager.

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

api_instance = Vba::CareManagersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
care_manager_key = 56 # Integer | CareManager Key
care_manager = Vba::CareManager.new({care_manager_key: 37, accepting_cases: false, care_plan_all_fg: false, care_type_all_fg: false}) # CareManager | 

begin
  # Update CareManager
  result = api_instance.update_care_manager(vbasoftware_database, care_manager_key, care_manager)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->update_care_manager: #{e}"
end
```

#### Using the update_care_manager_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareManagerVBAResponse>, Integer, Hash)> update_care_manager_with_http_info(vbasoftware_database, care_manager_key, care_manager)

```ruby
begin
  # Update CareManager
  data, status_code, headers = api_instance.update_care_manager_with_http_info(vbasoftware_database, care_manager_key, care_manager)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareManagerVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareManagersApi->update_care_manager_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **care_manager_key** | **Integer** | CareManager Key |  |
| **care_manager** | [**CareManager**](CareManager.md) |  |  |

### Return type

[**CareManagerVBAResponse**](CareManagerVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

