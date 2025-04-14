# Vba::CareCaseMembersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_care_case_member**](CareCaseMembersApi.md#create_care_case_member) | **POST** /cases/{caseKey}/members | Create CareCaseMember |
| [**delete_care_case_member**](CareCaseMembersApi.md#delete_care_case_member) | **DELETE** /cases/{caseKey}/members/{subscriberID}/{memberSeq} | Delete CareCaseMember |
| [**get_care_case_member**](CareCaseMembersApi.md#get_care_case_member) | **GET** /cases/{caseKey}/members/{subscriberID}/{memberSeq} | Get CareCaseMember |
| [**list_care_case_member**](CareCaseMembersApi.md#list_care_case_member) | **GET** /cases/{caseKey}/members | List CareCaseMember |
| [**update_batch_care_case_member**](CareCaseMembersApi.md#update_batch_care_case_member) | **PUT** /cases/{caseKey}/members-batch | Create or Update Batch CareCaseMember |
| [**update_care_case_member**](CareCaseMembersApi.md#update_care_case_member) | **PUT** /cases/{caseKey}/members/{subscriberID}/{memberSeq} | Update CareCaseMember |


## create_care_case_member

> <CareCaseMemberVBAResponse> create_care_case_member(vbasoftware_database, case_key, care_case_member)

Create CareCaseMember

Creates a new CareCaseMember

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

api_instance = Vba::CareCaseMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_member = Vba::CareCaseMember.new({case_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # CareCaseMember | 

begin
  # Create CareCaseMember
  result = api_instance.create_care_case_member(vbasoftware_database, case_key, care_case_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->create_care_case_member: #{e}"
end
```

#### Using the create_care_case_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMemberVBAResponse>, Integer, Hash)> create_care_case_member_with_http_info(vbasoftware_database, case_key, care_case_member)

```ruby
begin
  # Create CareCaseMember
  data, status_code, headers = api_instance.create_care_case_member_with_http_info(vbasoftware_database, case_key, care_case_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->create_care_case_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_member** | [**CareCaseMember**](CareCaseMember.md) |  |  |

### Return type

[**CareCaseMemberVBAResponse**](CareCaseMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_care_case_member

> delete_care_case_member(vbasoftware_database, case_key, subscriber_id, member_seq)

Delete CareCaseMember

Deletes an CareCaseMember

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

api_instance = Vba::CareCaseMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Delete CareCaseMember
  api_instance.delete_care_case_member(vbasoftware_database, case_key, subscriber_id, member_seq)
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->delete_care_case_member: #{e}"
end
```

#### Using the delete_care_case_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_care_case_member_with_http_info(vbasoftware_database, case_key, subscriber_id, member_seq)

```ruby
begin
  # Delete CareCaseMember
  data, status_code, headers = api_instance.delete_care_case_member_with_http_info(vbasoftware_database, case_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->delete_care_case_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_care_case_member

> <CareCaseMemberVBAResponse> get_care_case_member(vbasoftware_database, case_key, subscriber_id, member_seq)

Get CareCaseMember

Gets CareCaseMember

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

api_instance = Vba::CareCaseMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Get CareCaseMember
  result = api_instance.get_care_case_member(vbasoftware_database, case_key, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->get_care_case_member: #{e}"
end
```

#### Using the get_care_case_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMemberVBAResponse>, Integer, Hash)> get_care_case_member_with_http_info(vbasoftware_database, case_key, subscriber_id, member_seq)

```ruby
begin
  # Get CareCaseMember
  data, status_code, headers = api_instance.get_care_case_member_with_http_info(vbasoftware_database, case_key, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->get_care_case_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**CareCaseMemberVBAResponse**](CareCaseMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_care_case_member

> <CareCaseMemberListVBAResponse> list_care_case_member(vbasoftware_database, case_key, opts)

List CareCaseMember

Lists all CareCaseMember for the given caseKey

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

api_instance = Vba::CareCaseMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List CareCaseMember
  result = api_instance.list_care_case_member(vbasoftware_database, case_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->list_care_case_member: #{e}"
end
```

#### Using the list_care_case_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMemberListVBAResponse>, Integer, Hash)> list_care_case_member_with_http_info(vbasoftware_database, case_key, opts)

```ruby
begin
  # List CareCaseMember
  data, status_code, headers = api_instance.list_care_case_member_with_http_info(vbasoftware_database, case_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMemberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->list_care_case_member_with_http_info: #{e}"
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

[**CareCaseMemberListVBAResponse**](CareCaseMemberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_care_case_member

> <MultiCodeResponseListVBAResponse> update_batch_care_case_member(vbasoftware_database, case_key, care_case_member)

Create or Update Batch CareCaseMember

Create or Update multiple CareCaseMember at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::CareCaseMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
care_case_member = [Vba::CareCaseMember.new({case_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'})] # Array<CareCaseMember> | 

begin
  # Create or Update Batch CareCaseMember
  result = api_instance.update_batch_care_case_member(vbasoftware_database, case_key, care_case_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->update_batch_care_case_member: #{e}"
end
```

#### Using the update_batch_care_case_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_care_case_member_with_http_info(vbasoftware_database, case_key, care_case_member)

```ruby
begin
  # Create or Update Batch CareCaseMember
  data, status_code, headers = api_instance.update_batch_care_case_member_with_http_info(vbasoftware_database, case_key, care_case_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->update_batch_care_case_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **care_case_member** | [**Array&lt;CareCaseMember&gt;**](CareCaseMember.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_care_case_member

> <CareCaseMemberVBAResponse> update_care_case_member(vbasoftware_database, case_key, subscriber_id, member_seq, care_case_member)

Update CareCaseMember

Updates a specific CareCaseMember.

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

api_instance = Vba::CareCaseMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
case_key = 56 # Integer | Case Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
care_case_member = Vba::CareCaseMember.new({case_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # CareCaseMember | 

begin
  # Update CareCaseMember
  result = api_instance.update_care_case_member(vbasoftware_database, case_key, subscriber_id, member_seq, care_case_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->update_care_case_member: #{e}"
end
```

#### Using the update_care_case_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CareCaseMemberVBAResponse>, Integer, Hash)> update_care_case_member_with_http_info(vbasoftware_database, case_key, subscriber_id, member_seq, care_case_member)

```ruby
begin
  # Update CareCaseMember
  data, status_code, headers = api_instance.update_care_case_member_with_http_info(vbasoftware_database, case_key, subscriber_id, member_seq, care_case_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CareCaseMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling CareCaseMembersApi->update_care_case_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **case_key** | **Integer** | Case Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **care_case_member** | [**CareCaseMember**](CareCaseMember.md) |  |  |

### Return type

[**CareCaseMemberVBAResponse**](CareCaseMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

