# Vba::StatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_state**](StatesApi.md#create_state) | **POST** /states | Create State |
| [**delete_state**](StatesApi.md#delete_state) | **DELETE** /states/{stateAbbrev} | Delete State |
| [**get_state**](StatesApi.md#get_state) | **GET** /states/{stateAbbrev} | Get State |
| [**list_state**](StatesApi.md#list_state) | **GET** /states | List State |
| [**update_batch_state**](StatesApi.md#update_batch_state) | **PUT** /states-batch | Create or Update Batch State |
| [**update_state**](StatesApi.md#update_state) | **PUT** /states/{stateAbbrev} | Update State |


## create_state

> <StateVBAResponse> create_state(vbasoftware_database, state)

Create State

Creates a new State

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

api_instance = Vba::StatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state = Vba::State.new({state_abbrev: 'state_abbrev_example', apply_state_tax: false, calc_interest_ach_business_days: false, calc_interest_business_days: false, default_percentage_election: 3.56, use_percentage_election: false, use_state_interest_settings: false}) # State | 

begin
  # Create State
  result = api_instance.create_state(vbasoftware_database, state)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->create_state: #{e}"
end
```

#### Using the create_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateVBAResponse>, Integer, Hash)> create_state_with_http_info(vbasoftware_database, state)

```ruby
begin
  # Create State
  data, status_code, headers = api_instance.create_state_with_http_info(vbasoftware_database, state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->create_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state** | [**State**](State.md) |  |  |

### Return type

[**StateVBAResponse**](StateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_state

> delete_state(vbasoftware_database, state_abbrev)

Delete State

Deletes an State

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

api_instance = Vba::StatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_abbrev = 'state_abbrev_example' # String | State Abbreviation

begin
  # Delete State
  api_instance.delete_state(vbasoftware_database, state_abbrev)
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->delete_state: #{e}"
end
```

#### Using the delete_state_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_state_with_http_info(vbasoftware_database, state_abbrev)

```ruby
begin
  # Delete State
  data, status_code, headers = api_instance.delete_state_with_http_info(vbasoftware_database, state_abbrev)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->delete_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_abbrev** | **String** | State Abbreviation |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_state

> <StateVBAResponse> get_state(vbasoftware_database, state_abbrev)

Get State

Gets State

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

api_instance = Vba::StatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_abbrev = 'state_abbrev_example' # String | State Abbreviation

begin
  # Get State
  result = api_instance.get_state(vbasoftware_database, state_abbrev)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->get_state: #{e}"
end
```

#### Using the get_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateVBAResponse>, Integer, Hash)> get_state_with_http_info(vbasoftware_database, state_abbrev)

```ruby
begin
  # Get State
  data, status_code, headers = api_instance.get_state_with_http_info(vbasoftware_database, state_abbrev)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->get_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_abbrev** | **String** | State Abbreviation |  |

### Return type

[**StateVBAResponse**](StateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_state

> <StateListVBAResponse> list_state(vbasoftware_database)

List State

Lists all State given a specific 

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

api_instance = Vba::StatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database

begin
  # List State
  result = api_instance.list_state(vbasoftware_database)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->list_state: #{e}"
end
```

#### Using the list_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateListVBAResponse>, Integer, Hash)> list_state_with_http_info(vbasoftware_database)

```ruby
begin
  # List State
  data, status_code, headers = api_instance.list_state_with_http_info(vbasoftware_database)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->list_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |

### Return type

[**StateListVBAResponse**](StateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_state

> <MultiCodeResponseListVBAResponse> update_batch_state(vbasoftware_database, state)

Create or Update Batch State

Create or Update multiple State at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::StatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state = [Vba::State.new({state_abbrev: 'state_abbrev_example', apply_state_tax: false, calc_interest_ach_business_days: false, calc_interest_business_days: false, default_percentage_election: 3.56, use_percentage_election: false, use_state_interest_settings: false})] # Array<State> | 

begin
  # Create or Update Batch State
  result = api_instance.update_batch_state(vbasoftware_database, state)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->update_batch_state: #{e}"
end
```

#### Using the update_batch_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_state_with_http_info(vbasoftware_database, state)

```ruby
begin
  # Create or Update Batch State
  data, status_code, headers = api_instance.update_batch_state_with_http_info(vbasoftware_database, state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->update_batch_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state** | [**Array&lt;State&gt;**](State.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_state

> <StateVBAResponse> update_state(vbasoftware_database, state_abbrev, state)

Update State

Updates a specific State.

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

api_instance = Vba::StatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_abbrev = 'state_abbrev_example' # String | State Abbreviation
state = Vba::State.new({state_abbrev: 'state_abbrev_example', apply_state_tax: false, calc_interest_ach_business_days: false, calc_interest_business_days: false, default_percentage_election: 3.56, use_percentage_election: false, use_state_interest_settings: false}) # State | 

begin
  # Update State
  result = api_instance.update_state(vbasoftware_database, state_abbrev, state)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->update_state: #{e}"
end
```

#### Using the update_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateVBAResponse>, Integer, Hash)> update_state_with_http_info(vbasoftware_database, state_abbrev, state)

```ruby
begin
  # Update State
  data, status_code, headers = api_instance.update_state_with_http_info(vbasoftware_database, state_abbrev, state)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StatesApi->update_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_abbrev** | **String** | State Abbreviation |  |
| **state** | [**State**](State.md) |  |  |

### Return type

[**StateVBAResponse**](StateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

