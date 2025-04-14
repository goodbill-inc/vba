# Vba::EventArgsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event_arg**](EventArgsApi.md#create_event_arg) | **POST** /events/{eventID}/args | Create EventArg |
| [**delete_event_arg**](EventArgsApi.md#delete_event_arg) | **DELETE** /events/{eventID}/args/{argumentName} | Delete EventArg |
| [**get_event_arg**](EventArgsApi.md#get_event_arg) | **GET** /events/{eventID}/args/{argumentName} | Get EventArg |
| [**list_event_arg**](EventArgsApi.md#list_event_arg) | **GET** /events/{eventID}/args | List EventArg |
| [**update_batch_event_arg**](EventArgsApi.md#update_batch_event_arg) | **PUT** /events/{eventID}/args-batch | Create or Update Batch EventArg |
| [**update_event_arg**](EventArgsApi.md#update_event_arg) | **PUT** /events/{eventID}/args/{argumentName} | Update EventArg |


## create_event_arg

> <EventArgVBAResponse> create_event_arg(vbasoftware_database, event_id, event_arg)

Create EventArg

Creates a new EventArg

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

api_instance = Vba::EventArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
event_arg = Vba::EventArg.new({event_id: 37, argument_name: 'argument_name_example'}) # EventArg | 

begin
  # Create EventArg
  result = api_instance.create_event_arg(vbasoftware_database, event_id, event_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->create_event_arg: #{e}"
end
```

#### Using the create_event_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventArgVBAResponse>, Integer, Hash)> create_event_arg_with_http_info(vbasoftware_database, event_id, event_arg)

```ruby
begin
  # Create EventArg
  data, status_code, headers = api_instance.create_event_arg_with_http_info(vbasoftware_database, event_id, event_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->create_event_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **event_arg** | [**EventArg**](EventArg.md) |  |  |

### Return type

[**EventArgVBAResponse**](EventArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_event_arg

> delete_event_arg(vbasoftware_database, event_id, argument_name)

Delete EventArg

Deletes an EventArg

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

api_instance = Vba::EventArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
argument_name = 'argument_name_example' # String | Argument Name

begin
  # Delete EventArg
  api_instance.delete_event_arg(vbasoftware_database, event_id, argument_name)
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->delete_event_arg: #{e}"
end
```

#### Using the delete_event_arg_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_event_arg_with_http_info(vbasoftware_database, event_id, argument_name)

```ruby
begin
  # Delete EventArg
  data, status_code, headers = api_instance.delete_event_arg_with_http_info(vbasoftware_database, event_id, argument_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->delete_event_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **argument_name** | **String** | Argument Name |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_event_arg

> <EventArgVBAResponse> get_event_arg(vbasoftware_database, event_id, argument_name)

Get EventArg

Gets EventArg

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

api_instance = Vba::EventArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
argument_name = 'argument_name_example' # String | Argument Name

begin
  # Get EventArg
  result = api_instance.get_event_arg(vbasoftware_database, event_id, argument_name)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->get_event_arg: #{e}"
end
```

#### Using the get_event_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventArgVBAResponse>, Integer, Hash)> get_event_arg_with_http_info(vbasoftware_database, event_id, argument_name)

```ruby
begin
  # Get EventArg
  data, status_code, headers = api_instance.get_event_arg_with_http_info(vbasoftware_database, event_id, argument_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->get_event_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **argument_name** | **String** | Argument Name |  |

### Return type

[**EventArgVBAResponse**](EventArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_event_arg

> <EventArgListVBAResponse> list_event_arg(vbasoftware_database, event_id, opts)

List EventArg

Lists all EventArgs for the given EventID

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

api_instance = Vba::EventArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List EventArg
  result = api_instance.list_event_arg(vbasoftware_database, event_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->list_event_arg: #{e}"
end
```

#### Using the list_event_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventArgListVBAResponse>, Integer, Hash)> list_event_arg_with_http_info(vbasoftware_database, event_id, opts)

```ruby
begin
  # List EventArg
  data, status_code, headers = api_instance.list_event_arg_with_http_info(vbasoftware_database, event_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventArgListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->list_event_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**EventArgListVBAResponse**](EventArgListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_event_arg

> <MultiCodeResponseListVBAResponse> update_batch_event_arg(vbasoftware_database, event_id, event_arg)

Create or Update Batch EventArg

Create or Update multiple EventArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::EventArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
event_arg = [Vba::EventArg.new({event_id: 37, argument_name: 'argument_name_example'})] # Array<EventArg> | 

begin
  # Create or Update Batch EventArg
  result = api_instance.update_batch_event_arg(vbasoftware_database, event_id, event_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->update_batch_event_arg: #{e}"
end
```

#### Using the update_batch_event_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_event_arg_with_http_info(vbasoftware_database, event_id, event_arg)

```ruby
begin
  # Create or Update Batch EventArg
  data, status_code, headers = api_instance.update_batch_event_arg_with_http_info(vbasoftware_database, event_id, event_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->update_batch_event_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **event_arg** | [**Array&lt;EventArg&gt;**](EventArg.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_event_arg

> <EventArgVBAResponse> update_event_arg(vbasoftware_database, event_id, argument_name, event_arg)

Update EventArg

Updates a specific EventArg.

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

api_instance = Vba::EventArgsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
event_id = 56 # Integer | Event ID
argument_name = 'argument_name_example' # String | Argument Name
event_arg = Vba::EventArg.new({event_id: 37, argument_name: 'argument_name_example'}) # EventArg | 

begin
  # Update EventArg
  result = api_instance.update_event_arg(vbasoftware_database, event_id, argument_name, event_arg)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->update_event_arg: #{e}"
end
```

#### Using the update_event_arg_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventArgVBAResponse>, Integer, Hash)> update_event_arg_with_http_info(vbasoftware_database, event_id, argument_name, event_arg)

```ruby
begin
  # Update EventArg
  data, status_code, headers = api_instance.update_event_arg_with_http_info(vbasoftware_database, event_id, argument_name, event_arg)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventArgVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EventArgsApi->update_event_arg_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **event_id** | **Integer** | Event ID |  |
| **argument_name** | **String** | Argument Name |  |
| **event_arg** | [**EventArg**](EventArg.md) |  |  |

### Return type

[**EventArgVBAResponse**](EventArgVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

