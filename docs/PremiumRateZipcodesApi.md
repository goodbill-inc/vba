# Vba::PremiumRateZipcodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_zip**](PremiumRateZipcodesApi.md#create_prem_rate_zip) | **POST** /premium-rates/{premRateKey}/zipcodes | Create PremRateZip |
| [**delete_prem_rate_zip**](PremiumRateZipcodesApi.md#delete_prem_rate_zip) | **DELETE** /premium-rates/{premRateKey}/zipcodes/{premRateZipKey} | Delete PremRateZip |
| [**get_prem_rate_zip**](PremiumRateZipcodesApi.md#get_prem_rate_zip) | **GET** /premium-rates/{premRateKey}/zipcodes/{premRateZipKey} | Get PremRateZip |
| [**list_prem_rate_zip**](PremiumRateZipcodesApi.md#list_prem_rate_zip) | **GET** /premium-rates/{premRateKey}/zipcodes | List PremRateZip |
| [**update_batch_prem_rate_zip**](PremiumRateZipcodesApi.md#update_batch_prem_rate_zip) | **PUT** /premium-rates/{premRateKey}/zipcodes-batch | Create or Update Batch PremRateZip |
| [**update_prem_rate_zip**](PremiumRateZipcodesApi.md#update_prem_rate_zip) | **PUT** /premium-rates/{premRateKey}/zipcodes/{premRateZipKey} | Update PremRateZip |


## create_prem_rate_zip

> <PremRateZipVBAResponse> create_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip)

Create PremRateZip

Creates a new PremRateZip

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

api_instance = Vba::PremiumRateZipcodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_zip = Vba::PremRateZip.new({prem_rate_zip_key: 37, prem_rate_key: 37, zip_from: 'zip_from_example', zip_thru: 'zip_thru_example'}) # PremRateZip | 

begin
  # Create PremRateZip
  result = api_instance.create_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->create_prem_rate_zip: #{e}"
end
```

#### Using the create_prem_rate_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateZipVBAResponse>, Integer, Hash)> create_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip)

```ruby
begin
  # Create PremRateZip
  data, status_code, headers = api_instance.create_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateZipVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->create_prem_rate_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_zip** | [**PremRateZip**](PremRateZip.md) |  |  |

### Return type

[**PremRateZipVBAResponse**](PremRateZipVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_zip

> delete_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip_key)

Delete PremRateZip

Deletes an PremRateZip

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

api_instance = Vba::PremiumRateZipcodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_zip_key = 56 # Integer | PremRateZip Key

begin
  # Delete PremRateZip
  api_instance.delete_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip_key)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->delete_prem_rate_zip: #{e}"
end
```

#### Using the delete_prem_rate_zip_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip_key)

```ruby
begin
  # Delete PremRateZip
  data, status_code, headers = api_instance.delete_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->delete_prem_rate_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_zip_key** | **Integer** | PremRateZip Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_zip

> <PremRateZipVBAResponse> get_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip_key)

Get PremRateZip

Gets PremRateZip

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

api_instance = Vba::PremiumRateZipcodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_zip_key = 56 # Integer | PremRateZip Key

begin
  # Get PremRateZip
  result = api_instance.get_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->get_prem_rate_zip: #{e}"
end
```

#### Using the get_prem_rate_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateZipVBAResponse>, Integer, Hash)> get_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip_key)

```ruby
begin
  # Get PremRateZip
  data, status_code, headers = api_instance.get_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateZipVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->get_prem_rate_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_zip_key** | **Integer** | PremRateZip Key |  |

### Return type

[**PremRateZipVBAResponse**](PremRateZipVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_zip

> <PremRateZipListVBAResponse> list_prem_rate_zip(vbasoftware_database, prem_rate_key, opts)

List PremRateZip

Lists all PremRateZip for the given premRateKey

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

api_instance = Vba::PremiumRateZipcodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateZip
  result = api_instance.list_prem_rate_zip(vbasoftware_database, prem_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->list_prem_rate_zip: #{e}"
end
```

#### Using the list_prem_rate_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateZipListVBAResponse>, Integer, Hash)> list_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, opts)

```ruby
begin
  # List PremRateZip
  data, status_code, headers = api_instance.list_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateZipListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->list_prem_rate_zip_with_http_info: #{e}"
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

[**PremRateZipListVBAResponse**](PremRateZipListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_zip

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip)

Create or Update Batch PremRateZip

Create or Update multiple PremRateZip at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateZipcodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_zip = [Vba::PremRateZip.new({prem_rate_zip_key: 37, prem_rate_key: 37, zip_from: 'zip_from_example', zip_thru: 'zip_thru_example'})] # Array<PremRateZip> | 

begin
  # Create or Update Batch PremRateZip
  result = api_instance.update_batch_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->update_batch_prem_rate_zip: #{e}"
end
```

#### Using the update_batch_prem_rate_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip)

```ruby
begin
  # Create or Update Batch PremRateZip
  data, status_code, headers = api_instance.update_batch_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->update_batch_prem_rate_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_zip** | [**Array&lt;PremRateZip&gt;**](PremRateZip.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_zip

> <PremRateZipVBAResponse> update_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip_key, prem_rate_zip)

Update PremRateZip

Updates a specific PremRateZip.

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

api_instance = Vba::PremiumRateZipcodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_zip_key = 56 # Integer | PremRateZip Key
prem_rate_zip = Vba::PremRateZip.new({prem_rate_zip_key: 37, prem_rate_key: 37, zip_from: 'zip_from_example', zip_thru: 'zip_thru_example'}) # PremRateZip | 

begin
  # Update PremRateZip
  result = api_instance.update_prem_rate_zip(vbasoftware_database, prem_rate_key, prem_rate_zip_key, prem_rate_zip)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->update_prem_rate_zip: #{e}"
end
```

#### Using the update_prem_rate_zip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateZipVBAResponse>, Integer, Hash)> update_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip_key, prem_rate_zip)

```ruby
begin
  # Update PremRateZip
  data, status_code, headers = api_instance.update_prem_rate_zip_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_zip_key, prem_rate_zip)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateZipVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateZipcodesApi->update_prem_rate_zip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_zip_key** | **Integer** | PremRateZip Key |  |
| **prem_rate_zip** | [**PremRateZip**](PremRateZip.md) |  |  |

### Return type

[**PremRateZipVBAResponse**](PremRateZipVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

