# Vba::ReportTrackingSentToApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_report_track_sent_to**](ReportTrackingSentToApi.md#create_report_track_sent_to) | **POST** /report-definitions/{reportDefinitionKey}/sent-to | Create ReportTrackSentTo |
| [**delete_report_track_sent_to**](ReportTrackingSentToApi.md#delete_report_track_sent_to) | **DELETE** /report-definitions/{reportDefinitionKey}/sent-to/{sentTo} | Delete ReportTrackSentTo |
| [**get_report_track_sent_to**](ReportTrackingSentToApi.md#get_report_track_sent_to) | **GET** /report-definitions/{reportDefinitionKey}/sent-to/{sentTo} | Get ReportTrackSentTo |
| [**list_report_track_sent_to**](ReportTrackingSentToApi.md#list_report_track_sent_to) | **GET** /report-definitions/{reportDefinitionKey}/sent-to | List ReportTrackSentTo |
| [**update_batch_report_track_sent_to**](ReportTrackingSentToApi.md#update_batch_report_track_sent_to) | **PUT** /report-definitions/{reportDefinitionKey}/sent-to-batch | Create or Update Batch ReportTrackSentTo |
| [**update_report_track_sent_to**](ReportTrackingSentToApi.md#update_report_track_sent_to) | **PUT** /report-definitions/{reportDefinitionKey}/sent-to/{sentTo} | Update ReportTrackSentTo |


## create_report_track_sent_to

> <ReportTrackSentToVBAResponse> create_report_track_sent_to(vbasoftware_database, report_definition_key, report_track_sent_to)

Create ReportTrackSentTo

Creates a new ReportTrackSentTo

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

api_instance = Vba::ReportTrackingSentToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_sent_to = Vba::ReportTrackSentTo.new({report_definition_key: 37, sent_to: 'sent_to_example', sent_to_default: false}) # ReportTrackSentTo | 

begin
  # Create ReportTrackSentTo
  result = api_instance.create_report_track_sent_to(vbasoftware_database, report_definition_key, report_track_sent_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->create_report_track_sent_to: #{e}"
end
```

#### Using the create_report_track_sent_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackSentToVBAResponse>, Integer, Hash)> create_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, report_track_sent_to)

```ruby
begin
  # Create ReportTrackSentTo
  data, status_code, headers = api_instance.create_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, report_track_sent_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackSentToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->create_report_track_sent_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_sent_to** | [**ReportTrackSentTo**](ReportTrackSentTo.md) |  |  |

### Return type

[**ReportTrackSentToVBAResponse**](ReportTrackSentToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_report_track_sent_to

> delete_report_track_sent_to(vbasoftware_database, report_definition_key, sent_to)

Delete ReportTrackSentTo

Deletes an ReportTrackSentTo

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

api_instance = Vba::ReportTrackingSentToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
sent_to = 'sent_to_example' # String | Sent To

begin
  # Delete ReportTrackSentTo
  api_instance.delete_report_track_sent_to(vbasoftware_database, report_definition_key, sent_to)
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->delete_report_track_sent_to: #{e}"
end
```

#### Using the delete_report_track_sent_to_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, sent_to)

```ruby
begin
  # Delete ReportTrackSentTo
  data, status_code, headers = api_instance.delete_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, sent_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->delete_report_track_sent_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **sent_to** | **String** | Sent To |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_report_track_sent_to

> <ReportTrackSentToVBAResponse> get_report_track_sent_to(vbasoftware_database, report_definition_key, sent_to)

Get ReportTrackSentTo

Gets ReportTrackSentTo

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

api_instance = Vba::ReportTrackingSentToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
sent_to = 'sent_to_example' # String | Sent To

begin
  # Get ReportTrackSentTo
  result = api_instance.get_report_track_sent_to(vbasoftware_database, report_definition_key, sent_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->get_report_track_sent_to: #{e}"
end
```

#### Using the get_report_track_sent_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackSentToVBAResponse>, Integer, Hash)> get_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, sent_to)

```ruby
begin
  # Get ReportTrackSentTo
  data, status_code, headers = api_instance.get_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, sent_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackSentToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->get_report_track_sent_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **sent_to** | **String** | Sent To |  |

### Return type

[**ReportTrackSentToVBAResponse**](ReportTrackSentToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_report_track_sent_to

> <ReportTrackSentToListVBAResponse> list_report_track_sent_to(vbasoftware_database, report_definition_key, opts)

List ReportTrackSentTo

Lists all ReportTrackSentTo for the given reportDefinitionKey

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

api_instance = Vba::ReportTrackingSentToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReportTrackSentTo
  result = api_instance.list_report_track_sent_to(vbasoftware_database, report_definition_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->list_report_track_sent_to: #{e}"
end
```

#### Using the list_report_track_sent_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackSentToListVBAResponse>, Integer, Hash)> list_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, opts)

```ruby
begin
  # List ReportTrackSentTo
  data, status_code, headers = api_instance.list_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackSentToListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->list_report_track_sent_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ReportTrackSentToListVBAResponse**](ReportTrackSentToListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_report_track_sent_to

> <MultiCodeResponseListVBAResponse> update_batch_report_track_sent_to(vbasoftware_database, report_definition_key, report_track_sent_to)

Create or Update Batch ReportTrackSentTo

Create or Update multiple ReportTrackSentTo at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReportTrackingSentToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
report_track_sent_to = [Vba::ReportTrackSentTo.new({report_definition_key: 37, sent_to: 'sent_to_example', sent_to_default: false})] # Array<ReportTrackSentTo> | 

begin
  # Create or Update Batch ReportTrackSentTo
  result = api_instance.update_batch_report_track_sent_to(vbasoftware_database, report_definition_key, report_track_sent_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->update_batch_report_track_sent_to: #{e}"
end
```

#### Using the update_batch_report_track_sent_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, report_track_sent_to)

```ruby
begin
  # Create or Update Batch ReportTrackSentTo
  data, status_code, headers = api_instance.update_batch_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, report_track_sent_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->update_batch_report_track_sent_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **report_track_sent_to** | [**Array&lt;ReportTrackSentTo&gt;**](ReportTrackSentTo.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_report_track_sent_to

> <ReportTrackSentToVBAResponse> update_report_track_sent_to(vbasoftware_database, report_definition_key, sent_to, report_track_sent_to)

Update ReportTrackSentTo

Updates a specific ReportTrackSentTo.

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

api_instance = Vba::ReportTrackingSentToApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
report_definition_key = 56 # Integer | ReportDefinition Key
sent_to = 'sent_to_example' # String | Sent To
report_track_sent_to = Vba::ReportTrackSentTo.new({report_definition_key: 37, sent_to: 'sent_to_example', sent_to_default: false}) # ReportTrackSentTo | 

begin
  # Update ReportTrackSentTo
  result = api_instance.update_report_track_sent_to(vbasoftware_database, report_definition_key, sent_to, report_track_sent_to)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->update_report_track_sent_to: #{e}"
end
```

#### Using the update_report_track_sent_to_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportTrackSentToVBAResponse>, Integer, Hash)> update_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, sent_to, report_track_sent_to)

```ruby
begin
  # Update ReportTrackSentTo
  data, status_code, headers = api_instance.update_report_track_sent_to_with_http_info(vbasoftware_database, report_definition_key, sent_to, report_track_sent_to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportTrackSentToVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReportTrackingSentToApi->update_report_track_sent_to_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **sent_to** | **String** | Sent To |  |
| **report_track_sent_to** | [**ReportTrackSentTo**](ReportTrackSentTo.md) |  |  |

### Return type

[**ReportTrackSentToVBAResponse**](ReportTrackSentToVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

