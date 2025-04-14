# Vba::MemberToothExCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_tooth_ex_code**](MemberToothExCodesApi.md#create_member_tooth_ex_code) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/teeth-ex-codes | Create MemberToothExCode |
| [**delete_member_tooth_ex_code**](MemberToothExCodesApi.md#delete_member_tooth_ex_code) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/teeth-ex-codes/{toothNumber} | Delete MemberToothExCode |
| [**get_member_tooth_ex_code**](MemberToothExCodesApi.md#get_member_tooth_ex_code) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/teeth-ex-codes/{toothNumber} | Get MemberToothExCode |
| [**list_member_tooth_ex_code**](MemberToothExCodesApi.md#list_member_tooth_ex_code) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/teeth-ex-codes | List MemberToothExCode |
| [**update_batch_member_tooth_ex_code**](MemberToothExCodesApi.md#update_batch_member_tooth_ex_code) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/teeth-ex-codes-batch | Create or Update Batch MemberToothExCode |
| [**update_member_tooth_ex_code**](MemberToothExCodesApi.md#update_member_tooth_ex_code) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/teeth-ex-codes/{toothNumber} | Update MemberToothExCode |


## create_member_tooth_ex_code

> <MemberToothExCodeVBAResponse> create_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)

Create MemberToothExCode

Creates a new MemberToothExCode

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

api_instance = Vba::MemberToothExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth_ex_code = Vba::MemberToothExCode.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', tooth_number: 37, ex_code: 'ex_code_example'}) # MemberToothExCode | 

begin
  # Create MemberToothExCode
  result = api_instance.create_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->create_member_tooth_ex_code: #{e}"
end
```

#### Using the create_member_tooth_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothExCodeVBAResponse>, Integer, Hash)> create_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)

```ruby
begin
  # Create MemberToothExCode
  data, status_code, headers = api_instance.create_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->create_member_tooth_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth_ex_code** | [**MemberToothExCode**](MemberToothExCode.md) |  |  |

### Return type

[**MemberToothExCodeVBAResponse**](MemberToothExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_tooth_ex_code

> delete_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, tooth_number)

Delete MemberToothExCode

Deletes an MemberToothExCode

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

api_instance = Vba::MemberToothExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
tooth_number = 56 # Integer | Tooth Number

begin
  # Delete MemberToothExCode
  api_instance.delete_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, tooth_number)
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->delete_member_tooth_ex_code: #{e}"
end
```

#### Using the delete_member_tooth_ex_code_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, tooth_number)

```ruby
begin
  # Delete MemberToothExCode
  data, status_code, headers = api_instance.delete_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->delete_member_tooth_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_tooth_ex_code

> <MemberToothExCodeVBAResponse> get_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, tooth_number)

Get MemberToothExCode

Gets MemberToothExCode

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

api_instance = Vba::MemberToothExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
tooth_number = 56 # Integer | Tooth Number

begin
  # Get MemberToothExCode
  result = api_instance.get_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, tooth_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->get_member_tooth_ex_code: #{e}"
end
```

#### Using the get_member_tooth_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothExCodeVBAResponse>, Integer, Hash)> get_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, tooth_number)

```ruby
begin
  # Get MemberToothExCode
  data, status_code, headers = api_instance.get_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, tooth_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->get_member_tooth_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **tooth_number** | **Integer** | Tooth Number |  |

### Return type

[**MemberToothExCodeVBAResponse**](MemberToothExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_tooth_ex_code

> <MemberToothExCodeListVBAResponse> list_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberToothExCode

Lists all MemberToothExCode for the given subscriberID and memberSeq

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

api_instance = Vba::MemberToothExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberToothExCode
  result = api_instance.list_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->list_member_tooth_ex_code: #{e}"
end
```

#### Using the list_member_tooth_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothExCodeListVBAResponse>, Integer, Hash)> list_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberToothExCode
  data, status_code, headers = api_instance.list_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothExCodeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->list_member_tooth_ex_code_with_http_info: #{e}"
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

[**MemberToothExCodeListVBAResponse**](MemberToothExCodeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_tooth_ex_code

> <MultiCodeResponseListVBAResponse> update_batch_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)

Create or Update Batch MemberToothExCode

Create or Update multiple MemberToothExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberToothExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tooth_ex_code = [Vba::MemberToothExCode.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', tooth_number: 37, ex_code: 'ex_code_example'})] # Array<MemberToothExCode> | 

begin
  # Create or Update Batch MemberToothExCode
  result = api_instance.update_batch_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->update_batch_member_tooth_ex_code: #{e}"
end
```

#### Using the update_batch_member_tooth_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)

```ruby
begin
  # Create or Update Batch MemberToothExCode
  data, status_code, headers = api_instance.update_batch_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tooth_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->update_batch_member_tooth_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tooth_ex_code** | [**Array&lt;MemberToothExCode&gt;**](MemberToothExCode.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_tooth_ex_code

> <MemberToothExCodeVBAResponse> update_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, tooth_number, member_tooth_ex_code)

Update MemberToothExCode

Updates a specific MemberToothExCode.

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

api_instance = Vba::MemberToothExCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
tooth_number = 56 # Integer | Tooth Number
member_tooth_ex_code = Vba::MemberToothExCode.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', tooth_number: 37, ex_code: 'ex_code_example'}) # MemberToothExCode | 

begin
  # Update MemberToothExCode
  result = api_instance.update_member_tooth_ex_code(vbasoftware_database, subscriber_id, member_seq, tooth_number, member_tooth_ex_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->update_member_tooth_ex_code: #{e}"
end
```

#### Using the update_member_tooth_ex_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberToothExCodeVBAResponse>, Integer, Hash)> update_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, tooth_number, member_tooth_ex_code)

```ruby
begin
  # Update MemberToothExCode
  data, status_code, headers = api_instance.update_member_tooth_ex_code_with_http_info(vbasoftware_database, subscriber_id, member_seq, tooth_number, member_tooth_ex_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberToothExCodeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberToothExCodesApi->update_member_tooth_ex_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **tooth_number** | **Integer** | Tooth Number |  |
| **member_tooth_ex_code** | [**MemberToothExCode**](MemberToothExCode.md) |  |  |

### Return type

[**MemberToothExCodeVBAResponse**](MemberToothExCodeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

