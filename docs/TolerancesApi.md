# Vba::TolerancesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tolerance**](TolerancesApi.md#create_tolerance) | **POST** /tolerances | Create Tolerance |
| [**delete_tolerance**](TolerancesApi.md#delete_tolerance) | **DELETE** /tolerances/{Tolerance_Key} | Delete Tolerance |
| [**get_tolerance**](TolerancesApi.md#get_tolerance) | **GET** /tolerances/{Tolerance_Key} | Get Tolerance |
| [**list_tolerance**](TolerancesApi.md#list_tolerance) | **GET** /tolerances | List Tolerance |
| [**update_batch_tolerance**](TolerancesApi.md#update_batch_tolerance) | **PUT** /tolerances-batch | Create or Update Batch Tolerance |
| [**update_tolerance**](TolerancesApi.md#update_tolerance) | **PUT** /tolerances/{Tolerance_Key} | Update Tolerance |


## create_tolerance

> <ToleranceVBAResponse> create_tolerance(vbasoftware_database, tolerance)

Create Tolerance

Creates a new Tolerance

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

api_instance = Vba::TolerancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tolerance = Vba::Tolerance.new({tolerance_key: 37, tolerance1: 3.56}) # Tolerance | 

begin
  # Create Tolerance
  result = api_instance.create_tolerance(vbasoftware_database, tolerance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->create_tolerance: #{e}"
end
```

#### Using the create_tolerance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToleranceVBAResponse>, Integer, Hash)> create_tolerance_with_http_info(vbasoftware_database, tolerance)

```ruby
begin
  # Create Tolerance
  data, status_code, headers = api_instance.create_tolerance_with_http_info(vbasoftware_database, tolerance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToleranceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->create_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tolerance** | [**Tolerance**](Tolerance.md) |  |  |

### Return type

[**ToleranceVBAResponse**](ToleranceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tolerance

> delete_tolerance(vbasoftware_database, tolerance_key)

Delete Tolerance

Deletes an Tolerance

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

api_instance = Vba::TolerancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tolerance_key = 56 # Integer | Tolerance Key

begin
  # Delete Tolerance
  api_instance.delete_tolerance(vbasoftware_database, tolerance_key)
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->delete_tolerance: #{e}"
end
```

#### Using the delete_tolerance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tolerance_with_http_info(vbasoftware_database, tolerance_key)

```ruby
begin
  # Delete Tolerance
  data, status_code, headers = api_instance.delete_tolerance_with_http_info(vbasoftware_database, tolerance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->delete_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tolerance_key** | **Integer** | Tolerance Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tolerance

> <ToleranceVBAResponse> get_tolerance(vbasoftware_database, tolerance_key)

Get Tolerance

Gets Tolerance

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

api_instance = Vba::TolerancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tolerance_key = 56 # Integer | Tolerance Key

begin
  # Get Tolerance
  result = api_instance.get_tolerance(vbasoftware_database, tolerance_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->get_tolerance: #{e}"
end
```

#### Using the get_tolerance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToleranceVBAResponse>, Integer, Hash)> get_tolerance_with_http_info(vbasoftware_database, tolerance_key)

```ruby
begin
  # Get Tolerance
  data, status_code, headers = api_instance.get_tolerance_with_http_info(vbasoftware_database, tolerance_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToleranceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->get_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tolerance_key** | **Integer** | Tolerance Key |  |

### Return type

[**ToleranceVBAResponse**](ToleranceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tolerance

> <ToleranceListVBAResponse> list_tolerance(vbasoftware_database, opts)

List Tolerance

Lists all Tolerance

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

api_instance = Vba::TolerancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List Tolerance
  result = api_instance.list_tolerance(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->list_tolerance: #{e}"
end
```

#### Using the list_tolerance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToleranceListVBAResponse>, Integer, Hash)> list_tolerance_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Tolerance
  data, status_code, headers = api_instance.list_tolerance_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToleranceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->list_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**ToleranceListVBAResponse**](ToleranceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tolerance

> <MultiCodeResponseListVBAResponse> update_batch_tolerance(vbasoftware_database, tolerance)

Create or Update Batch Tolerance

Create or Update multiple Tolerance at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::TolerancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tolerance = [Vba::Tolerance.new({tolerance_key: 37, tolerance1: 3.56})] # Array<Tolerance> | 

begin
  # Create or Update Batch Tolerance
  result = api_instance.update_batch_tolerance(vbasoftware_database, tolerance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->update_batch_tolerance: #{e}"
end
```

#### Using the update_batch_tolerance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tolerance_with_http_info(vbasoftware_database, tolerance)

```ruby
begin
  # Create or Update Batch Tolerance
  data, status_code, headers = api_instance.update_batch_tolerance_with_http_info(vbasoftware_database, tolerance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->update_batch_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tolerance** | [**Array&lt;Tolerance&gt;**](Tolerance.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tolerance

> <ToleranceVBAResponse> update_tolerance(vbasoftware_database, tolerance_key, tolerance)

Update Tolerance

Updates a specific Tolerance.

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

api_instance = Vba::TolerancesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tolerance_key = 56 # Integer | Tolerance Key
tolerance = Vba::Tolerance.new({tolerance_key: 37, tolerance1: 3.56}) # Tolerance | 

begin
  # Update Tolerance
  result = api_instance.update_tolerance(vbasoftware_database, tolerance_key, tolerance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->update_tolerance: #{e}"
end
```

#### Using the update_tolerance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToleranceVBAResponse>, Integer, Hash)> update_tolerance_with_http_info(vbasoftware_database, tolerance_key, tolerance)

```ruby
begin
  # Update Tolerance
  data, status_code, headers = api_instance.update_tolerance_with_http_info(vbasoftware_database, tolerance_key, tolerance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToleranceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling TolerancesApi->update_tolerance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tolerance_key** | **Integer** | Tolerance Key |  |
| **tolerance** | [**Tolerance**](Tolerance.md) |  |  |

### Return type

[**ToleranceVBAResponse**](ToleranceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

