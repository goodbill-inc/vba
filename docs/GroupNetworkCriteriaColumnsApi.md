# Vba::GroupNetworkCriteriaColumnsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_group_network_criteria_column**](GroupNetworkCriteriaColumnsApi.md#get_group_network_criteria_column) | **GET** /group-criteria-columns/{groupNetworkCriteriaColumnKey} | Get GroupNetworkCriteriaColumn |
| [**list_group_network_criteria_column**](GroupNetworkCriteriaColumnsApi.md#list_group_network_criteria_column) | **GET** /group-criteria-columns | List GroupNetworkCriteriaColumn |


## get_group_network_criteria_column

> <GroupNetworkCriteriaColumnVBAResponse> get_group_network_criteria_column(vbasoftware_database, group_network_criteria_column_key)

Get GroupNetworkCriteriaColumn

Gets GroupNetworkCriteriaColumn

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

api_instance = Vba::GroupNetworkCriteriaColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_network_criteria_column_key = 56 # Integer | GroupNetworkCriteriaColumn Key

begin
  # Get GroupNetworkCriteriaColumn
  result = api_instance.get_group_network_criteria_column(vbasoftware_database, group_network_criteria_column_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriaColumnsApi->get_group_network_criteria_column: #{e}"
end
```

#### Using the get_group_network_criteria_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkCriteriaColumnVBAResponse>, Integer, Hash)> get_group_network_criteria_column_with_http_info(vbasoftware_database, group_network_criteria_column_key)

```ruby
begin
  # Get GroupNetworkCriteriaColumn
  data, status_code, headers = api_instance.get_group_network_criteria_column_with_http_info(vbasoftware_database, group_network_criteria_column_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkCriteriaColumnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriaColumnsApi->get_group_network_criteria_column_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_network_criteria_column_key** | **Integer** | GroupNetworkCriteriaColumn Key |  |

### Return type

[**GroupNetworkCriteriaColumnVBAResponse**](GroupNetworkCriteriaColumnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_network_criteria_column

> <GroupNetworkCriteriaColumnListVBAResponse> list_group_network_criteria_column(vbasoftware_database, opts)

List GroupNetworkCriteriaColumn

Lists all GroupNetworkCriteriaColumn for the given groupNetworkCriteriaColumnKey

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

api_instance = Vba::GroupNetworkCriteriaColumnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupNetworkCriteriaColumn
  result = api_instance.list_group_network_criteria_column(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriaColumnsApi->list_group_network_criteria_column: #{e}"
end
```

#### Using the list_group_network_criteria_column_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkCriteriaColumnListVBAResponse>, Integer, Hash)> list_group_network_criteria_column_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupNetworkCriteriaColumn
  data, status_code, headers = api_instance.list_group_network_criteria_column_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkCriteriaColumnListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkCriteriaColumnsApi->list_group_network_criteria_column_with_http_info: #{e}"
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

[**GroupNetworkCriteriaColumnListVBAResponse**](GroupNetworkCriteriaColumnListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

