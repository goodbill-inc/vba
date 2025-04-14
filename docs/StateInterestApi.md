# Vba::StateInterestApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_state_interest**](StateInterestApi.md#create_state_interest) | **POST** /state-interests | Create StateInterest |
| [**delete_state_interest**](StateInterestApi.md#delete_state_interest) | **DELETE** /state-interests/{stateInterestKey} | Delete StateInterest |
| [**get_state_interest**](StateInterestApi.md#get_state_interest) | **GET** /state-interests/{stateInterestKey} | Get StateInterest |
| [**list_state_interest**](StateInterestApi.md#list_state_interest) | **GET** /state-interests | List StateInterest |
| [**update_batch_state_interest**](StateInterestApi.md#update_batch_state_interest) | **PUT** /state-interests-batch | Create or Update Batch StateInterest |
| [**update_state_interest**](StateInterestApi.md#update_state_interest) | **PUT** /state-interests/{stateInterestKey} | Update StateInterest |


## create_state_interest

> <StateInterestVBAResponse> create_state_interest(vbasoftware_database, state_interest)

Create StateInterest

Creates a new StateInterest

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

api_instance = Vba::StateInterestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_interest = Vba::StateInterest.new({state_interest_key: 37, calc_interest_ach_business_days: false, calc_interest_business_days: false, compound_ach_interest: false, compound_interest: false, state: 'state_example'}) # StateInterest | 

begin
  # Create StateInterest
  result = api_instance.create_state_interest(vbasoftware_database, state_interest)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->create_state_interest: #{e}"
end
```

#### Using the create_state_interest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateInterestVBAResponse>, Integer, Hash)> create_state_interest_with_http_info(vbasoftware_database, state_interest)

```ruby
begin
  # Create StateInterest
  data, status_code, headers = api_instance.create_state_interest_with_http_info(vbasoftware_database, state_interest)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateInterestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->create_state_interest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_interest** | [**StateInterest**](StateInterest.md) |  |  |

### Return type

[**StateInterestVBAResponse**](StateInterestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_state_interest

> delete_state_interest(vbasoftware_database, state_interest_key)

Delete StateInterest

Deletes an StateInterest

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

api_instance = Vba::StateInterestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_interest_key = 56 # Integer | StateInterest Key

begin
  # Delete StateInterest
  api_instance.delete_state_interest(vbasoftware_database, state_interest_key)
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->delete_state_interest: #{e}"
end
```

#### Using the delete_state_interest_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_state_interest_with_http_info(vbasoftware_database, state_interest_key)

```ruby
begin
  # Delete StateInterest
  data, status_code, headers = api_instance.delete_state_interest_with_http_info(vbasoftware_database, state_interest_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->delete_state_interest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_interest_key** | **Integer** | StateInterest Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_state_interest

> <StateInterestVBAResponse> get_state_interest(vbasoftware_database, state_interest_key)

Get StateInterest

Gets StateInterest

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

api_instance = Vba::StateInterestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_interest_key = 56 # Integer | StateInterest Key

begin
  # Get StateInterest
  result = api_instance.get_state_interest(vbasoftware_database, state_interest_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->get_state_interest: #{e}"
end
```

#### Using the get_state_interest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateInterestVBAResponse>, Integer, Hash)> get_state_interest_with_http_info(vbasoftware_database, state_interest_key)

```ruby
begin
  # Get StateInterest
  data, status_code, headers = api_instance.get_state_interest_with_http_info(vbasoftware_database, state_interest_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateInterestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->get_state_interest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_interest_key** | **Integer** | StateInterest Key |  |

### Return type

[**StateInterestVBAResponse**](StateInterestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_state_interest

> <StateInterestListVBAResponse> list_state_interest(vbasoftware_database, opts)

List StateInterest

Lists all StateInterest

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

api_instance = Vba::StateInterestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List StateInterest
  result = api_instance.list_state_interest(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->list_state_interest: #{e}"
end
```

#### Using the list_state_interest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateInterestListVBAResponse>, Integer, Hash)> list_state_interest_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List StateInterest
  data, status_code, headers = api_instance.list_state_interest_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateInterestListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->list_state_interest_with_http_info: #{e}"
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

[**StateInterestListVBAResponse**](StateInterestListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_state_interest

> <MultiCodeResponseListVBAResponse> update_batch_state_interest(vbasoftware_database, state_interest)

Create or Update Batch StateInterest

Create or Update multiple StateInterest at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::StateInterestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_interest = [Vba::StateInterest.new({state_interest_key: 37, calc_interest_ach_business_days: false, calc_interest_business_days: false, compound_ach_interest: false, compound_interest: false, state: 'state_example'})] # Array<StateInterest> | 

begin
  # Create or Update Batch StateInterest
  result = api_instance.update_batch_state_interest(vbasoftware_database, state_interest)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->update_batch_state_interest: #{e}"
end
```

#### Using the update_batch_state_interest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_state_interest_with_http_info(vbasoftware_database, state_interest)

```ruby
begin
  # Create or Update Batch StateInterest
  data, status_code, headers = api_instance.update_batch_state_interest_with_http_info(vbasoftware_database, state_interest)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->update_batch_state_interest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_interest** | [**Array&lt;StateInterest&gt;**](StateInterest.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_state_interest

> <StateInterestVBAResponse> update_state_interest(vbasoftware_database, state_interest_key, state_interest)

Update StateInterest

Updates a specific StateInterest.

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

api_instance = Vba::StateInterestApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
state_interest_key = 56 # Integer | StateInterest Key
state_interest = Vba::StateInterest.new({state_interest_key: 37, calc_interest_ach_business_days: false, calc_interest_business_days: false, compound_ach_interest: false, compound_interest: false, state: 'state_example'}) # StateInterest | 

begin
  # Update StateInterest
  result = api_instance.update_state_interest(vbasoftware_database, state_interest_key, state_interest)
  p result
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->update_state_interest: #{e}"
end
```

#### Using the update_state_interest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StateInterestVBAResponse>, Integer, Hash)> update_state_interest_with_http_info(vbasoftware_database, state_interest_key, state_interest)

```ruby
begin
  # Update StateInterest
  data, status_code, headers = api_instance.update_state_interest_with_http_info(vbasoftware_database, state_interest_key, state_interest)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StateInterestVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling StateInterestApi->update_state_interest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **state_interest_key** | **Integer** | StateInterest Key |  |
| **state_interest** | [**StateInterest**](StateInterest.md) |  |  |

### Return type

[**StateInterestVBAResponse**](StateInterestVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

