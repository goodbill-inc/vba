# Vba::ProviderNetworkModifierApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_provider_network_modifier**](ProviderNetworkModifierApi.md#create_provider_network_modifier) | **POST** /providers/{providerID}/networks/{networkID}/modifiers/{modifier} | Create ProviderNetworkModifier |
| [**delete_provider_network_modifier**](ProviderNetworkModifierApi.md#delete_provider_network_modifier) | **DELETE** /providers/{providerID}/networks/{networkID}/modifiers/{modifier}/effective-date/{effectiveDate} | Delete ProviderNetworkModifier |
| [**get_provider_network_modifier**](ProviderNetworkModifierApi.md#get_provider_network_modifier) | **GET** /providers/{providerID}/networks/{networkID}/modifiers/{modifier}/effective-date/{effectiveDate} | Get ProviderNetworkModifier |
| [**list_provider_network_modifier**](ProviderNetworkModifierApi.md#list_provider_network_modifier) | **GET** /providers/{providerID}/networks/{networkID}/modifiers | List ProviderNetworkModifier |
| [**list_provider_network_modifiers_for_provider**](ProviderNetworkModifierApi.md#list_provider_network_modifiers_for_provider) | **GET** /providers/{providerID}/network-modifiers | List ProviderNetworkModifier for a given provider id |
| [**update_batch_provider_network_modifier**](ProviderNetworkModifierApi.md#update_batch_provider_network_modifier) | **PUT** /providers/{providerID}/networks/{networkID}/modifiers-batch | Create or Update Batch ProviderNetworkModifier |
| [**update_provider_network_modifier**](ProviderNetworkModifierApi.md#update_provider_network_modifier) | **PUT** /providers/{providerID}/networks/{networkID}/modifiers/{modifier}/effective-date/{effectiveDate} | Update ProviderNetworkModifier |


## create_provider_network_modifier

> <ProviderNetworkModifierVBAResponse> create_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, provider_network_modifier)

Create ProviderNetworkModifier

Creates a new ProviderNetworkModifier

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
provider_network_modifier = Vba::ProviderNetworkModifier.new({provider_id: 'provider_id_example', network_id: 'network_id_example', modifier: 'modifier_example', effective_date: Time.now}) # ProviderNetworkModifier | 

begin
  # Create ProviderNetworkModifier
  result = api_instance.create_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, provider_network_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->create_provider_network_modifier: #{e}"
end
```

#### Using the create_provider_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkModifierVBAResponse>, Integer, Hash)> create_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, provider_network_modifier)

```ruby
begin
  # Create ProviderNetworkModifier
  data, status_code, headers = api_instance.create_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, provider_network_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->create_provider_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **modifier** | **String** | Modifier |  |
| **provider_network_modifier** | [**ProviderNetworkModifier**](ProviderNetworkModifier.md) |  |  |

### Return type

[**ProviderNetworkModifierVBAResponse**](ProviderNetworkModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_provider_network_modifier

> delete_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, effective_date)

Delete ProviderNetworkModifier

Deletes an ProviderNetworkModifier

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete ProviderNetworkModifier
  api_instance.delete_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->delete_provider_network_modifier: #{e}"
end
```

#### Using the delete_provider_network_modifier_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, effective_date)

```ruby
begin
  # Delete ProviderNetworkModifier
  data, status_code, headers = api_instance.delete_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->delete_provider_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
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


## get_provider_network_modifier

> <ProviderNetworkModifierVBAResponse> get_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, effective_date)

Get ProviderNetworkModifier

Gets ProviderNetworkModifier

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get ProviderNetworkModifier
  result = api_instance.get_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->get_provider_network_modifier: #{e}"
end
```

#### Using the get_provider_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkModifierVBAResponse>, Integer, Hash)> get_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, effective_date)

```ruby
begin
  # Get ProviderNetworkModifier
  data, status_code, headers = api_instance.get_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->get_provider_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**ProviderNetworkModifierVBAResponse**](ProviderNetworkModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_network_modifier

> <ProviderNetworkModifierListVBAResponse> list_provider_network_modifier(vbasoftware_database, provider_id, network_id, opts)

List ProviderNetworkModifier

Lists all ProviderNetworkModifier for the given Provider ID, and Network ID

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderNetworkModifier
  result = api_instance.list_provider_network_modifier(vbasoftware_database, provider_id, network_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->list_provider_network_modifier: #{e}"
end
```

#### Using the list_provider_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkModifierListVBAResponse>, Integer, Hash)> list_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, opts)

```ruby
begin
  # List ProviderNetworkModifier
  data, status_code, headers = api_instance.list_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkModifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->list_provider_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderNetworkModifierListVBAResponse**](ProviderNetworkModifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_provider_network_modifiers_for_provider

> <ProviderNetworkModifierListVBAResponse> list_provider_network_modifiers_for_provider(vbasoftware_database, provider_id, opts)

List ProviderNetworkModifier for a given provider id

Lists all ProviderNetworkModifier for the given Provider ID. This will include all assigned Networks.

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ProviderNetworkModifier for a given provider id
  result = api_instance.list_provider_network_modifiers_for_provider(vbasoftware_database, provider_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->list_provider_network_modifiers_for_provider: #{e}"
end
```

#### Using the list_provider_network_modifiers_for_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkModifierListVBAResponse>, Integer, Hash)> list_provider_network_modifiers_for_provider_with_http_info(vbasoftware_database, provider_id, opts)

```ruby
begin
  # List ProviderNetworkModifier for a given provider id
  data, status_code, headers = api_instance.list_provider_network_modifiers_for_provider_with_http_info(vbasoftware_database, provider_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkModifierListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->list_provider_network_modifiers_for_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ProviderNetworkModifierListVBAResponse**](ProviderNetworkModifierListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_provider_network_modifier

> <MultiCodeResponseListVBAResponse> update_batch_provider_network_modifier(vbasoftware_database, provider_id, network_id, provider_network_modifier)

Create or Update Batch ProviderNetworkModifier

Create or Update multiple ProviderNetworkModifier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
provider_network_modifier = [Vba::ProviderNetworkModifier.new({provider_id: 'provider_id_example', network_id: 'network_id_example', modifier: 'modifier_example', effective_date: Time.now})] # Array<ProviderNetworkModifier> | 

begin
  # Create or Update Batch ProviderNetworkModifier
  result = api_instance.update_batch_provider_network_modifier(vbasoftware_database, provider_id, network_id, provider_network_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->update_batch_provider_network_modifier: #{e}"
end
```

#### Using the update_batch_provider_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, provider_network_modifier)

```ruby
begin
  # Create or Update Batch ProviderNetworkModifier
  data, status_code, headers = api_instance.update_batch_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, provider_network_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->update_batch_provider_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **provider_network_modifier** | [**Array&lt;ProviderNetworkModifier&gt;**](ProviderNetworkModifier.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_provider_network_modifier

> <ProviderNetworkModifierVBAResponse> update_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, effective_date, provider_network_modifier)

Update ProviderNetworkModifier

Updates a specific ProviderNetworkModifier.

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

api_instance = Vba::ProviderNetworkModifierApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
provider_id = 'provider_id_example' # String | Provider ID
network_id = 'network_id_example' # String | Network ID
modifier = 'modifier_example' # String | Modifier
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
provider_network_modifier = Vba::ProviderNetworkModifier.new({provider_id: 'provider_id_example', network_id: 'network_id_example', modifier: 'modifier_example', effective_date: Time.now}) # ProviderNetworkModifier | 

begin
  # Update ProviderNetworkModifier
  result = api_instance.update_provider_network_modifier(vbasoftware_database, provider_id, network_id, modifier, effective_date, provider_network_modifier)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->update_provider_network_modifier: #{e}"
end
```

#### Using the update_provider_network_modifier_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderNetworkModifierVBAResponse>, Integer, Hash)> update_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, effective_date, provider_network_modifier)

```ruby
begin
  # Update ProviderNetworkModifier
  data, status_code, headers = api_instance.update_provider_network_modifier_with_http_info(vbasoftware_database, provider_id, network_id, modifier, effective_date, provider_network_modifier)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderNetworkModifierVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ProviderNetworkModifierApi->update_provider_network_modifier_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **provider_id** | **String** | Provider ID |  |
| **network_id** | **String** | Network ID |  |
| **modifier** | **String** | Modifier |  |
| **effective_date** | **Time** | Effective Date |  |
| **provider_network_modifier** | [**ProviderNetworkModifier**](ProviderNetworkModifier.md) |  |  |

### Return type

[**ProviderNetworkModifierVBAResponse**](ProviderNetworkModifierVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

