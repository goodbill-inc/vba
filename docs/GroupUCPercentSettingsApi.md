# Vba::GroupUCPercentSettingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_uc_percent**](GroupUCPercentSettingsApi.md#create_group_uc_percent) | **POST** /groups/{groupID}/uc-percent-settings | Create GroupUCPercent |
| [**delete_group_uc_percent**](GroupUCPercentSettingsApi.md#delete_group_uc_percent) | **DELETE** /groups/{groupID}/uc-percent-settings/{groupUCPercentKey} | Delete GroupUCPercent |
| [**get_group_uc_percent**](GroupUCPercentSettingsApi.md#get_group_uc_percent) | **GET** /groups/{groupID}/uc-percent-settings/{groupUCPercentKey} | Get GroupUCPercent |
| [**list_group_uc_percent**](GroupUCPercentSettingsApi.md#list_group_uc_percent) | **GET** /groups/{groupID}/uc-percent-settings | List GroupUCPercent |
| [**update_batch_group_uc_percent**](GroupUCPercentSettingsApi.md#update_batch_group_uc_percent) | **PUT** /groups/{groupID}/uc-percent-settings-batch | Create or Update Batch GroupUCPercent |
| [**update_group_uc_percent**](GroupUCPercentSettingsApi.md#update_group_uc_percent) | **PUT** /groups/{groupID}/uc-percent-settings/{groupUCPercentKey} | Update GroupUCPercent |


## create_group_uc_percent

> <GroupUCPercentVBAResponse> create_group_uc_percent(vbasoftware_database, group_id, group_uc_percent)

Create GroupUCPercent

Creates a new GroupUCPercent

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

api_instance = Vba::GroupUCPercentSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_uc_percent = Vba::GroupUCPercent.new({group_uc_percent_key: 37, claim_type: 'claim_type_example', group_id: 'group_id_example', use_custom_percent: false}) # GroupUCPercent | 

begin
  # Create GroupUCPercent
  result = api_instance.create_group_uc_percent(vbasoftware_database, group_id, group_uc_percent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->create_group_uc_percent: #{e}"
end
```

#### Using the create_group_uc_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentVBAResponse>, Integer, Hash)> create_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent)

```ruby
begin
  # Create GroupUCPercent
  data, status_code, headers = api_instance.create_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->create_group_uc_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_uc_percent** | [**GroupUCPercent**](GroupUCPercent.md) |  |  |

### Return type

[**GroupUCPercentVBAResponse**](GroupUCPercentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_uc_percent

> delete_group_uc_percent(vbasoftware_database, group_id, group_uc_percent_key)

Delete GroupUCPercent

Deletes an GroupUCPercent

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

api_instance = Vba::GroupUCPercentSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_uc_percent_key = 56 # Integer | GroupUCPercent Key

begin
  # Delete GroupUCPercent
  api_instance.delete_group_uc_percent(vbasoftware_database, group_id, group_uc_percent_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->delete_group_uc_percent: #{e}"
end
```

#### Using the delete_group_uc_percent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent_key)

```ruby
begin
  # Delete GroupUCPercent
  data, status_code, headers = api_instance.delete_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->delete_group_uc_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_uc_percent_key** | **Integer** | GroupUCPercent Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_uc_percent

> <GroupUCPercentVBAResponse> get_group_uc_percent(vbasoftware_database, group_id, group_uc_percent_key)

Get GroupUCPercent

Gets GroupUCPercent

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

api_instance = Vba::GroupUCPercentSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_uc_percent_key = 56 # Integer | GroupUCPercent Key

begin
  # Get GroupUCPercent
  result = api_instance.get_group_uc_percent(vbasoftware_database, group_id, group_uc_percent_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->get_group_uc_percent: #{e}"
end
```

#### Using the get_group_uc_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentVBAResponse>, Integer, Hash)> get_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent_key)

```ruby
begin
  # Get GroupUCPercent
  data, status_code, headers = api_instance.get_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->get_group_uc_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_uc_percent_key** | **Integer** | GroupUCPercent Key |  |

### Return type

[**GroupUCPercentVBAResponse**](GroupUCPercentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_uc_percent

> <GroupUCPercentListVBAResponse> list_group_uc_percent(vbasoftware_database, group_id, opts)

List GroupUCPercent

Lists all GroupUCPercent for the given groupID

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

api_instance = Vba::GroupUCPercentSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupUCPercent
  result = api_instance.list_group_uc_percent(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->list_group_uc_percent: #{e}"
end
```

#### Using the list_group_uc_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentListVBAResponse>, Integer, Hash)> list_group_uc_percent_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupUCPercent
  data, status_code, headers = api_instance.list_group_uc_percent_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->list_group_uc_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupUCPercentListVBAResponse**](GroupUCPercentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_uc_percent

> <MultiCodeResponseListVBAResponse> update_batch_group_uc_percent(vbasoftware_database, group_id, group_uc_percent)

Create or Update Batch GroupUCPercent

Create or Update multiple GroupUCPercent at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupUCPercentSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_uc_percent = [Vba::GroupUCPercent.new({group_uc_percent_key: 37, claim_type: 'claim_type_example', group_id: 'group_id_example', use_custom_percent: false})] # Array<GroupUCPercent> | 

begin
  # Create or Update Batch GroupUCPercent
  result = api_instance.update_batch_group_uc_percent(vbasoftware_database, group_id, group_uc_percent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->update_batch_group_uc_percent: #{e}"
end
```

#### Using the update_batch_group_uc_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent)

```ruby
begin
  # Create or Update Batch GroupUCPercent
  data, status_code, headers = api_instance.update_batch_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->update_batch_group_uc_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_uc_percent** | [**Array&lt;GroupUCPercent&gt;**](GroupUCPercent.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_uc_percent

> <GroupUCPercentVBAResponse> update_group_uc_percent(vbasoftware_database, group_id, group_uc_percent_key, group_uc_percent)

Update GroupUCPercent

Updates a specific GroupUCPercent.

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

api_instance = Vba::GroupUCPercentSettingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_uc_percent_key = 56 # Integer | GroupUCPercent Key
group_uc_percent = Vba::GroupUCPercent.new({group_uc_percent_key: 37, claim_type: 'claim_type_example', group_id: 'group_id_example', use_custom_percent: false}) # GroupUCPercent | 

begin
  # Update GroupUCPercent
  result = api_instance.update_group_uc_percent(vbasoftware_database, group_id, group_uc_percent_key, group_uc_percent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->update_group_uc_percent: #{e}"
end
```

#### Using the update_group_uc_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupUCPercentVBAResponse>, Integer, Hash)> update_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent_key, group_uc_percent)

```ruby
begin
  # Update GroupUCPercent
  data, status_code, headers = api_instance.update_group_uc_percent_with_http_info(vbasoftware_database, group_id, group_uc_percent_key, group_uc_percent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupUCPercentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupUCPercentSettingsApi->update_group_uc_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_uc_percent_key** | **Integer** | GroupUCPercent Key |  |
| **group_uc_percent** | [**GroupUCPercent**](GroupUCPercent.md) |  |  |

### Return type

[**GroupUCPercentVBAResponse**](GroupUCPercentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

