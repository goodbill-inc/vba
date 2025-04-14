# Vba::ProviderRolesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_role**](ProviderRolesApi.md#create_provider_role) | **POST** /provider-roles | Create ProviderRole |
| [**delete_provider_role**](ProviderRolesApi.md#delete_provider_role) | **DELETE** /provider-roles/{providerRoleID} | Delete ProviderRole |
| [**get_provider_role**](ProviderRolesApi.md#get_provider_role) | **GET** /provider-roles/{providerRoleID} | Get ProviderRole |
| [**list_provider_role**](ProviderRolesApi.md#list_provider_role) | **GET** /provider-roles | List ProviderRole |
| [**update_batch_provider_role**](ProviderRolesApi.md#update_batch_provider_role) | **PUT** /provider-roles-batch | Create or Update Batch ProviderRole |
| [**update_provider_role**](ProviderRolesApi.md#update_provider_role) | **PUT** /provider-roles/{providerRoleID} | Update ProviderRole |


## create_provider_role

> <ProviderRoleVBAResponse> create_provider_role(vbasoftware_database, provider_role)

Create ProviderRole

Creates a new ProviderRole

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

api_instance = Vba::ProviderRolesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_role = Vba::ProviderRole.new({provider_role_id: 'provider_role_id_example'}) # ProviderRole | 

begin
  # Create ProviderRole
  result = api_instance.create_provider_role(vbasoftware_database, provider_role)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->create_provider_role: #{e}"
end
```

#### Using the create_provider_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRoleVBAResponse>, Integer, Hash)> create_provider_role_with_http_info(vbasoftware_database, provider_role)

```ruby
begin
  # Create ProviderRole
  data, status_code, headers = api_instance.create_provider_role_with_http_info(vbasoftware_database, provider_role)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRoleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->create_provider_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_role** | [**ProviderRole**](ProviderRole.md) |  |  |

### Return type

[**ProviderRoleVBAResponse**](ProviderRoleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_role

> delete_provider_role(vbasoftware_database, provider_role_id)

Delete ProviderRole

Deletes an ProviderRole

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

api_instance = Vba::ProviderRolesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_role_id = 'provider_role_id_example' # String | Provider Role ID

begin
  # Delete ProviderRole
  api_instance.delete_provider_role(vbasoftware_database, provider_role_id)
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->delete_provider_role: #{e}"
end
```

#### Using the delete_provider_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_role_with_http_info(vbasoftware_database, provider_role_id)

```ruby
begin
  # Delete ProviderRole
  data, status_code, headers = api_instance.delete_provider_role_with_http_info(vbasoftware_database, provider_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->delete_provider_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_role_id** | **String** | Provider Role ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_provider_role

> <ProviderRoleVBAResponse> get_provider_role(vbasoftware_database, provider_role_id)

Get ProviderRole

Gets ProviderRole

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

api_instance = Vba::ProviderRolesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_role_id = 'provider_role_id_example' # String | Provider Role ID

begin
  # Get ProviderRole
  result = api_instance.get_provider_role(vbasoftware_database, provider_role_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->get_provider_role: #{e}"
end
```

#### Using the get_provider_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRoleVBAResponse>, Integer, Hash)> get_provider_role_with_http_info(vbasoftware_database, provider_role_id)

```ruby
begin
  # Get ProviderRole
  data, status_code, headers = api_instance.get_provider_role_with_http_info(vbasoftware_database, provider_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRoleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->get_provider_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_role_id** | **String** | Provider Role ID |  |

### Return type

[**ProviderRoleVBAResponse**](ProviderRoleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_role

> <ProviderRoleListVBAResponse> list_provider_role(vbasoftware_database, opts)

List ProviderRole

Lists all ProviderRole

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

api_instance = Vba::ProviderRolesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderRole
  result = api_instance.list_provider_role(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->list_provider_role: #{e}"
end
```

#### Using the list_provider_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRoleListVBAResponse>, Integer, Hash)> list_provider_role_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ProviderRole
  data, status_code, headers = api_instance.list_provider_role_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRoleListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->list_provider_role_with_http_info: #{e}"
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

[**ProviderRoleListVBAResponse**](ProviderRoleListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_role

> <MultiCodeResponseListVBAResponse> update_batch_provider_role(vbasoftware_database, provider_role)

Create or Update Batch ProviderRole

Create or Update multiple ProviderRole at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderRolesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_role = [Vba::ProviderRole.new({provider_role_id: 'provider_role_id_example'})] # Array<ProviderRole> | 

begin
  # Create or Update Batch ProviderRole
  result = api_instance.update_batch_provider_role(vbasoftware_database, provider_role)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->update_batch_provider_role: #{e}"
end
```

#### Using the update_batch_provider_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_role_with_http_info(vbasoftware_database, provider_role)

```ruby
begin
  # Create or Update Batch ProviderRole
  data, status_code, headers = api_instance.update_batch_provider_role_with_http_info(vbasoftware_database, provider_role)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->update_batch_provider_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_role** | [**Array&lt;ProviderRole&gt;**](ProviderRole.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_role

> <ProviderRoleVBAResponse> update_provider_role(vbasoftware_database, provider_role_id, provider_role)

Update ProviderRole

Updates a specific ProviderRole.

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

api_instance = Vba::ProviderRolesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_role_id = 'provider_role_id_example' # String | Provider Role ID
provider_role = Vba::ProviderRole.new({provider_role_id: 'provider_role_id_example'}) # ProviderRole | 

begin
  # Update ProviderRole
  result = api_instance.update_provider_role(vbasoftware_database, provider_role_id, provider_role)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->update_provider_role: #{e}"
end
```

#### Using the update_provider_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRoleVBAResponse>, Integer, Hash)> update_provider_role_with_http_info(vbasoftware_database, provider_role_id, provider_role)

```ruby
begin
  # Update ProviderRole
  data, status_code, headers = api_instance.update_provider_role_with_http_info(vbasoftware_database, provider_role_id, provider_role)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRoleVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderRolesApi->update_provider_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_role_id** | **String** | Provider Role ID |  |
| **provider_role** | [**ProviderRole**](ProviderRole.md) |  |  |

### Return type

[**ProviderRoleVBAResponse**](ProviderRoleVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

