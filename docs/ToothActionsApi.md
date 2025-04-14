# Vba::ToothActionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_tooth_action**](ToothActionsApi.md#create_tooth_action) | **POST** /tooth-actions | Create ToothAction |
| [**delete_tooth_action**](ToothActionsApi.md#delete_tooth_action) | **DELETE** /tooth-actions/{toothAction} | Delete ToothAction |
| [**get_tooth_action**](ToothActionsApi.md#get_tooth_action) | **GET** /tooth-actions/{toothAction} | Get ToothAction |
| [**list_tooth_action**](ToothActionsApi.md#list_tooth_action) | **GET** /tooth-actions | List ToothAction |
| [**update_batch_tooth_action**](ToothActionsApi.md#update_batch_tooth_action) | **PUT** /tooth-actions-batch | Create or Update Batch ToothAction |
| [**update_tooth_action**](ToothActionsApi.md#update_tooth_action) | **PUT** /tooth-actions/{toothAction} | Update ToothAction |


## create_tooth_action

> <ToothActionVBAResponse> create_tooth_action(vbasoftware_database, tooth_action)

Create ToothAction

Creates a new ToothAction

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

api_instance = Vba::ToothActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_action = Vba::ToothAction.new({tooth_action: 'tooth_action_example'}) # ToothAction | 

begin
  # Create ToothAction
  result = api_instance.create_tooth_action(vbasoftware_database, tooth_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->create_tooth_action: #{e}"
end
```

#### Using the create_tooth_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothActionVBAResponse>, Integer, Hash)> create_tooth_action_with_http_info(vbasoftware_database, tooth_action)

```ruby
begin
  # Create ToothAction
  data, status_code, headers = api_instance.create_tooth_action_with_http_info(vbasoftware_database, tooth_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->create_tooth_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_action** | [**ToothAction**](ToothAction.md) |  |  |

### Return type

[**ToothActionVBAResponse**](ToothActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_tooth_action

> delete_tooth_action(vbasoftware_database, tooth_action)

Delete ToothAction

Deletes an ToothAction

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

api_instance = Vba::ToothActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_action = 'tooth_action_example' # String | Tooth Action

begin
  # Delete ToothAction
  api_instance.delete_tooth_action(vbasoftware_database, tooth_action)
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->delete_tooth_action: #{e}"
end
```

#### Using the delete_tooth_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_tooth_action_with_http_info(vbasoftware_database, tooth_action)

```ruby
begin
  # Delete ToothAction
  data, status_code, headers = api_instance.delete_tooth_action_with_http_info(vbasoftware_database, tooth_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->delete_tooth_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_action** | **String** | Tooth Action |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_tooth_action

> <ToothActionVBAResponse> get_tooth_action(vbasoftware_database, tooth_action)

Get ToothAction

Gets ToothAction

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

api_instance = Vba::ToothActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_action = 'tooth_action_example' # String | Tooth Action

begin
  # Get ToothAction
  result = api_instance.get_tooth_action(vbasoftware_database, tooth_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->get_tooth_action: #{e}"
end
```

#### Using the get_tooth_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothActionVBAResponse>, Integer, Hash)> get_tooth_action_with_http_info(vbasoftware_database, tooth_action)

```ruby
begin
  # Get ToothAction
  data, status_code, headers = api_instance.get_tooth_action_with_http_info(vbasoftware_database, tooth_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->get_tooth_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_action** | **String** | Tooth Action |  |

### Return type

[**ToothActionVBAResponse**](ToothActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_tooth_action

> <ToothActionListVBAResponse> list_tooth_action(vbasoftware_database, opts)

List ToothAction

Lists all ToothAction

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

api_instance = Vba::ToothActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ToothAction
  result = api_instance.list_tooth_action(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->list_tooth_action: #{e}"
end
```

#### Using the list_tooth_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothActionListVBAResponse>, Integer, Hash)> list_tooth_action_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ToothAction
  data, status_code, headers = api_instance.list_tooth_action_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothActionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->list_tooth_action_with_http_info: #{e}"
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

[**ToothActionListVBAResponse**](ToothActionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_tooth_action

> <MultiCodeResponseListVBAResponse> update_batch_tooth_action(vbasoftware_database, tooth_action)

Create or Update Batch ToothAction

Create or Update multiple ToothAction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ToothActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_action = [Vba::ToothAction.new({tooth_action: 'tooth_action_example'})] # Array<ToothAction> | 

begin
  # Create or Update Batch ToothAction
  result = api_instance.update_batch_tooth_action(vbasoftware_database, tooth_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->update_batch_tooth_action: #{e}"
end
```

#### Using the update_batch_tooth_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_tooth_action_with_http_info(vbasoftware_database, tooth_action)

```ruby
begin
  # Create or Update Batch ToothAction
  data, status_code, headers = api_instance.update_batch_tooth_action_with_http_info(vbasoftware_database, tooth_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->update_batch_tooth_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_action** | [**Array&lt;ToothAction&gt;**](ToothAction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_tooth_action

> <ToothActionVBAResponse> update_tooth_action(vbasoftware_database, tooth_action, tooth_action2)

Update ToothAction

Updates a specific ToothAction.

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

api_instance = Vba::ToothActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
tooth_action = 'tooth_action_example' # String | Tooth Action
tooth_action2 = Vba::ToothAction.new({tooth_action: 'tooth_action_example'}) # ToothAction | 

begin
  # Update ToothAction
  result = api_instance.update_tooth_action(vbasoftware_database, tooth_action, tooth_action2)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->update_tooth_action: #{e}"
end
```

#### Using the update_tooth_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToothActionVBAResponse>, Integer, Hash)> update_tooth_action_with_http_info(vbasoftware_database, tooth_action, tooth_action2)

```ruby
begin
  # Update ToothAction
  data, status_code, headers = api_instance.update_tooth_action_with_http_info(vbasoftware_database, tooth_action, tooth_action2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToothActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ToothActionsApi->update_tooth_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **tooth_action** | **String** | Tooth Action |  |
| **tooth_action2** | [**ToothAction**](ToothAction.md) |  |  |

### Return type

[**ToothActionVBAResponse**](ToothActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

