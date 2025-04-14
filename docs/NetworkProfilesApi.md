# Vba::NetworkProfilesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_network_profile**](NetworkProfilesApi.md#create_network_profile) | **POST** /network-profiles | Create NetworkProfile |
| [**delete_network_profile**](NetworkProfilesApi.md#delete_network_profile) | **DELETE** /network-profiles/{Profile_ID} | Delete NetworkProfile |
| [**get_network_profile**](NetworkProfilesApi.md#get_network_profile) | **GET** /network-profiles/{Profile_ID} | Get NetworkProfile |
| [**list_network_profile**](NetworkProfilesApi.md#list_network_profile) | **GET** /network-profiles | List NetworkProfile |
| [**update_batch_network_profile**](NetworkProfilesApi.md#update_batch_network_profile) | **PUT** /network-profiles-batch | Create or Update Batch NetworkProfile |
| [**update_network_profile**](NetworkProfilesApi.md#update_network_profile) | **PUT** /network-profiles/{Profile_ID} | Update NetworkProfile |


## create_network_profile

> <NetworkProfileVBAResponse> create_network_profile(vbasoftware_database, network_profile)

Create NetworkProfile

Creates a new NetworkProfile

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

api_instance = Vba::NetworkProfilesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_profile = Vba::NetworkProfile.new({profile_id: 'profile_id_example'}) # NetworkProfile | 

begin
  # Create NetworkProfile
  result = api_instance.create_network_profile(vbasoftware_database, network_profile)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->create_network_profile: #{e}"
end
```

#### Using the create_network_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileVBAResponse>, Integer, Hash)> create_network_profile_with_http_info(vbasoftware_database, network_profile)

```ruby
begin
  # Create NetworkProfile
  data, status_code, headers = api_instance.create_network_profile_with_http_info(vbasoftware_database, network_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->create_network_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_profile** | [**NetworkProfile**](NetworkProfile.md) |  |  |

### Return type

[**NetworkProfileVBAResponse**](NetworkProfileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_network_profile

> delete_network_profile(vbasoftware_database, profile_id)

Delete NetworkProfile

Deletes an NetworkProfile

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

api_instance = Vba::NetworkProfilesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID

begin
  # Delete NetworkProfile
  api_instance.delete_network_profile(vbasoftware_database, profile_id)
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->delete_network_profile: #{e}"
end
```

#### Using the delete_network_profile_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_network_profile_with_http_info(vbasoftware_database, profile_id)

```ruby
begin
  # Delete NetworkProfile
  data, status_code, headers = api_instance.delete_network_profile_with_http_info(vbasoftware_database, profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->delete_network_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_network_profile

> <NetworkProfileVBAResponse> get_network_profile(vbasoftware_database, profile_id)

Get NetworkProfile

Gets NetworkProfile

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

api_instance = Vba::NetworkProfilesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID

begin
  # Get NetworkProfile
  result = api_instance.get_network_profile(vbasoftware_database, profile_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->get_network_profile: #{e}"
end
```

#### Using the get_network_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileVBAResponse>, Integer, Hash)> get_network_profile_with_http_info(vbasoftware_database, profile_id)

```ruby
begin
  # Get NetworkProfile
  data, status_code, headers = api_instance.get_network_profile_with_http_info(vbasoftware_database, profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->get_network_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |

### Return type

[**NetworkProfileVBAResponse**](NetworkProfileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_network_profile

> <NetworkProfileListVBAResponse> list_network_profile(vbasoftware_database, opts)

List NetworkProfile

Lists all NetworkProfile

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

api_instance = Vba::NetworkProfilesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List NetworkProfile
  result = api_instance.list_network_profile(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->list_network_profile: #{e}"
end
```

#### Using the list_network_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileListVBAResponse>, Integer, Hash)> list_network_profile_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List NetworkProfile
  data, status_code, headers = api_instance.list_network_profile_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->list_network_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**NetworkProfileListVBAResponse**](NetworkProfileListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_network_profile

> <MultiCodeResponseListVBAResponse> update_batch_network_profile(vbasoftware_database, network_profile)

Create or Update Batch NetworkProfile

Create or Update multiple NetworkProfile at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::NetworkProfilesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
network_profile = [Vba::NetworkProfile.new({profile_id: 'profile_id_example'})] # Array<NetworkProfile> | 

begin
  # Create or Update Batch NetworkProfile
  result = api_instance.update_batch_network_profile(vbasoftware_database, network_profile)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->update_batch_network_profile: #{e}"
end
```

#### Using the update_batch_network_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_network_profile_with_http_info(vbasoftware_database, network_profile)

```ruby
begin
  # Create or Update Batch NetworkProfile
  data, status_code, headers = api_instance.update_batch_network_profile_with_http_info(vbasoftware_database, network_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->update_batch_network_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **network_profile** | [**Array&lt;NetworkProfile&gt;**](NetworkProfile.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_network_profile

> <NetworkProfileVBAResponse> update_network_profile(vbasoftware_database, profile_id, network_profile)

Update NetworkProfile

Updates a specific NetworkProfile.

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

api_instance = Vba::NetworkProfilesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
profile_id = 'profile_id_example' # String | Profile ID
network_profile = Vba::NetworkProfile.new({profile_id: 'profile_id_example'}) # NetworkProfile | 

begin
  # Update NetworkProfile
  result = api_instance.update_network_profile(vbasoftware_database, profile_id, network_profile)
  p result
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->update_network_profile: #{e}"
end
```

#### Using the update_network_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NetworkProfileVBAResponse>, Integer, Hash)> update_network_profile_with_http_info(vbasoftware_database, profile_id, network_profile)

```ruby
begin
  # Update NetworkProfile
  data, status_code, headers = api_instance.update_network_profile_with_http_info(vbasoftware_database, profile_id, network_profile)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NetworkProfileVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling NetworkProfilesApi->update_network_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **profile_id** | **String** | Profile ID |  |
| **network_profile** | [**NetworkProfile**](NetworkProfile.md) |  |  |

### Return type

[**NetworkProfileVBAResponse**](NetworkProfileVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

