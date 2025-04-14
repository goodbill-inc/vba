# Vba::GroupNetworkAddOnsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_group_network_add_on**](GroupNetworkAddOnsApi.md#create_group_network_add_on) | **POST** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}/add-ons | Create GroupNetworkAddOn |
| [**delete_group_network_add_on**](GroupNetworkAddOnsApi.md#delete_group_network_add_on) | **DELETE** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}/add-ons/{groupNetworkAddOnKey} | Delete GroupNetworkAddOn |
| [**get_group_network_add_on**](GroupNetworkAddOnsApi.md#get_group_network_add_on) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}/add-ons/{groupNetworkAddOnKey} | Get GroupNetworkAddOn |
| [**list_group_network_add_on**](GroupNetworkAddOnsApi.md#list_group_network_add_on) | **GET** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}/add-ons | List GroupNetworkAddOn |
| [**update_batch_group_network_add_on**](GroupNetworkAddOnsApi.md#update_batch_group_network_add_on) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}/add-ons-batch | Create or Update Batch GroupNetworkAddOn |
| [**update_group_network_add_on**](GroupNetworkAddOnsApi.md#update_group_network_add_on) | **PUT** /groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}/add-ons/{groupNetworkAddOnKey} | Update GroupNetworkAddOn |


## create_group_network_add_on

> <GroupNetworkAddOnVBAResponse> create_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)

Create GroupNetworkAddOn

Creates a new GroupNetworkAddOn

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

api_instance = Vba::GroupNetworkAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
group_network_add_on = Vba::GroupNetworkAddOn.new({group_network_add_on_key: 37, discount_payment_pct: false, discount_threshold_pct: false, group_id: 'group_id_example', incurred_from: Time.now, network_id: 'network_id_example'}) # GroupNetworkAddOn | 

begin
  # Create GroupNetworkAddOn
  result = api_instance.create_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->create_group_network_add_on: #{e}"
end
```

#### Using the create_group_network_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkAddOnVBAResponse>, Integer, Hash)> create_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)

```ruby
begin
  # Create GroupNetworkAddOn
  data, status_code, headers = api_instance.create_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkAddOnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->create_group_network_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **group_network_add_on** | [**GroupNetworkAddOn**](GroupNetworkAddOn.md) |  |  |

### Return type

[**GroupNetworkAddOnVBAResponse**](GroupNetworkAddOnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_group_network_add_on

> delete_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)

Delete GroupNetworkAddOn

Deletes an GroupNetworkAddOn

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

api_instance = Vba::GroupNetworkAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
group_network_add_on_key = 56 # Integer | GroupNetworkAddOn Key

begin
  # Delete GroupNetworkAddOn
  api_instance.delete_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->delete_group_network_add_on: #{e}"
end
```

#### Using the delete_group_network_add_on_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)

```ruby
begin
  # Delete GroupNetworkAddOn
  data, status_code, headers = api_instance.delete_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->delete_group_network_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **group_network_add_on_key** | **Integer** | GroupNetworkAddOn Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_group_network_add_on

> <GroupNetworkAddOnVBAResponse> get_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)

Get GroupNetworkAddOn

Gets GroupNetworkAddOn

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

api_instance = Vba::GroupNetworkAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
group_network_add_on_key = 56 # Integer | GroupNetworkAddOn Key

begin
  # Get GroupNetworkAddOn
  result = api_instance.get_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->get_group_network_add_on: #{e}"
end
```

#### Using the get_group_network_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkAddOnVBAResponse>, Integer, Hash)> get_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)

```ruby
begin
  # Get GroupNetworkAddOn
  data, status_code, headers = api_instance.get_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkAddOnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->get_group_network_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **group_network_add_on_key** | **Integer** | GroupNetworkAddOn Key |  |

### Return type

[**GroupNetworkAddOnVBAResponse**](GroupNetworkAddOnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_group_network_add_on

> <GroupNetworkAddOnListVBAResponse> list_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts)

List GroupNetworkAddOn

Lists all GroupNetworkAddOn for the given groupID

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

api_instance = Vba::GroupNetworkAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupNetworkAddOn
  result = api_instance.list_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->list_group_network_add_on: #{e}"
end
```

#### Using the list_group_network_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkAddOnListVBAResponse>, Integer, Hash)> list_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts)

```ruby
begin
  # List GroupNetworkAddOn
  data, status_code, headers = api_instance.list_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkAddOnListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->list_group_network_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**GroupNetworkAddOnListVBAResponse**](GroupNetworkAddOnListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_group_network_add_on

> <MultiCodeResponseListVBAResponse> update_batch_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)

Create or Update Batch GroupNetworkAddOn

Create or Update multiple GroupNetworkAddOn at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupNetworkAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
group_network_add_on = [Vba::GroupNetworkAddOn.new({group_network_add_on_key: 37, discount_payment_pct: false, discount_threshold_pct: false, group_id: 'group_id_example', incurred_from: Time.now, network_id: 'network_id_example'})] # Array<GroupNetworkAddOn> | 

begin
  # Create or Update Batch GroupNetworkAddOn
  result = api_instance.update_batch_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->update_batch_group_network_add_on: #{e}"
end
```

#### Using the update_batch_group_network_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)

```ruby
begin
  # Create or Update Batch GroupNetworkAddOn
  data, status_code, headers = api_instance.update_batch_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->update_batch_group_network_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **group_network_add_on** | [**Array&lt;GroupNetworkAddOn&gt;**](GroupNetworkAddOn.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_group_network_add_on

> <GroupNetworkAddOnVBAResponse> update_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key, group_network_add_on)

Update GroupNetworkAddOn

Updates a specific GroupNetworkAddOn.

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

api_instance = Vba::GroupNetworkAddOnsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Coverage Start
network_id = 'network_id_example' # String | NetworkID
state = 'state_example' # String | State
group_network_add_on_key = 56 # Integer | GroupNetworkAddOn Key
group_network_add_on = Vba::GroupNetworkAddOn.new({group_network_add_on_key: 37, discount_payment_pct: false, discount_threshold_pct: false, group_id: 'group_id_example', incurred_from: Time.now, network_id: 'network_id_example'}) # GroupNetworkAddOn | 

begin
  # Update GroupNetworkAddOn
  result = api_instance.update_group_network_add_on(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key, group_network_add_on)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->update_group_network_add_on: #{e}"
end
```

#### Using the update_group_network_add_on_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupNetworkAddOnVBAResponse>, Integer, Hash)> update_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key, group_network_add_on)

```ruby
begin
  # Update GroupNetworkAddOn
  data, status_code, headers = api_instance.update_group_network_add_on_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network_add_on_key, group_network_add_on)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupNetworkAddOnVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupNetworkAddOnsApi->update_group_network_add_on_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **coverage_start** | **Time** | Coverage Start |  |
| **network_id** | **String** | NetworkID |  |
| **state** | **String** | State |  |
| **group_network_add_on_key** | **Integer** | GroupNetworkAddOn Key |  |
| **group_network_add_on** | [**GroupNetworkAddOn**](GroupNetworkAddOn.md) |  |  |

### Return type

[**GroupNetworkAddOnVBAResponse**](GroupNetworkAddOnVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

