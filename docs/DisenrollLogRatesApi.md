# Vba::DisenrollLogRatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disenroll_log_rate**](DisenrollLogRatesApi.md#create_disenroll_log_rate) | **POST** /disenroll-logs/{DisenrollLog_Key}/rates | Create DisenrollLogRate |
| [**delete_disenroll_log_rate**](DisenrollLogRatesApi.md#delete_disenroll_log_rate) | **DELETE** /disenroll-logs/{DisenrollLog_Key}/rates/{PremRate_Key} | Delete DisenrollLogRate |
| [**get_disenroll_log_rate**](DisenrollLogRatesApi.md#get_disenroll_log_rate) | **GET** /disenroll-logs/{DisenrollLog_Key}/rates/{PremRate_Key} | Get DisenrollLogRate |
| [**list_disenroll_log_rate**](DisenrollLogRatesApi.md#list_disenroll_log_rate) | **GET** /disenroll-logs/{DisenrollLog_Key}/rates | List DisenrollLogRate |
| [**update_batch_disenroll_log_rate**](DisenrollLogRatesApi.md#update_batch_disenroll_log_rate) | **PUT** /disenroll-logs/{DisenrollLog_Key}/rates-batch | Create or Update Batch DisenrollLogRate |
| [**update_disenroll_log_rate**](DisenrollLogRatesApi.md#update_disenroll_log_rate) | **PUT** /disenroll-logs/{DisenrollLog_Key}/rates/{PremRate_Key} | Update DisenrollLogRate |


## create_disenroll_log_rate

> <DisenrollLogRateVBAResponse> create_disenroll_log_rate(vbasoftware_database, disenroll_log_key, disenroll_log_rate)

Create DisenrollLogRate

Creates a new DisenrollLogRate

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

api_instance = Vba::DisenrollLogRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
disenroll_log_rate = Vba::DisenrollLogRate.new({disenroll_log_key: 37, prem_rate_key: 37}) # DisenrollLogRate | 

begin
  # Create DisenrollLogRate
  result = api_instance.create_disenroll_log_rate(vbasoftware_database, disenroll_log_key, disenroll_log_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->create_disenroll_log_rate: #{e}"
end
```

#### Using the create_disenroll_log_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogRateVBAResponse>, Integer, Hash)> create_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, disenroll_log_rate)

```ruby
begin
  # Create DisenrollLogRate
  data, status_code, headers = api_instance.create_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, disenroll_log_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->create_disenroll_log_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **disenroll_log_rate** | [**DisenrollLogRate**](DisenrollLogRate.md) |  |  |

### Return type

[**DisenrollLogRateVBAResponse**](DisenrollLogRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disenroll_log_rate

> delete_disenroll_log_rate(vbasoftware_database, disenroll_log_key, prem_rate_key)

Delete DisenrollLogRate

Deletes an DisenrollLogRate

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

api_instance = Vba::DisenrollLogRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
prem_rate_key = 56 # Integer | PremRate Key

begin
  # Delete DisenrollLogRate
  api_instance.delete_disenroll_log_rate(vbasoftware_database, disenroll_log_key, prem_rate_key)
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->delete_disenroll_log_rate: #{e}"
end
```

#### Using the delete_disenroll_log_rate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, prem_rate_key)

```ruby
begin
  # Delete DisenrollLogRate
  data, status_code, headers = api_instance.delete_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, prem_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->delete_disenroll_log_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disenroll_log_rate

> <DisenrollLogRateVBAResponse> get_disenroll_log_rate(vbasoftware_database, disenroll_log_key, prem_rate_key)

Get DisenrollLogRate

Gets DisenrollLogRate

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

api_instance = Vba::DisenrollLogRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
prem_rate_key = 56 # Integer | PremRate Key

begin
  # Get DisenrollLogRate
  result = api_instance.get_disenroll_log_rate(vbasoftware_database, disenroll_log_key, prem_rate_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->get_disenroll_log_rate: #{e}"
end
```

#### Using the get_disenroll_log_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogRateVBAResponse>, Integer, Hash)> get_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, prem_rate_key)

```ruby
begin
  # Get DisenrollLogRate
  data, status_code, headers = api_instance.get_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, prem_rate_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->get_disenroll_log_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |

### Return type

[**DisenrollLogRateVBAResponse**](DisenrollLogRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disenroll_log_rate

> <DisenrollLogRateListVBAResponse> list_disenroll_log_rate(vbasoftware_database, disenroll_log_key, opts)

List DisenrollLogRate

Lists all DisenrollLogRate for the given DisenrollLog_Key

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

api_instance = Vba::DisenrollLogRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List DisenrollLogRate
  result = api_instance.list_disenroll_log_rate(vbasoftware_database, disenroll_log_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->list_disenroll_log_rate: #{e}"
end
```

#### Using the list_disenroll_log_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogRateListVBAResponse>, Integer, Hash)> list_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, opts)

```ruby
begin
  # List DisenrollLogRate
  data, status_code, headers = api_instance.list_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogRateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->list_disenroll_log_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**DisenrollLogRateListVBAResponse**](DisenrollLogRateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disenroll_log_rate

> <MultiCodeResponseListVBAResponse> update_batch_disenroll_log_rate(vbasoftware_database, disenroll_log_key, disenroll_log_rate)

Create or Update Batch DisenrollLogRate

Create or Update multiple DisenrollLogRate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisenrollLogRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
disenroll_log_rate = [Vba::DisenrollLogRate.new({disenroll_log_key: 37, prem_rate_key: 37})] # Array<DisenrollLogRate> | 

begin
  # Create or Update Batch DisenrollLogRate
  result = api_instance.update_batch_disenroll_log_rate(vbasoftware_database, disenroll_log_key, disenroll_log_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->update_batch_disenroll_log_rate: #{e}"
end
```

#### Using the update_batch_disenroll_log_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, disenroll_log_rate)

```ruby
begin
  # Create or Update Batch DisenrollLogRate
  data, status_code, headers = api_instance.update_batch_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, disenroll_log_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->update_batch_disenroll_log_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **disenroll_log_rate** | [**Array&lt;DisenrollLogRate&gt;**](DisenrollLogRate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disenroll_log_rate

> <DisenrollLogRateVBAResponse> update_disenroll_log_rate(vbasoftware_database, disenroll_log_key, prem_rate_key, disenroll_log_rate)

Update DisenrollLogRate

Updates a specific DisenrollLogRate.

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

api_instance = Vba::DisenrollLogRatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disenroll_log_key = 56 # Integer | DisenrollLog Key
prem_rate_key = 56 # Integer | PremRate Key
disenroll_log_rate = Vba::DisenrollLogRate.new({disenroll_log_key: 37, prem_rate_key: 37}) # DisenrollLogRate | 

begin
  # Update DisenrollLogRate
  result = api_instance.update_disenroll_log_rate(vbasoftware_database, disenroll_log_key, prem_rate_key, disenroll_log_rate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->update_disenroll_log_rate: #{e}"
end
```

#### Using the update_disenroll_log_rate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisenrollLogRateVBAResponse>, Integer, Hash)> update_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, prem_rate_key, disenroll_log_rate)

```ruby
begin
  # Update DisenrollLogRate
  data, status_code, headers = api_instance.update_disenroll_log_rate_with_http_info(vbasoftware_database, disenroll_log_key, prem_rate_key, disenroll_log_rate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisenrollLogRateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisenrollLogRatesApi->update_disenroll_log_rate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disenroll_log_key** | **Integer** | DisenrollLog Key |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **disenroll_log_rate** | [**DisenrollLogRate**](DisenrollLogRate.md) |  |  |

### Return type

[**DisenrollLogRateVBAResponse**](DisenrollLogRateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

