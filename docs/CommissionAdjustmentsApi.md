# Vba::CommissionAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_adjustment**](CommissionAdjustmentsApi.md#create_commission_adjustment) | **POST** /commission-adjustments | Create CommissionAdjustment |
| [**delete_commission_adjustment**](CommissionAdjustmentsApi.md#delete_commission_adjustment) | **DELETE** /commission-adjustments/{commAdjKey} | Delete CommissionAdjustment |
| [**get_commission_adjustment**](CommissionAdjustmentsApi.md#get_commission_adjustment) | **GET** /commission-adjustments/{commAdjKey} | Get CommissionAdjustment |
| [**list_commission_adjustment**](CommissionAdjustmentsApi.md#list_commission_adjustment) | **GET** /commission-adjustments | List CommissionAdjustment |
| [**update_batch_commission_adjustment**](CommissionAdjustmentsApi.md#update_batch_commission_adjustment) | **PUT** /commission-adjustments-batch | Create or Update Batch CommissionAdjustment |
| [**update_commission_adjustment**](CommissionAdjustmentsApi.md#update_commission_adjustment) | **PUT** /commission-adjustments/{commAdjKey} | Update CommissionAdjustment |


## create_commission_adjustment

> <CommissionAdjustmentVBAResponse> create_commission_adjustment(vbasoftware_database, commission_adjustment)

Create CommissionAdjustment

Creates a new CommissionAdjustment

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

api_instance = Vba::CommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_adjustment = Vba::CommissionAdjustment.new({commission_adjustment_key: 37, pre_payment_adjustment: false}) # CommissionAdjustment | 

begin
  # Create CommissionAdjustment
  result = api_instance.create_commission_adjustment(vbasoftware_database, commission_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->create_commission_adjustment: #{e}"
end
```

#### Using the create_commission_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentVBAResponse>, Integer, Hash)> create_commission_adjustment_with_http_info(vbasoftware_database, commission_adjustment)

```ruby
begin
  # Create CommissionAdjustment
  data, status_code, headers = api_instance.create_commission_adjustment_with_http_info(vbasoftware_database, commission_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->create_commission_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_adjustment** | [**CommissionAdjustment**](CommissionAdjustment.md) |  |  |

### Return type

[**CommissionAdjustmentVBAResponse**](CommissionAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_adjustment

> delete_commission_adjustment(vbasoftware_database, comm_adj_key)

Delete CommissionAdjustment

Deletes an CommissionAdjustment

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

api_instance = Vba::CommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_adj_key = 56 # Integer | CommissionAdjustment Key

begin
  # Delete CommissionAdjustment
  api_instance.delete_commission_adjustment(vbasoftware_database, comm_adj_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->delete_commission_adjustment: #{e}"
end
```

#### Using the delete_commission_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_adjustment_with_http_info(vbasoftware_database, comm_adj_key)

```ruby
begin
  # Delete CommissionAdjustment
  data, status_code, headers = api_instance.delete_commission_adjustment_with_http_info(vbasoftware_database, comm_adj_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->delete_commission_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_adj_key** | **Integer** | CommissionAdjustment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_adjustment

> <CommissionAdjustmentVBAResponse> get_commission_adjustment(vbasoftware_database, comm_adj_key)

Get CommissionAdjustment

Gets CommissionAdjustment

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

api_instance = Vba::CommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_adj_key = 56 # Integer | CommissionAdjustment Key

begin
  # Get CommissionAdjustment
  result = api_instance.get_commission_adjustment(vbasoftware_database, comm_adj_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->get_commission_adjustment: #{e}"
end
```

#### Using the get_commission_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentVBAResponse>, Integer, Hash)> get_commission_adjustment_with_http_info(vbasoftware_database, comm_adj_key)

```ruby
begin
  # Get CommissionAdjustment
  data, status_code, headers = api_instance.get_commission_adjustment_with_http_info(vbasoftware_database, comm_adj_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->get_commission_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_adj_key** | **Integer** | CommissionAdjustment Key |  |

### Return type

[**CommissionAdjustmentVBAResponse**](CommissionAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_adjustment

> <CommissionAdjustmentListVBAResponse> list_commission_adjustment(vbasoftware_database, opts)

List CommissionAdjustment

Lists all CommissionAdjustment

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

api_instance = Vba::CommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionAdjustment
  result = api_instance.list_commission_adjustment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->list_commission_adjustment: #{e}"
end
```

#### Using the list_commission_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentListVBAResponse>, Integer, Hash)> list_commission_adjustment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionAdjustment
  data, status_code, headers = api_instance.list_commission_adjustment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->list_commission_adjustment_with_http_info: #{e}"
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

[**CommissionAdjustmentListVBAResponse**](CommissionAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_adjustment

> <MultiCodeResponseListVBAResponse> update_batch_commission_adjustment(vbasoftware_database, commission_adjustment)

Create or Update Batch CommissionAdjustment

Create or Update multiple CommissionAdjustment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_adjustment = [Vba::CommissionAdjustment.new({commission_adjustment_key: 37, pre_payment_adjustment: false})] # Array<CommissionAdjustment> | 

begin
  # Create or Update Batch CommissionAdjustment
  result = api_instance.update_batch_commission_adjustment(vbasoftware_database, commission_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->update_batch_commission_adjustment: #{e}"
end
```

#### Using the update_batch_commission_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_adjustment_with_http_info(vbasoftware_database, commission_adjustment)

```ruby
begin
  # Create or Update Batch CommissionAdjustment
  data, status_code, headers = api_instance.update_batch_commission_adjustment_with_http_info(vbasoftware_database, commission_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->update_batch_commission_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_adjustment** | [**Array&lt;CommissionAdjustment&gt;**](CommissionAdjustment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_adjustment

> <CommissionAdjustmentVBAResponse> update_commission_adjustment(vbasoftware_database, comm_adj_key, commission_adjustment)

Update CommissionAdjustment

Updates a specific CommissionAdjustment.

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

api_instance = Vba::CommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_adj_key = 56 # Integer | CommissionAdjustment Key
commission_adjustment = Vba::CommissionAdjustment.new({commission_adjustment_key: 37, pre_payment_adjustment: false}) # CommissionAdjustment | 

begin
  # Update CommissionAdjustment
  result = api_instance.update_commission_adjustment(vbasoftware_database, comm_adj_key, commission_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->update_commission_adjustment: #{e}"
end
```

#### Using the update_commission_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentVBAResponse>, Integer, Hash)> update_commission_adjustment_with_http_info(vbasoftware_database, comm_adj_key, commission_adjustment)

```ruby
begin
  # Update CommissionAdjustment
  data, status_code, headers = api_instance.update_commission_adjustment_with_http_info(vbasoftware_database, comm_adj_key, commission_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionAdjustmentsApi->update_commission_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_adj_key** | **Integer** | CommissionAdjustment Key |  |
| **commission_adjustment** | [**CommissionAdjustment**](CommissionAdjustment.md) |  |  |

### Return type

[**CommissionAdjustmentVBAResponse**](CommissionAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

