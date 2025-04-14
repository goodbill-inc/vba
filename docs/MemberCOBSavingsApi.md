# Vba::MemberCOBSavingsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_cob_savings**](MemberCOBSavingsApi.md#create_member_cob_savings) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/cob-savings | Create MemberCOBSavings |
| [**delete_member_cob_savings**](MemberCOBSavingsApi.md#delete_member_cob_savings) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/cob-savings/{memberCOBSavingsKey} | Delete MemberCOBSavings |
| [**get_member_cob_savings**](MemberCOBSavingsApi.md#get_member_cob_savings) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/cob-savings/{memberCOBSavingsKey} | Get MemberCOBSavings |
| [**list_member_cob_savings**](MemberCOBSavingsApi.md#list_member_cob_savings) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/cob-savings | List MemberCOBSavings |
| [**update_batch_member_cob_savings**](MemberCOBSavingsApi.md#update_batch_member_cob_savings) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/cob-savings-batch | Create or Update Batch MemberCOBSavings |
| [**update_member_cob_savings**](MemberCOBSavingsApi.md#update_member_cob_savings) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/cob-savings/{memberCOBSavingsKey} | Update MemberCOBSavings |


## create_member_cob_savings

> <MemberCOBSavingsVBAResponse> create_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)

Create MemberCOBSavings

Creates a new MemberCOBSavings

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

api_instance = Vba::MemberCOBSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_cob_savings = Vba::MemberCOBSavings.new({member_cob_savings_key: 37, group_id: 'group_id_example', member_seq: 'member_seq_example', plan_type: 'plan_type_example', plan_year: 'plan_year_example', subscriber_id: 'subscriber_id_example'}) # MemberCOBSavings | 

begin
  # Create MemberCOBSavings
  result = api_instance.create_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->create_member_cob_savings: #{e}"
end
```

#### Using the create_member_cob_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCOBSavingsVBAResponse>, Integer, Hash)> create_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)

```ruby
begin
  # Create MemberCOBSavings
  data, status_code, headers = api_instance.create_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCOBSavingsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->create_member_cob_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_cob_savings** | [**MemberCOBSavings**](MemberCOBSavings.md) |  |  |

### Return type

[**MemberCOBSavingsVBAResponse**](MemberCOBSavingsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_cob_savings

> delete_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)

Delete MemberCOBSavings

Deletes an MemberCOBSavings

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

api_instance = Vba::MemberCOBSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_cob_savings_key = 56 # Integer | MemberCOBSavings Key

begin
  # Delete MemberCOBSavings
  api_instance.delete_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->delete_member_cob_savings: #{e}"
end
```

#### Using the delete_member_cob_savings_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)

```ruby
begin
  # Delete MemberCOBSavings
  data, status_code, headers = api_instance.delete_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->delete_member_cob_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_cob_savings_key** | **Integer** | MemberCOBSavings Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_cob_savings

> <MemberCOBSavingsVBAResponse> get_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)

Get MemberCOBSavings

Gets MemberCOBSavings

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

api_instance = Vba::MemberCOBSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_cob_savings_key = 56 # Integer | MemberCOBSavings Key

begin
  # Get MemberCOBSavings
  result = api_instance.get_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->get_member_cob_savings: #{e}"
end
```

#### Using the get_member_cob_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCOBSavingsVBAResponse>, Integer, Hash)> get_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)

```ruby
begin
  # Get MemberCOBSavings
  data, status_code, headers = api_instance.get_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCOBSavingsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->get_member_cob_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_cob_savings_key** | **Integer** | MemberCOBSavings Key |  |

### Return type

[**MemberCOBSavingsVBAResponse**](MemberCOBSavingsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_cob_savings

> <MemberCOBSavingsListVBAResponse> list_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberCOBSavings

Lists all MemberCOBSavings for the given subscriberID and memberSeq

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

api_instance = Vba::MemberCOBSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberCOBSavings
  result = api_instance.list_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->list_member_cob_savings: #{e}"
end
```

#### Using the list_member_cob_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCOBSavingsListVBAResponse>, Integer, Hash)> list_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberCOBSavings
  data, status_code, headers = api_instance.list_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCOBSavingsListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->list_member_cob_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberCOBSavingsListVBAResponse**](MemberCOBSavingsListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_cob_savings

> <MultiCodeResponseListVBAResponse> update_batch_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)

Create or Update Batch MemberCOBSavings

Create or Update multiple MemberCOBSavings at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberCOBSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_cob_savings = [Vba::MemberCOBSavings.new({member_cob_savings_key: 37, group_id: 'group_id_example', member_seq: 'member_seq_example', plan_type: 'plan_type_example', plan_year: 'plan_year_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberCOBSavings> | 

begin
  # Create or Update Batch MemberCOBSavings
  result = api_instance.update_batch_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->update_batch_member_cob_savings: #{e}"
end
```

#### Using the update_batch_member_cob_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)

```ruby
begin
  # Create or Update Batch MemberCOBSavings
  data, status_code, headers = api_instance.update_batch_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->update_batch_member_cob_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_cob_savings** | [**Array&lt;MemberCOBSavings&gt;**](MemberCOBSavings.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_cob_savings

> <MemberCOBSavingsVBAResponse> update_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key, member_cob_savings)

Update MemberCOBSavings

Updates a specific MemberCOBSavings.

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

api_instance = Vba::MemberCOBSavingsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_cob_savings_key = 56 # Integer | MemberCOBSavings Key
member_cob_savings = Vba::MemberCOBSavings.new({member_cob_savings_key: 37, group_id: 'group_id_example', member_seq: 'member_seq_example', plan_type: 'plan_type_example', plan_year: 'plan_year_example', subscriber_id: 'subscriber_id_example'}) # MemberCOBSavings | 

begin
  # Update MemberCOBSavings
  result = api_instance.update_member_cob_savings(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key, member_cob_savings)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->update_member_cob_savings: #{e}"
end
```

#### Using the update_member_cob_savings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCOBSavingsVBAResponse>, Integer, Hash)> update_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key, member_cob_savings)

```ruby
begin
  # Update MemberCOBSavings
  data, status_code, headers = api_instance.update_member_cob_savings_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_cob_savings_key, member_cob_savings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCOBSavingsVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCOBSavingsApi->update_member_cob_savings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_cob_savings_key** | **Integer** | MemberCOBSavings Key |  |
| **member_cob_savings** | [**MemberCOBSavings**](MemberCOBSavings.md) |  |  |

### Return type

[**MemberCOBSavingsVBAResponse**](MemberCOBSavingsVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

