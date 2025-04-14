# Vba::CareCaseSavingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_savings**](CareCaseSavingsApi.md#create_care_case_savings) | **POST** /cases/{caseKey}/savings | Create CareCaseSavings |
| [**delete_care_case_savings**](CareCaseSavingsApi.md#delete_care_case_savings) | **DELETE** /cases/{caseKey}/savings/{careCaseSavingsKey} | Delete CareCaseSavings |
| [**get_care_case_savings**](CareCaseSavingsApi.md#get_care_case_savings) | **GET** /cases/{caseKey}/savings/{careCaseSavingsKey} | Get CareCaseSavings |
| [**list_care_case_savings**](CareCaseSavingsApi.md#list_care_case_savings) | **GET** /cases/{caseKey}/savings | List CareCaseSavings |
| [**update_batch_care_case_savings**](CareCaseSavingsApi.md#update_batch_care_case_savings) | **PUT** /cases/{caseKey}/savings-batch | Create or Update Batch CareCaseSavings |
| [**update_care_case_savings**](CareCaseSavingsApi.md#update_care_case_savings) | **PUT** /cases/{caseKey}/savings/{careCaseSavingsKey} | Update CareCaseSavings |


## create_care_case_savings

> <CareCaseSavingsVBAResponse> create_care_case_savings(vbasoftware_database, case_key, care_case_savings)

Create CareCaseSavings

Creates a new CareCaseSavings

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

api_instance = Vba::CareCaseSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_savings = Vba::CareCaseSavings.new({care_case_savings_key: 37, case_key: 37}) # CareCaseSavings | 

begin
  # Create CareCaseSavings
  result = api_instance.create_care_case_savings(vbasoftware_database, case_key, care_case_savings)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->create_care_case_savings: #{e}"
end
```

#### Using the create_care_case_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsVBAResponse>, Integer, Hash)> create_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings)

```ruby
begin
  # Create CareCaseSavings
  data, status_code, headers = api_instance.create_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->create_care_case_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_savings** | [**CareCaseSavings**](CareCaseSavings.md) |  |  |

### Return type

[**CareCaseSavingsVBAResponse**](CareCaseSavingsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_savings

> delete_care_case_savings(vbasoftware_database, case_key, care_case_savings_key)

Delete CareCaseSavings

Deletes an CareCaseSavings

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

api_instance = Vba::CareCaseSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_savings_key = 56 # Integer | CareCaseSavings Key

begin
  # Delete CareCaseSavings
  api_instance.delete_care_case_savings(vbasoftware_database, case_key, care_case_savings_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->delete_care_case_savings: #{e}"
end
```

#### Using the delete_care_case_savings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings_key)

```ruby
begin
  # Delete CareCaseSavings
  data, status_code, headers = api_instance.delete_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->delete_care_case_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_savings_key** | **Integer** | CareCaseSavings Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_savings

> <CareCaseSavingsVBAResponse> get_care_case_savings(vbasoftware_database, case_key, care_case_savings_key)

Get CareCaseSavings

Gets CareCaseSavings

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

api_instance = Vba::CareCaseSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_savings_key = 56 # Integer | CareCaseSavings Key

begin
  # Get CareCaseSavings
  result = api_instance.get_care_case_savings(vbasoftware_database, case_key, care_case_savings_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->get_care_case_savings: #{e}"
end
```

#### Using the get_care_case_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsVBAResponse>, Integer, Hash)> get_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings_key)

```ruby
begin
  # Get CareCaseSavings
  data, status_code, headers = api_instance.get_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->get_care_case_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_savings_key** | **Integer** | CareCaseSavings Key |  |

### Return type

[**CareCaseSavingsVBAResponse**](CareCaseSavingsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_savings

> <CareCaseSavingsListVBAResponse> list_care_case_savings(vbasoftware_database, case_key, opts)

List CareCaseSavings

Lists all CareCaseSavings for the given caseKey

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

api_instance = Vba::CareCaseSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseSavings
  result = api_instance.list_care_case_savings(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->list_care_case_savings: #{e}"
end
```

#### Using the list_care_case_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsListVBAResponse>, Integer, Hash)> list_care_case_savings_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseSavings
  data, status_code, headers = api_instance.list_care_case_savings_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->list_care_case_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseSavingsListVBAResponse**](CareCaseSavingsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_savings

> <MultiCodeResponseListVBAResponse> update_batch_care_case_savings(vbasoftware_database, case_key, care_case_savings)

Create or Update Batch CareCaseSavings

Create or Update multiple CareCaseSavings at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_savings = [Vba::CareCaseSavings.new({care_case_savings_key: 37, case_key: 37})] # Array<CareCaseSavings> | 

begin
  # Create or Update Batch CareCaseSavings
  result = api_instance.update_batch_care_case_savings(vbasoftware_database, case_key, care_case_savings)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->update_batch_care_case_savings: #{e}"
end
```

#### Using the update_batch_care_case_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings)

```ruby
begin
  # Create or Update Batch CareCaseSavings
  data, status_code, headers = api_instance.update_batch_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->update_batch_care_case_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_savings** | [**Array&lt;CareCaseSavings&gt;**](CareCaseSavings.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_savings

> <CareCaseSavingsVBAResponse> update_care_case_savings(vbasoftware_database, case_key, care_case_savings_key, care_case_savings)

Update CareCaseSavings

Updates a specific CareCaseSavings.

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

api_instance = Vba::CareCaseSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_savings_key = 56 # Integer | CareCaseSavings Key
care_case_savings = Vba::CareCaseSavings.new({care_case_savings_key: 37, case_key: 37}) # CareCaseSavings | 

begin
  # Update CareCaseSavings
  result = api_instance.update_care_case_savings(vbasoftware_database, case_key, care_case_savings_key, care_case_savings)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->update_care_case_savings: #{e}"
end
```

#### Using the update_care_case_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseSavingsVBAResponse>, Integer, Hash)> update_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings_key, care_case_savings)

```ruby
begin
  # Update CareCaseSavings
  data, status_code, headers = api_instance.update_care_case_savings_with_http_info(vbasoftware_database, case_key, care_case_savings_key, care_case_savings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseSavingsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseSavingsApi->update_care_case_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_savings_key** | **Integer** | CareCaseSavings Key |  |
| **care_case_savings** | [**CareCaseSavings**](CareCaseSavings.md) |  |  |

### Return type

[**CareCaseSavingsVBAResponse**](CareCaseSavingsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

