# Vba::ReinsuranceOptionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reinsurance_option**](ReinsuranceOptionsApi.md#create_reinsurance_option) | **POST** /reinsurance-options | Create ReinsuranceOption |
| [**delete_reinsurance_option**](ReinsuranceOptionsApi.md#delete_reinsurance_option) | **DELETE** /reinsurance-options/{reinsuranceOption} | Delete ReinsuranceOption |
| [**get_reinsurance_option**](ReinsuranceOptionsApi.md#get_reinsurance_option) | **GET** /reinsurance-options/{reinsuranceOption} | Get ReinsuranceOption |
| [**list_reinsurance_option**](ReinsuranceOptionsApi.md#list_reinsurance_option) | **GET** /reinsurance-options | List ReinsuranceOption |
| [**update_batch_reinsurance_option**](ReinsuranceOptionsApi.md#update_batch_reinsurance_option) | **PUT** /reinsurance-options-batch | Create Batch ReinsuranceOption |


## create_reinsurance_option

> <ReinsuranceOptionVBAResponse> create_reinsurance_option(vbasoftware_database, reinsurance_option)

Create ReinsuranceOption

Creates a new ReinsuranceOption

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

api_instance = Vba::ReinsuranceOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reinsurance_option = Vba::ReinsuranceOption.new({reinsurance_option: 'reinsurance_option_example'}) # ReinsuranceOption | 

begin
  # Create ReinsuranceOption
  result = api_instance.create_reinsurance_option(vbasoftware_database, reinsurance_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->create_reinsurance_option: #{e}"
end
```

#### Using the create_reinsurance_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsuranceOptionVBAResponse>, Integer, Hash)> create_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)

```ruby
begin
  # Create ReinsuranceOption
  data, status_code, headers = api_instance.create_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsuranceOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->create_reinsurance_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reinsurance_option** | [**ReinsuranceOption**](ReinsuranceOption.md) |  |  |

### Return type

[**ReinsuranceOptionVBAResponse**](ReinsuranceOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_reinsurance_option

> delete_reinsurance_option(vbasoftware_database, reinsurance_option)

Delete ReinsuranceOption

Deletes an ReinsuranceOption

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

api_instance = Vba::ReinsuranceOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reinsurance_option = 'reinsurance_option_example' # String | Reinsurance Option

begin
  # Delete ReinsuranceOption
  api_instance.delete_reinsurance_option(vbasoftware_database, reinsurance_option)
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->delete_reinsurance_option: #{e}"
end
```

#### Using the delete_reinsurance_option_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)

```ruby
begin
  # Delete ReinsuranceOption
  data, status_code, headers = api_instance.delete_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->delete_reinsurance_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reinsurance_option** | **String** | Reinsurance Option |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_reinsurance_option

> <ReinsuranceOptionVBAResponse> get_reinsurance_option(vbasoftware_database, reinsurance_option)

Get ReinsuranceOption

Gets ReinsuranceOption

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

api_instance = Vba::ReinsuranceOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reinsurance_option = 'reinsurance_option_example' # String | Reinsurance Option

begin
  # Get ReinsuranceOption
  result = api_instance.get_reinsurance_option(vbasoftware_database, reinsurance_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->get_reinsurance_option: #{e}"
end
```

#### Using the get_reinsurance_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsuranceOptionVBAResponse>, Integer, Hash)> get_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)

```ruby
begin
  # Get ReinsuranceOption
  data, status_code, headers = api_instance.get_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsuranceOptionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->get_reinsurance_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reinsurance_option** | **String** | Reinsurance Option |  |

### Return type

[**ReinsuranceOptionVBAResponse**](ReinsuranceOptionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_reinsurance_option

> <ReinsuranceOptionListVBAResponse> list_reinsurance_option(vbasoftware_database, opts)

List ReinsuranceOption

Lists all ReinsuranceOption

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

api_instance = Vba::ReinsuranceOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ReinsuranceOption
  result = api_instance.list_reinsurance_option(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->list_reinsurance_option: #{e}"
end
```

#### Using the list_reinsurance_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReinsuranceOptionListVBAResponse>, Integer, Hash)> list_reinsurance_option_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ReinsuranceOption
  data, status_code, headers = api_instance.list_reinsurance_option_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReinsuranceOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->list_reinsurance_option_with_http_info: #{e}"
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

[**ReinsuranceOptionListVBAResponse**](ReinsuranceOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_reinsurance_option

> <MultiCodeResponseListVBAResponse> update_batch_reinsurance_option(vbasoftware_database, reinsurance_option)

Create Batch ReinsuranceOption

Create multiple ReinsuranceOption at once.  If the entity exists, an error will be returned.  If the entity does not exist, it will be created.

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

api_instance = Vba::ReinsuranceOptionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
reinsurance_option = [Vba::ReinsuranceOption.new({reinsurance_option: 'reinsurance_option_example'})] # Array<ReinsuranceOption> | 

begin
  # Create Batch ReinsuranceOption
  result = api_instance.update_batch_reinsurance_option(vbasoftware_database, reinsurance_option)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->update_batch_reinsurance_option: #{e}"
end
```

#### Using the update_batch_reinsurance_option_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)

```ruby
begin
  # Create Batch ReinsuranceOption
  data, status_code, headers = api_instance.update_batch_reinsurance_option_with_http_info(vbasoftware_database, reinsurance_option)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ReinsuranceOptionsApi->update_batch_reinsurance_option_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **reinsurance_option** | [**Array&lt;ReinsuranceOption&gt;**](ReinsuranceOption.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

