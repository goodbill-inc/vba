# Vba::ToothChartTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tooth_chart_type**](ToothChartTypesApi.md#create_tooth_chart_type) | **POST** /tooth-chart-types | Create ToothChartType |
| [**delete_tooth_chart_type**](ToothChartTypesApi.md#delete_tooth_chart_type) | **DELETE** /tooth-chart-types/{chartType} | Delete ToothChartType |
| [**get_tooth_chart_type**](ToothChartTypesApi.md#get_tooth_chart_type) | **GET** /tooth-chart-types/{chartType} | Get ToothChartType |
| [**list_tooth_chart_type**](ToothChartTypesApi.md#list_tooth_chart_type) | **GET** /tooth-chart-types | List ToothChartType |
| [**update_batch_tooth_chart_type**](ToothChartTypesApi.md#update_batch_tooth_chart_type) | **PUT** /tooth-chart-types-batch | Create or Update Batch ToothChartType |
| [**update_tooth_chart_type**](ToothChartTypesApi.md#update_tooth_chart_type) | **PUT** /tooth-chart-types/{chartType} | Update ToothChartType |


## create_tooth_chart_type

> <ToothChartTypeVBAResponse> create_tooth_chart_type(vbasoftware_database, tooth_chart_type)

Create ToothChartType

Creates a new ToothChartType

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

api_instance = Vba::ToothChartTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_chart_type = Vba::ToothChartType.new({chart_type: 'chart_type_example'}) # ToothChartType | 

begin
  # Create ToothChartType
  result = api_instance.create_tooth_chart_type(vbasoftware_database, tooth_chart_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->create_tooth_chart_type: #{e}"
end
```

#### Using the create_tooth_chart_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartTypeVBAResponse>, Integer, Hash)> create_tooth_chart_type_with_http_info(vbasoftware_database, tooth_chart_type)

```ruby
begin
  # Create ToothChartType
  data, status_code, headers = api_instance.create_tooth_chart_type_with_http_info(vbasoftware_database, tooth_chart_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->create_tooth_chart_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_chart_type** | [**ToothChartType**](ToothChartType.md) |  |  |

### Return type

[**ToothChartTypeVBAResponse**](ToothChartTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tooth_chart_type

> delete_tooth_chart_type(vbasoftware_database, chart_type)

Delete ToothChartType

Deletes an ToothChartType

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

api_instance = Vba::ToothChartTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type

begin
  # Delete ToothChartType
  api_instance.delete_tooth_chart_type(vbasoftware_database, chart_type)
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->delete_tooth_chart_type: #{e}"
end
```

#### Using the delete_tooth_chart_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tooth_chart_type_with_http_info(vbasoftware_database, chart_type)

```ruby
begin
  # Delete ToothChartType
  data, status_code, headers = api_instance.delete_tooth_chart_type_with_http_info(vbasoftware_database, chart_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->delete_tooth_chart_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tooth_chart_type

> <ToothChartTypeVBAResponse> get_tooth_chart_type(vbasoftware_database, chart_type)

Get ToothChartType

Gets ToothChartType

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

api_instance = Vba::ToothChartTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type

begin
  # Get ToothChartType
  result = api_instance.get_tooth_chart_type(vbasoftware_database, chart_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->get_tooth_chart_type: #{e}"
end
```

#### Using the get_tooth_chart_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartTypeVBAResponse>, Integer, Hash)> get_tooth_chart_type_with_http_info(vbasoftware_database, chart_type)

```ruby
begin
  # Get ToothChartType
  data, status_code, headers = api_instance.get_tooth_chart_type_with_http_info(vbasoftware_database, chart_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->get_tooth_chart_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |

### Return type

[**ToothChartTypeVBAResponse**](ToothChartTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tooth_chart_type

> <ToothChartTypeListVBAResponse> list_tooth_chart_type(vbasoftware_database, opts)

List ToothChartType

Lists all ToothChartType

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

api_instance = Vba::ToothChartTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ToothChartType
  result = api_instance.list_tooth_chart_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->list_tooth_chart_type: #{e}"
end
```

#### Using the list_tooth_chart_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartTypeListVBAResponse>, Integer, Hash)> list_tooth_chart_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ToothChartType
  data, status_code, headers = api_instance.list_tooth_chart_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->list_tooth_chart_type_with_http_info: #{e}"
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

[**ToothChartTypeListVBAResponse**](ToothChartTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tooth_chart_type

> <MultiCodeResponseListVBAResponse> update_batch_tooth_chart_type(vbasoftware_database, tooth_chart_type)

Create or Update Batch ToothChartType

Create or Update multiple ToothChartType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ToothChartTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_chart_type = [Vba::ToothChartType.new({chart_type: 'chart_type_example'})] # Array<ToothChartType> | 

begin
  # Create or Update Batch ToothChartType
  result = api_instance.update_batch_tooth_chart_type(vbasoftware_database, tooth_chart_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->update_batch_tooth_chart_type: #{e}"
end
```

#### Using the update_batch_tooth_chart_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tooth_chart_type_with_http_info(vbasoftware_database, tooth_chart_type)

```ruby
begin
  # Create or Update Batch ToothChartType
  data, status_code, headers = api_instance.update_batch_tooth_chart_type_with_http_info(vbasoftware_database, tooth_chart_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->update_batch_tooth_chart_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_chart_type** | [**Array&lt;ToothChartType&gt;**](ToothChartType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tooth_chart_type

> <ToothChartTypeVBAResponse> update_tooth_chart_type(vbasoftware_database, chart_type, tooth_chart_type)

Update ToothChartType

Updates a specific ToothChartType.

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

api_instance = Vba::ToothChartTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
tooth_chart_type = Vba::ToothChartType.new({chart_type: 'chart_type_example'}) # ToothChartType | 

begin
  # Update ToothChartType
  result = api_instance.update_tooth_chart_type(vbasoftware_database, chart_type, tooth_chart_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->update_tooth_chart_type: #{e}"
end
```

#### Using the update_tooth_chart_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartTypeVBAResponse>, Integer, Hash)> update_tooth_chart_type_with_http_info(vbasoftware_database, chart_type, tooth_chart_type)

```ruby
begin
  # Update ToothChartType
  data, status_code, headers = api_instance.update_tooth_chart_type_with_http_info(vbasoftware_database, chart_type, tooth_chart_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartTypesApi->update_tooth_chart_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **tooth_chart_type** | [**ToothChartType**](ToothChartType.md) |  |  |

### Return type

[**ToothChartTypeVBAResponse**](ToothChartTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

