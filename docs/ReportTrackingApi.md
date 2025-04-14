# Vba::ReportTrackingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_track**](ReportTrackingApi.md#create_report_track) | **POST** /report-tracks | Create ReportTrack |
| [**delete_report_track**](ReportTrackingApi.md#delete_report_track) | **DELETE** /report-tracks/{reportTrackKey} | Delete ReportTrack |
| [**get_report_track**](ReportTrackingApi.md#get_report_track) | **GET** /report-tracks/{reportTrackKey} | Get ReportTrack |
| [**list_report_track**](ReportTrackingApi.md#list_report_track) | **GET** /report-tracks | List ReportTrack |
| [**update_batch_report_track**](ReportTrackingApi.md#update_batch_report_track) | **PUT** /report-tracks-batch | Create or Update Batch ReportTrack |
| [**update_report_track**](ReportTrackingApi.md#update_report_track) | **PUT** /report-tracks/{reportTrackKey} | Update ReportTrack |


## create_report_track

> <ReportTrackVBAResponse> create_report_track(vbasoftware_database, report_track)

Create ReportTrack

Creates a new ReportTrack

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

api_instance = Vba::ReportTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_track = Vba::ReportTrack.new({report_track_key: 37, report_queue_detail_key: 37}) # ReportTrack | 

begin
  # Create ReportTrack
  result = api_instance.create_report_track(vbasoftware_database, report_track)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->create_report_track: #{e}"
end
```

#### Using the create_report_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackVBAResponse>, Integer, Hash)> create_report_track_with_http_info(vbasoftware_database, report_track)

```ruby
begin
  # Create ReportTrack
  data, status_code, headers = api_instance.create_report_track_with_http_info(vbasoftware_database, report_track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->create_report_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_track** | [**ReportTrack**](ReportTrack.md) |  |  |

### Return type

[**ReportTrackVBAResponse**](ReportTrackVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_track

> delete_report_track(vbasoftware_database, report_track_key)

Delete ReportTrack

Deletes an ReportTrack

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

api_instance = Vba::ReportTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_track_key = 56 # Integer | ReportTrack Key

begin
  # Delete ReportTrack
  api_instance.delete_report_track(vbasoftware_database, report_track_key)
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->delete_report_track: #{e}"
end
```

#### Using the delete_report_track_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_track_with_http_info(vbasoftware_database, report_track_key)

```ruby
begin
  # Delete ReportTrack
  data, status_code, headers = api_instance.delete_report_track_with_http_info(vbasoftware_database, report_track_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->delete_report_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_track_key** | **Integer** | ReportTrack Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_track

> <ReportTrackVBAResponse> get_report_track(vbasoftware_database, report_track_key)

Get ReportTrack

Gets ReportTrack

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

api_instance = Vba::ReportTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_track_key = 56 # Integer | ReportTrack Key

begin
  # Get ReportTrack
  result = api_instance.get_report_track(vbasoftware_database, report_track_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->get_report_track: #{e}"
end
```

#### Using the get_report_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackVBAResponse>, Integer, Hash)> get_report_track_with_http_info(vbasoftware_database, report_track_key)

```ruby
begin
  # Get ReportTrack
  data, status_code, headers = api_instance.get_report_track_with_http_info(vbasoftware_database, report_track_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->get_report_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_track_key** | **Integer** | ReportTrack Key |  |

### Return type

[**ReportTrackVBAResponse**](ReportTrackVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_track

> <ReportTrackListVBAResponse> list_report_track(vbasoftware_database, opts)

List ReportTrack

Lists all ReportTrack

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

api_instance = Vba::ReportTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportTrack
  result = api_instance.list_report_track(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->list_report_track: #{e}"
end
```

#### Using the list_report_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackListVBAResponse>, Integer, Hash)> list_report_track_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReportTrack
  data, status_code, headers = api_instance.list_report_track_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->list_report_track_with_http_info: #{e}"
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

[**ReportTrackListVBAResponse**](ReportTrackListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_track

> <MultiCodeResponseListVBAResponse> update_batch_report_track(vbasoftware_database, report_track)

Create or Update Batch ReportTrack

Create or Update multiple ReportTrack at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_track = [Vba::ReportTrack.new({report_track_key: 37, report_queue_detail_key: 37})] # Array<ReportTrack> | 

begin
  # Create or Update Batch ReportTrack
  result = api_instance.update_batch_report_track(vbasoftware_database, report_track)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->update_batch_report_track: #{e}"
end
```

#### Using the update_batch_report_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_track_with_http_info(vbasoftware_database, report_track)

```ruby
begin
  # Create or Update Batch ReportTrack
  data, status_code, headers = api_instance.update_batch_report_track_with_http_info(vbasoftware_database, report_track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->update_batch_report_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_track** | [**Array&lt;ReportTrack&gt;**](ReportTrack.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_track

> <ReportTrackVBAResponse> update_report_track(vbasoftware_database, report_track_key, report_track)

Update ReportTrack

Updates a specific ReportTrack.

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

api_instance = Vba::ReportTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_track_key = 56 # Integer | ReportTrack Key
report_track = Vba::ReportTrack.new({report_track_key: 37, report_queue_detail_key: 37}) # ReportTrack | 

begin
  # Update ReportTrack
  result = api_instance.update_report_track(vbasoftware_database, report_track_key, report_track)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->update_report_track: #{e}"
end
```

#### Using the update_report_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackVBAResponse>, Integer, Hash)> update_report_track_with_http_info(vbasoftware_database, report_track_key, report_track)

```ruby
begin
  # Update ReportTrack
  data, status_code, headers = api_instance.update_report_track_with_http_info(vbasoftware_database, report_track_key, report_track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingApi->update_report_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_track_key** | **Integer** | ReportTrack Key |  |
| **report_track** | [**ReportTrack**](ReportTrack.md) |  |  |

### Return type

[**ReportTrackVBAResponse**](ReportTrackVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

