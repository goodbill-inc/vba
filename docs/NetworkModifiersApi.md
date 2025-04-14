# Vba::NetworkModifiersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_modifier**](NetworkModifiersApi.md#create_network_modifier) | **POST** /networks/{networkID}/modifiers | Create NetworkModifier |
| [**delete_network_modifier**](NetworkModifiersApi.md#delete_network_modifier) | **DELETE** /networks/{networkID}/modifiers/{modifier}/{effectiveDate} | Delete NetworkModifier |
| [**get_network_modifier**](NetworkModifiersApi.md#get_network_modifier) | **GET** /networks/{networkID}/modifiers/{modifier}/{effectiveDate} | Get NetworkModifier |
| [**list_network_modifier**](NetworkModifiersApi.md#list_network_modifier) | **GET** /networks/{networkID}/modifiers | List NetworkModifier |
| [**update_batch_network_modifier**](NetworkModifiersApi.md#update_batch_network_modifier) | **PUT** /networks/{networkID}/modifiers-batch | Create or Update Batch NetworkModifier |
| [**update_network_modifier**](NetworkModifiersApi.md#update_network_modifier) | **PUT** /networks/{networkID}/modifiers/{modifier}/{effectiveDate} | Update NetworkModifier |


## create_network_modifier

> <NetworkModifierVBAResponse> create_network_modifier(vbasoftware_database, network_id, network_modifier)

Create NetworkModifier

Creates a new NetworkModifier

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

api_instance = Vba::NetworkModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
network_modifier = Vba::NetworkModifier.new({network_id: 'network_id_example', modifier: 'modifier_example', effective_date: Time.now}) # NetworkModifier | 

begin
  # Create NetworkModifier
  result = api_instance.create_network_modifier(vbasoftware_database, network_id, network_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->create_network_modifier: #{e}"
end
```

#### Using the create_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkModifierVBAResponse>, Integer, Hash)> create_network_modifier_with_http_info(vbasoftware_database, network_id, network_modifier)

```ruby
begin
  # Create NetworkModifier
  data, status_code, headers = api_instance.create_network_modifier_with_http_info(vbasoftware_database, network_id, network_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->create_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **network_modifier** | [**NetworkModifier**](NetworkModifier.md) |  |  |

### Return type

[**NetworkModifierVBAResponse**](NetworkModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_modifier

> delete_network_modifier(vbasoftware_database, network_id, modifier, effective_date)

Delete NetworkModifier

Deletes an NetworkModifier

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

api_instance = Vba::NetworkModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete NetworkModifier
  api_instance.delete_network_modifier(vbasoftware_database, network_id, modifier, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->delete_network_modifier: #{e}"
end
```

#### Using the delete_network_modifier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_modifier_with_http_info(vbasoftware_database, network_id, modifier, effective_date)

```ruby
begin
  # Delete NetworkModifier
  data, status_code, headers = api_instance.delete_network_modifier_with_http_info(vbasoftware_database, network_id, modifier, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->delete_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_modifier

> <NetworkModifierVBAResponse> get_network_modifier(vbasoftware_database, network_id, modifier, effective_date)

Get NetworkModifier

Gets NetworkModifier

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

api_instance = Vba::NetworkModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get NetworkModifier
  result = api_instance.get_network_modifier(vbasoftware_database, network_id, modifier, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->get_network_modifier: #{e}"
end
```

#### Using the get_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkModifierVBAResponse>, Integer, Hash)> get_network_modifier_with_http_info(vbasoftware_database, network_id, modifier, effective_date)

```ruby
begin
  # Get NetworkModifier
  data, status_code, headers = api_instance.get_network_modifier_with_http_info(vbasoftware_database, network_id, modifier, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->get_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**NetworkModifierVBAResponse**](NetworkModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_modifier

> <NetworkModifierListVBAResponse> list_network_modifier(vbasoftware_database, network_id, opts)

List NetworkModifier

Lists all NetworkModifier for the given networkID

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

api_instance = Vba::NetworkModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List NetworkModifier
  result = api_instance.list_network_modifier(vbasoftware_database, network_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->list_network_modifier: #{e}"
end
```

#### Using the list_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkModifierListVBAResponse>, Integer, Hash)> list_network_modifier_with_http_info(vbasoftware_database, network_id, opts)

```ruby
begin
  # List NetworkModifier
  data, status_code, headers = api_instance.list_network_modifier_with_http_info(vbasoftware_database, network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkModifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->list_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**NetworkModifierListVBAResponse**](NetworkModifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_modifier

> <MultiCodeResponseListVBAResponse> update_batch_network_modifier(vbasoftware_database, network_id, network_modifier)

Create or Update Batch NetworkModifier

Create or Update multiple NetworkModifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
network_modifier = [Vba::NetworkModifier.new({network_id: 'network_id_example', modifier: 'modifier_example', effective_date: Time.now})] # Array<NetworkModifier> | 

begin
  # Create or Update Batch NetworkModifier
  result = api_instance.update_batch_network_modifier(vbasoftware_database, network_id, network_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->update_batch_network_modifier: #{e}"
end
```

#### Using the update_batch_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_modifier_with_http_info(vbasoftware_database, network_id, network_modifier)

```ruby
begin
  # Create or Update Batch NetworkModifier
  data, status_code, headers = api_instance.update_batch_network_modifier_with_http_info(vbasoftware_database, network_id, network_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->update_batch_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **network_modifier** | [**Array&lt;NetworkModifier&gt;**](NetworkModifier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_modifier

> <NetworkModifierVBAResponse> update_network_modifier(vbasoftware_database, network_id, modifier, effective_date, network_modifier)

Update NetworkModifier

Updates a specific NetworkModifier.

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

api_instance = Vba::NetworkModifiersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
network_modifier = Vba::NetworkModifier.new({network_id: 'network_id_example', modifier: 'modifier_example', effective_date: Time.now}) # NetworkModifier | 

begin
  # Update NetworkModifier
  result = api_instance.update_network_modifier(vbasoftware_database, network_id, modifier, effective_date, network_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->update_network_modifier: #{e}"
end
```

#### Using the update_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkModifierVBAResponse>, Integer, Hash)> update_network_modifier_with_http_info(vbasoftware_database, network_id, modifier, effective_date, network_modifier)

```ruby
begin
  # Update NetworkModifier
  data, status_code, headers = api_instance.update_network_modifier_with_http_info(vbasoftware_database, network_id, modifier, effective_date, network_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkModifiersApi->update_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_id** | **String** | Network ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |
| **network_modifier** | [**NetworkModifier**](NetworkModifier.md) |  |  |

### Return type

[**NetworkModifierVBAResponse**](NetworkModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

