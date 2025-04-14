# Vba::PremiumRateAddOnsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_add_on**](PremiumRateAddOnsApi.md#create_prem_rate_add_on) | **POST** /premium-rates/{PremRate_Key}/add-ons | Create PremRateAddOn |
| [**delete_prem_rate_add_on**](PremiumRateAddOnsApi.md#delete_prem_rate_add_on) | **DELETE** /premium-rates/{PremRate_Key}/add-ons/{PremRateAddOn_Key} | Delete PremRateAddOn |
| [**get_prem_rate_add_on**](PremiumRateAddOnsApi.md#get_prem_rate_add_on) | **GET** /premium-rates/{PremRate_Key}/add-ons/{PremRateAddOn_Key} | Get PremRateAddOn |
| [**list_prem_rate_add_on**](PremiumRateAddOnsApi.md#list_prem_rate_add_on) | **GET** /premium-rates/{PremRate_Key}/add-ons | List PremRateAddOn |
| [**update_batch_prem_rate_add_on**](PremiumRateAddOnsApi.md#update_batch_prem_rate_add_on) | **PUT** /premium-rates/{PremRate_Key}/add-ons-batch | Create or Update Batch PremRateAddOn |
| [**update_prem_rate_add_on**](PremiumRateAddOnsApi.md#update_prem_rate_add_on) | **PUT** /premium-rates/{PremRate_Key}/add-ons/{PremRateAddOn_Key} | Update PremRateAddOn |


## create_prem_rate_add_on

> <PremRateAddOnVBAResponse> create_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on)

Create PremRateAddOn

Creates a new PremRateAddOn

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

api_instance = Vba::PremiumRateAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_add_on = Vba::PremRateAddOn.new({prem_rate_add_on_key: 37, add_on_prem_rate_key: 37, prem_rate_key: 37}) # PremRateAddOn | 

begin
  # Create PremRateAddOn
  result = api_instance.create_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->create_prem_rate_add_on: #{e}"
end
```

#### Using the create_prem_rate_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAddOnVBAResponse>, Integer, Hash)> create_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on)

```ruby
begin
  # Create PremRateAddOn
  data, status_code, headers = api_instance.create_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAddOnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->create_prem_rate_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_add_on** | [**PremRateAddOn**](PremRateAddOn.md) |  |  |

### Return type

[**PremRateAddOnVBAResponse**](PremRateAddOnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_add_on

> delete_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)

Delete PremRateAddOn

Deletes an PremRateAddOn

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

api_instance = Vba::PremiumRateAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_add_on_key = 56 # Integer | PremRateAddOn Key

begin
  # Delete PremRateAddOn
  api_instance.delete_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->delete_prem_rate_add_on: #{e}"
end
```

#### Using the delete_prem_rate_add_on_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)

```ruby
begin
  # Delete PremRateAddOn
  data, status_code, headers = api_instance.delete_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->delete_prem_rate_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_add_on_key** | **Integer** | PremRateAddOn Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_add_on

> <PremRateAddOnVBAResponse> get_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)

Get PremRateAddOn

Gets PremRateAddOn

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

api_instance = Vba::PremiumRateAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_add_on_key = 56 # Integer | PremRateAddOn Key

begin
  # Get PremRateAddOn
  result = api_instance.get_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->get_prem_rate_add_on: #{e}"
end
```

#### Using the get_prem_rate_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAddOnVBAResponse>, Integer, Hash)> get_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)

```ruby
begin
  # Get PremRateAddOn
  data, status_code, headers = api_instance.get_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAddOnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->get_prem_rate_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_add_on_key** | **Integer** | PremRateAddOn Key |  |

### Return type

[**PremRateAddOnVBAResponse**](PremRateAddOnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_add_on

> <PremRateAddOnListVBAResponse> list_prem_rate_add_on(vbasoftware_database, prem_rate_key, opts)

List PremRateAddOn

Lists all PremRateAddOn for the given PremRate_Key

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

api_instance = Vba::PremiumRateAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List PremRateAddOn
  result = api_instance.list_prem_rate_add_on(vbasoftware_database, prem_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->list_prem_rate_add_on: #{e}"
end
```

#### Using the list_prem_rate_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAddOnListVBAResponse>, Integer, Hash)> list_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, opts)

```ruby
begin
  # List PremRateAddOn
  data, status_code, headers = api_instance.list_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAddOnListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->list_prem_rate_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**PremRateAddOnListVBAResponse**](PremRateAddOnListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_add_on

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on)

Create or Update Batch PremRateAddOn

Create or Update multiple PremRateAddOn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_add_on = [Vba::PremRateAddOn.new({prem_rate_add_on_key: 37, add_on_prem_rate_key: 37, prem_rate_key: 37})] # Array<PremRateAddOn> | 

begin
  # Create or Update Batch PremRateAddOn
  result = api_instance.update_batch_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->update_batch_prem_rate_add_on: #{e}"
end
```

#### Using the update_batch_prem_rate_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on)

```ruby
begin
  # Create or Update Batch PremRateAddOn
  data, status_code, headers = api_instance.update_batch_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->update_batch_prem_rate_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_add_on** | [**Array&lt;PremRateAddOn&gt;**](PremRateAddOn.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_add_on

> <PremRateAddOnVBAResponse> update_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on)

Update PremRateAddOn

Updates a specific PremRateAddOn.

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

api_instance = Vba::PremiumRateAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_add_on_key = 56 # Integer | PremRateAddOn Key
prem_rate_add_on = Vba::PremRateAddOn.new({prem_rate_add_on_key: 37, add_on_prem_rate_key: 37, prem_rate_key: 37}) # PremRateAddOn | 

begin
  # Update PremRateAddOn
  result = api_instance.update_prem_rate_add_on(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->update_prem_rate_add_on: #{e}"
end
```

#### Using the update_prem_rate_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateAddOnVBAResponse>, Integer, Hash)> update_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on)

```ruby
begin
  # Update PremRateAddOn
  data, status_code, headers = api_instance.update_prem_rate_add_on_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_add_on_key, prem_rate_add_on)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateAddOnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateAddOnsApi->update_prem_rate_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_add_on_key** | **Integer** | PremRateAddOn Key |  |
| **prem_rate_add_on** | [**PremRateAddOn**](PremRateAddOn.md) |  |  |

### Return type

[**PremRateAddOnVBAResponse**](PremRateAddOnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

