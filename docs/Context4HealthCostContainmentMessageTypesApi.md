# Vba::Context4HealthCostContainmentMessageTypesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_context4_message_type**](Context4HealthCostContainmentMessageTypesApi.md#create_cost_contain_context4_message_type) | **POST** /context4health-cost-containment-message-types | Create CostContainContext4MessageType |
| [**delete_cost_contain_context4_message_type**](Context4HealthCostContainmentMessageTypesApi.md#delete_cost_contain_context4_message_type) | **DELETE** /context4health-cost-containment-message-types/{messageType} | Delete CostContainContext4MessageType |
| [**get_cost_contain_context4_message_type**](Context4HealthCostContainmentMessageTypesApi.md#get_cost_contain_context4_message_type) | **GET** /context4health-cost-containment-message-types/{messageType} | Get CostContainContext4MessageType |
| [**list_cost_contain_context4_message_type**](Context4HealthCostContainmentMessageTypesApi.md#list_cost_contain_context4_message_type) | **GET** /context4health-cost-containment-message-types | List CostContainContext4MessageType |
| [**update_batch_cost_contain_context4_message_type**](Context4HealthCostContainmentMessageTypesApi.md#update_batch_cost_contain_context4_message_type) | **PUT** /context4health-cost-containment-message-types-batch | Create or Update Batch CostContainContext4MessageType |
| [**update_cost_contain_context4_message_type**](Context4HealthCostContainmentMessageTypesApi.md#update_cost_contain_context4_message_type) | **PUT** /context4health-cost-containment-message-types/{messageType} | Update CostContainContext4MessageType |


## create_cost_contain_context4_message_type

> <CostContainContext4MessageTypeVBAResponse> create_cost_contain_context4_message_type(vbasoftware_database, cost_contain_context4_message_type)

Create CostContainContext4MessageType

Creates a new CostContainContext4MessageType

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

api_instance = Vba::Context4HealthCostContainmentMessageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_message_type = Vba::CostContainContext4MessageType.new({message_type: 'message_type_example'}) # CostContainContext4MessageType | 

begin
  # Create CostContainContext4MessageType
  result = api_instance.create_cost_contain_context4_message_type(vbasoftware_database, cost_contain_context4_message_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->create_cost_contain_context4_message_type: #{e}"
end
```

#### Using the create_cost_contain_context4_message_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4MessageTypeVBAResponse>, Integer, Hash)> create_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type)

```ruby
begin
  # Create CostContainContext4MessageType
  data, status_code, headers = api_instance.create_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4MessageTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->create_cost_contain_context4_message_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_message_type** | [**CostContainContext4MessageType**](CostContainContext4MessageType.md) |  |  |

### Return type

[**CostContainContext4MessageTypeVBAResponse**](CostContainContext4MessageTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_context4_message_type

> delete_cost_contain_context4_message_type(vbasoftware_database, message_type)

Delete CostContainContext4MessageType

Deletes an CostContainContext4MessageType

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

api_instance = Vba::Context4HealthCostContainmentMessageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_type = 'message_type_example' # String | MessageType

begin
  # Delete CostContainContext4MessageType
  api_instance.delete_cost_contain_context4_message_type(vbasoftware_database, message_type)
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->delete_cost_contain_context4_message_type: #{e}"
end
```

#### Using the delete_cost_contain_context4_message_type_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type)

```ruby
begin
  # Delete CostContainContext4MessageType
  data, status_code, headers = api_instance.delete_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->delete_cost_contain_context4_message_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_type** | **String** | MessageType |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_context4_message_type

> <CostContainContext4MessageTypeVBAResponse> get_cost_contain_context4_message_type(vbasoftware_database, message_type)

Get CostContainContext4MessageType

Gets CostContainContext4MessageType

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

api_instance = Vba::Context4HealthCostContainmentMessageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_type = 'message_type_example' # String | MessageType

begin
  # Get CostContainContext4MessageType
  result = api_instance.get_cost_contain_context4_message_type(vbasoftware_database, message_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->get_cost_contain_context4_message_type: #{e}"
end
```

#### Using the get_cost_contain_context4_message_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4MessageTypeVBAResponse>, Integer, Hash)> get_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type)

```ruby
begin
  # Get CostContainContext4MessageType
  data, status_code, headers = api_instance.get_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4MessageTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->get_cost_contain_context4_message_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_type** | **String** | MessageType |  |

### Return type

[**CostContainContext4MessageTypeVBAResponse**](CostContainContext4MessageTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_context4_message_type

> <CostContainContext4MessageTypeListVBAResponse> list_cost_contain_context4_message_type(vbasoftware_database, opts)

List CostContainContext4MessageType

Lists all CostContainContext4MessageType

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

api_instance = Vba::Context4HealthCostContainmentMessageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainContext4MessageType
  result = api_instance.list_cost_contain_context4_message_type(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->list_cost_contain_context4_message_type: #{e}"
end
```

#### Using the list_cost_contain_context4_message_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4MessageTypeListVBAResponse>, Integer, Hash)> list_cost_contain_context4_message_type_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainContext4MessageType
  data, status_code, headers = api_instance.list_cost_contain_context4_message_type_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4MessageTypeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->list_cost_contain_context4_message_type_with_http_info: #{e}"
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

[**CostContainContext4MessageTypeListVBAResponse**](CostContainContext4MessageTypeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_context4_message_type

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_context4_message_type(vbasoftware_database, cost_contain_context4_message_type)

Create or Update Batch CostContainContext4MessageType

Create or Update multiple CostContainContext4MessageType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::Context4HealthCostContainmentMessageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_context4_message_type = [Vba::CostContainContext4MessageType.new({message_type: 'message_type_example'})] # Array<CostContainContext4MessageType> | 

begin
  # Create or Update Batch CostContainContext4MessageType
  result = api_instance.update_batch_cost_contain_context4_message_type(vbasoftware_database, cost_contain_context4_message_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->update_batch_cost_contain_context4_message_type: #{e}"
end
```

#### Using the update_batch_cost_contain_context4_message_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type)

```ruby
begin
  # Create or Update Batch CostContainContext4MessageType
  data, status_code, headers = api_instance.update_batch_cost_contain_context4_message_type_with_http_info(vbasoftware_database, cost_contain_context4_message_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->update_batch_cost_contain_context4_message_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_context4_message_type** | [**Array&lt;CostContainContext4MessageType&gt;**](CostContainContext4MessageType.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_context4_message_type

> <CostContainContext4MessageTypeVBAResponse> update_cost_contain_context4_message_type(vbasoftware_database, message_type, cost_contain_context4_message_type)

Update CostContainContext4MessageType

Updates a specific CostContainContext4MessageType.

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

api_instance = Vba::Context4HealthCostContainmentMessageTypesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
message_type = 'message_type_example' # String | MessageType
cost_contain_context4_message_type = Vba::CostContainContext4MessageType.new({message_type: 'message_type_example'}) # CostContainContext4MessageType | 

begin
  # Update CostContainContext4MessageType
  result = api_instance.update_cost_contain_context4_message_type(vbasoftware_database, message_type, cost_contain_context4_message_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->update_cost_contain_context4_message_type: #{e}"
end
```

#### Using the update_cost_contain_context4_message_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainContext4MessageTypeVBAResponse>, Integer, Hash)> update_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, cost_contain_context4_message_type)

```ruby
begin
  # Update CostContainContext4MessageType
  data, status_code, headers = api_instance.update_cost_contain_context4_message_type_with_http_info(vbasoftware_database, message_type, cost_contain_context4_message_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainContext4MessageTypeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling Context4HealthCostContainmentMessageTypesApi->update_cost_contain_context4_message_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **message_type** | **String** | MessageType |  |
| **cost_contain_context4_message_type** | [**CostContainContext4MessageType**](CostContainContext4MessageType.md) |  |  |

### Return type

[**CostContainContext4MessageTypeVBAResponse**](CostContainContext4MessageTypeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

