# Vba::CriteriaColumnsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_criteria_column**](CriteriaColumnsApi.md#get_criteria_column) | **GET** /criteria-columns/{id} | Get Criteria Column |
| [**list_criteria_columns**](CriteriaColumnsApi.md#list_criteria_columns) | **GET** /criteria-columns | List Criteria Columns |


## get_criteria_column

> <Int32StaticOptionVBAResponse> get_criteria_column(vbasoftware_database, id)

Get Criteria Column

Gets a single Criteria Column by ID

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

api_instance = Vba::CriteriaColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
id = 56 # Integer | ID

begin
  # Get Criteria Column
  result = api_instance.get_criteria_column(vbasoftware_database, id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaColumnsApi->get_criteria_column: #{e}"
end
```

#### Using the get_criteria_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionVBAResponse>, Integer, Hash)> get_criteria_column_with_http_info(vbasoftware_database, id)

```ruby
begin
  # Get Criteria Column
  data, status_code, headers = api_instance.get_criteria_column_with_http_info(vbasoftware_database, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaColumnsApi->get_criteria_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **id** | **Integer** | ID |  |

### Return type

[**Int32StaticOptionVBAResponse**](Int32StaticOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_criteria_columns

> <Int32StaticOptionListVBAResponse> list_criteria_columns(vbasoftware_database)

List Criteria Columns

Lists all Criteria Columns

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

api_instance = Vba::CriteriaColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Criteria Columns
  result = api_instance.list_criteria_columns(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CriteriaColumnsApi->list_criteria_columns: #{e}"
end
```

#### Using the list_criteria_columns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Int32StaticOptionListVBAResponse>, Integer, Hash)> list_criteria_columns_with_http_info(vbasoftware_database)

```ruby
begin
  # List Criteria Columns
  data, status_code, headers = api_instance.list_criteria_columns_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Int32StaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CriteriaColumnsApi->list_criteria_columns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**Int32StaticOptionListVBAResponse**](Int32StaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

