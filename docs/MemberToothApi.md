# Vba::MemberToothApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_tooth**](MemberToothApi.md#create_member_tooth) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/teeth | Create MemberTooth |
| [**delete_member_tooth**](MemberToothApi.md#delete_member_tooth) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/teeth/{memberToothKey} | Delete MemberTooth |
| [**get_member_tooth**](MemberToothApi.md#get_member_tooth) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/teeth/{memberToothKey} | Get MemberTooth |
| [**list_member_tooth**](MemberToothApi.md#list_member_tooth) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/teeth | List MemberTooth |
| [**update_batch_member_tooth**](MemberToothApi.md#update_batch_member_tooth) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/teeth-batch | Create or Update Batch MemberTooth |
| [**update_member_tooth**](MemberToothApi.md#update_member_tooth) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/teeth/{memberToothKey} | Update MemberTooth |


## create_member_tooth

> <MemberToothVBAResponse> create_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth)

Create MemberTooth

Creates a new MemberTooth

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

api_instance = Vba::MemberToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth = Vba::MemberTooth.new({member_tooth_key: 37, claim_entered: false, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example', tooth_number: 37, user_entered: false}) # MemberTooth | 

begin
  # Create MemberTooth
  result = api_instance.create_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->create_member_tooth: #{e}"
end
```

#### Using the create_member_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothVBAResponse>, Integer, Hash)> create_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth)

```ruby
begin
  # Create MemberTooth
  data, status_code, headers = api_instance.create_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->create_member_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth** | [**MemberTooth**](MemberTooth.md) |  |  |

### Return type

[**MemberToothVBAResponse**](MemberToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_tooth

> delete_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)

Delete MemberTooth

Deletes an MemberTooth

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

api_instance = Vba::MemberToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth_key = 56 # Integer | MemberTooth Key

begin
  # Delete MemberTooth
  api_instance.delete_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->delete_member_tooth: #{e}"
end
```

#### Using the delete_member_tooth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)

```ruby
begin
  # Delete MemberTooth
  data, status_code, headers = api_instance.delete_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->delete_member_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth_key** | **Integer** | MemberTooth Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_tooth

> <MemberToothVBAResponse> get_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)

Get MemberTooth

Gets MemberTooth

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

api_instance = Vba::MemberToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth_key = 56 # Integer | MemberTooth Key

begin
  # Get MemberTooth
  result = api_instance.get_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->get_member_tooth: #{e}"
end
```

#### Using the get_member_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothVBAResponse>, Integer, Hash)> get_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)

```ruby
begin
  # Get MemberTooth
  data, status_code, headers = api_instance.get_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->get_member_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth_key** | **Integer** | MemberTooth Key |  |

### Return type

[**MemberToothVBAResponse**](MemberToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_tooth

> <MemberToothListVBAResponse> list_member_tooth(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberTooth

Lists all MemberTooth for the given subscriberID and memberSeq

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

api_instance = Vba::MemberToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberTooth
  result = api_instance.list_member_tooth(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->list_member_tooth: #{e}"
end
```

#### Using the list_member_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothListVBAResponse>, Integer, Hash)> list_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberTooth
  data, status_code, headers = api_instance.list_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->list_member_tooth_with_http_info: #{e}"
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

[**MemberToothListVBAResponse**](MemberToothListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_tooth

> <MultiCodeResponseListVBAResponse> update_batch_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth)

Create or Update Batch MemberTooth

Create or Update multiple MemberTooth at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth = [Vba::MemberTooth.new({member_tooth_key: 37, claim_entered: false, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example', tooth_number: 37, user_entered: false})] # Array<MemberTooth> | 

begin
  # Create or Update Batch MemberTooth
  result = api_instance.update_batch_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->update_batch_member_tooth: #{e}"
end
```

#### Using the update_batch_member_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth)

```ruby
begin
  # Create or Update Batch MemberTooth
  data, status_code, headers = api_instance.update_batch_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->update_batch_member_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth** | [**Array&lt;MemberTooth&gt;**](MemberTooth.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_tooth

> <MemberToothVBAResponse> update_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth_key, member_tooth)

Update MemberTooth

Updates a specific MemberTooth.

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

api_instance = Vba::MemberToothApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth_key = 56 # Integer | MemberTooth Key
member_tooth = Vba::MemberTooth.new({member_tooth_key: 37, claim_entered: false, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example', tooth_number: 37, user_entered: false}) # MemberTooth | 

begin
  # Update MemberTooth
  result = api_instance.update_member_tooth(vbasoftware_database, subscriber_id, member_seq, member_tooth_key, member_tooth)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->update_member_tooth: #{e}"
end
```

#### Using the update_member_tooth_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothVBAResponse>, Integer, Hash)> update_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_key, member_tooth)

```ruby
begin
  # Update MemberTooth
  data, status_code, headers = api_instance.update_member_tooth_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_key, member_tooth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothApi->update_member_tooth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth_key** | **Integer** | MemberTooth Key |  |
| **member_tooth** | [**MemberTooth**](MemberTooth.md) |  |  |

### Return type

[**MemberToothVBAResponse**](MemberToothVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

