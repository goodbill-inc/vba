# Vba::ReportSeriesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_series**](ReportSeriesApi.md#create_report_series) | **POST** /report-series | Create ReportSeries |
| [**delete_report_series**](ReportSeriesApi.md#delete_report_series) | **DELETE** /report-series/{reportSeriesKey} | Delete ReportSeries |
| [**get_report_series**](ReportSeriesApi.md#get_report_series) | **GET** /report-series/{reportSeriesKey} | Get ReportSeries |
| [**list_report_series**](ReportSeriesApi.md#list_report_series) | **GET** /report-series | List ReportSeries |
| [**list_report_series_users**](ReportSeriesApi.md#list_report_series_users) | **GET** /report-series-users | List ReportSeries Users |
| [**update_batch_report_series**](ReportSeriesApi.md#update_batch_report_series) | **PUT** /report-series-batch | Create or Update Batch ReportSeries |
| [**update_report_series**](ReportSeriesApi.md#update_report_series) | **PUT** /report-series/{reportSeriesKey} | Update ReportSeries |


## create_report_series

> <ReportSeriesVBAResponse> create_report_series(vbasoftware_database, report_series)

Create ReportSeries

Creates a new ReportSeries

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series = Vba::ReportSeries.new({report_series_key: 37}) # ReportSeries | 

begin
  # Create ReportSeries
  result = api_instance.create_report_series(vbasoftware_database, report_series)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->create_report_series: #{e}"
end
```

#### Using the create_report_series_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesVBAResponse>, Integer, Hash)> create_report_series_with_http_info(vbasoftware_database, report_series)

```ruby
begin
  # Create ReportSeries
  data, status_code, headers = api_instance.create_report_series_with_http_info(vbasoftware_database, report_series)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->create_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series** | [**ReportSeries**](ReportSeries.md) |  |  |

### Return type

[**ReportSeriesVBAResponse**](ReportSeriesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_series

> delete_report_series(vbasoftware_database, report_series_key)

Delete ReportSeries

Deletes an ReportSeries

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_key = 56 # Integer | ReportSeries Key

begin
  # Delete ReportSeries
  api_instance.delete_report_series(vbasoftware_database, report_series_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->delete_report_series: #{e}"
end
```

#### Using the delete_report_series_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_series_with_http_info(vbasoftware_database, report_series_key)

```ruby
begin
  # Delete ReportSeries
  data, status_code, headers = api_instance.delete_report_series_with_http_info(vbasoftware_database, report_series_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->delete_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_key** | **Integer** | ReportSeries Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_series

> <ReportSeriesVBAResponse> get_report_series(vbasoftware_database, report_series_key)

Get ReportSeries

Gets ReportSeries

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_key = 56 # Integer | ReportSeries Key

begin
  # Get ReportSeries
  result = api_instance.get_report_series(vbasoftware_database, report_series_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->get_report_series: #{e}"
end
```

#### Using the get_report_series_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesVBAResponse>, Integer, Hash)> get_report_series_with_http_info(vbasoftware_database, report_series_key)

```ruby
begin
  # Get ReportSeries
  data, status_code, headers = api_instance.get_report_series_with_http_info(vbasoftware_database, report_series_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->get_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_key** | **Integer** | ReportSeries Key |  |

### Return type

[**ReportSeriesVBAResponse**](ReportSeriesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series

> <ReportSeriesListVBAResponse> list_report_series(vbasoftware_database, opts)

List ReportSeries

Lists all ReportSeries

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  series_type: 'series_type_example', # String | Series Type (STANDARD | TEMPLATE)
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeries
  result = api_instance.list_report_series(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->list_report_series: #{e}"
end
```

#### Using the list_report_series_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesListVBAResponse>, Integer, Hash)> list_report_series_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportSeries
  data, status_code, headers = api_instance.list_report_series_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->list_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **series_type** | **String** | Series Type (STANDARD | TEMPLATE) | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportSeriesListVBAResponse**](ReportSeriesListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_series_users

> <StringStaticOptionListVBAResponse> list_report_series_users(vbasoftware_database, opts)

List ReportSeries Users

Lists all ReportSeries

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportSeries Users
  result = api_instance.list_report_series_users(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->list_report_series_users: #{e}"
end
```

#### Using the list_report_series_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_report_series_users_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportSeries Users
  data, status_code, headers = api_instance.list_report_series_users_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->list_report_series_users_with_http_info: #{e}"
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

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_series

> <MultiCodeResponseListVBAResponse> update_batch_report_series(vbasoftware_database, report_series)

Create or Update Batch ReportSeries

Create or Update multiple ReportSeries at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series = [Vba::ReportSeries.new({report_series_key: 37})] # Array<ReportSeries> | 

begin
  # Create or Update Batch ReportSeries
  result = api_instance.update_batch_report_series(vbasoftware_database, report_series)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->update_batch_report_series: #{e}"
end
```

#### Using the update_batch_report_series_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_series_with_http_info(vbasoftware_database, report_series)

```ruby
begin
  # Create or Update Batch ReportSeries
  data, status_code, headers = api_instance.update_batch_report_series_with_http_info(vbasoftware_database, report_series)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->update_batch_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series** | [**Array&lt;ReportSeries&gt;**](ReportSeries.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_series

> <ReportSeriesVBAResponse> update_report_series(vbasoftware_database, report_series_key, report_series)

Update ReportSeries

Updates a specific ReportSeries.

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

api_instance = Vba::ReportSeriesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_series_key = 56 # Integer | ReportSeries Key
report_series = Vba::ReportSeries.new({report_series_key: 37}) # ReportSeries | 

begin
  # Update ReportSeries
  result = api_instance.update_report_series(vbasoftware_database, report_series_key, report_series)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->update_report_series: #{e}"
end
```

#### Using the update_report_series_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportSeriesVBAResponse>, Integer, Hash)> update_report_series_with_http_info(vbasoftware_database, report_series_key, report_series)

```ruby
begin
  # Update ReportSeries
  data, status_code, headers = api_instance.update_report_series_with_http_info(vbasoftware_database, report_series_key, report_series)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportSeriesVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportSeriesApi->update_report_series_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_series_key** | **Integer** | ReportSeries Key |  |
| **report_series** | [**ReportSeries**](ReportSeries.md) |  |  |

### Return type

[**ReportSeriesVBAResponse**](ReportSeriesVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

