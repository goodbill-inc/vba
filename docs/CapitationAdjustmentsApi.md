# Vba::CapitationAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_capitation_adjustment**](CapitationAdjustmentsApi.md#create_capitation_adjustment) | **POST** /capitation-adjustments | Create CapitationAdjustment |
| [**delete_capitation_adjustment**](CapitationAdjustmentsApi.md#delete_capitation_adjustment) | **DELETE** /capitation-adjustments/{capitationAdjustmentKey} | Delete CapitationAdjustment |
| [**get_capitation_adjustment**](CapitationAdjustmentsApi.md#get_capitation_adjustment) | **GET** /capitation-adjustments/{capitationAdjustmentKey} | Get CapitationAdjustment |
| [**list_capitation_adjustment**](CapitationAdjustmentsApi.md#list_capitation_adjustment) | **GET** /capitation-adjustments | List CapitationAdjustment |
| [**update_batch_capitation_adjustment**](CapitationAdjustmentsApi.md#update_batch_capitation_adjustment) | **PUT** /capitation-adjustments-batch | Create or Update Batch CapitationAdjustment |
| [**update_capitation_adjustment**](CapitationAdjustmentsApi.md#update_capitation_adjustment) | **PUT** /capitation-adjustments/{capitationAdjustmentKey} | Update CapitationAdjustment |


## create_capitation_adjustment

> <CapitationAdjustmentVBAResponse> create_capitation_adjustment(vbasoftware_database, capitation_adjustment)

Create CapitationAdjustment

Creates a new CapitationAdjustment

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

api_instance = Vba::CapitationAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment = Vba::CapitationAdjustment.new({capitation_adjustment_key: 37}) # CapitationAdjustment | 

begin
  # Create CapitationAdjustment
  result = api_instance.create_capitation_adjustment(vbasoftware_database, capitation_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->create_capitation_adjustment: #{e}"
end
```

#### Using the create_capitation_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentVBAResponse>, Integer, Hash)> create_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment)

```ruby
begin
  # Create CapitationAdjustment
  data, status_code, headers = api_instance.create_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->create_capitation_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment** | [**CapitationAdjustment**](CapitationAdjustment.md) |  |  |

### Return type

[**CapitationAdjustmentVBAResponse**](CapitationAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_capitation_adjustment

> delete_capitation_adjustment(vbasoftware_database, capitation_adjustment_key)

Delete CapitationAdjustment

Deletes an CapitationAdjustment

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

api_instance = Vba::CapitationAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_key = 56 # Integer | CapitationAdjustment Key

begin
  # Delete CapitationAdjustment
  api_instance.delete_capitation_adjustment(vbasoftware_database, capitation_adjustment_key)
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->delete_capitation_adjustment: #{e}"
end
```

#### Using the delete_capitation_adjustment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment_key)

```ruby
begin
  # Delete CapitationAdjustment
  data, status_code, headers = api_instance.delete_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->delete_capitation_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_key** | **Integer** | CapitationAdjustment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_capitation_adjustment

> <CapitationAdjustmentVBAResponse> get_capitation_adjustment(vbasoftware_database, capitation_adjustment_key)

Get CapitationAdjustment

Gets CapitationAdjustment

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

api_instance = Vba::CapitationAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_key = 56 # Integer | CapitationAdjustment Key

begin
  # Get CapitationAdjustment
  result = api_instance.get_capitation_adjustment(vbasoftware_database, capitation_adjustment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->get_capitation_adjustment: #{e}"
end
```

#### Using the get_capitation_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentVBAResponse>, Integer, Hash)> get_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment_key)

```ruby
begin
  # Get CapitationAdjustment
  data, status_code, headers = api_instance.get_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->get_capitation_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_key** | **Integer** | CapitationAdjustment Key |  |

### Return type

[**CapitationAdjustmentVBAResponse**](CapitationAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_capitation_adjustment

> <CapitationAdjustmentListVBAResponse> list_capitation_adjustment(vbasoftware_database, opts)

List CapitationAdjustment

Lists all CapitationAdjustment for the given capitationTransactionKey.  If capitationTransactionKey is not provided, a list of Unassigned Capitation Adjustments will be returned.

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

api_instance = Vba::CapitationAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  capitation_transaction_key: 56, # Integer | CapitationTransaction Key
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CapitationAdjustment
  result = api_instance.list_capitation_adjustment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->list_capitation_adjustment: #{e}"
end
```

#### Using the list_capitation_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentListVBAResponse>, Integer, Hash)> list_capitation_adjustment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CapitationAdjustment
  data, status_code, headers = api_instance.list_capitation_adjustment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->list_capitation_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_transaction_key** | **Integer** | CapitationTransaction Key | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CapitationAdjustmentListVBAResponse**](CapitationAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_capitation_adjustment

> <MultiCodeResponseListVBAResponse> update_batch_capitation_adjustment(vbasoftware_database, capitation_adjustment)

Create or Update Batch CapitationAdjustment

Create or Update multiple CapitationAdjustment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CapitationAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment = [Vba::CapitationAdjustment.new({capitation_adjustment_key: 37})] # Array<CapitationAdjustment> | 

begin
  # Create or Update Batch CapitationAdjustment
  result = api_instance.update_batch_capitation_adjustment(vbasoftware_database, capitation_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->update_batch_capitation_adjustment: #{e}"
end
```

#### Using the update_batch_capitation_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment)

```ruby
begin
  # Create or Update Batch CapitationAdjustment
  data, status_code, headers = api_instance.update_batch_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->update_batch_capitation_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment** | [**Array&lt;CapitationAdjustment&gt;**](CapitationAdjustment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_capitation_adjustment

> <CapitationAdjustmentVBAResponse> update_capitation_adjustment(vbasoftware_database, capitation_adjustment_key, capitation_adjustment)

Update CapitationAdjustment

Updates a specific CapitationAdjustment.

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

api_instance = Vba::CapitationAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
capitation_adjustment_key = 56 # Integer | CapitationAdjustment Key
capitation_adjustment = Vba::CapitationAdjustment.new({capitation_adjustment_key: 37}) # CapitationAdjustment | 

begin
  # Update CapitationAdjustment
  result = api_instance.update_capitation_adjustment(vbasoftware_database, capitation_adjustment_key, capitation_adjustment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->update_capitation_adjustment: #{e}"
end
```

#### Using the update_capitation_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CapitationAdjustmentVBAResponse>, Integer, Hash)> update_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment_key, capitation_adjustment)

```ruby
begin
  # Update CapitationAdjustment
  data, status_code, headers = api_instance.update_capitation_adjustment_with_http_info(vbasoftware_database, capitation_adjustment_key, capitation_adjustment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CapitationAdjustmentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CapitationAdjustmentsApi->update_capitation_adjustment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **capitation_adjustment_key** | **Integer** | CapitationAdjustment Key |  |
| **capitation_adjustment** | [**CapitationAdjustment**](CapitationAdjustment.md) |  |  |

### Return type

[**CapitationAdjustmentVBAResponse**](CapitationAdjustmentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

