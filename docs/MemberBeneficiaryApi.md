# Vba::MemberBeneficiaryApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_beneficiary**](MemberBeneficiaryApi.md#create_member_beneficiary) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries | Create MemberBeneficiary |
| [**delete_member_beneficiary**](MemberBeneficiaryApi.md#delete_member_beneficiary) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID} | Delete MemberBeneficiary |
| [**get_member_beneficiary**](MemberBeneficiaryApi.md#get_member_beneficiary) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID} | Get MemberBeneficiary |
| [**list_member_beneficiary**](MemberBeneficiaryApi.md#list_member_beneficiary) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries | List MemberBeneficiary |
| [**update_batch_member_beneficiary**](MemberBeneficiaryApi.md#update_batch_member_beneficiary) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries-batch | Create or Update Batch MemberBeneficiary |
| [**update_member_beneficiary**](MemberBeneficiaryApi.md#update_member_beneficiary) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/beneficiaries/{beneficiaryID} | Update MemberBeneficiary |


## create_member_beneficiary

> <MemberBeneficiaryVBAResponse> create_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)

Create MemberBeneficiary

Creates a new MemberBeneficiary

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

api_instance = Vba::MemberBeneficiaryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_beneficiary = Vba::MemberBeneficiary.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', beneficiary_id: 'beneficiary_id_example', exclude_interest: false}) # MemberBeneficiary | 

begin
  # Create MemberBeneficiary
  result = api_instance.create_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->create_member_beneficiary: #{e}"
end
```

#### Using the create_member_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryVBAResponse>, Integer, Hash)> create_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)

```ruby
begin
  # Create MemberBeneficiary
  data, status_code, headers = api_instance.create_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->create_member_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_beneficiary** | [**MemberBeneficiary**](MemberBeneficiary.md) |  |  |

### Return type

[**MemberBeneficiaryVBAResponse**](MemberBeneficiaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_beneficiary

> delete_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)

Delete MemberBeneficiary

Deletes an MemberBeneficiary

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

api_instance = Vba::MemberBeneficiaryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID

begin
  # Delete MemberBeneficiary
  api_instance.delete_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->delete_member_beneficiary: #{e}"
end
```

#### Using the delete_member_beneficiary_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)

```ruby
begin
  # Delete MemberBeneficiary
  data, status_code, headers = api_instance.delete_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->delete_member_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_beneficiary

> <MemberBeneficiaryVBAResponse> get_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)

Get MemberBeneficiary

Gets MemberBeneficiary

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

api_instance = Vba::MemberBeneficiaryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID

begin
  # Get MemberBeneficiary
  result = api_instance.get_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->get_member_beneficiary: #{e}"
end
```

#### Using the get_member_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryVBAResponse>, Integer, Hash)> get_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)

```ruby
begin
  # Get MemberBeneficiary
  data, status_code, headers = api_instance.get_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->get_member_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |

### Return type

[**MemberBeneficiaryVBAResponse**](MemberBeneficiaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_beneficiary

> <MemberBeneficiaryListVBAResponse> list_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberBeneficiary

Lists all MemberBeneficiary for the given subscriberID and memberSeq

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

api_instance = Vba::MemberBeneficiaryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberBeneficiary
  result = api_instance.list_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->list_member_beneficiary: #{e}"
end
```

#### Using the list_member_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryListVBAResponse>, Integer, Hash)> list_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberBeneficiary
  data, status_code, headers = api_instance.list_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->list_member_beneficiary_with_http_info: #{e}"
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

[**MemberBeneficiaryListVBAResponse**](MemberBeneficiaryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_beneficiary

> <MultiCodeResponseListVBAResponse> update_batch_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)

Create or Update Batch MemberBeneficiary

Create or Update multiple MemberBeneficiary at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberBeneficiaryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_beneficiary = [Vba::MemberBeneficiary.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', beneficiary_id: 'beneficiary_id_example', exclude_interest: false})] # Array<MemberBeneficiary> | 

begin
  # Create or Update Batch MemberBeneficiary
  result = api_instance.update_batch_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->update_batch_member_beneficiary: #{e}"
end
```

#### Using the update_batch_member_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)

```ruby
begin
  # Create or Update Batch MemberBeneficiary
  data, status_code, headers = api_instance.update_batch_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_beneficiary)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->update_batch_member_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_beneficiary** | [**Array&lt;MemberBeneficiary&gt;**](MemberBeneficiary.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_beneficiary

> <MemberBeneficiaryVBAResponse> update_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary)

Update MemberBeneficiary

Updates a specific MemberBeneficiary.

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

api_instance = Vba::MemberBeneficiaryApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
beneficiary_id = 'beneficiary_id_example' # String | Beneficiary ID
member_beneficiary = Vba::MemberBeneficiary.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', beneficiary_id: 'beneficiary_id_example', exclude_interest: false}) # MemberBeneficiary | 

begin
  # Update MemberBeneficiary
  result = api_instance.update_member_beneficiary(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->update_member_beneficiary: #{e}"
end
```

#### Using the update_member_beneficiary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberBeneficiaryVBAResponse>, Integer, Hash)> update_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary)

```ruby
begin
  # Update MemberBeneficiary
  data, status_code, headers = api_instance.update_member_beneficiary_with_http_info(vbasoftware_database, subscriber_id, member_seq, beneficiary_id, member_beneficiary)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberBeneficiaryVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberBeneficiaryApi->update_member_beneficiary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **beneficiary_id** | **String** | Beneficiary ID |  |
| **member_beneficiary** | [**MemberBeneficiary**](MemberBeneficiary.md) |  |  |

### Return type

[**MemberBeneficiaryVBAResponse**](MemberBeneficiaryVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

