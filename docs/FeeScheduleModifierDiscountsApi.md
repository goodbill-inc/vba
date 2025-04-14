# Vba::FeeScheduleModifierDiscountsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee_sched_modifier_discount**](FeeScheduleModifierDiscountsApi.md#create_fee_sched_modifier_discount) | **POST** /fee-schedule-modifier-discounts | Create FeeSchedModifierDiscount |
| [**delete_fee_sched_modifier_discount**](FeeScheduleModifierDiscountsApi.md#delete_fee_sched_modifier_discount) | **DELETE** /fee-schedule-modifier-discounts/{feeSchedModifierDiscountKey} | Delete FeeSchedModifierDiscount |
| [**get_fee_sched_modifier_discount**](FeeScheduleModifierDiscountsApi.md#get_fee_sched_modifier_discount) | **GET** /fee-schedule-modifier-discounts/{feeSchedModifierDiscountKey} | Get FeeSchedModifierDiscount |
| [**list_fee_sched_modifier_discount**](FeeScheduleModifierDiscountsApi.md#list_fee_sched_modifier_discount) | **GET** /fee-schedule-modifier-discounts | List FeeSchedModifierDiscount |
| [**update_batch_fee_sched_modifier_discount**](FeeScheduleModifierDiscountsApi.md#update_batch_fee_sched_modifier_discount) | **PUT** /fee-schedule-modifier-discounts-batch | Create or Update Batch FeeSchedModifierDiscount |
| [**update_fee_sched_modifier_discount**](FeeScheduleModifierDiscountsApi.md#update_fee_sched_modifier_discount) | **PUT** /fee-schedule-modifier-discounts/{feeSchedModifierDiscountKey} | Update FeeSchedModifierDiscount |


## create_fee_sched_modifier_discount

> <FeeSchedModifierDiscountVBAResponse> create_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount)

Create FeeSchedModifierDiscount

Creates a new FeeSchedModifierDiscount

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

api_instance = Vba::FeeScheduleModifierDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_discount = Vba::FeeSchedModifierDiscount.new({fee_sched_modifier_discount_key: 37, discount_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example'}) # FeeSchedModifierDiscount | 

begin
  # Create FeeSchedModifierDiscount
  result = api_instance.create_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->create_fee_sched_modifier_discount: #{e}"
end
```

#### Using the create_fee_sched_modifier_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierDiscountVBAResponse>, Integer, Hash)> create_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount)

```ruby
begin
  # Create FeeSchedModifierDiscount
  data, status_code, headers = api_instance.create_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierDiscountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->create_fee_sched_modifier_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_discount** | [**FeeSchedModifierDiscount**](FeeSchedModifierDiscount.md) |  |  |

### Return type

[**FeeSchedModifierDiscountVBAResponse**](FeeSchedModifierDiscountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_fee_sched_modifier_discount

> delete_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key)

Delete FeeSchedModifierDiscount

Deletes an FeeSchedModifierDiscount

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

api_instance = Vba::FeeScheduleModifierDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_discount_key = 56 # Integer | FeeSchedModifierDiscount Key

begin
  # Delete FeeSchedModifierDiscount
  api_instance.delete_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key)
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->delete_fee_sched_modifier_discount: #{e}"
end
```

#### Using the delete_fee_sched_modifier_discount_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key)

```ruby
begin
  # Delete FeeSchedModifierDiscount
  data, status_code, headers = api_instance.delete_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->delete_fee_sched_modifier_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_discount_key** | **Integer** | FeeSchedModifierDiscount Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_fee_sched_modifier_discount

> <FeeSchedModifierDiscountVBAResponse> get_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key)

Get FeeSchedModifierDiscount

Gets FeeSchedModifierDiscount

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

api_instance = Vba::FeeScheduleModifierDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_discount_key = 56 # Integer | FeeSchedModifierDiscount Key

begin
  # Get FeeSchedModifierDiscount
  result = api_instance.get_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->get_fee_sched_modifier_discount: #{e}"
end
```

#### Using the get_fee_sched_modifier_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierDiscountVBAResponse>, Integer, Hash)> get_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key)

```ruby
begin
  # Get FeeSchedModifierDiscount
  data, status_code, headers = api_instance.get_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierDiscountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->get_fee_sched_modifier_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_discount_key** | **Integer** | FeeSchedModifierDiscount Key |  |

### Return type

[**FeeSchedModifierDiscountVBAResponse**](FeeSchedModifierDiscountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_fee_sched_modifier_discount

> <FeeSchedModifierDiscountListVBAResponse> list_fee_sched_modifier_discount(vbasoftware_database, opts)

List FeeSchedModifierDiscount

Lists all FeeSchedModifierDiscount

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

api_instance = Vba::FeeScheduleModifierDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List FeeSchedModifierDiscount
  result = api_instance.list_fee_sched_modifier_discount(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->list_fee_sched_modifier_discount: #{e}"
end
```

#### Using the list_fee_sched_modifier_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierDiscountListVBAResponse>, Integer, Hash)> list_fee_sched_modifier_discount_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List FeeSchedModifierDiscount
  data, status_code, headers = api_instance.list_fee_sched_modifier_discount_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierDiscountListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->list_fee_sched_modifier_discount_with_http_info: #{e}"
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

[**FeeSchedModifierDiscountListVBAResponse**](FeeSchedModifierDiscountListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_fee_sched_modifier_discount

> <MultiCodeResponseListVBAResponse> update_batch_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount)

Create or Update Batch FeeSchedModifierDiscount

Create or Update multiple FeeSchedModifierDiscount at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::FeeScheduleModifierDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_discount = [Vba::FeeSchedModifierDiscount.new({fee_sched_modifier_discount_key: 37, discount_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example'})] # Array<FeeSchedModifierDiscount> | 

begin
  # Create or Update Batch FeeSchedModifierDiscount
  result = api_instance.update_batch_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->update_batch_fee_sched_modifier_discount: #{e}"
end
```

#### Using the update_batch_fee_sched_modifier_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount)

```ruby
begin
  # Create or Update Batch FeeSchedModifierDiscount
  data, status_code, headers = api_instance.update_batch_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->update_batch_fee_sched_modifier_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_discount** | [**Array&lt;FeeSchedModifierDiscount&gt;**](FeeSchedModifierDiscount.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_fee_sched_modifier_discount

> <FeeSchedModifierDiscountVBAResponse> update_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount)

Update FeeSchedModifierDiscount

Updates a specific FeeSchedModifierDiscount.

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

api_instance = Vba::FeeScheduleModifierDiscountsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
fee_sched_modifier_discount_key = 56 # Integer | FeeSchedModifierDiscount Key
fee_sched_modifier_discount = Vba::FeeSchedModifierDiscount.new({fee_sched_modifier_discount_key: 37, discount_seq: 37, effective_date: Time.now, fee_sched: 'fee_sched_example'}) # FeeSchedModifierDiscount | 

begin
  # Update FeeSchedModifierDiscount
  result = api_instance.update_fee_sched_modifier_discount(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount)
  p result
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->update_fee_sched_modifier_discount: #{e}"
end
```

#### Using the update_fee_sched_modifier_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeSchedModifierDiscountVBAResponse>, Integer, Hash)> update_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount)

```ruby
begin
  # Update FeeSchedModifierDiscount
  data, status_code, headers = api_instance.update_fee_sched_modifier_discount_with_http_info(vbasoftware_database, fee_sched_modifier_discount_key, fee_sched_modifier_discount)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeSchedModifierDiscountVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling FeeScheduleModifierDiscountsApi->update_fee_sched_modifier_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **fee_sched_modifier_discount_key** | **Integer** | FeeSchedModifierDiscount Key |  |
| **fee_sched_modifier_discount** | [**FeeSchedModifierDiscount**](FeeSchedModifierDiscount.md) |  |  |

### Return type

[**FeeSchedModifierDiscountVBAResponse**](FeeSchedModifierDiscountVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

