# Vba::FeeScheduleProviderTypeDiscountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_provider_type_discount**](FeeScheduleProviderTypeDiscountsApi.md#create_fee_sched_provider_type_discount) | **POST** /fee-schedule-provider-type-discounts | Create FeeSchedProviderTypeDiscount |
| [**delete_fee_sched_provider_type_discount**](FeeScheduleProviderTypeDiscountsApi.md#delete_fee_sched_provider_type_discount) | **DELETE** /fee-schedule-provider-type-discounts/{feeSchedProviderTypeDiscountKey} | Delete FeeSchedProviderTypeDiscount |
| [**get_fee_sched_provider_type_discount**](FeeScheduleProviderTypeDiscountsApi.md#get_fee_sched_provider_type_discount) | **GET** /fee-schedule-provider-type-discounts/{feeSchedProviderTypeDiscountKey} | Get FeeSchedProviderTypeDiscount |
| [**list_fee_sched_provider_type_discount**](FeeScheduleProviderTypeDiscountsApi.md#list_fee_sched_provider_type_discount) | **GET** /fee-schedule-provider-type-discounts | List FeeSchedProviderTypeDiscount |
| [**update_batch_fee_sched_provider_type_discount**](FeeScheduleProviderTypeDiscountsApi.md#update_batch_fee_sched_provider_type_discount) | **PUT** /fee-schedule-provider-type-discounts-batch | Create or Update Batch FeeSchedProviderTypeDiscount |
| [**update_fee_sched_provider_type_discount**](FeeScheduleProviderTypeDiscountsApi.md#update_fee_sched_provider_type_discount) | **PUT** /fee-schedule-provider-type-discounts/{feeSchedProviderTypeDiscountKey} | Update FeeSchedProviderTypeDiscount |


## create_fee_sched_provider_type_discount

> <FeeSchedProviderTypeDiscountVBAResponse> create_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount)

Create FeeSchedProviderTypeDiscount

Creates a new FeeSchedProviderTypeDiscount

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

api_instance = Vba::FeeScheduleProviderTypeDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_provider_type_discount = Vba::FeeSchedProviderTypeDiscount.new({fee_sched_provider_type_discount_key: 37, discount_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example'}) # FeeSchedProviderTypeDiscount | 

begin
  # Create FeeSchedProviderTypeDiscount
  result = api_instance.create_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->create_fee_sched_provider_type_discount: #{e}"
end
```

#### Using the create_fee_sched_provider_type_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProviderTypeDiscountVBAResponse>, Integer, Hash)> create_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount)

```ruby
begin
  # Create FeeSchedProviderTypeDiscount
  data, status_code, headers = api_instance.create_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProviderTypeDiscountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->create_fee_sched_provider_type_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_provider_type_discount** | [**FeeSchedProviderTypeDiscount**](FeeSchedProviderTypeDiscount.md) |  |  |

### Return type

[**FeeSchedProviderTypeDiscountVBAResponse**](FeeSchedProviderTypeDiscountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_provider_type_discount

> delete_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount_key)

Delete FeeSchedProviderTypeDiscount

Deletes an FeeSchedProviderTypeDiscount

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

api_instance = Vba::FeeScheduleProviderTypeDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_provider_type_discount_key = 56 # Integer | FeeSchedProviderTypeDiscount Key

begin
  # Delete FeeSchedProviderTypeDiscount
  api_instance.delete_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount_key)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->delete_fee_sched_provider_type_discount: #{e}"
end
```

#### Using the delete_fee_sched_provider_type_discount_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount_key)

```ruby
begin
  # Delete FeeSchedProviderTypeDiscount
  data, status_code, headers = api_instance.delete_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->delete_fee_sched_provider_type_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_provider_type_discount_key** | **Integer** | FeeSchedProviderTypeDiscount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_provider_type_discount

> <FeeSchedProviderTypeDiscountVBAResponse> get_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount_key)

Get FeeSchedProviderTypeDiscount

Gets FeeSchedProviderTypeDiscount

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

api_instance = Vba::FeeScheduleProviderTypeDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_provider_type_discount_key = 56 # Integer | FeeSchedProviderTypeDiscount Key

begin
  # Get FeeSchedProviderTypeDiscount
  result = api_instance.get_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->get_fee_sched_provider_type_discount: #{e}"
end
```

#### Using the get_fee_sched_provider_type_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProviderTypeDiscountVBAResponse>, Integer, Hash)> get_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount_key)

```ruby
begin
  # Get FeeSchedProviderTypeDiscount
  data, status_code, headers = api_instance.get_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProviderTypeDiscountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->get_fee_sched_provider_type_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_provider_type_discount_key** | **Integer** | FeeSchedProviderTypeDiscount Key |  |

### Return type

[**FeeSchedProviderTypeDiscountVBAResponse**](FeeSchedProviderTypeDiscountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_provider_type_discount

> <FeeSchedProviderTypeDiscountListVBAResponse> list_fee_sched_provider_type_discount(vbasoftware_database, opts)

List FeeSchedProviderTypeDiscount

Lists all FeeSchedProviderTypeDiscount

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

api_instance = Vba::FeeScheduleProviderTypeDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedProviderTypeDiscount
  result = api_instance.list_fee_sched_provider_type_discount(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->list_fee_sched_provider_type_discount: #{e}"
end
```

#### Using the list_fee_sched_provider_type_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProviderTypeDiscountListVBAResponse>, Integer, Hash)> list_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSchedProviderTypeDiscount
  data, status_code, headers = api_instance.list_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProviderTypeDiscountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->list_fee_sched_provider_type_discount_with_http_info: #{e}"
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

[**FeeSchedProviderTypeDiscountListVBAResponse**](FeeSchedProviderTypeDiscountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_provider_type_discount

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount)

Create or Update Batch FeeSchedProviderTypeDiscount

Create or Update multiple FeeSchedProviderTypeDiscount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeScheduleProviderTypeDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_provider_type_discount = [Vba::FeeSchedProviderTypeDiscount.new({fee_sched_provider_type_discount_key: 37, discount_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example'})] # Array<FeeSchedProviderTypeDiscount> | 

begin
  # Create or Update Batch FeeSchedProviderTypeDiscount
  result = api_instance.update_batch_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->update_batch_fee_sched_provider_type_discount: #{e}"
end
```

#### Using the update_batch_fee_sched_provider_type_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount)

```ruby
begin
  # Create or Update Batch FeeSchedProviderTypeDiscount
  data, status_code, headers = api_instance.update_batch_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->update_batch_fee_sched_provider_type_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_provider_type_discount** | [**Array&lt;FeeSchedProviderTypeDiscount&gt;**](FeeSchedProviderTypeDiscount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched_provider_type_discount

> <FeeSchedProviderTypeDiscountVBAResponse> update_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount_key, fee_sched_provider_type_discount)

Update FeeSchedProviderTypeDiscount

Updates a specific FeeSchedProviderTypeDiscount.

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

api_instance = Vba::FeeScheduleProviderTypeDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_provider_type_discount_key = 56 # Integer | FeeSchedProviderTypeDiscount Key
fee_sched_provider_type_discount = Vba::FeeSchedProviderTypeDiscount.new({fee_sched_provider_type_discount_key: 37, discount_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example'}) # FeeSchedProviderTypeDiscount | 

begin
  # Update FeeSchedProviderTypeDiscount
  result = api_instance.update_fee_sched_provider_type_discount(vbasoftware_database, fee_sched_provider_type_discount_key, fee_sched_provider_type_discount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->update_fee_sched_provider_type_discount: #{e}"
end
```

#### Using the update_fee_sched_provider_type_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedProviderTypeDiscountVBAResponse>, Integer, Hash)> update_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount_key, fee_sched_provider_type_discount)

```ruby
begin
  # Update FeeSchedProviderTypeDiscount
  data, status_code, headers = api_instance.update_fee_sched_provider_type_discount_with_http_info(vbasoftware_database, fee_sched_provider_type_discount_key, fee_sched_provider_type_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedProviderTypeDiscountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleProviderTypeDiscountsApi->update_fee_sched_provider_type_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_provider_type_discount_key** | **Integer** | FeeSchedProviderTypeDiscount Key |  |
| **fee_sched_provider_type_discount** | [**FeeSchedProviderTypeDiscount**](FeeSchedProviderTypeDiscount.md) |  |  |

### Return type

[**FeeSchedProviderTypeDiscountVBAResponse**](FeeSchedProviderTypeDiscountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

