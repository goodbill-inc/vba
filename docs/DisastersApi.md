# Vba::DisastersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_disaster**](DisastersApi.md#create_disaster) | **POST** /disasters | Create Disaster |
| [**delete_disaster**](DisastersApi.md#delete_disaster) | **DELETE** /disasters/{Disaster_Key} | Delete Disaster |
| [**get_disaster**](DisastersApi.md#get_disaster) | **GET** /disasters/{Disaster_Key} | Get Disaster |
| [**list_disaster**](DisastersApi.md#list_disaster) | **GET** /disasters | List Disaster |
| [**update_batch_disaster**](DisastersApi.md#update_batch_disaster) | **PUT** /disasters-batch | Create or Update Batch Disaster |
| [**update_disaster**](DisastersApi.md#update_disaster) | **PUT** /disasters/{Disaster_Key} | Update Disaster |


## create_disaster

> <DisasterVBAResponse> create_disaster(vbasoftware_database, disaster)

Create Disaster

Creates a new Disaster

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

api_instance = Vba::DisastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster = Vba::Disaster.new({disaster_key: 37}) # Disaster | 

begin
  # Create Disaster
  result = api_instance.create_disaster(vbasoftware_database, disaster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->create_disaster: #{e}"
end
```

#### Using the create_disaster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterVBAResponse>, Integer, Hash)> create_disaster_with_http_info(vbasoftware_database, disaster)

```ruby
begin
  # Create Disaster
  data, status_code, headers = api_instance.create_disaster_with_http_info(vbasoftware_database, disaster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->create_disaster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster** | [**Disaster**](Disaster.md) |  |  |

### Return type

[**DisasterVBAResponse**](DisasterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_disaster

> delete_disaster(vbasoftware_database, disaster_key)

Delete Disaster

Deletes an Disaster

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

api_instance = Vba::DisastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_key = 56 # Integer | Disaster Key

begin
  # Delete Disaster
  api_instance.delete_disaster(vbasoftware_database, disaster_key)
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->delete_disaster: #{e}"
end
```

#### Using the delete_disaster_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_disaster_with_http_info(vbasoftware_database, disaster_key)

```ruby
begin
  # Delete Disaster
  data, status_code, headers = api_instance.delete_disaster_with_http_info(vbasoftware_database, disaster_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->delete_disaster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_key** | **Integer** | Disaster Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_disaster

> <DisasterVBAResponse> get_disaster(vbasoftware_database, disaster_key)

Get Disaster

Gets Disaster

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

api_instance = Vba::DisastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_key = 56 # Integer | Disaster Key

begin
  # Get Disaster
  result = api_instance.get_disaster(vbasoftware_database, disaster_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->get_disaster: #{e}"
end
```

#### Using the get_disaster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterVBAResponse>, Integer, Hash)> get_disaster_with_http_info(vbasoftware_database, disaster_key)

```ruby
begin
  # Get Disaster
  data, status_code, headers = api_instance.get_disaster_with_http_info(vbasoftware_database, disaster_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->get_disaster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_key** | **Integer** | Disaster Key |  |

### Return type

[**DisasterVBAResponse**](DisasterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_disaster

> <DisasterListVBAResponse> list_disaster(vbasoftware_database, opts)

List Disaster

Lists all Disaster

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

api_instance = Vba::DisastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List Disaster
  result = api_instance.list_disaster(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->list_disaster: #{e}"
end
```

#### Using the list_disaster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterListVBAResponse>, Integer, Hash)> list_disaster_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Disaster
  data, status_code, headers = api_instance.list_disaster_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->list_disaster_with_http_info: #{e}"
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

[**DisasterListVBAResponse**](DisasterListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_disaster

> <MultiCodeResponseListVBAResponse> update_batch_disaster(vbasoftware_database, disaster)

Create or Update Batch Disaster

Create or Update multiple Disaster at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::DisastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster = [Vba::Disaster.new({disaster_key: 37})] # Array<Disaster> | 

begin
  # Create or Update Batch Disaster
  result = api_instance.update_batch_disaster(vbasoftware_database, disaster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->update_batch_disaster: #{e}"
end
```

#### Using the update_batch_disaster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_disaster_with_http_info(vbasoftware_database, disaster)

```ruby
begin
  # Create or Update Batch Disaster
  data, status_code, headers = api_instance.update_batch_disaster_with_http_info(vbasoftware_database, disaster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->update_batch_disaster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster** | [**Array&lt;Disaster&gt;**](Disaster.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_disaster

> <DisasterVBAResponse> update_disaster(vbasoftware_database, disaster_key, disaster)

Update Disaster

Updates a specific Disaster.

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

api_instance = Vba::DisastersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
disaster_key = 56 # Integer | Disaster Key
disaster = Vba::Disaster.new({disaster_key: 37}) # Disaster | 

begin
  # Update Disaster
  result = api_instance.update_disaster(vbasoftware_database, disaster_key, disaster)
  p result
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->update_disaster: #{e}"
end
```

#### Using the update_disaster_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DisasterVBAResponse>, Integer, Hash)> update_disaster_with_http_info(vbasoftware_database, disaster_key, disaster)

```ruby
begin
  # Update Disaster
  data, status_code, headers = api_instance.update_disaster_with_http_info(vbasoftware_database, disaster_key, disaster)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DisasterVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling DisastersApi->update_disaster_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **disaster_key** | **Integer** | Disaster Key |  |
| **disaster** | [**Disaster**](Disaster.md) |  |  |

### Return type

[**DisasterVBAResponse**](DisasterVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

