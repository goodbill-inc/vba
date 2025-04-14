# Vba::PolicyForfeitureExtApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_policy_forfeiture_ext**](PolicyForfeitureExtApi.md#create_policy_forfeiture_ext) | **POST** /policy-forfeiture-exts | Create PolicyForfeitureExt |
| [**delete_policy_forfeiture_ext**](PolicyForfeitureExtApi.md#delete_policy_forfeiture_ext) | **DELETE** /policy-forfeiture-exts/{PolicyForfeitureExt_Key} | Delete PolicyForfeitureExt |
| [**get_policy_forfeiture_ext**](PolicyForfeitureExtApi.md#get_policy_forfeiture_ext) | **GET** /policy-forfeiture-exts/{PolicyForfeitureExt_Key} | Get PolicyForfeitureExt |
| [**list_policy_forfeiture_ext**](PolicyForfeitureExtApi.md#list_policy_forfeiture_ext) | **GET** /policy-forfeiture-exts | List PolicyForfeitureExt |
| [**update_batch_policy_forfeiture_ext**](PolicyForfeitureExtApi.md#update_batch_policy_forfeiture_ext) | **PUT** /policy-forfeiture-exts-batch | Create or Update Batch PolicyForfeitureExt |
| [**update_policy_forfeiture_ext**](PolicyForfeitureExtApi.md#update_policy_forfeiture_ext) | **PUT** /policy-forfeiture-exts/{PolicyForfeitureExt_Key} | Update PolicyForfeitureExt |


## create_policy_forfeiture_ext

> <PolicyForfeitureExtVBAResponse> create_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext)

Create PolicyForfeitureExt

Creates a new PolicyForfeitureExt

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

api_instance = Vba::PolicyForfeitureExtApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_forfeiture_ext = Vba::PolicyForfeitureExt.new({policy_forfeiture_ext_key: 37}) # PolicyForfeitureExt | 

begin
  # Create PolicyForfeitureExt
  result = api_instance.create_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->create_policy_forfeiture_ext: #{e}"
end
```

#### Using the create_policy_forfeiture_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyForfeitureExtVBAResponse>, Integer, Hash)> create_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext)

```ruby
begin
  # Create PolicyForfeitureExt
  data, status_code, headers = api_instance.create_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyForfeitureExtVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->create_policy_forfeiture_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_forfeiture_ext** | [**PolicyForfeitureExt**](PolicyForfeitureExt.md) |  |  |

### Return type

[**PolicyForfeitureExtVBAResponse**](PolicyForfeitureExtVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_policy_forfeiture_ext

> delete_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext_key)

Delete PolicyForfeitureExt

Deletes an PolicyForfeitureExt

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

api_instance = Vba::PolicyForfeitureExtApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_forfeiture_ext_key = 56 # Integer | PolicyForfeitureExt Key

begin
  # Delete PolicyForfeitureExt
  api_instance.delete_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext_key)
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->delete_policy_forfeiture_ext: #{e}"
end
```

#### Using the delete_policy_forfeiture_ext_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext_key)

```ruby
begin
  # Delete PolicyForfeitureExt
  data, status_code, headers = api_instance.delete_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->delete_policy_forfeiture_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_forfeiture_ext_key** | **Integer** | PolicyForfeitureExt Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_policy_forfeiture_ext

> <PolicyForfeitureExtVBAResponse> get_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext_key)

Get PolicyForfeitureExt

Gets PolicyForfeitureExt

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

api_instance = Vba::PolicyForfeitureExtApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_forfeiture_ext_key = 56 # Integer | PolicyForfeitureExt Key

begin
  # Get PolicyForfeitureExt
  result = api_instance.get_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->get_policy_forfeiture_ext: #{e}"
end
```

#### Using the get_policy_forfeiture_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyForfeitureExtVBAResponse>, Integer, Hash)> get_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext_key)

```ruby
begin
  # Get PolicyForfeitureExt
  data, status_code, headers = api_instance.get_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyForfeitureExtVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->get_policy_forfeiture_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_forfeiture_ext_key** | **Integer** | PolicyForfeitureExt Key |  |

### Return type

[**PolicyForfeitureExtVBAResponse**](PolicyForfeitureExtVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_policy_forfeiture_ext

> <PolicyForfeitureExtListVBAResponse> list_policy_forfeiture_ext(vbasoftware_database, opts)

List PolicyForfeitureExt

Lists all PolicyForfeitureExt

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

api_instance = Vba::PolicyForfeitureExtApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PolicyForfeitureExt
  result = api_instance.list_policy_forfeiture_ext(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->list_policy_forfeiture_ext: #{e}"
end
```

#### Using the list_policy_forfeiture_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyForfeitureExtListVBAResponse>, Integer, Hash)> list_policy_forfeiture_ext_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List PolicyForfeitureExt
  data, status_code, headers = api_instance.list_policy_forfeiture_ext_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyForfeitureExtListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->list_policy_forfeiture_ext_with_http_info: #{e}"
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

[**PolicyForfeitureExtListVBAResponse**](PolicyForfeitureExtListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_policy_forfeiture_ext

> <MultiCodeResponseListVBAResponse> update_batch_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext)

Create or Update Batch PolicyForfeitureExt

Create or Update multiple PolicyForfeitureExt at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PolicyForfeitureExtApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_forfeiture_ext = [Vba::PolicyForfeitureExt.new({policy_forfeiture_ext_key: 37})] # Array<PolicyForfeitureExt> | 

begin
  # Create or Update Batch PolicyForfeitureExt
  result = api_instance.update_batch_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->update_batch_policy_forfeiture_ext: #{e}"
end
```

#### Using the update_batch_policy_forfeiture_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext)

```ruby
begin
  # Create or Update Batch PolicyForfeitureExt
  data, status_code, headers = api_instance.update_batch_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->update_batch_policy_forfeiture_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_forfeiture_ext** | [**Array&lt;PolicyForfeitureExt&gt;**](PolicyForfeitureExt.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_policy_forfeiture_ext

> <PolicyForfeitureExtVBAResponse> update_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext_key, policy_forfeiture_ext)

Update PolicyForfeitureExt

Updates a specific PolicyForfeitureExt.

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

api_instance = Vba::PolicyForfeitureExtApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
policy_forfeiture_ext_key = 56 # Integer | PolicyForfeitureExt Key
policy_forfeiture_ext = Vba::PolicyForfeitureExt.new({policy_forfeiture_ext_key: 37}) # PolicyForfeitureExt | 

begin
  # Update PolicyForfeitureExt
  result = api_instance.update_policy_forfeiture_ext(vbasoftware_database, policy_forfeiture_ext_key, policy_forfeiture_ext)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->update_policy_forfeiture_ext: #{e}"
end
```

#### Using the update_policy_forfeiture_ext_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PolicyForfeitureExtVBAResponse>, Integer, Hash)> update_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext_key, policy_forfeiture_ext)

```ruby
begin
  # Update PolicyForfeitureExt
  data, status_code, headers = api_instance.update_policy_forfeiture_ext_with_http_info(vbasoftware_database, policy_forfeiture_ext_key, policy_forfeiture_ext)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PolicyForfeitureExtVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PolicyForfeitureExtApi->update_policy_forfeiture_ext_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **policy_forfeiture_ext_key** | **Integer** | PolicyForfeitureExt Key |  |
| **policy_forfeiture_ext** | [**PolicyForfeitureExt**](PolicyForfeitureExt.md) |  |  |

### Return type

[**PolicyForfeitureExtVBAResponse**](PolicyForfeitureExtVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

