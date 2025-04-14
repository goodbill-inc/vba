# Vba::MemberVBAPlanTypeIDsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_vba_plan_type_id**](MemberVBAPlanTypeIDsApi.md#create_member_vba_plan_type_id) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/vba-plan-type-ids | Create MemberVBAPlanTypeID |
| [**delete_member_vba_plan_type_id**](MemberVBAPlanTypeIDsApi.md#delete_member_vba_plan_type_id) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/vba-plan-type-ids/{vBAPlanType} | Delete MemberVBAPlanTypeID |
| [**get_member_vba_plan_type_id**](MemberVBAPlanTypeIDsApi.md#get_member_vba_plan_type_id) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/vba-plan-type-ids/{vBAPlanType} | Get MemberVBAPlanTypeID |
| [**list_member_vba_plan_type_id**](MemberVBAPlanTypeIDsApi.md#list_member_vba_plan_type_id) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/vba-plan-type-ids | List MemberVBAPlanTypeID |
| [**update_batch_member_vba_plan_type_id**](MemberVBAPlanTypeIDsApi.md#update_batch_member_vba_plan_type_id) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/vba-plan-type-ids-batch | Create or Update Batch MemberVBAPlanTypeID |
| [**update_member_vba_plan_type_id**](MemberVBAPlanTypeIDsApi.md#update_member_vba_plan_type_id) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/vba-plan-type-ids/{vBAPlanType} | Update MemberVBAPlanTypeID |


## create_member_vba_plan_type_id

> <MemberVBAPlanTypeIDVBAResponse> create_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)

Create MemberVBAPlanTypeID

Creates a new MemberVBAPlanTypeID

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

api_instance = Vba::MemberVBAPlanTypeIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_vba_plan_type_id = Vba::MemberVBAPlanTypeID.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', vb_a_plan_type: 'vb_a_plan_type_example'}) # MemberVBAPlanTypeID | 

begin
  # Create MemberVBAPlanTypeID
  result = api_instance.create_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->create_member_vba_plan_type_id: #{e}"
end
```

#### Using the create_member_vba_plan_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberVBAPlanTypeIDVBAResponse>, Integer, Hash)> create_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)

```ruby
begin
  # Create MemberVBAPlanTypeID
  data, status_code, headers = api_instance.create_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberVBAPlanTypeIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->create_member_vba_plan_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_vba_plan_type_id** | [**MemberVBAPlanTypeID**](MemberVBAPlanTypeID.md) |  |  |

### Return type

[**MemberVBAPlanTypeIDVBAResponse**](MemberVBAPlanTypeIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_vba_plan_type_id

> delete_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)

Delete MemberVBAPlanTypeID

Deletes an MemberVBAPlanTypeID

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

api_instance = Vba::MemberVBAPlanTypeIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
v_ba_plan_type = 'v_ba_plan_type_example' # String | VBA Plan Type

begin
  # Delete MemberVBAPlanTypeID
  api_instance.delete_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->delete_member_vba_plan_type_id: #{e}"
end
```

#### Using the delete_member_vba_plan_type_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)

```ruby
begin
  # Delete MemberVBAPlanTypeID
  data, status_code, headers = api_instance.delete_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->delete_member_vba_plan_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **v_ba_plan_type** | **String** | VBA Plan Type |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_vba_plan_type_id

> <MemberVBAPlanTypeIDVBAResponse> get_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)

Get MemberVBAPlanTypeID

Gets MemberVBAPlanTypeID

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

api_instance = Vba::MemberVBAPlanTypeIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
v_ba_plan_type = 'v_ba_plan_type_example' # String | VBA Plan Type

begin
  # Get MemberVBAPlanTypeID
  result = api_instance.get_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->get_member_vba_plan_type_id: #{e}"
end
```

#### Using the get_member_vba_plan_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberVBAPlanTypeIDVBAResponse>, Integer, Hash)> get_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)

```ruby
begin
  # Get MemberVBAPlanTypeID
  data, status_code, headers = api_instance.get_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberVBAPlanTypeIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->get_member_vba_plan_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **v_ba_plan_type** | **String** | VBA Plan Type |  |

### Return type

[**MemberVBAPlanTypeIDVBAResponse**](MemberVBAPlanTypeIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_vba_plan_type_id

> <MemberVBAPlanTypeIDListVBAResponse> list_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberVBAPlanTypeID

Lists all MemberVBAPlanTypeID for the given subscriberID and memberSeq

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

api_instance = Vba::MemberVBAPlanTypeIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberVBAPlanTypeID
  result = api_instance.list_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->list_member_vba_plan_type_id: #{e}"
end
```

#### Using the list_member_vba_plan_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberVBAPlanTypeIDListVBAResponse>, Integer, Hash)> list_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberVBAPlanTypeID
  data, status_code, headers = api_instance.list_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberVBAPlanTypeIDListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->list_member_vba_plan_type_id_with_http_info: #{e}"
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

[**MemberVBAPlanTypeIDListVBAResponse**](MemberVBAPlanTypeIDListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_vba_plan_type_id

> <MultiCodeResponseListVBAResponse> update_batch_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)

Create or Update Batch MemberVBAPlanTypeID

Create or Update multiple MemberVBAPlanTypeID at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberVBAPlanTypeIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_vba_plan_type_id = [Vba::MemberVBAPlanTypeID.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', vb_a_plan_type: 'vb_a_plan_type_example'})] # Array<MemberVBAPlanTypeID> | 

begin
  # Create or Update Batch MemberVBAPlanTypeID
  result = api_instance.update_batch_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->update_batch_member_vba_plan_type_id: #{e}"
end
```

#### Using the update_batch_member_vba_plan_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)

```ruby
begin
  # Create or Update Batch MemberVBAPlanTypeID
  data, status_code, headers = api_instance.update_batch_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_vba_plan_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->update_batch_member_vba_plan_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_vba_plan_type_id** | [**Array&lt;MemberVBAPlanTypeID&gt;**](MemberVBAPlanTypeID.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_vba_plan_type_id

> <MemberVBAPlanTypeIDVBAResponse> update_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type, member_vba_plan_type_id)

Update MemberVBAPlanTypeID

Updates a specific MemberVBAPlanTypeID.

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

api_instance = Vba::MemberVBAPlanTypeIDsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
v_ba_plan_type = 'v_ba_plan_type_example' # String | VBA Plan Type
member_vba_plan_type_id = Vba::MemberVBAPlanTypeID.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', vb_a_plan_type: 'vb_a_plan_type_example'}) # MemberVBAPlanTypeID | 

begin
  # Update MemberVBAPlanTypeID
  result = api_instance.update_member_vba_plan_type_id(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type, member_vba_plan_type_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->update_member_vba_plan_type_id: #{e}"
end
```

#### Using the update_member_vba_plan_type_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberVBAPlanTypeIDVBAResponse>, Integer, Hash)> update_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type, member_vba_plan_type_id)

```ruby
begin
  # Update MemberVBAPlanTypeID
  data, status_code, headers = api_instance.update_member_vba_plan_type_id_with_http_info(vbasoftware_database, subscriber_id, member_seq, v_ba_plan_type, member_vba_plan_type_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberVBAPlanTypeIDVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberVBAPlanTypeIDsApi->update_member_vba_plan_type_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **v_ba_plan_type** | **String** | VBA Plan Type |  |
| **member_vba_plan_type_id** | [**MemberVBAPlanTypeID**](MemberVBAPlanTypeID.md) |  |  |

### Return type

[**MemberVBAPlanTypeIDVBAResponse**](MemberVBAPlanTypeIDVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

