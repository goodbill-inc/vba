# Vba::MemberPreExDisclosedDiagsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_pre_ex_disclosed_diag**](MemberPreExDisclosedDiagsApi.md#create_member_pre_ex_disclosed_diag) | **POST** /subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags | Create MemberPreExDisclosedDiag |
| [**delete_member_pre_ex_disclosed_diag**](MemberPreExDisclosedDiagsApi.md#delete_member_pre_ex_disclosed_diag) | **DELETE** /subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags/{MemberPreExDisclosedDiag_Key} | Delete MemberPreExDisclosedDiag |
| [**get_member_pre_ex_disclosed_diag**](MemberPreExDisclosedDiagsApi.md#get_member_pre_ex_disclosed_diag) | **GET** /subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags/{MemberPreExDisclosedDiag_Key} | Get MemberPreExDisclosedDiag |
| [**list_member_pre_ex_disclosed_diag**](MemberPreExDisclosedDiagsApi.md#list_member_pre_ex_disclosed_diag) | **GET** /subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags | List MemberPreExDisclosedDiag |
| [**update_batch_member_pre_ex_disclosed_diag**](MemberPreExDisclosedDiagsApi.md#update_batch_member_pre_ex_disclosed_diag) | **PUT** /subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags-batch | Create or Update Batch MemberPreExDisclosedDiag |
| [**update_member_pre_ex_disclosed_diag**](MemberPreExDisclosedDiagsApi.md#update_member_pre_ex_disclosed_diag) | **PUT** /subscribers/{Subscriber_ID}/members/{Member_Seq}/pre-ex-disclosed-diags/{MemberPreExDisclosedDiag_Key} | Update MemberPreExDisclosedDiag |


## create_member_pre_ex_disclosed_diag

> <MemberPreExDisclosedDiagVBAResponse> create_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)

Create MemberPreExDisclosedDiag

Creates a new MemberPreExDisclosedDiag

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

api_instance = Vba::MemberPreExDisclosedDiagsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_disclosed_diag = Vba::MemberPreExDisclosedDiag.new({member_pre_ex_disclosed_diag_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberPreExDisclosedDiag | 

begin
  # Create MemberPreExDisclosedDiag
  result = api_instance.create_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->create_member_pre_ex_disclosed_diag: #{e}"
end
```

#### Using the create_member_pre_ex_disclosed_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDisclosedDiagVBAResponse>, Integer, Hash)> create_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)

```ruby
begin
  # Create MemberPreExDisclosedDiag
  data, status_code, headers = api_instance.create_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDisclosedDiagVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->create_member_pre_ex_disclosed_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_disclosed_diag** | [**MemberPreExDisclosedDiag**](MemberPreExDisclosedDiag.md) |  |  |

### Return type

[**MemberPreExDisclosedDiagVBAResponse**](MemberPreExDisclosedDiagVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_pre_ex_disclosed_diag

> delete_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)

Delete MemberPreExDisclosedDiag

Deletes an MemberPreExDisclosedDiag

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

api_instance = Vba::MemberPreExDisclosedDiagsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_disclosed_diag_key = 56 # Integer | MemberPreExDisclosedDiag Key

begin
  # Delete MemberPreExDisclosedDiag
  api_instance.delete_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->delete_member_pre_ex_disclosed_diag: #{e}"
end
```

#### Using the delete_member_pre_ex_disclosed_diag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)

```ruby
begin
  # Delete MemberPreExDisclosedDiag
  data, status_code, headers = api_instance.delete_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->delete_member_pre_ex_disclosed_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_disclosed_diag_key** | **Integer** | MemberPreExDisclosedDiag Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_pre_ex_disclosed_diag

> <MemberPreExDisclosedDiagVBAResponse> get_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)

Get MemberPreExDisclosedDiag

Gets MemberPreExDisclosedDiag

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

api_instance = Vba::MemberPreExDisclosedDiagsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_disclosed_diag_key = 56 # Integer | MemberPreExDisclosedDiag Key

begin
  # Get MemberPreExDisclosedDiag
  result = api_instance.get_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->get_member_pre_ex_disclosed_diag: #{e}"
end
```

#### Using the get_member_pre_ex_disclosed_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDisclosedDiagVBAResponse>, Integer, Hash)> get_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)

```ruby
begin
  # Get MemberPreExDisclosedDiag
  data, status_code, headers = api_instance.get_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDisclosedDiagVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->get_member_pre_ex_disclosed_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_disclosed_diag_key** | **Integer** | MemberPreExDisclosedDiag Key |  |

### Return type

[**MemberPreExDisclosedDiagVBAResponse**](MemberPreExDisclosedDiagVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_pre_ex_disclosed_diag

> <MemberPreExDisclosedDiagListVBAResponse> list_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberPreExDisclosedDiag

Lists all MemberPreExDisclosedDiag for the given Subscriber_ID and Member_Seq

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

api_instance = Vba::MemberPreExDisclosedDiagsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List MemberPreExDisclosedDiag
  result = api_instance.list_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->list_member_pre_ex_disclosed_diag: #{e}"
end
```

#### Using the list_member_pre_ex_disclosed_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDisclosedDiagListVBAResponse>, Integer, Hash)> list_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberPreExDisclosedDiag
  data, status_code, headers = api_instance.list_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDisclosedDiagListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->list_member_pre_ex_disclosed_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**MemberPreExDisclosedDiagListVBAResponse**](MemberPreExDisclosedDiagListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_pre_ex_disclosed_diag

> <MultiCodeResponseListVBAResponse> update_batch_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)

Create or Update Batch MemberPreExDisclosedDiag

Create or Update multiple MemberPreExDisclosedDiag at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberPreExDisclosedDiagsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_disclosed_diag = [Vba::MemberPreExDisclosedDiag.new({member_pre_ex_disclosed_diag_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberPreExDisclosedDiag> | 

begin
  # Create or Update Batch MemberPreExDisclosedDiag
  result = api_instance.update_batch_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->update_batch_member_pre_ex_disclosed_diag: #{e}"
end
```

#### Using the update_batch_member_pre_ex_disclosed_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)

```ruby
begin
  # Create or Update Batch MemberPreExDisclosedDiag
  data, status_code, headers = api_instance.update_batch_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->update_batch_member_pre_ex_disclosed_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_disclosed_diag** | [**Array&lt;MemberPreExDisclosedDiag&gt;**](MemberPreExDisclosedDiag.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_pre_ex_disclosed_diag

> <MemberPreExDisclosedDiagVBAResponse> update_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag)

Update MemberPreExDisclosedDiag

Updates a specific MemberPreExDisclosedDiag.

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

api_instance = Vba::MemberPreExDisclosedDiagsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_disclosed_diag_key = 56 # Integer | MemberPreExDisclosedDiag Key
member_pre_ex_disclosed_diag = Vba::MemberPreExDisclosedDiag.new({member_pre_ex_disclosed_diag_key: 37, diagnostic_code_type: 'diagnostic_code_type_example', member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberPreExDisclosedDiag | 

begin
  # Update MemberPreExDisclosedDiag
  result = api_instance.update_member_pre_ex_disclosed_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->update_member_pre_ex_disclosed_diag: #{e}"
end
```

#### Using the update_member_pre_ex_disclosed_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDisclosedDiagVBAResponse>, Integer, Hash)> update_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag)

```ruby
begin
  # Update MemberPreExDisclosedDiag
  data, status_code, headers = api_instance.update_member_pre_ex_disclosed_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_disclosed_diag_key, member_pre_ex_disclosed_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDisclosedDiagVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExDisclosedDiagsApi->update_member_pre_ex_disclosed_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_disclosed_diag_key** | **Integer** | MemberPreExDisclosedDiag Key |  |
| **member_pre_ex_disclosed_diag** | [**MemberPreExDisclosedDiag**](MemberPreExDisclosedDiag.md) |  |  |

### Return type

[**MemberPreExDisclosedDiagVBAResponse**](MemberPreExDisclosedDiagVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

