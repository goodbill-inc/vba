# Vba::GroupDivisionCaptivesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_division_captive**](GroupDivisionCaptivesApi.md#create_group_division_captive) | **POST** /group-division-captives | Create GroupDivisionCaptive |
| [**delete_group_division_captive**](GroupDivisionCaptivesApi.md#delete_group_division_captive) | **DELETE** /group-division-captives/{groupDivisionCaptive1} | Delete GroupDivisionCaptive |
| [**get_group_division_captive**](GroupDivisionCaptivesApi.md#get_group_division_captive) | **GET** /group-division-captives/{groupDivisionCaptive1} | Get GroupDivisionCaptive |
| [**list_group_division_captive**](GroupDivisionCaptivesApi.md#list_group_division_captive) | **GET** /group-division-captives | List GroupDivisionCaptive |
| [**update_batch_group_division_captive**](GroupDivisionCaptivesApi.md#update_batch_group_division_captive) | **PUT** /group-division-captives-batch | Create or Update Batch GroupDivisionCaptive |
| [**update_group_division_captive**](GroupDivisionCaptivesApi.md#update_group_division_captive) | **PUT** /group-division-captives/{groupDivisionCaptive1} | Update GroupDivisionCaptive |


## create_group_division_captive

> <GroupDivisionCaptiveVBAResponse> create_group_division_captive(vbasoftware_database, group_division_captive)

Create GroupDivisionCaptive

Creates a new GroupDivisionCaptive

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

api_instance = Vba::GroupDivisionCaptivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_division_captive = Vba::GroupDivisionCaptive.new({group_division_captive1: 'group_division_captive1_example'}) # GroupDivisionCaptive | 

begin
  # Create GroupDivisionCaptive
  result = api_instance.create_group_division_captive(vbasoftware_database, group_division_captive)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->create_group_division_captive: #{e}"
end
```

#### Using the create_group_division_captive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCaptiveVBAResponse>, Integer, Hash)> create_group_division_captive_with_http_info(vbasoftware_database, group_division_captive)

```ruby
begin
  # Create GroupDivisionCaptive
  data, status_code, headers = api_instance.create_group_division_captive_with_http_info(vbasoftware_database, group_division_captive)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCaptiveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->create_group_division_captive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_division_captive** | [**GroupDivisionCaptive**](GroupDivisionCaptive.md) |  |  |

### Return type

[**GroupDivisionCaptiveVBAResponse**](GroupDivisionCaptiveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_division_captive

> delete_group_division_captive(vbasoftware_database, group_division_captive1)

Delete GroupDivisionCaptive

Deletes an GroupDivisionCaptive

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

api_instance = Vba::GroupDivisionCaptivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_division_captive1 = 'group_division_captive1_example' # String | GroupDivisionCaptive1

begin
  # Delete GroupDivisionCaptive
  api_instance.delete_group_division_captive(vbasoftware_database, group_division_captive1)
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->delete_group_division_captive: #{e}"
end
```

#### Using the delete_group_division_captive_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_division_captive_with_http_info(vbasoftware_database, group_division_captive1)

```ruby
begin
  # Delete GroupDivisionCaptive
  data, status_code, headers = api_instance.delete_group_division_captive_with_http_info(vbasoftware_database, group_division_captive1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->delete_group_division_captive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_division_captive1** | **String** | GroupDivisionCaptive1 |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_division_captive

> <GroupDivisionCaptiveVBAResponse> get_group_division_captive(vbasoftware_database, group_division_captive1)

Get GroupDivisionCaptive

Gets GroupDivisionCaptive

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

api_instance = Vba::GroupDivisionCaptivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_division_captive1 = 'group_division_captive1_example' # String | GroupDivisionCaptive1

begin
  # Get GroupDivisionCaptive
  result = api_instance.get_group_division_captive(vbasoftware_database, group_division_captive1)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->get_group_division_captive: #{e}"
end
```

#### Using the get_group_division_captive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCaptiveVBAResponse>, Integer, Hash)> get_group_division_captive_with_http_info(vbasoftware_database, group_division_captive1)

```ruby
begin
  # Get GroupDivisionCaptive
  data, status_code, headers = api_instance.get_group_division_captive_with_http_info(vbasoftware_database, group_division_captive1)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCaptiveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->get_group_division_captive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_division_captive1** | **String** | GroupDivisionCaptive1 |  |

### Return type

[**GroupDivisionCaptiveVBAResponse**](GroupDivisionCaptiveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_division_captive

> <GroupDivisionCaptiveListVBAResponse> list_group_division_captive(vbasoftware_database, opts)

List GroupDivisionCaptive

Lists all GroupDivisionCaptive

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

api_instance = Vba::GroupDivisionCaptivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupDivisionCaptive
  result = api_instance.list_group_division_captive(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->list_group_division_captive: #{e}"
end
```

#### Using the list_group_division_captive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCaptiveListVBAResponse>, Integer, Hash)> list_group_division_captive_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupDivisionCaptive
  data, status_code, headers = api_instance.list_group_division_captive_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCaptiveListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->list_group_division_captive_with_http_info: #{e}"
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

[**GroupDivisionCaptiveListVBAResponse**](GroupDivisionCaptiveListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_division_captive

> <MultiCodeResponseListVBAResponse> update_batch_group_division_captive(vbasoftware_database, group_division_captive)

Create or Update Batch GroupDivisionCaptive

Create or Update multiple GroupDivisionCaptive at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupDivisionCaptivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_division_captive = [Vba::GroupDivisionCaptive.new({group_division_captive1: 'group_division_captive1_example'})] # Array<GroupDivisionCaptive> | 

begin
  # Create or Update Batch GroupDivisionCaptive
  result = api_instance.update_batch_group_division_captive(vbasoftware_database, group_division_captive)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->update_batch_group_division_captive: #{e}"
end
```

#### Using the update_batch_group_division_captive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_division_captive_with_http_info(vbasoftware_database, group_division_captive)

```ruby
begin
  # Create or Update Batch GroupDivisionCaptive
  data, status_code, headers = api_instance.update_batch_group_division_captive_with_http_info(vbasoftware_database, group_division_captive)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->update_batch_group_division_captive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_division_captive** | [**Array&lt;GroupDivisionCaptive&gt;**](GroupDivisionCaptive.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_division_captive

> <GroupDivisionCaptiveVBAResponse> update_group_division_captive(vbasoftware_database, group_division_captive1, group_division_captive)

Update GroupDivisionCaptive

Updates a specific GroupDivisionCaptive.

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

api_instance = Vba::GroupDivisionCaptivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_division_captive1 = 'group_division_captive1_example' # String | GroupDivisionCaptive1
group_division_captive = Vba::GroupDivisionCaptive.new({group_division_captive1: 'group_division_captive1_example'}) # GroupDivisionCaptive | 

begin
  # Update GroupDivisionCaptive
  result = api_instance.update_group_division_captive(vbasoftware_database, group_division_captive1, group_division_captive)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->update_group_division_captive: #{e}"
end
```

#### Using the update_group_division_captive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCaptiveVBAResponse>, Integer, Hash)> update_group_division_captive_with_http_info(vbasoftware_database, group_division_captive1, group_division_captive)

```ruby
begin
  # Update GroupDivisionCaptive
  data, status_code, headers = api_instance.update_group_division_captive_with_http_info(vbasoftware_database, group_division_captive1, group_division_captive)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCaptiveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCaptivesApi->update_group_division_captive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_division_captive1** | **String** | GroupDivisionCaptive1 |  |
| **group_division_captive** | [**GroupDivisionCaptive**](GroupDivisionCaptive.md) |  |  |

### Return type

[**GroupDivisionCaptiveVBAResponse**](GroupDivisionCaptiveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

