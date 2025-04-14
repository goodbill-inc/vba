# Vba::MemberPreExistingDiagnosticCodesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_pre_ex_diag**](MemberPreExistingDiagnosticCodesApi.md#create_member_pre_ex_diag) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/pre-exisiting-diagnostic-codes | Create MemberPreExDiag |
| [**delete_member_pre_ex_diag**](MemberPreExistingDiagnosticCodesApi.md#delete_member_pre_ex_diag) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/pre-exisiting-diagnostic-codes/{diagnosticCodeType}/{fromDiag} | Delete MemberPreExDiag |
| [**get_member_pre_ex_diag**](MemberPreExistingDiagnosticCodesApi.md#get_member_pre_ex_diag) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/pre-exisiting-diagnostic-codes/{diagnosticCodeType}/{fromDiag} | Get MemberPreExDiag |
| [**list_member_pre_ex_diag**](MemberPreExistingDiagnosticCodesApi.md#list_member_pre_ex_diag) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/pre-exisiting-diagnostic-codes | List MemberPreExDiag |
| [**update_batch_member_pre_ex_diag**](MemberPreExistingDiagnosticCodesApi.md#update_batch_member_pre_ex_diag) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/pre-exisiting-diagnostic-codes-batch | Create or Update Batch MemberPreExDiag |
| [**update_member_pre_ex_diag**](MemberPreExistingDiagnosticCodesApi.md#update_member_pre_ex_diag) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/pre-exisiting-diagnostic-codes/{diagnosticCodeType}/{fromDiag} | Update MemberPreExDiag |


## create_member_pre_ex_diag

> <MemberPreExDiagVBAResponse> create_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)

Create MemberPreExDiag

Creates a new MemberPreExDiag

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

api_instance = Vba::MemberPreExistingDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_diag = Vba::MemberPreExDiag.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag: 'from_diag_example'}) # MemberPreExDiag | 

begin
  # Create MemberPreExDiag
  result = api_instance.create_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->create_member_pre_ex_diag: #{e}"
end
```

#### Using the create_member_pre_ex_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDiagVBAResponse>, Integer, Hash)> create_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)

```ruby
begin
  # Create MemberPreExDiag
  data, status_code, headers = api_instance.create_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDiagVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->create_member_pre_ex_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_diag** | [**MemberPreExDiag**](MemberPreExDiag.md) |  |  |

### Return type

[**MemberPreExDiagVBAResponse**](MemberPreExDiagVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_pre_ex_diag

> delete_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)

Delete MemberPreExDiag

Deletes an MemberPreExDiag

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

api_instance = Vba::MemberPreExistingDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag = 'from_diag_example' # String | From Diag

begin
  # Delete MemberPreExDiag
  api_instance.delete_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->delete_member_pre_ex_diag: #{e}"
end
```

#### Using the delete_member_pre_ex_diag_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)

```ruby
begin
  # Delete MemberPreExDiag
  data, status_code, headers = api_instance.delete_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->delete_member_pre_ex_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag** | **String** | From Diag |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_pre_ex_diag

> <MemberPreExDiagVBAResponse> get_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)

Get MemberPreExDiag

Gets MemberPreExDiag

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

api_instance = Vba::MemberPreExistingDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag = 'from_diag_example' # String | From Diag

begin
  # Get MemberPreExDiag
  result = api_instance.get_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->get_member_pre_ex_diag: #{e}"
end
```

#### Using the get_member_pre_ex_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDiagVBAResponse>, Integer, Hash)> get_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)

```ruby
begin
  # Get MemberPreExDiag
  data, status_code, headers = api_instance.get_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDiagVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->get_member_pre_ex_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag** | **String** | From Diag |  |

### Return type

[**MemberPreExDiagVBAResponse**](MemberPreExDiagVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_pre_ex_diag

> <MemberPreExDiagListVBAResponse> list_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberPreExDiag

Lists all MemberPreExDiag for the given subscriberID and memberSeq

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

api_instance = Vba::MemberPreExistingDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberPreExDiag
  result = api_instance.list_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->list_member_pre_ex_diag: #{e}"
end
```

#### Using the list_member_pre_ex_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDiagListVBAResponse>, Integer, Hash)> list_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberPreExDiag
  data, status_code, headers = api_instance.list_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDiagListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->list_member_pre_ex_diag_with_http_info: #{e}"
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

[**MemberPreExDiagListVBAResponse**](MemberPreExDiagListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_pre_ex_diag

> <MultiCodeResponseListVBAResponse> update_batch_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)

Create or Update Batch MemberPreExDiag

Create or Update multiple MemberPreExDiag at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberPreExistingDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_pre_ex_diag = [Vba::MemberPreExDiag.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag: 'from_diag_example'})] # Array<MemberPreExDiag> | 

begin
  # Create or Update Batch MemberPreExDiag
  result = api_instance.update_batch_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->update_batch_member_pre_ex_diag: #{e}"
end
```

#### Using the update_batch_member_pre_ex_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)

```ruby
begin
  # Create or Update Batch MemberPreExDiag
  data, status_code, headers = api_instance.update_batch_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_pre_ex_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->update_batch_member_pre_ex_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_pre_ex_diag** | [**Array&lt;MemberPreExDiag&gt;**](MemberPreExDiag.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_pre_ex_diag

> <MemberPreExDiagVBAResponse> update_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag, member_pre_ex_diag)

Update MemberPreExDiag

Updates a specific MemberPreExDiag.

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

api_instance = Vba::MemberPreExistingDiagnosticCodesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
diagnostic_code_type = 'diagnostic_code_type_example' # String | Diagnostic Code Type
from_diag = 'from_diag_example' # String | From Diag
member_pre_ex_diag = Vba::MemberPreExDiag.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', diagnostic_code_type: 'diagnostic_code_type_example', from_diag: 'from_diag_example'}) # MemberPreExDiag | 

begin
  # Update MemberPreExDiag
  result = api_instance.update_member_pre_ex_diag(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag, member_pre_ex_diag)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->update_member_pre_ex_diag: #{e}"
end
```

#### Using the update_member_pre_ex_diag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPreExDiagVBAResponse>, Integer, Hash)> update_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag, member_pre_ex_diag)

```ruby
begin
  # Update MemberPreExDiag
  data, status_code, headers = api_instance.update_member_pre_ex_diag_with_http_info(vbasoftware_database, subscriber_id, member_seq, diagnostic_code_type, from_diag, member_pre_ex_diag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPreExDiagVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPreExistingDiagnosticCodesApi->update_member_pre_ex_diag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **diagnostic_code_type** | **String** | Diagnostic Code Type |  |
| **from_diag** | **String** | From Diag |  |
| **member_pre_ex_diag** | [**MemberPreExDiag**](MemberPreExDiag.md) |  |  |

### Return type

[**MemberPreExDiagVBAResponse**](MemberPreExDiagVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

