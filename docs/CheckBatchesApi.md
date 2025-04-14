# Vba::CheckBatchesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_batch_check_edit**](CheckBatchesApi.md#check_batch_check_edit) | **PUT** /check-batches-check-edit/{checkBatch} | CheckBatch CheckEdit |
| [**check_batch_pre_check_edit**](CheckBatchesApi.md#check_batch_pre_check_edit) | **PUT** /check-batches-pre-check-edit | CheckBatch Pre-CheckEdit |
| [**create_check_batch**](CheckBatchesApi.md#create_check_batch) | **POST** /check-batches | Create CheckBatch |
| [**delete_check_batch**](CheckBatchesApi.md#delete_check_batch) | **DELETE** /check-batches/{checkBatch} | Delete CheckBatch |
| [**get_check_batch**](CheckBatchesApi.md#get_check_batch) | **GET** /check-batches/{checkBatch} | Get CheckBatch |
| [**list_check_batch**](CheckBatchesApi.md#list_check_batch) | **GET** /check-batches | List CheckBatch |
| [**update_batch_check_batch**](CheckBatchesApi.md#update_batch_check_batch) | **PUT** /check-batches-batch | Create or Update Batch CheckBatch |
| [**update_check_batch**](CheckBatchesApi.md#update_check_batch) | **PUT** /check-batches/{checkBatch} | Update CheckBatch |


## check_batch_check_edit

> <CheckEditResultListVBAResponse> check_batch_check_edit(vbasoftware_database, check_batch)

CheckBatch CheckEdit

Runs all configured check edits based on Check Batch and returns the results of those edits.

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_batch = 56 # Integer | Check Batch

begin
  # CheckBatch CheckEdit
  result = api_instance.check_batch_check_edit(vbasoftware_database, check_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->check_batch_check_edit: #{e}"
end
```

#### Using the check_batch_check_edit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditResultListVBAResponse>, Integer, Hash)> check_batch_check_edit_with_http_info(vbasoftware_database, check_batch)

```ruby
begin
  # CheckBatch CheckEdit
  data, status_code, headers = api_instance.check_batch_check_edit_with_http_info(vbasoftware_database, check_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->check_batch_check_edit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_batch** | **Integer** | Check Batch |  |

### Return type

[**CheckEditResultListVBAResponse**](CheckEditResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## check_batch_pre_check_edit

> <CheckEditResultListVBAResponse> check_batch_pre_check_edit(vbasoftware_database)

CheckBatch Pre-CheckEdit

Runs all configured Pre-check edits based on Check Batch and returns the results of those edits.

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # CheckBatch Pre-CheckEdit
  result = api_instance.check_batch_pre_check_edit(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->check_batch_pre_check_edit: #{e}"
end
```

#### Using the check_batch_pre_check_edit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckEditResultListVBAResponse>, Integer, Hash)> check_batch_pre_check_edit_with_http_info(vbasoftware_database)

```ruby
begin
  # CheckBatch Pre-CheckEdit
  data, status_code, headers = api_instance.check_batch_pre_check_edit_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckEditResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->check_batch_pre_check_edit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**CheckEditResultListVBAResponse**](CheckEditResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## create_check_batch

> <CheckBatchVBAResponse> create_check_batch(vbasoftware_database, check_batch)

Create CheckBatch

Creates a new CheckBatch

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_batch = Vba::CheckBatch.new({check_batch: 37, check_batch_date: Time.now, check_batch_exported: false}) # CheckBatch | 

begin
  # Create CheckBatch
  result = api_instance.create_check_batch(vbasoftware_database, check_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->create_check_batch: #{e}"
end
```

#### Using the create_check_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckBatchVBAResponse>, Integer, Hash)> create_check_batch_with_http_info(vbasoftware_database, check_batch)

```ruby
begin
  # Create CheckBatch
  data, status_code, headers = api_instance.create_check_batch_with_http_info(vbasoftware_database, check_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->create_check_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_batch** | [**CheckBatch**](CheckBatch.md) |  |  |

### Return type

[**CheckBatchVBAResponse**](CheckBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_check_batch

> delete_check_batch(vbasoftware_database, check_batch)

Delete CheckBatch

Deletes an CheckBatch

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_batch = 56 # Integer | Check Batch

begin
  # Delete CheckBatch
  api_instance.delete_check_batch(vbasoftware_database, check_batch)
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->delete_check_batch: #{e}"
end
```

#### Using the delete_check_batch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_check_batch_with_http_info(vbasoftware_database, check_batch)

```ruby
begin
  # Delete CheckBatch
  data, status_code, headers = api_instance.delete_check_batch_with_http_info(vbasoftware_database, check_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->delete_check_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_batch** | **Integer** | Check Batch |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_check_batch

> <CheckBatchVBAResponse> get_check_batch(vbasoftware_database, check_batch)

Get CheckBatch

Gets CheckBatch

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_batch = 56 # Integer | Check Batch

begin
  # Get CheckBatch
  result = api_instance.get_check_batch(vbasoftware_database, check_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->get_check_batch: #{e}"
end
```

#### Using the get_check_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckBatchVBAResponse>, Integer, Hash)> get_check_batch_with_http_info(vbasoftware_database, check_batch)

```ruby
begin
  # Get CheckBatch
  data, status_code, headers = api_instance.get_check_batch_with_http_info(vbasoftware_database, check_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->get_check_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_batch** | **Integer** | Check Batch |  |

### Return type

[**CheckBatchVBAResponse**](CheckBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_check_batch

> <CheckBatchListVBAResponse> list_check_batch(vbasoftware_database, opts)

List CheckBatch

Lists all CheckBatch

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CheckBatch
  result = api_instance.list_check_batch(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->list_check_batch: #{e}"
end
```

#### Using the list_check_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckBatchListVBAResponse>, Integer, Hash)> list_check_batch_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CheckBatch
  data, status_code, headers = api_instance.list_check_batch_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckBatchListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->list_check_batch_with_http_info: #{e}"
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

[**CheckBatchListVBAResponse**](CheckBatchListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_check_batch

> <MultiCodeResponseListVBAResponse> update_batch_check_batch(vbasoftware_database, check_batch)

Create or Update Batch CheckBatch

Create or Update multiple CheckBatch at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_batch = [Vba::CheckBatch.new({check_batch: 37, check_batch_date: Time.now, check_batch_exported: false})] # Array<CheckBatch> | 

begin
  # Create or Update Batch CheckBatch
  result = api_instance.update_batch_check_batch(vbasoftware_database, check_batch)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->update_batch_check_batch: #{e}"
end
```

#### Using the update_batch_check_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_check_batch_with_http_info(vbasoftware_database, check_batch)

```ruby
begin
  # Create or Update Batch CheckBatch
  data, status_code, headers = api_instance.update_batch_check_batch_with_http_info(vbasoftware_database, check_batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->update_batch_check_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_batch** | [**Array&lt;CheckBatch&gt;**](CheckBatch.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_check_batch

> <CheckBatchVBAResponse> update_check_batch(vbasoftware_database, check_batch, check_batch2)

Update CheckBatch

Updates a specific CheckBatch.

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

api_instance = Vba::CheckBatchesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
check_batch = 56 # Integer | Check Batch
check_batch2 = Vba::CheckBatch.new({check_batch: 37, check_batch_date: Time.now, check_batch_exported: false}) # CheckBatch | 

begin
  # Update CheckBatch
  result = api_instance.update_check_batch(vbasoftware_database, check_batch, check_batch2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->update_check_batch: #{e}"
end
```

#### Using the update_check_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckBatchVBAResponse>, Integer, Hash)> update_check_batch_with_http_info(vbasoftware_database, check_batch, check_batch2)

```ruby
begin
  # Update CheckBatch
  data, status_code, headers = api_instance.update_check_batch_with_http_info(vbasoftware_database, check_batch, check_batch2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckBatchVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CheckBatchesApi->update_check_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **check_batch** | **Integer** | Check Batch |  |
| **check_batch2** | [**CheckBatch**](CheckBatch.md) |  |  |

### Return type

[**CheckBatchVBAResponse**](CheckBatchVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

