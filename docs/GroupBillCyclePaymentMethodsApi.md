# Vba::GroupBillCyclePaymentMethodsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_bill_cycle_payment_method**](GroupBillCyclePaymentMethodsApi.md#create_group_bill_cycle_payment_method) | **POST** /group-bill-cycle-payment-methods | Create GroupBillCyclePaymentMethod |
| [**delete_group_bill_cycle_payment_method**](GroupBillCyclePaymentMethodsApi.md#delete_group_bill_cycle_payment_method) | **DELETE** /group-bill-cycle-payment-methods/{GroupBillCyclePaymentMethod_Key} | Delete GroupBillCyclePaymentMethod |
| [**get_group_bill_cycle_payment_method**](GroupBillCyclePaymentMethodsApi.md#get_group_bill_cycle_payment_method) | **GET** /group-bill-cycle-payment-methods/{GroupBillCyclePaymentMethod_Key} | Get GroupBillCyclePaymentMethod |
| [**list_group_bill_cycle_payment_method**](GroupBillCyclePaymentMethodsApi.md#list_group_bill_cycle_payment_method) | **GET** /group-bill-cycle-payment-methods | List GroupBillCyclePaymentMethod |
| [**update_batch_group_bill_cycle_payment_method**](GroupBillCyclePaymentMethodsApi.md#update_batch_group_bill_cycle_payment_method) | **PUT** /group-bill-cycle-payment-methods-batch | Create or Update Batch GroupBillCyclePaymentMethod |
| [**update_group_bill_cycle_payment_method**](GroupBillCyclePaymentMethodsApi.md#update_group_bill_cycle_payment_method) | **PUT** /group-bill-cycle-payment-methods/{GroupBillCyclePaymentMethod_Key} | Update GroupBillCyclePaymentMethod |


## create_group_bill_cycle_payment_method

> <GroupBillCyclePaymentMethodVBAResponse> create_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method)

Create GroupBillCyclePaymentMethod

Creates a new GroupBillCyclePaymentMethod

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

api_instance = Vba::GroupBillCyclePaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_bill_cycle_payment_method = Vba::GroupBillCyclePaymentMethod.new({group_bill_cycle_payment_method_key: 37}) # GroupBillCyclePaymentMethod | 

begin
  # Create GroupBillCyclePaymentMethod
  result = api_instance.create_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->create_group_bill_cycle_payment_method: #{e}"
end
```

#### Using the create_group_bill_cycle_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupBillCyclePaymentMethodVBAResponse>, Integer, Hash)> create_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method)

```ruby
begin
  # Create GroupBillCyclePaymentMethod
  data, status_code, headers = api_instance.create_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupBillCyclePaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->create_group_bill_cycle_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_bill_cycle_payment_method** | [**GroupBillCyclePaymentMethod**](GroupBillCyclePaymentMethod.md) |  |  |

### Return type

[**GroupBillCyclePaymentMethodVBAResponse**](GroupBillCyclePaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_bill_cycle_payment_method

> delete_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method_key)

Delete GroupBillCyclePaymentMethod

Deletes an GroupBillCyclePaymentMethod

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

api_instance = Vba::GroupBillCyclePaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_bill_cycle_payment_method_key = 56 # Integer | GroupBillCyclePaymentMethod Key

begin
  # Delete GroupBillCyclePaymentMethod
  api_instance.delete_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->delete_group_bill_cycle_payment_method: #{e}"
end
```

#### Using the delete_group_bill_cycle_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method_key)

```ruby
begin
  # Delete GroupBillCyclePaymentMethod
  data, status_code, headers = api_instance.delete_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->delete_group_bill_cycle_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_bill_cycle_payment_method_key** | **Integer** | GroupBillCyclePaymentMethod Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_bill_cycle_payment_method

> <GroupBillCyclePaymentMethodVBAResponse> get_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method_key)

Get GroupBillCyclePaymentMethod

Gets GroupBillCyclePaymentMethod

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

api_instance = Vba::GroupBillCyclePaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_bill_cycle_payment_method_key = 56 # Integer | GroupBillCyclePaymentMethod Key

begin
  # Get GroupBillCyclePaymentMethod
  result = api_instance.get_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->get_group_bill_cycle_payment_method: #{e}"
end
```

#### Using the get_group_bill_cycle_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupBillCyclePaymentMethodVBAResponse>, Integer, Hash)> get_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method_key)

```ruby
begin
  # Get GroupBillCyclePaymentMethod
  data, status_code, headers = api_instance.get_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupBillCyclePaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->get_group_bill_cycle_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_bill_cycle_payment_method_key** | **Integer** | GroupBillCyclePaymentMethod Key |  |

### Return type

[**GroupBillCyclePaymentMethodVBAResponse**](GroupBillCyclePaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_bill_cycle_payment_method

> <GroupBillCyclePaymentMethodListVBAResponse> list_group_bill_cycle_payment_method(vbasoftware_database, opts)

List GroupBillCyclePaymentMethod

Lists all GroupBillCyclePaymentMethod

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

api_instance = Vba::GroupBillCyclePaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List GroupBillCyclePaymentMethod
  result = api_instance.list_group_bill_cycle_payment_method(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->list_group_bill_cycle_payment_method: #{e}"
end
```

#### Using the list_group_bill_cycle_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupBillCyclePaymentMethodListVBAResponse>, Integer, Hash)> list_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupBillCyclePaymentMethod
  data, status_code, headers = api_instance.list_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupBillCyclePaymentMethodListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->list_group_bill_cycle_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**GroupBillCyclePaymentMethodListVBAResponse**](GroupBillCyclePaymentMethodListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_bill_cycle_payment_method

> <MultiCodeResponseListVBAResponse> update_batch_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method)

Create or Update Batch GroupBillCyclePaymentMethod

Create or Update multiple GroupBillCyclePaymentMethod at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupBillCyclePaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_bill_cycle_payment_method = [Vba::GroupBillCyclePaymentMethod.new({group_bill_cycle_payment_method_key: 37})] # Array<GroupBillCyclePaymentMethod> | 

begin
  # Create or Update Batch GroupBillCyclePaymentMethod
  result = api_instance.update_batch_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->update_batch_group_bill_cycle_payment_method: #{e}"
end
```

#### Using the update_batch_group_bill_cycle_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method)

```ruby
begin
  # Create or Update Batch GroupBillCyclePaymentMethod
  data, status_code, headers = api_instance.update_batch_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->update_batch_group_bill_cycle_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_bill_cycle_payment_method** | [**Array&lt;GroupBillCyclePaymentMethod&gt;**](GroupBillCyclePaymentMethod.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_bill_cycle_payment_method

> <GroupBillCyclePaymentMethodVBAResponse> update_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method_key, group_bill_cycle_payment_method)

Update GroupBillCyclePaymentMethod

Updates a specific GroupBillCyclePaymentMethod.

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

api_instance = Vba::GroupBillCyclePaymentMethodsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_bill_cycle_payment_method_key = 56 # Integer | GroupBillCyclePaymentMethod Key
group_bill_cycle_payment_method = Vba::GroupBillCyclePaymentMethod.new({group_bill_cycle_payment_method_key: 37}) # GroupBillCyclePaymentMethod | 

begin
  # Update GroupBillCyclePaymentMethod
  result = api_instance.update_group_bill_cycle_payment_method(vbasoftware_database, group_bill_cycle_payment_method_key, group_bill_cycle_payment_method)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->update_group_bill_cycle_payment_method: #{e}"
end
```

#### Using the update_group_bill_cycle_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupBillCyclePaymentMethodVBAResponse>, Integer, Hash)> update_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method_key, group_bill_cycle_payment_method)

```ruby
begin
  # Update GroupBillCyclePaymentMethod
  data, status_code, headers = api_instance.update_group_bill_cycle_payment_method_with_http_info(vbasoftware_database, group_bill_cycle_payment_method_key, group_bill_cycle_payment_method)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupBillCyclePaymentMethodVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupBillCyclePaymentMethodsApi->update_group_bill_cycle_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_bill_cycle_payment_method_key** | **Integer** | GroupBillCyclePaymentMethod Key |  |
| **group_bill_cycle_payment_method** | [**GroupBillCyclePaymentMethod**](GroupBillCyclePaymentMethod.md) |  |  |

### Return type

[**GroupBillCyclePaymentMethodVBAResponse**](GroupBillCyclePaymentMethodVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

