# Vba::PremiumRateMinMaxApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_min_max**](PremiumRateMinMaxApi.md#create_prem_rate_min_max) | **POST** /premium-rate-min-max | Create PremRateMinMax |
| [**delete_prem_rate_min_max**](PremiumRateMinMaxApi.md#delete_prem_rate_min_max) | **DELETE** /premium-rate-min-max/{premRateMinMaxKey} | Delete PremRateMinMax |
| [**get_prem_rate_min_max**](PremiumRateMinMaxApi.md#get_prem_rate_min_max) | **GET** /premium-rate-min-max/{premRateMinMaxKey} | Get PremRateMinMax |
| [**list_prem_rate_min_max**](PremiumRateMinMaxApi.md#list_prem_rate_min_max) | **GET** /premium-rate-min-max | List PremRateMinMax |
| [**update_batch_prem_rate_min_max**](PremiumRateMinMaxApi.md#update_batch_prem_rate_min_max) | **PUT** /premium-rate-min-max-batch | Create or Update Batch PremRateMinMax |
| [**update_prem_rate_min_max**](PremiumRateMinMaxApi.md#update_prem_rate_min_max) | **PUT** /premium-rate-min-max/{premRateMinMaxKey} | Update PremRateMinMax |


## create_prem_rate_min_max

> <PremRateMinMaxVBAResponse> create_prem_rate_min_max(vbasoftware_database, prem_rate_min_max)

Create PremRateMinMax

Creates a new PremRateMinMax

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

api_instance = Vba::PremiumRateMinMaxApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max = Vba::PremRateMinMax.new({prem_rate_min_max_key: 37}) # PremRateMinMax | 

begin
  # Create PremRateMinMax
  result = api_instance.create_prem_rate_min_max(vbasoftware_database, prem_rate_min_max)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->create_prem_rate_min_max: #{e}"
end
```

#### Using the create_prem_rate_min_max_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxVBAResponse>, Integer, Hash)> create_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max)

```ruby
begin
  # Create PremRateMinMax
  data, status_code, headers = api_instance.create_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->create_prem_rate_min_max_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max** | [**PremRateMinMax**](PremRateMinMax.md) |  |  |

### Return type

[**PremRateMinMaxVBAResponse**](PremRateMinMaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_min_max

> delete_prem_rate_min_max(vbasoftware_database, prem_rate_min_max_key)

Delete PremRateMinMax

Deletes an PremRateMinMax

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

api_instance = Vba::PremiumRateMinMaxApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max_key = 56 # Integer | PremRateMinMax Key

begin
  # Delete PremRateMinMax
  api_instance.delete_prem_rate_min_max(vbasoftware_database, prem_rate_min_max_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->delete_prem_rate_min_max: #{e}"
end
```

#### Using the delete_prem_rate_min_max_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max_key)

```ruby
begin
  # Delete PremRateMinMax
  data, status_code, headers = api_instance.delete_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->delete_prem_rate_min_max_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max_key** | **Integer** | PremRateMinMax Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_min_max

> <PremRateMinMaxVBAResponse> get_prem_rate_min_max(vbasoftware_database, prem_rate_min_max_key)

Get PremRateMinMax

Gets PremRateMinMax

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

api_instance = Vba::PremiumRateMinMaxApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max_key = 56 # Integer | PremRateMinMax Key

begin
  # Get PremRateMinMax
  result = api_instance.get_prem_rate_min_max(vbasoftware_database, prem_rate_min_max_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->get_prem_rate_min_max: #{e}"
end
```

#### Using the get_prem_rate_min_max_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxVBAResponse>, Integer, Hash)> get_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max_key)

```ruby
begin
  # Get PremRateMinMax
  data, status_code, headers = api_instance.get_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->get_prem_rate_min_max_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max_key** | **Integer** | PremRateMinMax Key |  |

### Return type

[**PremRateMinMaxVBAResponse**](PremRateMinMaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_min_max

> <PremRateMinMaxListVBAResponse> list_prem_rate_min_max(vbasoftware_database, opts)

List PremRateMinMax

Lists all PremRateMinMax

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

api_instance = Vba::PremiumRateMinMaxApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateMinMax
  result = api_instance.list_prem_rate_min_max(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->list_prem_rate_min_max: #{e}"
end
```

#### Using the list_prem_rate_min_max_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxListVBAResponse>, Integer, Hash)> list_prem_rate_min_max_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRateMinMax
  data, status_code, headers = api_instance.list_prem_rate_min_max_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->list_prem_rate_min_max_with_http_info: #{e}"
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

[**PremRateMinMaxListVBAResponse**](PremRateMinMaxListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_min_max

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_min_max(vbasoftware_database, prem_rate_min_max)

Create or Update Batch PremRateMinMax

Create or Update multiple PremRateMinMax at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateMinMaxApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max = [Vba::PremRateMinMax.new({prem_rate_min_max_key: 37})] # Array<PremRateMinMax> | 

begin
  # Create or Update Batch PremRateMinMax
  result = api_instance.update_batch_prem_rate_min_max(vbasoftware_database, prem_rate_min_max)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->update_batch_prem_rate_min_max: #{e}"
end
```

#### Using the update_batch_prem_rate_min_max_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max)

```ruby
begin
  # Create or Update Batch PremRateMinMax
  data, status_code, headers = api_instance.update_batch_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->update_batch_prem_rate_min_max_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max** | [**Array&lt;PremRateMinMax&gt;**](PremRateMinMax.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_min_max

> <PremRateMinMaxVBAResponse> update_prem_rate_min_max(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max)

Update PremRateMinMax

Updates a specific PremRateMinMax.

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

api_instance = Vba::PremiumRateMinMaxApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max_key = 56 # Integer | PremRateMinMax Key
prem_rate_min_max = Vba::PremRateMinMax.new({prem_rate_min_max_key: 37}) # PremRateMinMax | 

begin
  # Update PremRateMinMax
  result = api_instance.update_prem_rate_min_max(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->update_prem_rate_min_max: #{e}"
end
```

#### Using the update_prem_rate_min_max_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxVBAResponse>, Integer, Hash)> update_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max)

```ruby
begin
  # Update PremRateMinMax
  data, status_code, headers = api_instance.update_prem_rate_min_max_with_http_info(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxApi->update_prem_rate_min_max_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max_key** | **Integer** | PremRateMinMax Key |  |
| **prem_rate_min_max** | [**PremRateMinMax**](PremRateMinMax.md) |  |  |

### Return type

[**PremRateMinMaxVBAResponse**](PremRateMinMaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

