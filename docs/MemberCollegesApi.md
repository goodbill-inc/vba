# Vba::MemberCollegesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_college**](MemberCollegesApi.md#create_member_college) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/colleges | Create MemberCollege |
| [**delete_member_college**](MemberCollegesApi.md#delete_member_college) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/colleges/{memberCollegeKey} | Delete MemberCollege |
| [**get_member_college**](MemberCollegesApi.md#get_member_college) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/colleges/{memberCollegeKey} | Get MemberCollege |
| [**list_member_college**](MemberCollegesApi.md#list_member_college) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/colleges | List MemberCollege |
| [**update_batch_member_college**](MemberCollegesApi.md#update_batch_member_college) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/colleges-batch | Create or Update Batch MemberCollege |
| [**update_member_college**](MemberCollegesApi.md#update_member_college) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/colleges/{memberCollegeKey} | Update MemberCollege |


## create_member_college

> <MemberCollegeVBAResponse> create_member_college(vbasoftware_database, subscriber_id, member_seq, member_college)

Create MemberCollege

Creates a new MemberCollege

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

api_instance = Vba::MemberCollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_college = Vba::MemberCollege.new({member_college_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberCollege | 

begin
  # Create MemberCollege
  result = api_instance.create_member_college(vbasoftware_database, subscriber_id, member_seq, member_college)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->create_member_college: #{e}"
end
```

#### Using the create_member_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCollegeVBAResponse>, Integer, Hash)> create_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college)

```ruby
begin
  # Create MemberCollege
  data, status_code, headers = api_instance.create_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCollegeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->create_member_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_college** | [**MemberCollege**](MemberCollege.md) |  |  |

### Return type

[**MemberCollegeVBAResponse**](MemberCollegeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_college

> delete_member_college(vbasoftware_database, subscriber_id, member_seq, member_college_key)

Delete MemberCollege

Deletes an MemberCollege

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

api_instance = Vba::MemberCollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_college_key = 56 # Integer | MemberCollege Key

begin
  # Delete MemberCollege
  api_instance.delete_member_college(vbasoftware_database, subscriber_id, member_seq, member_college_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->delete_member_college: #{e}"
end
```

#### Using the delete_member_college_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college_key)

```ruby
begin
  # Delete MemberCollege
  data, status_code, headers = api_instance.delete_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->delete_member_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_college_key** | **Integer** | MemberCollege Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_college

> <MemberCollegeVBAResponse> get_member_college(vbasoftware_database, subscriber_id, member_seq, member_college_key)

Get MemberCollege

Gets MemberCollege

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

api_instance = Vba::MemberCollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_college_key = 56 # Integer | MemberCollege Key

begin
  # Get MemberCollege
  result = api_instance.get_member_college(vbasoftware_database, subscriber_id, member_seq, member_college_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->get_member_college: #{e}"
end
```

#### Using the get_member_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCollegeVBAResponse>, Integer, Hash)> get_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college_key)

```ruby
begin
  # Get MemberCollege
  data, status_code, headers = api_instance.get_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCollegeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->get_member_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_college_key** | **Integer** | MemberCollege Key |  |

### Return type

[**MemberCollegeVBAResponse**](MemberCollegeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_college

> <MemberCollegeListVBAResponse> list_member_college(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberCollege

Lists all MemberCollege for the given subscriberID and memberSeq

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

api_instance = Vba::MemberCollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberCollege
  result = api_instance.list_member_college(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->list_member_college: #{e}"
end
```

#### Using the list_member_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCollegeListVBAResponse>, Integer, Hash)> list_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberCollege
  data, status_code, headers = api_instance.list_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCollegeListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->list_member_college_with_http_info: #{e}"
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

[**MemberCollegeListVBAResponse**](MemberCollegeListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_college

> <MultiCodeResponseListVBAResponse> update_batch_member_college(vbasoftware_database, subscriber_id, member_seq, member_college)

Create or Update Batch MemberCollege

Create or Update multiple MemberCollege at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberCollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_college = [Vba::MemberCollege.new({member_college_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberCollege> | 

begin
  # Create or Update Batch MemberCollege
  result = api_instance.update_batch_member_college(vbasoftware_database, subscriber_id, member_seq, member_college)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->update_batch_member_college: #{e}"
end
```

#### Using the update_batch_member_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college)

```ruby
begin
  # Create or Update Batch MemberCollege
  data, status_code, headers = api_instance.update_batch_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->update_batch_member_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_college** | [**Array&lt;MemberCollege&gt;**](MemberCollege.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_college

> <MemberCollegeVBAResponse> update_member_college(vbasoftware_database, subscriber_id, member_seq, member_college_key, member_college)

Update MemberCollege

Updates a specific MemberCollege.

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

api_instance = Vba::MemberCollegesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_college_key = 56 # Integer | MemberCollege Key
member_college = Vba::MemberCollege.new({member_college_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberCollege | 

begin
  # Update MemberCollege
  result = api_instance.update_member_college(vbasoftware_database, subscriber_id, member_seq, member_college_key, member_college)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->update_member_college: #{e}"
end
```

#### Using the update_member_college_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCollegeVBAResponse>, Integer, Hash)> update_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college_key, member_college)

```ruby
begin
  # Update MemberCollege
  data, status_code, headers = api_instance.update_member_college_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_college_key, member_college)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCollegeVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCollegesApi->update_member_college_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_college_key** | **Integer** | MemberCollege Key |  |
| **member_college** | [**MemberCollege**](MemberCollege.md) |  |  |

### Return type

[**MemberCollegeVBAResponse**](MemberCollegeVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

