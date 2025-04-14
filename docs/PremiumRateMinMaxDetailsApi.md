# Vba::PremiumRateMinMaxDetailsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_min_max_detail**](PremiumRateMinMaxDetailsApi.md#create_prem_rate_min_max_detail) | **POST** /premium-rates/{premRateMinMaxKey}/premium-rate-min-max-details | Create PremRateMinMaxDetail |
| [**delete_prem_rate_min_max_detail**](PremiumRateMinMaxDetailsApi.md#delete_prem_rate_min_max_detail) | **DELETE** /premium-rates/{premRateMinMaxKey}/premium-rate-min-max-details/{premRateKey} | Delete PremRateMinMaxDetail |
| [**get_prem_rate_min_max_detail**](PremiumRateMinMaxDetailsApi.md#get_prem_rate_min_max_detail) | **GET** /premium-rates/{premRateMinMaxKey}/premium-rate-min-max-details/{premRateKey} | Get PremRateMinMaxDetail |
| [**list_prem_rate_min_max_detail**](PremiumRateMinMaxDetailsApi.md#list_prem_rate_min_max_detail) | **GET** /premium-rates/{premRateMinMaxKey}/premium-rate-min-max-details | List PremRateMinMaxDetail |
| [**update_batch_prem_rate_min_max_detail**](PremiumRateMinMaxDetailsApi.md#update_batch_prem_rate_min_max_detail) | **PUT** /premium-rates/{premRateMinMaxKey}/premium-rate-min-max-details-batch | Create or Update Batch PremRateMinMaxDetail |
| [**update_prem_rate_min_max_detail**](PremiumRateMinMaxDetailsApi.md#update_prem_rate_min_max_detail) | **PUT** /premium-rates/{premRateMinMaxKey}/premium-rate-min-max-details/{premRateKey} | Update PremRateMinMaxDetail |


## create_prem_rate_min_max_detail

> <PremRateMinMaxDetailVBAResponse> create_prem_rate_min_max_detail(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)

Create PremRateMinMaxDetail

Creates a new PremRateMinMaxDetail

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

api_instance = Vba::PremiumRateMinMaxDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max_key = 56 # Integer | PremRate Min Max Key
prem_rate_min_max_detail = Vba::PremRateMinMaxDetail.new({prem_rate_min_max_key: 37, prem_rate_key: 37, distribution_rate: false}) # PremRateMinMaxDetail | 

begin
  # Create PremRateMinMaxDetail
  result = api_instance.create_prem_rate_min_max_detail(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->create_prem_rate_min_max_detail: #{e}"
end
```

#### Using the create_prem_rate_min_max_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxDetailVBAResponse>, Integer, Hash)> create_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)

```ruby
begin
  # Create PremRateMinMaxDetail
  data, status_code, headers = api_instance.create_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->create_prem_rate_min_max_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max_key** | **Integer** | PremRate Min Max Key |  |
| **prem_rate_min_max_detail** | [**PremRateMinMaxDetail**](PremRateMinMaxDetail.md) |  |  |

### Return type

[**PremRateMinMaxDetailVBAResponse**](PremRateMinMaxDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_min_max_detail

> delete_prem_rate_min_max_detail(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)

Delete PremRateMinMaxDetail

Deletes an PremRateMinMaxDetail

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

api_instance = Vba::PremiumRateMinMaxDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_min_max_key = 56 # Integer | PremRateMinMax Key

begin
  # Delete PremRateMinMaxDetail
  api_instance.delete_prem_rate_min_max_detail(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->delete_prem_rate_min_max_detail: #{e}"
end
```

#### Using the delete_prem_rate_min_max_detail_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)

```ruby
begin
  # Delete PremRateMinMaxDetail
  data, status_code, headers = api_instance.delete_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->delete_prem_rate_min_max_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_min_max_key** | **Integer** | PremRateMinMax Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_min_max_detail

> <PremRateMinMaxDetailVBAResponse> get_prem_rate_min_max_detail(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)

Get PremRateMinMaxDetail

Gets PremRateMinMaxDetail

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

api_instance = Vba::PremiumRateMinMaxDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_min_max_key = 56 # Integer | PremRateMinMax Key

begin
  # Get PremRateMinMaxDetail
  result = api_instance.get_prem_rate_min_max_detail(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->get_prem_rate_min_max_detail: #{e}"
end
```

#### Using the get_prem_rate_min_max_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxDetailVBAResponse>, Integer, Hash)> get_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)

```ruby
begin
  # Get PremRateMinMaxDetail
  data, status_code, headers = api_instance.get_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_min_max_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->get_prem_rate_min_max_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_min_max_key** | **Integer** | PremRateMinMax Key |  |

### Return type

[**PremRateMinMaxDetailVBAResponse**](PremRateMinMaxDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_min_max_detail

> <PremRateMinMaxDetailListVBAResponse> list_prem_rate_min_max_detail(vbasoftware_database, prem_rate_min_max_key, opts)

List PremRateMinMaxDetail

Lists all PremRateMinMaxDetail for the given premRateMinMaxKey

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

api_instance = Vba::PremiumRateMinMaxDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max_key = 56 # Integer | PremRate Min Max Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateMinMaxDetail
  result = api_instance.list_prem_rate_min_max_detail(vbasoftware_database, prem_rate_min_max_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->list_prem_rate_min_max_detail: #{e}"
end
```

#### Using the list_prem_rate_min_max_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxDetailListVBAResponse>, Integer, Hash)> list_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_min_max_key, opts)

```ruby
begin
  # List PremRateMinMaxDetail
  data, status_code, headers = api_instance.list_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_min_max_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->list_prem_rate_min_max_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max_key** | **Integer** | PremRate Min Max Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremRateMinMaxDetailListVBAResponse**](PremRateMinMaxDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_min_max_detail

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_min_max_detail(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)

Create or Update Batch PremRateMinMaxDetail

Create or Update multiple PremRateMinMaxDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateMinMaxDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_min_max_key = 56 # Integer | PremRate Key
prem_rate_min_max_detail = [Vba::PremRateMinMaxDetail.new({prem_rate_min_max_key: 37, prem_rate_key: 37, distribution_rate: false})] # Array<PremRateMinMaxDetail> | 

begin
  # Create or Update Batch PremRateMinMaxDetail
  result = api_instance.update_batch_prem_rate_min_max_detail(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->update_batch_prem_rate_min_max_detail: #{e}"
end
```

#### Using the update_batch_prem_rate_min_max_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)

```ruby
begin
  # Create or Update Batch PremRateMinMaxDetail
  data, status_code, headers = api_instance.update_batch_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_min_max_key, prem_rate_min_max_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->update_batch_prem_rate_min_max_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_min_max_key** | **Integer** | PremRate Key |  |
| **prem_rate_min_max_detail** | [**Array&lt;PremRateMinMaxDetail&gt;**](PremRateMinMaxDetail.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_min_max_detail

> <PremRateMinMaxDetailVBAResponse> update_prem_rate_min_max_detail(vbasoftware_database, prem_rate_key, prem_rate_min_max_key, prem_rate_min_max_detail)

Update PremRateMinMaxDetail

Updates a specific PremRateMinMaxDetail.

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

api_instance = Vba::PremiumRateMinMaxDetailsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_min_max_key = 56 # Integer | PremRateMinMax Key
prem_rate_min_max_detail = Vba::PremRateMinMaxDetail.new({prem_rate_min_max_key: 37, prem_rate_key: 37, distribution_rate: false}) # PremRateMinMaxDetail | 

begin
  # Update PremRateMinMaxDetail
  result = api_instance.update_prem_rate_min_max_detail(vbasoftware_database, prem_rate_key, prem_rate_min_max_key, prem_rate_min_max_detail)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->update_prem_rate_min_max_detail: #{e}"
end
```

#### Using the update_prem_rate_min_max_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMinMaxDetailVBAResponse>, Integer, Hash)> update_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_min_max_key, prem_rate_min_max_detail)

```ruby
begin
  # Update PremRateMinMaxDetail
  data, status_code, headers = api_instance.update_prem_rate_min_max_detail_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_min_max_key, prem_rate_min_max_detail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMinMaxDetailVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMinMaxDetailsApi->update_prem_rate_min_max_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_min_max_key** | **Integer** | PremRateMinMax Key |  |
| **prem_rate_min_max_detail** | [**PremRateMinMaxDetail**](PremRateMinMaxDetail.md) |  |  |

### Return type

[**PremRateMinMaxDetailVBAResponse**](PremRateMinMaxDetailVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

