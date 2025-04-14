# Vba::PremiumRatePacesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_pace**](PremiumRatePacesApi.md#create_prem_rate_pace) | **POST** /premium-rate-paces | Create PremRatePace |
| [**delete_prem_rate_pace**](PremiumRatePacesApi.md#delete_prem_rate_pace) | **DELETE** /premium-rate-paces/{ratePace} | Delete PremRatePace |
| [**get_prem_rate_pace**](PremiumRatePacesApi.md#get_prem_rate_pace) | **GET** /premium-rate-paces/{ratePace} | Get PremRatePace |
| [**list_prem_rate_pace**](PremiumRatePacesApi.md#list_prem_rate_pace) | **GET** /premium-rate-paces | List PremRatePace |
| [**update_batch_prem_rate_pace**](PremiumRatePacesApi.md#update_batch_prem_rate_pace) | **PUT** /premium-rate-paces-batch | Create or Update Batch PremRatePace |
| [**update_prem_rate_pace**](PremiumRatePacesApi.md#update_prem_rate_pace) | **PUT** /premium-rate-paces/{ratePace} | Update PremRatePace |


## create_prem_rate_pace

> <PremRatePaceVBAResponse> create_prem_rate_pace(vbasoftware_database, prem_rate_pace)

Create PremRatePace

Creates a new PremRatePace

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

api_instance = Vba::PremiumRatePacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_pace = Vba::PremRatePace.new({rate_pace: 'rate_pace_example'}) # PremRatePace | 

begin
  # Create PremRatePace
  result = api_instance.create_prem_rate_pace(vbasoftware_database, prem_rate_pace)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->create_prem_rate_pace: #{e}"
end
```

#### Using the create_prem_rate_pace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceVBAResponse>, Integer, Hash)> create_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace)

```ruby
begin
  # Create PremRatePace
  data, status_code, headers = api_instance.create_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->create_prem_rate_pace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_pace** | [**PremRatePace**](PremRatePace.md) |  |  |

### Return type

[**PremRatePaceVBAResponse**](PremRatePaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_pace

> delete_prem_rate_pace(vbasoftware_database, rate_pace)

Delete PremRatePace

Deletes an PremRatePace

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

api_instance = Vba::PremiumRatePacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_pace = 'rate_pace_example' # String | Rate Pace

begin
  # Delete PremRatePace
  api_instance.delete_prem_rate_pace(vbasoftware_database, rate_pace)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->delete_prem_rate_pace: #{e}"
end
```

#### Using the delete_prem_rate_pace_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace)

```ruby
begin
  # Delete PremRatePace
  data, status_code, headers = api_instance.delete_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->delete_prem_rate_pace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_pace** | **String** | Rate Pace |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_pace

> <PremRatePaceVBAResponse> get_prem_rate_pace(vbasoftware_database, rate_pace)

Get PremRatePace

Gets PremRatePace

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

api_instance = Vba::PremiumRatePacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_pace = 'rate_pace_example' # String | Rate Pace

begin
  # Get PremRatePace
  result = api_instance.get_prem_rate_pace(vbasoftware_database, rate_pace)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->get_prem_rate_pace: #{e}"
end
```

#### Using the get_prem_rate_pace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceVBAResponse>, Integer, Hash)> get_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace)

```ruby
begin
  # Get PremRatePace
  data, status_code, headers = api_instance.get_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->get_prem_rate_pace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_pace** | **String** | Rate Pace |  |

### Return type

[**PremRatePaceVBAResponse**](PremRatePaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_pace

> <PremRatePaceListVBAResponse> list_prem_rate_pace(vbasoftware_database, opts)

List PremRatePace

Lists all PremRatePace

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

api_instance = Vba::PremiumRatePacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRatePace
  result = api_instance.list_prem_rate_pace(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->list_prem_rate_pace: #{e}"
end
```

#### Using the list_prem_rate_pace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceListVBAResponse>, Integer, Hash)> list_prem_rate_pace_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PremRatePace
  data, status_code, headers = api_instance.list_prem_rate_pace_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->list_prem_rate_pace_with_http_info: #{e}"
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

[**PremRatePaceListVBAResponse**](PremRatePaceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_pace

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_pace(vbasoftware_database, prem_rate_pace)

Create or Update Batch PremRatePace

Create or Update multiple PremRatePace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRatePacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_pace = [Vba::PremRatePace.new({rate_pace: 'rate_pace_example'})] # Array<PremRatePace> | 

begin
  # Create or Update Batch PremRatePace
  result = api_instance.update_batch_prem_rate_pace(vbasoftware_database, prem_rate_pace)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->update_batch_prem_rate_pace: #{e}"
end
```

#### Using the update_batch_prem_rate_pace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace)

```ruby
begin
  # Create or Update Batch PremRatePace
  data, status_code, headers = api_instance.update_batch_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->update_batch_prem_rate_pace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_pace** | [**Array&lt;PremRatePace&gt;**](PremRatePace.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_pace

> <PremRatePaceVBAResponse> update_prem_rate_pace(vbasoftware_database, rate_pace, prem_rate_pace)

Update PremRatePace

Updates a specific PremRatePace.

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

api_instance = Vba::PremiumRatePacesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
rate_pace = 'rate_pace_example' # String | Rate Pace
prem_rate_pace = Vba::PremRatePace.new({rate_pace: 'rate_pace_example'}) # PremRatePace | 

begin
  # Update PremRatePace
  result = api_instance.update_prem_rate_pace(vbasoftware_database, rate_pace, prem_rate_pace)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->update_prem_rate_pace: #{e}"
end
```

#### Using the update_prem_rate_pace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRatePaceVBAResponse>, Integer, Hash)> update_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, prem_rate_pace)

```ruby
begin
  # Update PremRatePace
  data, status_code, headers = api_instance.update_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, prem_rate_pace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRatePaceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRatePacesApi->update_prem_rate_pace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **rate_pace** | **String** | Rate Pace |  |
| **prem_rate_pace** | [**PremRatePace**](PremRatePace.md) |  |  |

### Return type

[**PremRatePaceVBAResponse**](PremRatePaceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

