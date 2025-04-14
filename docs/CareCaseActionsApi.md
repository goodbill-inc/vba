# Vba::CareCaseActionsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_action**](CareCaseActionsApi.md#create_care_case_action) | **POST** /cases/{caseKey}/actions | Create CareCaseAction |
| [**delete_care_case_action**](CareCaseActionsApi.md#delete_care_case_action) | **DELETE** /cases/{caseKey}/actions/{careCaseActionKey} | Delete CareCaseAction |
| [**get_care_case_action**](CareCaseActionsApi.md#get_care_case_action) | **GET** /cases/{caseKey}/actions/{careCaseActionKey} | Get CareCaseAction |
| [**list_care_case_action**](CareCaseActionsApi.md#list_care_case_action) | **GET** /cases/{caseKey}/actions | List CareCaseAction |
| [**update_batch_care_case_action**](CareCaseActionsApi.md#update_batch_care_case_action) | **PUT** /cases/{caseKey}/actions-batch | Create or Update Batch CareCaseAction |
| [**update_care_case_action**](CareCaseActionsApi.md#update_care_case_action) | **PUT** /cases/{caseKey}/actions/{careCaseActionKey} | Update CareCaseAction |


## create_care_case_action

> <CareCaseActionVBAResponse> create_care_case_action(vbasoftware_database, case_key, care_case_action)

Create CareCaseAction

Creates a new CareCaseAction

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

api_instance = Vba::CareCaseActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_action = Vba::CareCaseAction.new({care_case_action_key: 37, case_key: 37}) # CareCaseAction | 

begin
  # Create CareCaseAction
  result = api_instance.create_care_case_action(vbasoftware_database, case_key, care_case_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->create_care_case_action: #{e}"
end
```

#### Using the create_care_case_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseActionVBAResponse>, Integer, Hash)> create_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action)

```ruby
begin
  # Create CareCaseAction
  data, status_code, headers = api_instance.create_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->create_care_case_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_action** | [**CareCaseAction**](CareCaseAction.md) |  |  |

### Return type

[**CareCaseActionVBAResponse**](CareCaseActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_action

> delete_care_case_action(vbasoftware_database, case_key, care_case_action_key)

Delete CareCaseAction

Deletes an CareCaseAction

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

api_instance = Vba::CareCaseActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_action_key = 56 # Integer | CareCaseAction Key

begin
  # Delete CareCaseAction
  api_instance.delete_care_case_action(vbasoftware_database, case_key, care_case_action_key)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->delete_care_case_action: #{e}"
end
```

#### Using the delete_care_case_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key)

```ruby
begin
  # Delete CareCaseAction
  data, status_code, headers = api_instance.delete_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->delete_care_case_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_action_key** | **Integer** | CareCaseAction Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_action

> <CareCaseActionVBAResponse> get_care_case_action(vbasoftware_database, case_key, care_case_action_key)

Get CareCaseAction

Gets CareCaseAction

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

api_instance = Vba::CareCaseActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_action_key = 56 # Integer | CareCaseAction Key

begin
  # Get CareCaseAction
  result = api_instance.get_care_case_action(vbasoftware_database, case_key, care_case_action_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->get_care_case_action: #{e}"
end
```

#### Using the get_care_case_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseActionVBAResponse>, Integer, Hash)> get_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key)

```ruby
begin
  # Get CareCaseAction
  data, status_code, headers = api_instance.get_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->get_care_case_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_action_key** | **Integer** | CareCaseAction Key |  |

### Return type

[**CareCaseActionVBAResponse**](CareCaseActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_action

> <CareCaseActionListVBAResponse> list_care_case_action(vbasoftware_database, case_key, opts)

List CareCaseAction

Lists all CareCaseAction for the given caseKey

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

api_instance = Vba::CareCaseActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseAction
  result = api_instance.list_care_case_action(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->list_care_case_action: #{e}"
end
```

#### Using the list_care_case_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseActionListVBAResponse>, Integer, Hash)> list_care_case_action_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseAction
  data, status_code, headers = api_instance.list_care_case_action_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseActionListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->list_care_case_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**CareCaseActionListVBAResponse**](CareCaseActionListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_action

> <MultiCodeResponseListVBAResponse> update_batch_care_case_action(vbasoftware_database, case_key, care_case_action)

Create or Update Batch CareCaseAction

Create or Update multiple CareCaseAction at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_action = [Vba::CareCaseAction.new({care_case_action_key: 37, case_key: 37})] # Array<CareCaseAction> | 

begin
  # Create or Update Batch CareCaseAction
  result = api_instance.update_batch_care_case_action(vbasoftware_database, case_key, care_case_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->update_batch_care_case_action: #{e}"
end
```

#### Using the update_batch_care_case_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action)

```ruby
begin
  # Create or Update Batch CareCaseAction
  data, status_code, headers = api_instance.update_batch_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->update_batch_care_case_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_action** | [**Array&lt;CareCaseAction&gt;**](CareCaseAction.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_action

> <CareCaseActionVBAResponse> update_care_case_action(vbasoftware_database, case_key, care_case_action_key, care_case_action)

Update CareCaseAction

Updates a specific CareCaseAction.

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

api_instance = Vba::CareCaseActionsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_action_key = 56 # Integer | CareCaseAction Key
care_case_action = Vba::CareCaseAction.new({care_case_action_key: 37, case_key: 37}) # CareCaseAction | 

begin
  # Update CareCaseAction
  result = api_instance.update_care_case_action(vbasoftware_database, case_key, care_case_action_key, care_case_action)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->update_care_case_action: #{e}"
end
```

#### Using the update_care_case_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseActionVBAResponse>, Integer, Hash)> update_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, care_case_action)

```ruby
begin
  # Update CareCaseAction
  data, status_code, headers = api_instance.update_care_case_action_with_http_info(vbasoftware_database, case_key, care_case_action_key, care_case_action)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseActionVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseActionsApi->update_care_case_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_action_key** | **Integer** | CareCaseAction Key |  |
| **care_case_action** | [**CareCaseAction**](CareCaseAction.md) |  |  |

### Return type

[**CareCaseActionVBAResponse**](CareCaseActionVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

