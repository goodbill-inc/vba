# Vba::PremiumRateMembersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_rate_member**](PremiumRateMembersApi.md#create_prem_rate_member) | **POST** /premium-rates/{premRateKey}/members | Create PremRateMember |
| [**delete_prem_rate_member**](PremiumRateMembersApi.md#delete_prem_rate_member) | **DELETE** /premium-rates/{premRateKey}/members/{subscriberID}/{memberSeq}/{effectiveDate} | Delete PremRateMember |
| [**get_prem_rate_member**](PremiumRateMembersApi.md#get_prem_rate_member) | **GET** /premium-rates/{premRateKey}/members/{subscriberID}/{memberSeq}/{effectiveDate} | Get PremRateMember |
| [**list_prem_rate_member**](PremiumRateMembersApi.md#list_prem_rate_member) | **GET** /premium-rates/{premRateKey}/members | List PremRateMember |
| [**update_batch_prem_rate_member**](PremiumRateMembersApi.md#update_batch_prem_rate_member) | **PUT** /premium-rates/{premRateKey}/members-batch | Create or Update Batch PremRateMember |
| [**update_prem_rate_member**](PremiumRateMembersApi.md#update_prem_rate_member) | **PUT** /premium-rates/{premRateKey}/members/{subscriberID}/{memberSeq}/{effectiveDate} | Update PremRateMember |


## create_prem_rate_member

> <PremRateMemberVBAResponse> create_prem_rate_member(vbasoftware_database, prem_rate_key, prem_rate_member)

Create PremRateMember

Creates a new PremRateMember

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

api_instance = Vba::PremiumRateMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_member = Vba::PremRateMember.new({prem_rate_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', effective_date: Time.now}) # PremRateMember | 

begin
  # Create PremRateMember
  result = api_instance.create_prem_rate_member(vbasoftware_database, prem_rate_key, prem_rate_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->create_prem_rate_member: #{e}"
end
```

#### Using the create_prem_rate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMemberVBAResponse>, Integer, Hash)> create_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member)

```ruby
begin
  # Create PremRateMember
  data, status_code, headers = api_instance.create_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->create_prem_rate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_member** | [**PremRateMember**](PremRateMember.md) |  |  |

### Return type

[**PremRateMemberVBAResponse**](PremRateMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_rate_member

> delete_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)

Delete PremRateMember

Deletes an PremRateMember

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

api_instance = Vba::PremiumRateMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete PremRateMember
  api_instance.delete_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->delete_prem_rate_member: #{e}"
end
```

#### Using the delete_prem_rate_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)

```ruby
begin
  # Delete PremRateMember
  data, status_code, headers = api_instance.delete_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->delete_prem_rate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_rate_member

> <PremRateMemberVBAResponse> get_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)

Get PremRateMember

Gets PremRateMember

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

api_instance = Vba::PremiumRateMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get PremRateMember
  result = api_instance.get_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->get_prem_rate_member: #{e}"
end
```

#### Using the get_prem_rate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMemberVBAResponse>, Integer, Hash)> get_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)

```ruby
begin
  # Get PremRateMember
  data, status_code, headers = api_instance.get_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->get_prem_rate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**PremRateMemberVBAResponse**](PremRateMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_rate_member

> <PremRateMemberListVBAResponse> list_prem_rate_member(vbasoftware_database, prem_rate_key, opts)

List PremRateMember

Lists all PremRateMember for the given premRateKey

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

api_instance = Vba::PremiumRateMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremRateMember
  result = api_instance.list_prem_rate_member(vbasoftware_database, prem_rate_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->list_prem_rate_member: #{e}"
end
```

#### Using the list_prem_rate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMemberListVBAResponse>, Integer, Hash)> list_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, opts)

```ruby
begin
  # List PremRateMember
  data, status_code, headers = api_instance.list_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMemberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->list_prem_rate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremRateMemberListVBAResponse**](PremRateMemberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_rate_member

> <MultiCodeResponseListVBAResponse> update_batch_prem_rate_member(vbasoftware_database, prem_rate_key, prem_rate_member)

Create or Update Batch PremRateMember

Create or Update multiple PremRateMember at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumRateMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
prem_rate_member = [Vba::PremRateMember.new({prem_rate_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', effective_date: Time.now})] # Array<PremRateMember> | 

begin
  # Create or Update Batch PremRateMember
  result = api_instance.update_batch_prem_rate_member(vbasoftware_database, prem_rate_key, prem_rate_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->update_batch_prem_rate_member: #{e}"
end
```

#### Using the update_batch_prem_rate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member)

```ruby
begin
  # Create or Update Batch PremRateMember
  data, status_code, headers = api_instance.update_batch_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, prem_rate_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->update_batch_prem_rate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **prem_rate_member** | [**Array&lt;PremRateMember&gt;**](PremRateMember.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_rate_member

> <PremRateMemberVBAResponse> update_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member)

Update PremRateMember

Updates a specific PremRateMember.

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

api_instance = Vba::PremiumRateMembersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
prem_rate_key = 56 # Integer | PremRate Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
prem_rate_member = Vba::PremRateMember.new({prem_rate_key: 37, subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', effective_date: Time.now}) # PremRateMember | 

begin
  # Update PremRateMember
  result = api_instance.update_prem_rate_member(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->update_prem_rate_member: #{e}"
end
```

#### Using the update_prem_rate_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremRateMemberVBAResponse>, Integer, Hash)> update_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member)

```ruby
begin
  # Update PremRateMember
  data, status_code, headers = api_instance.update_prem_rate_member_with_http_info(vbasoftware_database, prem_rate_key, subscriber_id, member_seq, effective_date, prem_rate_member)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremRateMemberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumRateMembersApi->update_prem_rate_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **prem_rate_key** | **Integer** | PremRate Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **effective_date** | **Time** | Effective Date |  |
| **prem_rate_member** | [**PremRateMember**](PremRateMember.md) |  |  |

### Return type

[**PremRateMemberVBAResponse**](PremRateMemberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

