# Vba::ToothChartsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tooth_chart**](ToothChartsApi.md#create_tooth_chart) | **POST** /tooth-charts/{chartType}/teeth/{toothNumber} | Create ToothChart |
| [**delete_tooth_chart**](ToothChartsApi.md#delete_tooth_chart) | **DELETE** /tooth-charts/{chartType}/teeth/{toothNumber} | Delete ToothChart |
| [**get_tooth_chart**](ToothChartsApi.md#get_tooth_chart) | **GET** /tooth-charts/{chartType}/teeth/{toothNumber} | Get ToothChart |
| [**list_tooth_chart**](ToothChartsApi.md#list_tooth_chart) | **GET** /tooth-charts/{chartType}/teeth | List ToothChart |
| [**update_batch_tooth_chart**](ToothChartsApi.md#update_batch_tooth_chart) | **PUT** /tooth-charts/{chartType}/teeth-batch | Create or Update Batch ToothChart |
| [**update_tooth_chart**](ToothChartsApi.md#update_tooth_chart) | **PUT** /tooth-charts/{chartType}/teeth/{toothNumber} | Update ToothChart |


## create_tooth_chart

> <ToothChartVBAResponse> create_tooth_chart(vbasoftware_database, chart_type, tooth_number, tooth_chart)

Create ToothChart

Creates a new ToothChart

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

api_instance = Vba::ToothChartsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
tooth_number = 56 # Integer | Tooth Number
tooth_chart = Vba::ToothChart.new({tooth_number: 37, chart_type: 'chart_type_example', chart_value: 'chart_value_example'}) # ToothChart | 

begin
  # Create ToothChart
  result = api_instance.create_tooth_chart(vbasoftware_database, chart_type, tooth_number, tooth_chart)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->create_tooth_chart: #{e}"
end
```

#### Using the create_tooth_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartVBAResponse>, Integer, Hash)> create_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart)

```ruby
begin
  # Create ToothChart
  data, status_code, headers = api_instance.create_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->create_tooth_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **tooth_number** | **Integer** | Tooth Number |  |
| **tooth_chart** | [**ToothChart**](ToothChart.md) |  |  |

### Return type

[**ToothChartVBAResponse**](ToothChartVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tooth_chart

> delete_tooth_chart(vbasoftware_database, chart_type, tooth_number)

Delete ToothChart

Deletes an ToothChart

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

api_instance = Vba::ToothChartsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
tooth_number = 56 # Integer | Tooth Number

begin
  # Delete ToothChart
  api_instance.delete_tooth_chart(vbasoftware_database, chart_type, tooth_number)
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->delete_tooth_chart: #{e}"
end
```

#### Using the delete_tooth_chart_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number)

```ruby
begin
  # Delete ToothChart
  data, status_code, headers = api_instance.delete_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->delete_tooth_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tooth_chart

> <ToothChartVBAResponse> get_tooth_chart(vbasoftware_database, chart_type, tooth_number)

Get ToothChart

Gets ToothChart

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

api_instance = Vba::ToothChartsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
tooth_number = 56 # Integer | Tooth Number

begin
  # Get ToothChart
  result = api_instance.get_tooth_chart(vbasoftware_database, chart_type, tooth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->get_tooth_chart: #{e}"
end
```

#### Using the get_tooth_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartVBAResponse>, Integer, Hash)> get_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number)

```ruby
begin
  # Get ToothChart
  data, status_code, headers = api_instance.get_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->get_tooth_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

[**ToothChartVBAResponse**](ToothChartVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tooth_chart

> <ToothChartListVBAResponse> list_tooth_chart(vbasoftware_database, chart_type, opts)

List ToothChart

Lists all ToothChart for the given chartType

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

api_instance = Vba::ToothChartsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ToothChart
  result = api_instance.list_tooth_chart(vbasoftware_database, chart_type, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->list_tooth_chart: #{e}"
end
```

#### Using the list_tooth_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartListVBAResponse>, Integer, Hash)> list_tooth_chart_with_http_info(vbasoftware_database, chart_type, opts)

```ruby
begin
  # List ToothChart
  data, status_code, headers = api_instance.list_tooth_chart_with_http_info(vbasoftware_database, chart_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->list_tooth_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ToothChartListVBAResponse**](ToothChartListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tooth_chart

> <MultiCodeResponseListVBAResponse> update_batch_tooth_chart(vbasoftware_database, chart_type, tooth_chart)

Create or Update Batch ToothChart

Create or Update multiple ToothChart at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ToothChartsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
tooth_chart = [Vba::ToothChart.new({tooth_number: 37, chart_type: 'chart_type_example', chart_value: 'chart_value_example'})] # Array<ToothChart> | 

begin
  # Create or Update Batch ToothChart
  result = api_instance.update_batch_tooth_chart(vbasoftware_database, chart_type, tooth_chart)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->update_batch_tooth_chart: #{e}"
end
```

#### Using the update_batch_tooth_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_chart)

```ruby
begin
  # Create or Update Batch ToothChart
  data, status_code, headers = api_instance.update_batch_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_chart)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->update_batch_tooth_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **tooth_chart** | [**Array&lt;ToothChart&gt;**](ToothChart.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tooth_chart

> <ToothChartVBAResponse> update_tooth_chart(vbasoftware_database, chart_type, tooth_number, tooth_chart)

Update ToothChart

Updates a specific ToothChart.

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

api_instance = Vba::ToothChartsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
chart_type = 'chart_type_example' # String | Chart Type
tooth_number = 56 # Integer | Tooth Number
tooth_chart = Vba::ToothChart.new({tooth_number: 37, chart_type: 'chart_type_example', chart_value: 'chart_value_example'}) # ToothChart | 

begin
  # Update ToothChart
  result = api_instance.update_tooth_chart(vbasoftware_database, chart_type, tooth_number, tooth_chart)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->update_tooth_chart: #{e}"
end
```

#### Using the update_tooth_chart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothChartVBAResponse>, Integer, Hash)> update_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart)

```ruby
begin
  # Update ToothChart
  data, status_code, headers = api_instance.update_tooth_chart_with_http_info(vbasoftware_database, chart_type, tooth_number, tooth_chart)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothChartVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothChartsApi->update_tooth_chart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **chart_type** | **String** | Chart Type |  |
| **tooth_number** | **Integer** | Tooth Number |  |
| **tooth_chart** | [**ToothChart**](ToothChart.md) |  |  |

### Return type

[**ToothChartVBAResponse**](ToothChartVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

