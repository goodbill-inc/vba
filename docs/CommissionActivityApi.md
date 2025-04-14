# Vba::CommissionActivityApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_commission_activity**](CommissionActivityApi.md#create_commission_activity) | **POST** /commission-activities | Create CommissionActivity |
| [**delete_commission_activity**](CommissionActivityApi.md#delete_commission_activity) | **DELETE** /commission-activities/{commActivityKey} | Delete CommissionActivity |
| [**get_commission_activity**](CommissionActivityApi.md#get_commission_activity) | **GET** /commission-activities/{commActivityKey} | Get CommissionActivity |
| [**list_commission_activity**](CommissionActivityApi.md#list_commission_activity) | **GET** /commission-activities | List CommissionActivity |
| [**undo_by_rep_commission_activity**](CommissionActivityApi.md#undo_by_rep_commission_activity) | **POST** /commission-activities-undo-by-rep/{commActivityKey} | Undo CommissionActivity by Rep or Group |
| [**undo_commission_activity**](CommissionActivityApi.md#undo_commission_activity) | **POST** /commission-activities-undo/{commActivityKey} | Undo CommissionActivity |
| [**update_batch_commission_activity**](CommissionActivityApi.md#update_batch_commission_activity) | **PUT** /commission-activities-batch | Create or Update Batch CommissionActivity |
| [**update_commission_activity**](CommissionActivityApi.md#update_commission_activity) | **PUT** /commission-activities/{commActivityKey} | Update CommissionActivity |


## create_commission_activity

> <CommissionActivityVBAResponse> create_commission_activity(vbasoftware_database, commission_activity)

Create CommissionActivity

Creates a new CommissionActivity

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_activity = Vba::CommissionActivity.new({commission_activity_key: 37}) # CommissionActivity | 

begin
  # Create CommissionActivity
  result = api_instance.create_commission_activity(vbasoftware_database, commission_activity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->create_commission_activity: #{e}"
end
```

#### Using the create_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> create_commission_activity_with_http_info(vbasoftware_database, commission_activity)

```ruby
begin
  # Create CommissionActivity
  data, status_code, headers = api_instance.create_commission_activity_with_http_info(vbasoftware_database, commission_activity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->create_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_activity** | [**CommissionActivity**](CommissionActivity.md) |  |  |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_commission_activity

> delete_commission_activity(vbasoftware_database, comm_activity_key)

Delete CommissionActivity

Deletes an CommissionActivity

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key

begin
  # Delete CommissionActivity
  api_instance.delete_commission_activity(vbasoftware_database, comm_activity_key)
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->delete_commission_activity: #{e}"
end
```

#### Using the delete_commission_activity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commission_activity_with_http_info(vbasoftware_database, comm_activity_key)

```ruby
begin
  # Delete CommissionActivity
  data, status_code, headers = api_instance.delete_commission_activity_with_http_info(vbasoftware_database, comm_activity_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->delete_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commission_activity

> <CommissionActivityVBAResponse> get_commission_activity(vbasoftware_database, comm_activity_key)

Get CommissionActivity

Gets CommissionActivity

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key

begin
  # Get CommissionActivity
  result = api_instance.get_commission_activity(vbasoftware_database, comm_activity_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->get_commission_activity: #{e}"
end
```

#### Using the get_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> get_commission_activity_with_http_info(vbasoftware_database, comm_activity_key)

```ruby
begin
  # Get CommissionActivity
  data, status_code, headers = api_instance.get_commission_activity_with_http_info(vbasoftware_database, comm_activity_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->get_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_commission_activity

> <CommissionActivityListVBAResponse> list_commission_activity(vbasoftware_database, opts)

List CommissionActivity

Lists all CommissionActivity

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CommissionActivity
  result = api_instance.list_commission_activity(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->list_commission_activity: #{e}"
end
```

#### Using the list_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityListVBAResponse>, Integer, Hash)> list_commission_activity_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List CommissionActivity
  data, status_code, headers = api_instance.list_commission_activity_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->list_commission_activity_with_http_info: #{e}"
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

[**CommissionActivityListVBAResponse**](CommissionActivityListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## undo_by_rep_commission_activity

> <CommissionActivityVBAResponse> undo_by_rep_commission_activity(vbasoftware_database, comm_activity_key, opts)

Undo CommissionActivity by Rep or Group

Undo Commissions by Commission Activity based on the passed in optional parameters of commAgencyRep or groupId.  Group undo takes priory if passed in with a Rep Key.

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
opts = {
  undo_user: 'undo_user_example', # String | Undo User
  group_id: 'group_id_example', # String | Group ID
  comm_agency_rep_key: 56 # Integer | Agency Rep Key
}

begin
  # Undo CommissionActivity by Rep or Group
  result = api_instance.undo_by_rep_commission_activity(vbasoftware_database, comm_activity_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->undo_by_rep_commission_activity: #{e}"
end
```

#### Using the undo_by_rep_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> undo_by_rep_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)

```ruby
begin
  # Undo CommissionActivity by Rep or Group
  data, status_code, headers = api_instance.undo_by_rep_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->undo_by_rep_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **undo_user** | **String** | Undo User | [optional] |
| **group_id** | **String** | Group ID | [optional] |
| **comm_agency_rep_key** | **Integer** | Agency Rep Key | [optional] |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## undo_commission_activity

> <CommissionActivityVBAResponse> undo_commission_activity(vbasoftware_database, comm_activity_key, opts)

Undo CommissionActivity

Undo Commissions by Commission Activity

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
opts = {
  undo_user: 'undo_user_example' # String | Undo User
}

begin
  # Undo CommissionActivity
  result = api_instance.undo_commission_activity(vbasoftware_database, comm_activity_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->undo_commission_activity: #{e}"
end
```

#### Using the undo_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> undo_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)

```ruby
begin
  # Undo CommissionActivity
  data, status_code, headers = api_instance.undo_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->undo_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **undo_user** | **String** | Undo User | [optional] |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_commission_activity

> <MultiCodeResponseListVBAResponse> update_batch_commission_activity(vbasoftware_database, commission_activity)

Create or Update Batch CommissionActivity

Create or Update multiple CommissionActivity at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
commission_activity = [Vba::CommissionActivity.new({commission_activity_key: 37})] # Array<CommissionActivity> | 

begin
  # Create or Update Batch CommissionActivity
  result = api_instance.update_batch_commission_activity(vbasoftware_database, commission_activity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->update_batch_commission_activity: #{e}"
end
```

#### Using the update_batch_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_commission_activity_with_http_info(vbasoftware_database, commission_activity)

```ruby
begin
  # Create or Update Batch CommissionActivity
  data, status_code, headers = api_instance.update_batch_commission_activity_with_http_info(vbasoftware_database, commission_activity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->update_batch_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **commission_activity** | [**Array&lt;CommissionActivity&gt;**](CommissionActivity.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_commission_activity

> <CommissionActivityVBAResponse> update_commission_activity(vbasoftware_database, comm_activity_key, commission_activity)

Update CommissionActivity

Updates a specific CommissionActivity.

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

api_instance = Vba::CommissionActivityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
comm_activity_key = 56 # Integer | CommissionActivity Key
commission_activity = Vba::CommissionActivity.new({commission_activity_key: 37}) # CommissionActivity | 

begin
  # Update CommissionActivity
  result = api_instance.update_commission_activity(vbasoftware_database, comm_activity_key, commission_activity)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->update_commission_activity: #{e}"
end
```

#### Using the update_commission_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionActivityVBAResponse>, Integer, Hash)> update_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, commission_activity)

```ruby
begin
  # Update CommissionActivity
  data, status_code, headers = api_instance.update_commission_activity_with_http_info(vbasoftware_database, comm_activity_key, commission_activity)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionActivityVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CommissionActivityApi->update_commission_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **comm_activity_key** | **Integer** | CommissionActivity Key |  |
| **commission_activity** | [**CommissionActivity**](CommissionActivity.md) |  |  |

### Return type

[**CommissionActivityVBAResponse**](CommissionActivityVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

