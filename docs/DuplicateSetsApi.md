# Vba::DuplicateSetsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_duplicate_set**](DuplicateSetsApi.md#create_duplicate_set) | **POST** /duplicate-sets | Create DuplicateSet |
| [**delete_duplicate_set**](DuplicateSetsApi.md#delete_duplicate_set) | **DELETE** /duplicate-sets/{duplicateSetKey} | Delete DuplicateSet |
| [**get_duplicate_set**](DuplicateSetsApi.md#get_duplicate_set) | **GET** /duplicate-sets/{duplicateSetKey} | Get DuplicateSet |
| [**list_duplicate_set**](DuplicateSetsApi.md#list_duplicate_set) | **GET** /duplicate-sets | List DuplicateSet |
| [**update_batch_duplicate_set**](DuplicateSetsApi.md#update_batch_duplicate_set) | **PUT** /duplicate-sets-batch | Create or Update Batch DuplicateSet |
| [**update_duplicate_set**](DuplicateSetsApi.md#update_duplicate_set) | **PUT** /duplicate-sets/{duplicateSetKey} | Update DuplicateSet |


## create_duplicate_set

> <DuplicateSetVBAResponse> create_duplicate_set(vbasoftware_database, duplicate_set)

Create DuplicateSet

Creates a new DuplicateSet

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

api_instance = Vba::DuplicateSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set = Vba::DuplicateSet.new({duplicate_set_key: 37, check_claim: false, claim_type: 'claim_type_example', no_dupe_on_denied: false, soft_dupe_on_denied: false}) # DuplicateSet | 

begin
  # Create DuplicateSet
  result = api_instance.create_duplicate_set(vbasoftware_database, duplicate_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->create_duplicate_set: #{e}"
end
```

#### Using the create_duplicate_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetVBAResponse>, Integer, Hash)> create_duplicate_set_with_http_info(vbasoftware_database, duplicate_set)

```ruby
begin
  # Create DuplicateSet
  data, status_code, headers = api_instance.create_duplicate_set_with_http_info(vbasoftware_database, duplicate_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->create_duplicate_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set** | [**DuplicateSet**](DuplicateSet.md) |  |  |

### Return type

[**DuplicateSetVBAResponse**](DuplicateSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_duplicate_set

> delete_duplicate_set(vbasoftware_database, duplicate_set_key)

Delete DuplicateSet

Deletes an DuplicateSet

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

api_instance = Vba::DuplicateSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key

begin
  # Delete DuplicateSet
  api_instance.delete_duplicate_set(vbasoftware_database, duplicate_set_key)
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->delete_duplicate_set: #{e}"
end
```

#### Using the delete_duplicate_set_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_duplicate_set_with_http_info(vbasoftware_database, duplicate_set_key)

```ruby
begin
  # Delete DuplicateSet
  data, status_code, headers = api_instance.delete_duplicate_set_with_http_info(vbasoftware_database, duplicate_set_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->delete_duplicate_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_duplicate_set

> <DuplicateSetVBAResponse> get_duplicate_set(vbasoftware_database, duplicate_set_key)

Get DuplicateSet

Gets DuplicateSet

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

api_instance = Vba::DuplicateSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key

begin
  # Get DuplicateSet
  result = api_instance.get_duplicate_set(vbasoftware_database, duplicate_set_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->get_duplicate_set: #{e}"
end
```

#### Using the get_duplicate_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetVBAResponse>, Integer, Hash)> get_duplicate_set_with_http_info(vbasoftware_database, duplicate_set_key)

```ruby
begin
  # Get DuplicateSet
  data, status_code, headers = api_instance.get_duplicate_set_with_http_info(vbasoftware_database, duplicate_set_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->get_duplicate_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |

### Return type

[**DuplicateSetVBAResponse**](DuplicateSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_duplicate_set

> <DuplicateSetListVBAResponse> list_duplicate_set(vbasoftware_database, opts)

List DuplicateSet

Lists all DuplicateSet

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

api_instance = Vba::DuplicateSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List DuplicateSet
  result = api_instance.list_duplicate_set(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->list_duplicate_set: #{e}"
end
```

#### Using the list_duplicate_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetListVBAResponse>, Integer, Hash)> list_duplicate_set_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List DuplicateSet
  data, status_code, headers = api_instance.list_duplicate_set_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->list_duplicate_set_with_http_info: #{e}"
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

[**DuplicateSetListVBAResponse**](DuplicateSetListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_duplicate_set

> <MultiCodeResponseListVBAResponse> update_batch_duplicate_set(vbasoftware_database, duplicate_set)

Create or Update Batch DuplicateSet

Create or Update multiple DuplicateSet at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DuplicateSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set = [Vba::DuplicateSet.new({duplicate_set_key: 37, check_claim: false, claim_type: 'claim_type_example', no_dupe_on_denied: false, soft_dupe_on_denied: false})] # Array<DuplicateSet> | 

begin
  # Create or Update Batch DuplicateSet
  result = api_instance.update_batch_duplicate_set(vbasoftware_database, duplicate_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->update_batch_duplicate_set: #{e}"
end
```

#### Using the update_batch_duplicate_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_duplicate_set_with_http_info(vbasoftware_database, duplicate_set)

```ruby
begin
  # Create or Update Batch DuplicateSet
  data, status_code, headers = api_instance.update_batch_duplicate_set_with_http_info(vbasoftware_database, duplicate_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->update_batch_duplicate_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set** | [**Array&lt;DuplicateSet&gt;**](DuplicateSet.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_duplicate_set

> <DuplicateSetVBAResponse> update_duplicate_set(vbasoftware_database, duplicate_set_key, duplicate_set)

Update DuplicateSet

Updates a specific DuplicateSet.

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

api_instance = Vba::DuplicateSetsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
duplicate_set_key = 56 # Integer | DuplicateSet Key
duplicate_set = Vba::DuplicateSet.new({duplicate_set_key: 37, check_claim: false, claim_type: 'claim_type_example', no_dupe_on_denied: false, soft_dupe_on_denied: false}) # DuplicateSet | 

begin
  # Update DuplicateSet
  result = api_instance.update_duplicate_set(vbasoftware_database, duplicate_set_key, duplicate_set)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->update_duplicate_set: #{e}"
end
```

#### Using the update_duplicate_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DuplicateSetVBAResponse>, Integer, Hash)> update_duplicate_set_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_set)

```ruby
begin
  # Update DuplicateSet
  data, status_code, headers = api_instance.update_duplicate_set_with_http_info(vbasoftware_database, duplicate_set_key, duplicate_set)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DuplicateSetVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DuplicateSetsApi->update_duplicate_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **duplicate_set_key** | **Integer** | DuplicateSet Key |  |
| **duplicate_set** | [**DuplicateSet**](DuplicateSet.md) |  |  |

### Return type

[**DuplicateSetVBAResponse**](DuplicateSetVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

