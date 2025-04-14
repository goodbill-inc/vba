# Vba::GroupDivisionCobrasApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_division_cobra**](GroupDivisionCobrasApi.md#create_group_division_cobra) | **POST** /groups/{groupID}/divisions/{divisionID}/cobra-divisions/{cobraDivisionID} | Create GroupDivisionCobra |
| [**delete_group_division_cobra**](GroupDivisionCobrasApi.md#delete_group_division_cobra) | **DELETE** /groups/{groupID}/divisions/{divisionID}/cobra-divisions/{cobraDivisionID} | Delete GroupDivisionCobra |
| [**get_group_division_cobra**](GroupDivisionCobrasApi.md#get_group_division_cobra) | **GET** /groups/{groupID}/divisions/{divisionID}/cobra-divisions/{cobraDivisionID} | Get GroupDivisionCobra |
| [**list_group_division_cobra**](GroupDivisionCobrasApi.md#list_group_division_cobra) | **GET** /groups/{groupID}/divisions/{divisionID}/cobra-divisions | List GroupDivisionCobra |
| [**update_batch_group_division_cobra**](GroupDivisionCobrasApi.md#update_batch_group_division_cobra) | **PUT** /groups/{groupID}/divisions/{divisionID}/cobra-divisions-batch | Create Batch GroupDivisionCobra |


## create_group_division_cobra

> <GroupDivisionCobraVBAResponse> create_group_division_cobra(vbasoftware_database, group_id, division_id, cobra_division_id)

Create GroupDivisionCobra

Creates a new GroupDivisionCobra

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

api_instance = Vba::GroupDivisionCobrasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
cobra_division_id = 'cobra_division_id_example' # String | Cobra Division ID

begin
  # Create GroupDivisionCobra
  result = api_instance.create_group_division_cobra(vbasoftware_database, group_id, division_id, cobra_division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->create_group_division_cobra: #{e}"
end
```

#### Using the create_group_division_cobra_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCobraVBAResponse>, Integer, Hash)> create_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, cobra_division_id)

```ruby
begin
  # Create GroupDivisionCobra
  data, status_code, headers = api_instance.create_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, cobra_division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCobraVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->create_group_division_cobra_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **cobra_division_id** | **String** | Cobra Division ID |  |

### Return type

[**GroupDivisionCobraVBAResponse**](GroupDivisionCobraVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## delete_group_division_cobra

> delete_group_division_cobra(vbasoftware_database, group_id, division_id, cobra_division_id)

Delete GroupDivisionCobra

Deletes an GroupDivisionCobra

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

api_instance = Vba::GroupDivisionCobrasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
cobra_division_id = 'cobra_division_id_example' # String | Cobra Division ID

begin
  # Delete GroupDivisionCobra
  api_instance.delete_group_division_cobra(vbasoftware_database, group_id, division_id, cobra_division_id)
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->delete_group_division_cobra: #{e}"
end
```

#### Using the delete_group_division_cobra_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, cobra_division_id)

```ruby
begin
  # Delete GroupDivisionCobra
  data, status_code, headers = api_instance.delete_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, cobra_division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->delete_group_division_cobra_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **cobra_division_id** | **String** | Cobra Division ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_division_cobra

> <GroupDivisionCobraVBAResponse> get_group_division_cobra(vbasoftware_database, group_id, division_id, cobra_division_id)

Get GroupDivisionCobra

Gets GroupDivisionCobra

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

api_instance = Vba::GroupDivisionCobrasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
cobra_division_id = 'cobra_division_id_example' # String | Cobra Division ID

begin
  # Get GroupDivisionCobra
  result = api_instance.get_group_division_cobra(vbasoftware_database, group_id, division_id, cobra_division_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->get_group_division_cobra: #{e}"
end
```

#### Using the get_group_division_cobra_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCobraVBAResponse>, Integer, Hash)> get_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, cobra_division_id)

```ruby
begin
  # Get GroupDivisionCobra
  data, status_code, headers = api_instance.get_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, cobra_division_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCobraVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->get_group_division_cobra_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **cobra_division_id** | **String** | Cobra Division ID |  |

### Return type

[**GroupDivisionCobraVBAResponse**](GroupDivisionCobraVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_division_cobra

> <GroupDivisionCobraListVBAResponse> list_group_division_cobra(vbasoftware_database, group_id, division_id, opts)

List GroupDivisionCobra

Lists all GroupDivisionCobra for the given groupID and divisionID

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

api_instance = Vba::GroupDivisionCobrasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupDivisionCobra
  result = api_instance.list_group_division_cobra(vbasoftware_database, group_id, division_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->list_group_division_cobra: #{e}"
end
```

#### Using the list_group_division_cobra_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDivisionCobraListVBAResponse>, Integer, Hash)> list_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, opts)

```ruby
begin
  # List GroupDivisionCobra
  data, status_code, headers = api_instance.list_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDivisionCobraListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->list_group_division_cobra_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupDivisionCobraListVBAResponse**](GroupDivisionCobraListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_division_cobra

> <MultiCodeResponseListVBAResponse> update_batch_group_division_cobra(vbasoftware_database, group_id, division_id, group_division_cobra)

Create Batch GroupDivisionCobra

Create multiple GroupDivisionCobra at once.  If the entity does not exist, it will be created.  If the entity already exists, an error will come back for that item.  These entities are not editable. Delete and recreate to edit.

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

api_instance = Vba::GroupDivisionCobrasApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_division_cobra = [Vba::GroupDivisionCobra.new({group_id: 'group_id_example', division_id: 'division_id_example', cobra_division_id: 'cobra_division_id_example'})] # Array<GroupDivisionCobra> | 

begin
  # Create Batch GroupDivisionCobra
  result = api_instance.update_batch_group_division_cobra(vbasoftware_database, group_id, division_id, group_division_cobra)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->update_batch_group_division_cobra: #{e}"
end
```

#### Using the update_batch_group_division_cobra_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, group_division_cobra)

```ruby
begin
  # Create Batch GroupDivisionCobra
  data, status_code, headers = api_instance.update_batch_group_division_cobra_with_http_info(vbasoftware_database, group_id, division_id, group_division_cobra)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupDivisionCobrasApi->update_batch_group_division_cobra_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_division_cobra** | [**Array&lt;GroupDivisionCobra&gt;**](GroupDivisionCobra.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

