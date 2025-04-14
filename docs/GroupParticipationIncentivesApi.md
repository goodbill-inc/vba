# Vba::GroupParticipationIncentivesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_groups_participation_incentive**](GroupParticipationIncentivesApi.md#create_groups_participation_incentive) | **POST** /group-participation-incentives | Create GroupsParticipationIncentive |
| [**delete_groups_participation_incentive**](GroupParticipationIncentivesApi.md#delete_groups_participation_incentive) | **DELETE** /group-participation-incentives/{groupsParticipationIncentiveKey} | Delete GroupsParticipationIncentive |
| [**get_groups_participation_incentive**](GroupParticipationIncentivesApi.md#get_groups_participation_incentive) | **GET** /group-participation-incentives/{groupsParticipationIncentiveKey} | Get GroupsParticipationIncentive |
| [**list_groups_participation_incentive**](GroupParticipationIncentivesApi.md#list_groups_participation_incentive) | **GET** /group-participation-incentives | List GroupsParticipationIncentive |
| [**update_batch_groups_participation_incentive**](GroupParticipationIncentivesApi.md#update_batch_groups_participation_incentive) | **PUT** /group-participation-incentives-batch | Create or Update Batch GroupsParticipationIncentive |
| [**update_groups_participation_incentive**](GroupParticipationIncentivesApi.md#update_groups_participation_incentive) | **PUT** /group-participation-incentives/{groupsParticipationIncentiveKey} | Update GroupsParticipationIncentive |


## create_groups_participation_incentive

> <GroupsParticipationIncentiveVBAResponse> create_groups_participation_incentive(vbasoftware_database, groups_participation_incentive)

Create GroupsParticipationIncentive

Creates a new GroupsParticipationIncentive

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

api_instance = Vba::GroupParticipationIncentivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups_participation_incentive = Vba::GroupsParticipationIncentive.new({groups_participation_incentive_key: 37, participation_incentive_id: 'participation_incentive_id_example'}) # GroupsParticipationIncentive | 

begin
  # Create GroupsParticipationIncentive
  result = api_instance.create_groups_participation_incentive(vbasoftware_database, groups_participation_incentive)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->create_groups_participation_incentive: #{e}"
end
```

#### Using the create_groups_participation_incentive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsParticipationIncentiveVBAResponse>, Integer, Hash)> create_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive)

```ruby
begin
  # Create GroupsParticipationIncentive
  data, status_code, headers = api_instance.create_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsParticipationIncentiveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->create_groups_participation_incentive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups_participation_incentive** | [**GroupsParticipationIncentive**](GroupsParticipationIncentive.md) |  |  |

### Return type

[**GroupsParticipationIncentiveVBAResponse**](GroupsParticipationIncentiveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_groups_participation_incentive

> delete_groups_participation_incentive(vbasoftware_database, groups_participation_incentive_key)

Delete GroupsParticipationIncentive

Deletes an GroupsParticipationIncentive

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

api_instance = Vba::GroupParticipationIncentivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups_participation_incentive_key = 56 # Integer | GroupsParticipationIncentive Key

begin
  # Delete GroupsParticipationIncentive
  api_instance.delete_groups_participation_incentive(vbasoftware_database, groups_participation_incentive_key)
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->delete_groups_participation_incentive: #{e}"
end
```

#### Using the delete_groups_participation_incentive_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive_key)

```ruby
begin
  # Delete GroupsParticipationIncentive
  data, status_code, headers = api_instance.delete_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->delete_groups_participation_incentive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups_participation_incentive_key** | **Integer** | GroupsParticipationIncentive Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_groups_participation_incentive

> <GroupsParticipationIncentiveVBAResponse> get_groups_participation_incentive(vbasoftware_database, groups_participation_incentive_key)

Get GroupsParticipationIncentive

Gets GroupsParticipationIncentive

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

api_instance = Vba::GroupParticipationIncentivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups_participation_incentive_key = 56 # Integer | GroupsParticipationIncentive Key

begin
  # Get GroupsParticipationIncentive
  result = api_instance.get_groups_participation_incentive(vbasoftware_database, groups_participation_incentive_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->get_groups_participation_incentive: #{e}"
end
```

#### Using the get_groups_participation_incentive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsParticipationIncentiveVBAResponse>, Integer, Hash)> get_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive_key)

```ruby
begin
  # Get GroupsParticipationIncentive
  data, status_code, headers = api_instance.get_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsParticipationIncentiveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->get_groups_participation_incentive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups_participation_incentive_key** | **Integer** | GroupsParticipationIncentive Key |  |

### Return type

[**GroupsParticipationIncentiveVBAResponse**](GroupsParticipationIncentiveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_groups_participation_incentive

> <GroupsParticipationIncentiveListVBAResponse> list_groups_participation_incentive(vbasoftware_database, opts)

List GroupsParticipationIncentive

Lists all GroupsParticipationIncentive

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

api_instance = Vba::GroupParticipationIncentivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List GroupsParticipationIncentive
  result = api_instance.list_groups_participation_incentive(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->list_groups_participation_incentive: #{e}"
end
```

#### Using the list_groups_participation_incentive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsParticipationIncentiveListVBAResponse>, Integer, Hash)> list_groups_participation_incentive_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List GroupsParticipationIncentive
  data, status_code, headers = api_instance.list_groups_participation_incentive_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsParticipationIncentiveListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->list_groups_participation_incentive_with_http_info: #{e}"
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

[**GroupsParticipationIncentiveListVBAResponse**](GroupsParticipationIncentiveListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_groups_participation_incentive

> <MultiCodeResponseListVBAResponse> update_batch_groups_participation_incentive(vbasoftware_database, groups_participation_incentive)

Create or Update Batch GroupsParticipationIncentive

Create or Update multiple GroupsParticipationIncentive at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::GroupParticipationIncentivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups_participation_incentive = [Vba::GroupsParticipationIncentive.new({groups_participation_incentive_key: 37, participation_incentive_id: 'participation_incentive_id_example'})] # Array<GroupsParticipationIncentive> | 

begin
  # Create or Update Batch GroupsParticipationIncentive
  result = api_instance.update_batch_groups_participation_incentive(vbasoftware_database, groups_participation_incentive)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->update_batch_groups_participation_incentive: #{e}"
end
```

#### Using the update_batch_groups_participation_incentive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive)

```ruby
begin
  # Create or Update Batch GroupsParticipationIncentive
  data, status_code, headers = api_instance.update_batch_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->update_batch_groups_participation_incentive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups_participation_incentive** | [**Array&lt;GroupsParticipationIncentive&gt;**](GroupsParticipationIncentive.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_groups_participation_incentive

> <GroupsParticipationIncentiveVBAResponse> update_groups_participation_incentive(vbasoftware_database, groups_participation_incentive_key, groups_participation_incentive)

Update GroupsParticipationIncentive

Updates a specific GroupsParticipationIncentive.

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

api_instance = Vba::GroupParticipationIncentivesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
groups_participation_incentive_key = 56 # Integer | GroupsParticipationIncentive Key
groups_participation_incentive = Vba::GroupsParticipationIncentive.new({groups_participation_incentive_key: 37, participation_incentive_id: 'participation_incentive_id_example'}) # GroupsParticipationIncentive | 

begin
  # Update GroupsParticipationIncentive
  result = api_instance.update_groups_participation_incentive(vbasoftware_database, groups_participation_incentive_key, groups_participation_incentive)
  p result
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->update_groups_participation_incentive: #{e}"
end
```

#### Using the update_groups_participation_incentive_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupsParticipationIncentiveVBAResponse>, Integer, Hash)> update_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive_key, groups_participation_incentive)

```ruby
begin
  # Update GroupsParticipationIncentive
  data, status_code, headers = api_instance.update_groups_participation_incentive_with_http_info(vbasoftware_database, groups_participation_incentive_key, groups_participation_incentive)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupsParticipationIncentiveVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling GroupParticipationIncentivesApi->update_groups_participation_incentive_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **groups_participation_incentive_key** | **Integer** | GroupsParticipationIncentive Key |  |
| **groups_participation_incentive** | [**GroupsParticipationIncentive**](GroupsParticipationIncentive.md) |  |  |

### Return type

[**GroupsParticipationIncentiveVBAResponse**](GroupsParticipationIncentiveVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

