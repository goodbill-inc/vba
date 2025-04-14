# Vba::NetworkProfileAssignmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_profile_assign**](NetworkProfileAssignmentsApi.md#create_network_profile_assign) | **POST** /network-profile-assignments | Create NetworkProfileAssign |
| [**delete_network_profile_assign**](NetworkProfileAssignmentsApi.md#delete_network_profile_assign) | **DELETE** /network-profiles/{Profile_ID}/types/{Assign_Type}/assignments/{Assign_ID}/effective/{Effective_Date} | Delete NetworkProfileAssign |
| [**get_network_profile_assign**](NetworkProfileAssignmentsApi.md#get_network_profile_assign) | **GET** /network-profiles/{Profile_ID}/types/{Assign_Type}/assignments/{Assign_ID}/effective/{Effective_Date} | Get NetworkProfileAssign |
| [**list_assign_type**](NetworkProfileAssignmentsApi.md#list_assign_type) | **GET** /network-profile-assign-types | List Assign Types |
| [**list_network_profile_assign**](NetworkProfileAssignmentsApi.md#list_network_profile_assign) | **GET** /network-profiles/{Profile_ID}/assignments | List NetworkProfileAssign |
| [**update_batch_network_profile_assign**](NetworkProfileAssignmentsApi.md#update_batch_network_profile_assign) | **PUT** /network-profile-assignments-batch | Create or Update Batch NetworkProfileAssign |
| [**update_network_profile_assign**](NetworkProfileAssignmentsApi.md#update_network_profile_assign) | **PUT** /network-profiles/{Profile_ID}/types/{Assign_Type}/assignments/{Assign_ID}/effective/{Effective_Date} | Update NetworkProfileAssign |


## create_network_profile_assign

> <NetworkProfileAssignVBAResponse> create_network_profile_assign(vbasoftware_database, network_profile_assign)

Create NetworkProfileAssign

Creates a new NetworkProfileAssign

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_profile_assign = Vba::NetworkProfileAssign.new({profile_id: 'profile_id_example', assign_type: 'assign_type_example', assign_id: 'assign_id_example', effective_date: Time.now}) # NetworkProfileAssign | 

begin
  # Create NetworkProfileAssign
  result = api_instance.create_network_profile_assign(vbasoftware_database, network_profile_assign)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->create_network_profile_assign: #{e}"
end
```

#### Using the create_network_profile_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileAssignVBAResponse>, Integer, Hash)> create_network_profile_assign_with_http_info(vbasoftware_database, network_profile_assign)

```ruby
begin
  # Create NetworkProfileAssign
  data, status_code, headers = api_instance.create_network_profile_assign_with_http_info(vbasoftware_database, network_profile_assign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileAssignVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->create_network_profile_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_profile_assign** | [**NetworkProfileAssign**](NetworkProfileAssign.md) |  |  |

### Return type

[**NetworkProfileAssignVBAResponse**](NetworkProfileAssignVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_profile_assign

> delete_network_profile_assign(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)

Delete NetworkProfileAssign

Deletes an NetworkProfileAssign

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
assign_type = 'assign_type_example' # String | Assign Type
assign_id = 'assign_id_example' # String | Assign ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete NetworkProfileAssign
  api_instance.delete_network_profile_assign(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->delete_network_profile_assign: #{e}"
end
```

#### Using the delete_network_profile_assign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_profile_assign_with_http_info(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)

```ruby
begin
  # Delete NetworkProfileAssign
  data, status_code, headers = api_instance.delete_network_profile_assign_with_http_info(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->delete_network_profile_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **assign_type** | **String** | Assign Type |  |
| **assign_id** | **String** | Assign ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_profile_assign

> <NetworkProfileAssignVBAResponse> get_network_profile_assign(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)

Get NetworkProfileAssign

Gets NetworkProfileAssign

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
assign_type = 'assign_type_example' # String | Assign Type
assign_id = 'assign_id_example' # String | Assign ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get NetworkProfileAssign
  result = api_instance.get_network_profile_assign(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->get_network_profile_assign: #{e}"
end
```

#### Using the get_network_profile_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileAssignVBAResponse>, Integer, Hash)> get_network_profile_assign_with_http_info(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)

```ruby
begin
  # Get NetworkProfileAssign
  data, status_code, headers = api_instance.get_network_profile_assign_with_http_info(vbasoftware_database, profile_id, assign_type, assign_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileAssignVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->get_network_profile_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **assign_type** | **String** | Assign Type |  |
| **assign_id** | **String** | Assign ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**NetworkProfileAssignVBAResponse**](NetworkProfileAssignVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_assign_type

> <StringStaticOptionListVBAResponse> list_assign_type(vbasoftware_database)

List Assign Types

List Assign Types

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List Assign Types
  result = api_instance.list_assign_type(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->list_assign_type: #{e}"
end
```

#### Using the list_assign_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StringStaticOptionListVBAResponse>, Integer, Hash)> list_assign_type_with_http_info(vbasoftware_database)

```ruby
begin
  # List Assign Types
  data, status_code, headers = api_instance.list_assign_type_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StringStaticOptionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->list_assign_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StringStaticOptionListVBAResponse**](StringStaticOptionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_profile_assign

> <NetworkProfileAssignListVBAResponse> list_network_profile_assign(vbasoftware_database, profile_id, opts)

List NetworkProfileAssign

Lists all NetworkProfileAssign for the given Profile_ID

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List NetworkProfileAssign
  result = api_instance.list_network_profile_assign(vbasoftware_database, profile_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->list_network_profile_assign: #{e}"
end
```

#### Using the list_network_profile_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileAssignListVBAResponse>, Integer, Hash)> list_network_profile_assign_with_http_info(vbasoftware_database, profile_id, opts)

```ruby
begin
  # List NetworkProfileAssign
  data, status_code, headers = api_instance.list_network_profile_assign_with_http_info(vbasoftware_database, profile_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileAssignListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->list_network_profile_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**NetworkProfileAssignListVBAResponse**](NetworkProfileAssignListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_profile_assign

> <MultiCodeResponseListVBAResponse> update_batch_network_profile_assign(vbasoftware_database, network_profile_assign)

Create or Update Batch NetworkProfileAssign

Create or Update multiple NetworkProfileAssign at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_profile_assign = [Vba::NetworkProfileAssign.new({profile_id: 'profile_id_example', assign_type: 'assign_type_example', assign_id: 'assign_id_example', effective_date: Time.now})] # Array<NetworkProfileAssign> | 

begin
  # Create or Update Batch NetworkProfileAssign
  result = api_instance.update_batch_network_profile_assign(vbasoftware_database, network_profile_assign)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->update_batch_network_profile_assign: #{e}"
end
```

#### Using the update_batch_network_profile_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_profile_assign_with_http_info(vbasoftware_database, network_profile_assign)

```ruby
begin
  # Create or Update Batch NetworkProfileAssign
  data, status_code, headers = api_instance.update_batch_network_profile_assign_with_http_info(vbasoftware_database, network_profile_assign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->update_batch_network_profile_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_profile_assign** | [**Array&lt;NetworkProfileAssign&gt;**](NetworkProfileAssign.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_profile_assign

> <NetworkProfileAssignVBAResponse> update_network_profile_assign(vbasoftware_database, profile_id, assign_type, assign_id, effective_date, network_profile_assign)

Update NetworkProfileAssign

Updates a specific NetworkProfileAssign.

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

api_instance = Vba::NetworkProfileAssignmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
assign_type = 'assign_type_example' # String | Assign Type
assign_id = 'assign_id_example' # String | Assign ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
network_profile_assign = Vba::NetworkProfileAssign.new({profile_id: 'profile_id_example', assign_type: 'assign_type_example', assign_id: 'assign_id_example', effective_date: Time.now}) # NetworkProfileAssign | 

begin
  # Update NetworkProfileAssign
  result = api_instance.update_network_profile_assign(vbasoftware_database, profile_id, assign_type, assign_id, effective_date, network_profile_assign)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->update_network_profile_assign: #{e}"
end
```

#### Using the update_network_profile_assign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileAssignVBAResponse>, Integer, Hash)> update_network_profile_assign_with_http_info(vbasoftware_database, profile_id, assign_type, assign_id, effective_date, network_profile_assign)

```ruby
begin
  # Update NetworkProfileAssign
  data, status_code, headers = api_instance.update_network_profile_assign_with_http_info(vbasoftware_database, profile_id, assign_type, assign_id, effective_date, network_profile_assign)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileAssignVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfileAssignmentsApi->update_network_profile_assign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **assign_type** | **String** | Assign Type |  |
| **assign_id** | **String** | Assign ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **network_profile_assign** | [**NetworkProfileAssign**](NetworkProfileAssign.md) |  |  |

### Return type

[**NetworkProfileAssignVBAResponse**](NetworkProfileAssignVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

