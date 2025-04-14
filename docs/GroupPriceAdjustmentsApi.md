# Vba::GroupPriceAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_price_adjust**](GroupPriceAdjustmentsApi.md#create_group_price_adjust) | **POST** /groups/{groupID}/price-adjustments | Create GroupPriceAdjust |
| [**delete_group_price_adjust**](GroupPriceAdjustmentsApi.md#delete_group_price_adjust) | **DELETE** /groups/{groupID}/price-adjustments/{effectiveDate} | Delete GroupPriceAdjust |
| [**get_group_price_adjust**](GroupPriceAdjustmentsApi.md#get_group_price_adjust) | **GET** /groups/{groupID}/price-adjustments/{effectiveDate} | Get GroupPriceAdjust |
| [**list_group_price_adjust**](GroupPriceAdjustmentsApi.md#list_group_price_adjust) | **GET** /groups/{groupID}/price-adjustments | List GroupPriceAdjust |
| [**update_batch_group_price_adjust**](GroupPriceAdjustmentsApi.md#update_batch_group_price_adjust) | **PUT** /groups/{groupID}/price-adjustments-batch | Create or Update Batch GroupPriceAdjust |
| [**update_group_price_adjust**](GroupPriceAdjustmentsApi.md#update_group_price_adjust) | **PUT** /groups/{groupID}/price-adjustments/{effectiveDate} | Update GroupPriceAdjust |


## create_group_price_adjust

> <GroupPriceAdjustVBAResponse> create_group_price_adjust(vbasoftware_database, group_id, group_price_adjust)

Create GroupPriceAdjust

Creates a new GroupPriceAdjust

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

api_instance = Vba::GroupPriceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_price_adjust = Vba::GroupPriceAdjust.new({group_id: 'group_id_example', effective_date: Time.now}) # GroupPriceAdjust | 

begin
  # Create GroupPriceAdjust
  result = api_instance.create_group_price_adjust(vbasoftware_database, group_id, group_price_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->create_group_price_adjust: #{e}"
end
```

#### Using the create_group_price_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPriceAdjustVBAResponse>, Integer, Hash)> create_group_price_adjust_with_http_info(vbasoftware_database, group_id, group_price_adjust)

```ruby
begin
  # Create GroupPriceAdjust
  data, status_code, headers = api_instance.create_group_price_adjust_with_http_info(vbasoftware_database, group_id, group_price_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPriceAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->create_group_price_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_price_adjust** | [**GroupPriceAdjust**](GroupPriceAdjust.md) |  |  |

### Return type

[**GroupPriceAdjustVBAResponse**](GroupPriceAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_price_adjust

> delete_group_price_adjust(vbasoftware_database, group_id, effective_date)

Delete GroupPriceAdjust

Deletes an GroupPriceAdjust

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

api_instance = Vba::GroupPriceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete GroupPriceAdjust
  api_instance.delete_group_price_adjust(vbasoftware_database, group_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->delete_group_price_adjust: #{e}"
end
```

#### Using the delete_group_price_adjust_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_price_adjust_with_http_info(vbasoftware_database, group_id, effective_date)

```ruby
begin
  # Delete GroupPriceAdjust
  data, status_code, headers = api_instance.delete_group_price_adjust_with_http_info(vbasoftware_database, group_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->delete_group_price_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_price_adjust

> <GroupPriceAdjustVBAResponse> get_group_price_adjust(vbasoftware_database, group_id, effective_date)

Get GroupPriceAdjust

Gets GroupPriceAdjust

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

api_instance = Vba::GroupPriceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get GroupPriceAdjust
  result = api_instance.get_group_price_adjust(vbasoftware_database, group_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->get_group_price_adjust: #{e}"
end
```

#### Using the get_group_price_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPriceAdjustVBAResponse>, Integer, Hash)> get_group_price_adjust_with_http_info(vbasoftware_database, group_id, effective_date)

```ruby
begin
  # Get GroupPriceAdjust
  data, status_code, headers = api_instance.get_group_price_adjust_with_http_info(vbasoftware_database, group_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPriceAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->get_group_price_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**GroupPriceAdjustVBAResponse**](GroupPriceAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_price_adjust

> <GroupPriceAdjustListVBAResponse> list_group_price_adjust(vbasoftware_database, group_id, opts)

List GroupPriceAdjust

Lists all GroupPriceAdjust for the given groupID

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

api_instance = Vba::GroupPriceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPriceAdjust
  result = api_instance.list_group_price_adjust(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->list_group_price_adjust: #{e}"
end
```

#### Using the list_group_price_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPriceAdjustListVBAResponse>, Integer, Hash)> list_group_price_adjust_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupPriceAdjust
  data, status_code, headers = api_instance.list_group_price_adjust_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPriceAdjustListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->list_group_price_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPriceAdjustListVBAResponse**](GroupPriceAdjustListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_price_adjust

> <MultiCodeResponseListVBAResponse> update_batch_group_price_adjust(vbasoftware_database, group_id, group_price_adjust)

Create or Update Batch GroupPriceAdjust

Create or Update multiple GroupPriceAdjust at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPriceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_price_adjust = [Vba::GroupPriceAdjust.new({group_id: 'group_id_example', effective_date: Time.now})] # Array<GroupPriceAdjust> | 

begin
  # Create or Update Batch GroupPriceAdjust
  result = api_instance.update_batch_group_price_adjust(vbasoftware_database, group_id, group_price_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->update_batch_group_price_adjust: #{e}"
end
```

#### Using the update_batch_group_price_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_price_adjust_with_http_info(vbasoftware_database, group_id, group_price_adjust)

```ruby
begin
  # Create or Update Batch GroupPriceAdjust
  data, status_code, headers = api_instance.update_batch_group_price_adjust_with_http_info(vbasoftware_database, group_id, group_price_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->update_batch_group_price_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_price_adjust** | [**Array&lt;GroupPriceAdjust&gt;**](GroupPriceAdjust.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_price_adjust

> <GroupPriceAdjustVBAResponse> update_group_price_adjust(vbasoftware_database, group_id, effective_date, group_price_adjust)

Update GroupPriceAdjust

Updates a specific GroupPriceAdjust.

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

api_instance = Vba::GroupPriceAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
group_price_adjust = Vba::GroupPriceAdjust.new({group_id: 'group_id_example', effective_date: Time.now}) # GroupPriceAdjust | 

begin
  # Update GroupPriceAdjust
  result = api_instance.update_group_price_adjust(vbasoftware_database, group_id, effective_date, group_price_adjust)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->update_group_price_adjust: #{e}"
end
```

#### Using the update_group_price_adjust_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPriceAdjustVBAResponse>, Integer, Hash)> update_group_price_adjust_with_http_info(vbasoftware_database, group_id, effective_date, group_price_adjust)

```ruby
begin
  # Update GroupPriceAdjust
  data, status_code, headers = api_instance.update_group_price_adjust_with_http_info(vbasoftware_database, group_id, effective_date, group_price_adjust)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPriceAdjustVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPriceAdjustmentsApi->update_group_price_adjust_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **group_price_adjust** | [**GroupPriceAdjust**](GroupPriceAdjust.md) |  |  |

### Return type

[**GroupPriceAdjustVBAResponse**](GroupPriceAdjustVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

