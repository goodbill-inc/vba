# Vba::TimelyFilingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_timely_filing**](TimelyFilingApi.md#create_timely_filing) | **POST** /timely-filings | Create TimelyFiling |
| [**delete_timely_filing**](TimelyFilingApi.md#delete_timely_filing) | **DELETE** /timely-filings/{timelyFilingKey} | Delete TimelyFiling |
| [**get_timely_filing**](TimelyFilingApi.md#get_timely_filing) | **GET** /timely-filings/{timelyFilingKey} | Get TimelyFiling |
| [**list_timely_filing**](TimelyFilingApi.md#list_timely_filing) | **GET** /timely-filings | List TimelyFiling |
| [**update_batch_timely_filing**](TimelyFilingApi.md#update_batch_timely_filing) | **PUT** /timely-filings-batch | Create or Update Batch TimelyFiling |
| [**update_timely_filing**](TimelyFilingApi.md#update_timely_filing) | **PUT** /timely-filings/{timelyFilingKey} | Update TimelyFiling |


## create_timely_filing

> <TimelyFilingVBAResponse> create_timely_filing(vbasoftware_database, timely_filing)

Create TimelyFiling

Creates a new TimelyFiling

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

api_instance = Vba::TimelyFilingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
timely_filing = Vba::TimelyFiling.new({timely_filing_key: 37, inpatient: false}) # TimelyFiling | 

begin
  # Create TimelyFiling
  result = api_instance.create_timely_filing(vbasoftware_database, timely_filing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->create_timely_filing: #{e}"
end
```

#### Using the create_timely_filing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimelyFilingVBAResponse>, Integer, Hash)> create_timely_filing_with_http_info(vbasoftware_database, timely_filing)

```ruby
begin
  # Create TimelyFiling
  data, status_code, headers = api_instance.create_timely_filing_with_http_info(vbasoftware_database, timely_filing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimelyFilingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->create_timely_filing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **timely_filing** | [**TimelyFiling**](TimelyFiling.md) |  |  |

### Return type

[**TimelyFilingVBAResponse**](TimelyFilingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_timely_filing

> delete_timely_filing(vbasoftware_database, timely_filing_key)

Delete TimelyFiling

Deletes an TimelyFiling

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

api_instance = Vba::TimelyFilingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
timely_filing_key = 56 # Integer | TimelyFiling Key

begin
  # Delete TimelyFiling
  api_instance.delete_timely_filing(vbasoftware_database, timely_filing_key)
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->delete_timely_filing: #{e}"
end
```

#### Using the delete_timely_filing_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_timely_filing_with_http_info(vbasoftware_database, timely_filing_key)

```ruby
begin
  # Delete TimelyFiling
  data, status_code, headers = api_instance.delete_timely_filing_with_http_info(vbasoftware_database, timely_filing_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->delete_timely_filing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **timely_filing_key** | **Integer** | TimelyFiling Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_timely_filing

> <TimelyFilingVBAResponse> get_timely_filing(vbasoftware_database, timely_filing_key)

Get TimelyFiling

Gets TimelyFiling

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

api_instance = Vba::TimelyFilingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
timely_filing_key = 56 # Integer | TimelyFiling Key

begin
  # Get TimelyFiling
  result = api_instance.get_timely_filing(vbasoftware_database, timely_filing_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->get_timely_filing: #{e}"
end
```

#### Using the get_timely_filing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimelyFilingVBAResponse>, Integer, Hash)> get_timely_filing_with_http_info(vbasoftware_database, timely_filing_key)

```ruby
begin
  # Get TimelyFiling
  data, status_code, headers = api_instance.get_timely_filing_with_http_info(vbasoftware_database, timely_filing_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimelyFilingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->get_timely_filing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **timely_filing_key** | **Integer** | TimelyFiling Key |  |

### Return type

[**TimelyFilingVBAResponse**](TimelyFilingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_timely_filing

> <TimelyFilingListVBAResponse> list_timely_filing(vbasoftware_database, opts)

List TimelyFiling

Lists all TimelyFiling

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

api_instance = Vba::TimelyFilingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List TimelyFiling
  result = api_instance.list_timely_filing(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->list_timely_filing: #{e}"
end
```

#### Using the list_timely_filing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimelyFilingListVBAResponse>, Integer, Hash)> list_timely_filing_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List TimelyFiling
  data, status_code, headers = api_instance.list_timely_filing_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimelyFilingListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->list_timely_filing_with_http_info: #{e}"
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

[**TimelyFilingListVBAResponse**](TimelyFilingListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_timely_filing

> <MultiCodeResponseListVBAResponse> update_batch_timely_filing(vbasoftware_database, timely_filing)

Create or Update Batch TimelyFiling

Create or Update multiple TimelyFiling at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TimelyFilingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
timely_filing = [Vba::TimelyFiling.new({timely_filing_key: 37, inpatient: false})] # Array<TimelyFiling> | 

begin
  # Create or Update Batch TimelyFiling
  result = api_instance.update_batch_timely_filing(vbasoftware_database, timely_filing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->update_batch_timely_filing: #{e}"
end
```

#### Using the update_batch_timely_filing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_timely_filing_with_http_info(vbasoftware_database, timely_filing)

```ruby
begin
  # Create or Update Batch TimelyFiling
  data, status_code, headers = api_instance.update_batch_timely_filing_with_http_info(vbasoftware_database, timely_filing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->update_batch_timely_filing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **timely_filing** | [**Array&lt;TimelyFiling&gt;**](TimelyFiling.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_timely_filing

> <TimelyFilingVBAResponse> update_timely_filing(vbasoftware_database, timely_filing_key, timely_filing)

Update TimelyFiling

Updates a specific TimelyFiling.

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

api_instance = Vba::TimelyFilingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
timely_filing_key = 56 # Integer | TimelyFiling Key
timely_filing = Vba::TimelyFiling.new({timely_filing_key: 37, inpatient: false}) # TimelyFiling | 

begin
  # Update TimelyFiling
  result = api_instance.update_timely_filing(vbasoftware_database, timely_filing_key, timely_filing)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->update_timely_filing: #{e}"
end
```

#### Using the update_timely_filing_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TimelyFilingVBAResponse>, Integer, Hash)> update_timely_filing_with_http_info(vbasoftware_database, timely_filing_key, timely_filing)

```ruby
begin
  # Update TimelyFiling
  data, status_code, headers = api_instance.update_timely_filing_with_http_info(vbasoftware_database, timely_filing_key, timely_filing)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TimelyFilingVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TimelyFilingApi->update_timely_filing_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **timely_filing_key** | **Integer** | TimelyFiling Key |  |
| **timely_filing** | [**TimelyFiling**](TimelyFiling.md) |  |  |

### Return type

[**TimelyFilingVBAResponse**](TimelyFilingVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

