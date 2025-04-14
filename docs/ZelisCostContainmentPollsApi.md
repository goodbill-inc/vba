# Vba::ZelisCostContainmentPollsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cost_contain_zelis_poll**](ZelisCostContainmentPollsApi.md#create_cost_contain_zelis_poll) | **POST** /zelis-polls | Create CostContainZelisPoll |
| [**delete_cost_contain_zelis_poll**](ZelisCostContainmentPollsApi.md#delete_cost_contain_zelis_poll) | **DELETE** /zelis-polls/{costContainZelisPollKey} | Delete CostContainZelisPoll |
| [**get_cost_contain_zelis_poll**](ZelisCostContainmentPollsApi.md#get_cost_contain_zelis_poll) | **GET** /zelis-polls/{costContainZelisPollKey} | Get CostContainZelisPoll |
| [**list_cost_contain_zelis_poll**](ZelisCostContainmentPollsApi.md#list_cost_contain_zelis_poll) | **GET** /zelis-polls | List CostContainZelisPoll |
| [**update_batch_cost_contain_zelis_poll**](ZelisCostContainmentPollsApi.md#update_batch_cost_contain_zelis_poll) | **PUT** /zelis-polls-batch | Create or Update Batch CostContainZelisPoll |
| [**update_cost_contain_zelis_poll**](ZelisCostContainmentPollsApi.md#update_cost_contain_zelis_poll) | **PUT** /zelis-polls/{costContainZelisPollKey} | Update CostContainZelisPoll |


## create_cost_contain_zelis_poll

> <CostContainZelisPollVBAResponse> create_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll)

Create CostContainZelisPoll

Creates a new CostContainZelisPoll

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

api_instance = Vba::ZelisCostContainmentPollsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_poll = Vba::CostContainZelisPoll.new({cost_contain_zelis_poll_key: 37, batch_claim: 37, batch_number: 37, transaction_id: 'transaction_id_example'}) # CostContainZelisPoll | 

begin
  # Create CostContainZelisPoll
  result = api_instance.create_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->create_cost_contain_zelis_poll: #{e}"
end
```

#### Using the create_cost_contain_zelis_poll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisPollVBAResponse>, Integer, Hash)> create_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll)

```ruby
begin
  # Create CostContainZelisPoll
  data, status_code, headers = api_instance.create_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisPollVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->create_cost_contain_zelis_poll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_poll** | [**CostContainZelisPoll**](CostContainZelisPoll.md) |  |  |

### Return type

[**CostContainZelisPollVBAResponse**](CostContainZelisPollVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_cost_contain_zelis_poll

> delete_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll_key)

Delete CostContainZelisPoll

Deletes an CostContainZelisPoll

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

api_instance = Vba::ZelisCostContainmentPollsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_poll_key = 56 # Integer | CostContainZelisPoll Key

begin
  # Delete CostContainZelisPoll
  api_instance.delete_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll_key)
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->delete_cost_contain_zelis_poll: #{e}"
end
```

#### Using the delete_cost_contain_zelis_poll_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll_key)

```ruby
begin
  # Delete CostContainZelisPoll
  data, status_code, headers = api_instance.delete_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->delete_cost_contain_zelis_poll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_poll_key** | **Integer** | CostContainZelisPoll Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_cost_contain_zelis_poll

> <CostContainZelisPollVBAResponse> get_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll_key)

Get CostContainZelisPoll

Gets CostContainZelisPoll

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

api_instance = Vba::ZelisCostContainmentPollsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_poll_key = 56 # Integer | CostContainZelisPoll Key

begin
  # Get CostContainZelisPoll
  result = api_instance.get_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->get_cost_contain_zelis_poll: #{e}"
end
```

#### Using the get_cost_contain_zelis_poll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisPollVBAResponse>, Integer, Hash)> get_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll_key)

```ruby
begin
  # Get CostContainZelisPoll
  data, status_code, headers = api_instance.get_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisPollVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->get_cost_contain_zelis_poll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_poll_key** | **Integer** | CostContainZelisPoll Key |  |

### Return type

[**CostContainZelisPollVBAResponse**](CostContainZelisPollVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_cost_contain_zelis_poll

> <CostContainZelisPollListVBAResponse> list_cost_contain_zelis_poll(vbasoftware_database, opts)

List CostContainZelisPoll

Lists all CostContainZelisPoll

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

api_instance = Vba::ZelisCostContainmentPollsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CostContainZelisPoll
  result = api_instance.list_cost_contain_zelis_poll(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->list_cost_contain_zelis_poll: #{e}"
end
```

#### Using the list_cost_contain_zelis_poll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisPollListVBAResponse>, Integer, Hash)> list_cost_contain_zelis_poll_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CostContainZelisPoll
  data, status_code, headers = api_instance.list_cost_contain_zelis_poll_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisPollListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->list_cost_contain_zelis_poll_with_http_info: #{e}"
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

[**CostContainZelisPollListVBAResponse**](CostContainZelisPollListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_cost_contain_zelis_poll

> <MultiCodeResponseListVBAResponse> update_batch_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll)

Create or Update Batch CostContainZelisPoll

Create or Update multiple CostContainZelisPoll at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ZelisCostContainmentPollsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_poll = [Vba::CostContainZelisPoll.new({cost_contain_zelis_poll_key: 37, batch_claim: 37, batch_number: 37, transaction_id: 'transaction_id_example'})] # Array<CostContainZelisPoll> | 

begin
  # Create or Update Batch CostContainZelisPoll
  result = api_instance.update_batch_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->update_batch_cost_contain_zelis_poll: #{e}"
end
```

#### Using the update_batch_cost_contain_zelis_poll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll)

```ruby
begin
  # Create or Update Batch CostContainZelisPoll
  data, status_code, headers = api_instance.update_batch_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->update_batch_cost_contain_zelis_poll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_poll** | [**Array&lt;CostContainZelisPoll&gt;**](CostContainZelisPoll.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_cost_contain_zelis_poll

> <CostContainZelisPollVBAResponse> update_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll_key, cost_contain_zelis_poll)

Update CostContainZelisPoll

Updates a specific CostContainZelisPoll.

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

api_instance = Vba::ZelisCostContainmentPollsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
cost_contain_zelis_poll_key = 56 # Integer | CostContainZelisPoll Key
cost_contain_zelis_poll = Vba::CostContainZelisPoll.new({cost_contain_zelis_poll_key: 37, batch_claim: 37, batch_number: 37, transaction_id: 'transaction_id_example'}) # CostContainZelisPoll | 

begin
  # Update CostContainZelisPoll
  result = api_instance.update_cost_contain_zelis_poll(vbasoftware_database, cost_contain_zelis_poll_key, cost_contain_zelis_poll)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->update_cost_contain_zelis_poll: #{e}"
end
```

#### Using the update_cost_contain_zelis_poll_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CostContainZelisPollVBAResponse>, Integer, Hash)> update_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll_key, cost_contain_zelis_poll)

```ruby
begin
  # Update CostContainZelisPoll
  data, status_code, headers = api_instance.update_cost_contain_zelis_poll_with_http_info(vbasoftware_database, cost_contain_zelis_poll_key, cost_contain_zelis_poll)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CostContainZelisPollVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ZelisCostContainmentPollsApi->update_cost_contain_zelis_poll_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **cost_contain_zelis_poll_key** | **Integer** | CostContainZelisPoll Key |  |
| **cost_contain_zelis_poll** | [**CostContainZelisPoll**](CostContainZelisPoll.md) |  |  |

### Return type

[**CostContainZelisPollVBAResponse**](CostContainZelisPollVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

