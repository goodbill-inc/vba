# Vba::GroupPayorAccountProviderFederalIDsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_payor_account_provider_federal**](GroupPayorAccountProviderFederalIDsApi.md#create_group_payor_account_provider_federal) | **POST** /groups/{groupID}/payor-account-settings/{settingID}/federal-ids | Create GroupPayorAccountProviderFederal |
| [**delete_group_payor_account_provider_federal**](GroupPayorAccountProviderFederalIDsApi.md#delete_group_payor_account_provider_federal) | **DELETE** /groups/{groupID}/payor-account-settings/{settingID}/federal-ids/{federalID} | Delete GroupPayorAccountProviderFederal |
| [**get_group_payor_account_provider_federal**](GroupPayorAccountProviderFederalIDsApi.md#get_group_payor_account_provider_federal) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/federal-ids/{federalID} | Get GroupPayorAccountProviderFederal |
| [**list_group_payor_account_provider_federal**](GroupPayorAccountProviderFederalIDsApi.md#list_group_payor_account_provider_federal) | **GET** /groups/{groupID}/payor-account-settings/{settingID}/federal-ids | List GroupPayorAccountProviderFederal |
| [**update_batch_group_payor_account_provider_federal**](GroupPayorAccountProviderFederalIDsApi.md#update_batch_group_payor_account_provider_federal) | **PUT** /groups/{groupID}/payor-account-settings/{settingID}/federal-ids-batch | Create or Update Batch GroupPayorAccountProviderFederal |


## create_group_payor_account_provider_federal

> <GroupPayorAccountProviderFederalVBAResponse> create_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)

Create GroupPayorAccountProviderFederal

Creates a new GroupPayorAccountProviderFederal

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

api_instance = Vba::GroupPayorAccountProviderFederalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_provider_federal = Vba::GroupPayorAccountProviderFederal.new({group_id: 'group_id_example', setting_id: 'setting_id_example', federal_id: 'federal_id_example'}) # GroupPayorAccountProviderFederal | 

begin
  # Create GroupPayorAccountProviderFederal
  result = api_instance.create_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->create_group_payor_account_provider_federal: #{e}"
end
```

#### Using the create_group_payor_account_provider_federal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountProviderFederalVBAResponse>, Integer, Hash)> create_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)

```ruby
begin
  # Create GroupPayorAccountProviderFederal
  data, status_code, headers = api_instance.create_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountProviderFederalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->create_group_payor_account_provider_federal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_provider_federal** | [**GroupPayorAccountProviderFederal**](GroupPayorAccountProviderFederal.md) |  |  |

### Return type

[**GroupPayorAccountProviderFederalVBAResponse**](GroupPayorAccountProviderFederalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_payor_account_provider_federal

> delete_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, federal_id)

Delete GroupPayorAccountProviderFederal

Deletes an GroupPayorAccountProviderFederal

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

api_instance = Vba::GroupPayorAccountProviderFederalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
federal_id = 'federal_id_example' # String | Federal ID

begin
  # Delete GroupPayorAccountProviderFederal
  api_instance.delete_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, federal_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->delete_group_payor_account_provider_federal: #{e}"
end
```

#### Using the delete_group_payor_account_provider_federal_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, federal_id)

```ruby
begin
  # Delete GroupPayorAccountProviderFederal
  data, status_code, headers = api_instance.delete_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, federal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->delete_group_payor_account_provider_federal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **federal_id** | **String** | Federal ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_payor_account_provider_federal

> <GroupPayorAccountProviderFederalVBAResponse> get_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, federal_id)

Get GroupPayorAccountProviderFederal

Gets GroupPayorAccountProviderFederal

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

api_instance = Vba::GroupPayorAccountProviderFederalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
federal_id = 'federal_id_example' # String | Federal ID

begin
  # Get GroupPayorAccountProviderFederal
  result = api_instance.get_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, federal_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->get_group_payor_account_provider_federal: #{e}"
end
```

#### Using the get_group_payor_account_provider_federal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountProviderFederalVBAResponse>, Integer, Hash)> get_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, federal_id)

```ruby
begin
  # Get GroupPayorAccountProviderFederal
  data, status_code, headers = api_instance.get_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, federal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountProviderFederalVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->get_group_payor_account_provider_federal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **federal_id** | **String** | Federal ID |  |

### Return type

[**GroupPayorAccountProviderFederalVBAResponse**](GroupPayorAccountProviderFederalVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_payor_account_provider_federal

> <GroupPayorAccountProviderFederalListVBAResponse> list_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, opts)

List GroupPayorAccountProviderFederal

Lists all GroupPayorAccountProviderFederal for the given groupID and settingID

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

api_instance = Vba::GroupPayorAccountProviderFederalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupPayorAccountProviderFederal
  result = api_instance.list_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->list_group_payor_account_provider_federal: #{e}"
end
```

#### Using the list_group_payor_account_provider_federal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupPayorAccountProviderFederalListVBAResponse>, Integer, Hash)> list_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, opts)

```ruby
begin
  # List GroupPayorAccountProviderFederal
  data, status_code, headers = api_instance.list_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupPayorAccountProviderFederalListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->list_group_payor_account_provider_federal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupPayorAccountProviderFederalListVBAResponse**](GroupPayorAccountProviderFederalListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_payor_account_provider_federal

> <MultiCodeResponseListVBAResponse> update_batch_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)

Create or Update Batch GroupPayorAccountProviderFederal

Create or Update multiple GroupPayorAccountProviderFederal at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupPayorAccountProviderFederalIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
setting_id = 'setting_id_example' # String | Setting ID
group_payor_account_provider_federal = [Vba::GroupPayorAccountProviderFederal.new({group_id: 'group_id_example', setting_id: 'setting_id_example', federal_id: 'federal_id_example'})] # Array<GroupPayorAccountProviderFederal> | 

begin
  # Create or Update Batch GroupPayorAccountProviderFederal
  result = api_instance.update_batch_group_payor_account_provider_federal(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->update_batch_group_payor_account_provider_federal: #{e}"
end
```

#### Using the update_batch_group_payor_account_provider_federal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)

```ruby
begin
  # Create or Update Batch GroupPayorAccountProviderFederal
  data, status_code, headers = api_instance.update_batch_group_payor_account_provider_federal_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_provider_federal)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupPayorAccountProviderFederalIDsApi->update_batch_group_payor_account_provider_federal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **setting_id** | **String** | Setting ID |  |
| **group_payor_account_provider_federal** | [**Array&lt;GroupPayorAccountProviderFederal&gt;**](GroupPayorAccountProviderFederal.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

