# Vba::SuffixApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_suffix**](SuffixApi.md#create_suffix) | **POST** /suffixes | Create Suffix |
| [**delete_suffix**](SuffixApi.md#delete_suffix) | **DELETE** /suffixes/{suffix1} | Delete Suffix |
| [**get_suffix**](SuffixApi.md#get_suffix) | **GET** /suffixes/{suffix1} | Get Suffix |
| [**list_suffixes**](SuffixApi.md#list_suffixes) | **GET** /suffixes | List Suffix |
| [**update_batch_suffix**](SuffixApi.md#update_batch_suffix) | **PUT** /suffixes-batch | Create or Update Batch Suffix |
| [**update_suffix**](SuffixApi.md#update_suffix) | **PUT** /suffixes/{suffix1} | Update Suffix |


## create_suffix

> <SuffixVBAResponse> create_suffix(vbasoftware_database, suffix)

Create Suffix

Creates a new Suffix

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

api_instance = Vba::SuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suffix = Vba::Suffix.new({suffix1: 'suffix1_example'}) # Suffix | 

begin
  # Create Suffix
  result = api_instance.create_suffix(vbasoftware_database, suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->create_suffix: #{e}"
end
```

#### Using the create_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuffixVBAResponse>, Integer, Hash)> create_suffix_with_http_info(vbasoftware_database, suffix)

```ruby
begin
  # Create Suffix
  data, status_code, headers = api_instance.create_suffix_with_http_info(vbasoftware_database, suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuffixVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->create_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suffix** | [**Suffix**](Suffix.md) |  |  |

### Return type

[**SuffixVBAResponse**](SuffixVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_suffix

> delete_suffix(vbasoftware_database, suffix1)

Delete Suffix

Deletes an Suffix

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

api_instance = Vba::SuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suffix1 = 'suffix1_example' # String | Suffix1

begin
  # Delete Suffix
  api_instance.delete_suffix(vbasoftware_database, suffix1)
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->delete_suffix: #{e}"
end
```

#### Using the delete_suffix_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_suffix_with_http_info(vbasoftware_database, suffix1)

```ruby
begin
  # Delete Suffix
  data, status_code, headers = api_instance.delete_suffix_with_http_info(vbasoftware_database, suffix1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->delete_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suffix1** | **String** | Suffix1 |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_suffix

> <SuffixVBAResponse> get_suffix(vbasoftware_database, suffix1)

Get Suffix

Gets Suffix

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

api_instance = Vba::SuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suffix1 = 'suffix1_example' # String | Suffix1

begin
  # Get Suffix
  result = api_instance.get_suffix(vbasoftware_database, suffix1)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->get_suffix: #{e}"
end
```

#### Using the get_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuffixVBAResponse>, Integer, Hash)> get_suffix_with_http_info(vbasoftware_database, suffix1)

```ruby
begin
  # Get Suffix
  data, status_code, headers = api_instance.get_suffix_with_http_info(vbasoftware_database, suffix1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuffixVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->get_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suffix1** | **String** | Suffix1 |  |

### Return type

[**SuffixVBAResponse**](SuffixVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_suffixes

> <SuffixListVBAResponse> list_suffixes(vbasoftware_database)

List Suffix

Lists all Suffix

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

api_instance = Vba::SuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Suffix
  result = api_instance.list_suffixes(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->list_suffixes: #{e}"
end
```

#### Using the list_suffixes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuffixListVBAResponse>, Integer, Hash)> list_suffixes_with_http_info(vbasoftware_database)

```ruby
begin
  # List Suffix
  data, status_code, headers = api_instance.list_suffixes_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuffixListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->list_suffixes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**SuffixListVBAResponse**](SuffixListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_suffix

> <MultiCodeResponseListVBAResponse> update_batch_suffix(vbasoftware_database, suffix)

Create or Update Batch Suffix

Create or Update multiple Suffix at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suffix = [Vba::Suffix.new({suffix1: 'suffix1_example'})] # Array<Suffix> | 

begin
  # Create or Update Batch Suffix
  result = api_instance.update_batch_suffix(vbasoftware_database, suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->update_batch_suffix: #{e}"
end
```

#### Using the update_batch_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_suffix_with_http_info(vbasoftware_database, suffix)

```ruby
begin
  # Create or Update Batch Suffix
  data, status_code, headers = api_instance.update_batch_suffix_with_http_info(vbasoftware_database, suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->update_batch_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suffix** | [**Array&lt;Suffix&gt;**](Suffix.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_suffix

> <SuffixVBAResponse> update_suffix(vbasoftware_database, suffix1, suffix)

Update Suffix

Updates a specific Suffix

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

api_instance = Vba::SuffixApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
suffix1 = 'suffix1_example' # String | Suffix1
suffix = Vba::Suffix.new({suffix1: 'suffix1_example'}) # Suffix | 

begin
  # Update Suffix
  result = api_instance.update_suffix(vbasoftware_database, suffix1, suffix)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->update_suffix: #{e}"
end
```

#### Using the update_suffix_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SuffixVBAResponse>, Integer, Hash)> update_suffix_with_http_info(vbasoftware_database, suffix1, suffix)

```ruby
begin
  # Update Suffix
  data, status_code, headers = api_instance.update_suffix_with_http_info(vbasoftware_database, suffix1, suffix)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SuffixVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SuffixApi->update_suffix_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **suffix1** | **String** | Suffix1 |  |
| **suffix** | [**Suffix**](Suffix.md) |  |  |

### Return type

[**SuffixVBAResponse**](SuffixVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

