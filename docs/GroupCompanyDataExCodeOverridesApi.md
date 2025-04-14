# Vba::GroupCompanyDataExCodeOverridesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_company_data_ex_code_override**](GroupCompanyDataExCodeOverridesApi.md#create_group_company_data_ex_code_override) | **POST** /groups/{groupID}/company-data-ex-code-overrides | Create GroupCompanyDataExCodeOverride |
| [**delete_group_company_data_ex_code_override**](GroupCompanyDataExCodeOverridesApi.md#delete_group_company_data_ex_code_override) | **DELETE** /groups/{groupID}/company-data-ex-code-overrides/{groupCompanyDataExCodeOverrideKey} | Delete GroupCompanyDataExCodeOverride |
| [**get_group_company_data_ex_code_override**](GroupCompanyDataExCodeOverridesApi.md#get_group_company_data_ex_code_override) | **GET** /groups/{groupID}/company-data-ex-code-overrides/{groupCompanyDataExCodeOverrideKey} | Get GroupCompanyDataExCodeOverride |
| [**list_group_company_data_ex_code_override**](GroupCompanyDataExCodeOverridesApi.md#list_group_company_data_ex_code_override) | **GET** /groups/{groupID}/company-data-ex-code-overrides | List GroupCompanyDataExCodeOverride |
| [**update_batch_group_company_data_ex_code_override**](GroupCompanyDataExCodeOverridesApi.md#update_batch_group_company_data_ex_code_override) | **PUT** /groups/{groupID}/company-data-ex-code-overrides-batch | Create or Update Batch GroupCompanyDataExCodeOverride |
| [**update_group_company_data_ex_code_override**](GroupCompanyDataExCodeOverridesApi.md#update_group_company_data_ex_code_override) | **PUT** /groups/{groupID}/company-data-ex-code-overrides/{groupCompanyDataExCodeOverrideKey} | Update GroupCompanyDataExCodeOverride |


## create_group_company_data_ex_code_override

> <GroupCompanyDataExCodeOverrideVBAResponse> create_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override)

Create GroupCompanyDataExCodeOverride

Creates a new GroupCompanyDataExCodeOverride

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

api_instance = Vba::GroupCompanyDataExCodeOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_company_data_ex_code_override = Vba::GroupCompanyDataExCodeOverride.new({group_company_data_ex_code_override_key: 37, company_data_ex_code_field: 'company_data_ex_code_field_example', group_id: 'group_id_example'}) # GroupCompanyDataExCodeOverride | 

begin
  # Create GroupCompanyDataExCodeOverride
  result = api_instance.create_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->create_group_company_data_ex_code_override: #{e}"
end
```

#### Using the create_group_company_data_ex_code_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCompanyDataExCodeOverrideVBAResponse>, Integer, Hash)> create_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override)

```ruby
begin
  # Create GroupCompanyDataExCodeOverride
  data, status_code, headers = api_instance.create_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCompanyDataExCodeOverrideVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->create_group_company_data_ex_code_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_company_data_ex_code_override** | [**GroupCompanyDataExCodeOverride**](GroupCompanyDataExCodeOverride.md) |  |  |

### Return type

[**GroupCompanyDataExCodeOverrideVBAResponse**](GroupCompanyDataExCodeOverrideVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_company_data_ex_code_override

> delete_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override_key)

Delete GroupCompanyDataExCodeOverride

Deletes an GroupCompanyDataExCodeOverride

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

api_instance = Vba::GroupCompanyDataExCodeOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_company_data_ex_code_override_key = 56 # Integer | GroupCompanyDataExCodeOverride Key

begin
  # Delete GroupCompanyDataExCodeOverride
  api_instance.delete_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->delete_group_company_data_ex_code_override: #{e}"
end
```

#### Using the delete_group_company_data_ex_code_override_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override_key)

```ruby
begin
  # Delete GroupCompanyDataExCodeOverride
  data, status_code, headers = api_instance.delete_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->delete_group_company_data_ex_code_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_company_data_ex_code_override_key** | **Integer** | GroupCompanyDataExCodeOverride Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_company_data_ex_code_override

> <GroupCompanyDataExCodeOverrideVBAResponse> get_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override_key)

Get GroupCompanyDataExCodeOverride

Gets GroupCompanyDataExCodeOverride

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

api_instance = Vba::GroupCompanyDataExCodeOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_company_data_ex_code_override_key = 56 # Integer | GroupCompanyDataExCodeOverride Key

begin
  # Get GroupCompanyDataExCodeOverride
  result = api_instance.get_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->get_group_company_data_ex_code_override: #{e}"
end
```

#### Using the get_group_company_data_ex_code_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCompanyDataExCodeOverrideVBAResponse>, Integer, Hash)> get_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override_key)

```ruby
begin
  # Get GroupCompanyDataExCodeOverride
  data, status_code, headers = api_instance.get_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCompanyDataExCodeOverrideVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->get_group_company_data_ex_code_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_company_data_ex_code_override_key** | **Integer** | GroupCompanyDataExCodeOverride Key |  |

### Return type

[**GroupCompanyDataExCodeOverrideVBAResponse**](GroupCompanyDataExCodeOverrideVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_company_data_ex_code_override

> <GroupCompanyDataExCodeOverrideListVBAResponse> list_group_company_data_ex_code_override(vbasoftware_database, group_id, opts)

List GroupCompanyDataExCodeOverride

Lists all GroupCompanyDataExCodeOverride for the given groupID

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

api_instance = Vba::GroupCompanyDataExCodeOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupCompanyDataExCodeOverride
  result = api_instance.list_group_company_data_ex_code_override(vbasoftware_database, group_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->list_group_company_data_ex_code_override: #{e}"
end
```

#### Using the list_group_company_data_ex_code_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCompanyDataExCodeOverrideListVBAResponse>, Integer, Hash)> list_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, opts)

```ruby
begin
  # List GroupCompanyDataExCodeOverride
  data, status_code, headers = api_instance.list_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCompanyDataExCodeOverrideListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->list_group_company_data_ex_code_override_with_http_info: #{e}"
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

[**GroupCompanyDataExCodeOverrideListVBAResponse**](GroupCompanyDataExCodeOverrideListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_company_data_ex_code_override

> <MultiCodeResponseListVBAResponse> update_batch_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override)

Create or Update Batch GroupCompanyDataExCodeOverride

Create or Update multiple GroupCompanyDataExCodeOverride at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupCompanyDataExCodeOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_company_data_ex_code_override = [Vba::GroupCompanyDataExCodeOverride.new({group_company_data_ex_code_override_key: 37, company_data_ex_code_field: 'company_data_ex_code_field_example', group_id: 'group_id_example'})] # Array<GroupCompanyDataExCodeOverride> | 

begin
  # Create or Update Batch GroupCompanyDataExCodeOverride
  result = api_instance.update_batch_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->update_batch_group_company_data_ex_code_override: #{e}"
end
```

#### Using the update_batch_group_company_data_ex_code_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override)

```ruby
begin
  # Create or Update Batch GroupCompanyDataExCodeOverride
  data, status_code, headers = api_instance.update_batch_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->update_batch_group_company_data_ex_code_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_company_data_ex_code_override** | [**Array&lt;GroupCompanyDataExCodeOverride&gt;**](GroupCompanyDataExCodeOverride.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_company_data_ex_code_override

> <GroupCompanyDataExCodeOverrideVBAResponse> update_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override_key, group_company_data_ex_code_override)

Update GroupCompanyDataExCodeOverride

Updates a specific GroupCompanyDataExCodeOverride.

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

api_instance = Vba::GroupCompanyDataExCodeOverridesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
group_company_data_ex_code_override_key = 56 # Integer | GroupCompanyDataExCodeOverride Key
group_company_data_ex_code_override = Vba::GroupCompanyDataExCodeOverride.new({group_company_data_ex_code_override_key: 37, company_data_ex_code_field: 'company_data_ex_code_field_example', group_id: 'group_id_example'}) # GroupCompanyDataExCodeOverride | 

begin
  # Update GroupCompanyDataExCodeOverride
  result = api_instance.update_group_company_data_ex_code_override(vbasoftware_database, group_id, group_company_data_ex_code_override_key, group_company_data_ex_code_override)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->update_group_company_data_ex_code_override: #{e}"
end
```

#### Using the update_group_company_data_ex_code_override_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupCompanyDataExCodeOverrideVBAResponse>, Integer, Hash)> update_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override_key, group_company_data_ex_code_override)

```ruby
begin
  # Update GroupCompanyDataExCodeOverride
  data, status_code, headers = api_instance.update_group_company_data_ex_code_override_with_http_info(vbasoftware_database, group_id, group_company_data_ex_code_override_key, group_company_data_ex_code_override)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupCompanyDataExCodeOverrideVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupCompanyDataExCodeOverridesApi->update_group_company_data_ex_code_override_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **group_company_data_ex_code_override_key** | **Integer** | GroupCompanyDataExCodeOverride Key |  |
| **group_company_data_ex_code_override** | [**GroupCompanyDataExCodeOverride**](GroupCompanyDataExCodeOverride.md) |  |  |

### Return type

[**GroupCompanyDataExCodeOverrideVBAResponse**](GroupCompanyDataExCodeOverrideVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

