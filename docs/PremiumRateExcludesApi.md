# Vba::PremiumRateExcludesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_exclude**](PremiumRateExcludesApi.md#create_prem_rate_exclude) | **POST** /premium-rates/{premRateKey}/excludes | Create PremRateExclude |
| [**delete_prem_rate_exclude**](PremiumRateExcludesApi.md#delete_prem_rate_exclude) | **DELETE** /premium-rates/{premRateKey}/excludes/{premRateExcludeKey} | Delete PremRateExclude |
| [**get_prem_rate_exclude**](PremiumRateExcludesApi.md#get_prem_rate_exclude) | **GET** /premium-rates/{premRateKey}/excludes/{premRateExcludeKey} | Get PremRateExclude |
| [**list_prem_rate_exclude**](PremiumRateExcludesApi.md#list_prem_rate_exclude) | **GET** /premium-rates/{premRateKey}/excludes | List PremRateExclude |
| [**update_batch_prem_rate_exclude**](PremiumRateExcludesApi.md#update_batch_prem_rate_exclude) | **PUT** /premium-rates/{premRateKey}/excludes-batch | Create or Update Batch PremRateExclude |
| [**update_prem_rate_exclude**](PremiumRateExcludesApi.md#update_prem_rate_exclude) | **PUT** /premium-rates/{premRateKey}/excludes/{premRateExcludeKey} | Update PremRateExclude |


## create_prem_rate_exclude

> <PremRateExcludeVBAResponse> create_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude)

Create PremRateExclude

Creates a new PremRateExclude

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

api_instance = Vba::PremiumRateExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_exclude = Vba::PremRateExclude.new({prem_rate_exclude_key: 37, prem_rate_key: 37}) # PremRateExclude | 

begin
  # Create PremRateExclude
  result = api_instance.create_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->create_prem_rate_exclude: #{e}"
end
```

#### Using the create_prem_rate_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateExcludeVBAResponse>, Integer, Hash)> create_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude)

```ruby
begin
  # Create PremRateExclude
  data, status_code, headers = api_instance.create_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateExcludeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->create_prem_rate_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_exclude** | [**PremRateExclude**](PremRateExclude.md) |  |  |

### Return type

[**PremRateExcludeVBAResponse**](PremRateExcludeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_exclude

> delete_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)

Delete PremRateExclude

Deletes an PremRateExclude

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

api_instance = Vba::PremiumRateExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_exclude_key = 56 # Integer | PremRateExclude Key

begin
  # Delete PremRateExclude
  api_instance.delete_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->delete_prem_rate_exclude: #{e}"
end
```

#### Using the delete_prem_rate_exclude_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)

```ruby
begin
  # Delete PremRateExclude
  data, status_code, headers = api_instance.delete_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->delete_prem_rate_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_exclude_key** | **Integer** | PremRateExclude Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_exclude

> <PremRateExcludeVBAResponse> get_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)

Get PremRateExclude

Gets PremRateExclude

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

api_instance = Vba::PremiumRateExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_exclude_key = 56 # Integer | PremRateExclude Key

begin
  # Get PremRateExclude
  result = api_instance.get_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->get_prem_rate_exclude: #{e}"
end
```

#### Using the get_prem_rate_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateExcludeVBAResponse>, Integer, Hash)> get_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)

```ruby
begin
  # Get PremRateExclude
  data, status_code, headers = api_instance.get_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateExcludeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->get_prem_rate_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_exclude_key** | **Integer** | PremRateExclude Key |  |

### Return type

[**PremRateExcludeVBAResponse**](PremRateExcludeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_exclude

> <PremRateExcludeListVBAResponse> list_prem_rate_exclude(vbasoftware_database, prem_rate_key, opts)

List PremRateExclude

Lists all PremRateExclude for the given premRateKey

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

api_instance = Vba::PremiumRateExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateExclude
  result = api_instance.list_prem_rate_exclude(vbasoftware_database, prem_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->list_prem_rate_exclude: #{e}"
end
```

#### Using the list_prem_rate_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateExcludeListVBAResponse>, Integer, Hash)> list_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, opts)

```ruby
begin
  # List PremRateExclude
  data, status_code, headers = api_instance.list_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateExcludeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->list_prem_rate_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremRateExcludeListVBAResponse**](PremRateExcludeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_exclude

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude)

Create or Update Batch PremRateExclude

Create or Update multiple PremRateExclude at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_exclude = [Vba::PremRateExclude.new({prem_rate_exclude_key: 37, prem_rate_key: 37})] # Array<PremRateExclude> | 

begin
  # Create or Update Batch PremRateExclude
  result = api_instance.update_batch_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->update_batch_prem_rate_exclude: #{e}"
end
```

#### Using the update_batch_prem_rate_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude)

```ruby
begin
  # Create or Update Batch PremRateExclude
  data, status_code, headers = api_instance.update_batch_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->update_batch_prem_rate_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_exclude** | [**Array&lt;PremRateExclude&gt;**](PremRateExclude.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_exclude

> <PremRateExcludeVBAResponse> update_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude_key, prem_rate_exclude)

Update PremRateExclude

Updates a specific PremRateExclude.

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

api_instance = Vba::PremiumRateExcludesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_exclude_key = 56 # Integer | PremRateExclude Key
prem_rate_exclude = Vba::PremRateExclude.new({prem_rate_exclude_key: 37, prem_rate_key: 37}) # PremRateExclude | 

begin
  # Update PremRateExclude
  result = api_instance.update_prem_rate_exclude(vbasoftware_database, prem_rate_key, prem_rate_exclude_key, prem_rate_exclude)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->update_prem_rate_exclude: #{e}"
end
```

#### Using the update_prem_rate_exclude_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateExcludeVBAResponse>, Integer, Hash)> update_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude_key, prem_rate_exclude)

```ruby
begin
  # Update PremRateExclude
  data, status_code, headers = api_instance.update_prem_rate_exclude_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_exclude_key, prem_rate_exclude)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateExcludeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateExcludesApi->update_prem_rate_exclude_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_exclude_key** | **Integer** | PremRateExclude Key |  |
| **prem_rate_exclude** | [**PremRateExclude**](PremRateExclude.md) |  |  |

### Return type

[**PremRateExcludeVBAResponse**](PremRateExcludeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

