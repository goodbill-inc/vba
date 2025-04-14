# Vba::MemberOccupationsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_occupation**](MemberOccupationsApi.md#create_member_occupation) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/occupations | Create MemberOccupation |
| [**delete_member_occupation**](MemberOccupationsApi.md#delete_member_occupation) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/occupations/{occupationID}/{effectiveDate} | Delete MemberOccupation |
| [**get_member_occupation**](MemberOccupationsApi.md#get_member_occupation) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/occupations/{occupationID}/{effectiveDate} | Get MemberOccupation |
| [**list_member_occupation**](MemberOccupationsApi.md#list_member_occupation) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/occupations | List MemberOccupation |
| [**update_batch_member_occupation**](MemberOccupationsApi.md#update_batch_member_occupation) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/occupations-batch | Create or Update Batch MemberOccupation |
| [**update_member_occupation**](MemberOccupationsApi.md#update_member_occupation) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/occupations/{occupationID}/{effectiveDate} | Update MemberOccupation |


## create_member_occupation

> <MemberOccupationVBAResponse> create_member_occupation(vbasoftware_database, subscriber_id, member_seq, member_occupation)

Create MemberOccupation

Creates a new MemberOccupation

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

api_instance = Vba::MemberOccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_occupation = Vba::MemberOccupation.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', occupation_id: 'occupation_id_example', effective_date: Time.now}) # MemberOccupation | 

begin
  # Create MemberOccupation
  result = api_instance.create_member_occupation(vbasoftware_database, subscriber_id, member_seq, member_occupation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->create_member_occupation: #{e}"
end
```

#### Using the create_member_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberOccupationVBAResponse>, Integer, Hash)> create_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_occupation)

```ruby
begin
  # Create MemberOccupation
  data, status_code, headers = api_instance.create_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_occupation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberOccupationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->create_member_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_occupation** | [**MemberOccupation**](MemberOccupation.md) |  |  |

### Return type

[**MemberOccupationVBAResponse**](MemberOccupationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_occupation

> delete_member_occupation(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)

Delete MemberOccupation

Deletes an MemberOccupation

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

api_instance = Vba::MemberOccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
occupation_id = 'occupation_id_example' # String | Occupation ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete MemberOccupation
  api_instance.delete_member_occupation(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->delete_member_occupation: #{e}"
end
```

#### Using the delete_member_occupation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)

```ruby
begin
  # Delete MemberOccupation
  data, status_code, headers = api_instance.delete_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->delete_member_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **occupation_id** | **String** | Occupation ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_occupation

> <MemberOccupationVBAResponse> get_member_occupation(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)

Get MemberOccupation

Gets MemberOccupation

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

api_instance = Vba::MemberOccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
occupation_id = 'occupation_id_example' # String | Occupation ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get MemberOccupation
  result = api_instance.get_member_occupation(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->get_member_occupation: #{e}"
end
```

#### Using the get_member_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberOccupationVBAResponse>, Integer, Hash)> get_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)

```ruby
begin
  # Get MemberOccupation
  data, status_code, headers = api_instance.get_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberOccupationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->get_member_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **occupation_id** | **String** | Occupation ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**MemberOccupationVBAResponse**](MemberOccupationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_occupation

> <MemberOccupationListVBAResponse> list_member_occupation(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberOccupation

Lists all MemberOccupation for the given subscriberID and memberSeq

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

api_instance = Vba::MemberOccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberOccupation
  result = api_instance.list_member_occupation(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->list_member_occupation: #{e}"
end
```

#### Using the list_member_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberOccupationListVBAResponse>, Integer, Hash)> list_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberOccupation
  data, status_code, headers = api_instance.list_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberOccupationListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->list_member_occupation_with_http_info: #{e}"
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

[**MemberOccupationListVBAResponse**](MemberOccupationListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_occupation

> <MultiCodeResponseListVBAResponse> update_batch_member_occupation(vbasoftware_database, subscriber_id, member_seq, member_occupation)

Create or Update Batch MemberOccupation

Create or Update multiple MemberOccupation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberOccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_occupation = [Vba::MemberOccupation.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', occupation_id: 'occupation_id_example', effective_date: Time.now})] # Array<MemberOccupation> | 

begin
  # Create or Update Batch MemberOccupation
  result = api_instance.update_batch_member_occupation(vbasoftware_database, subscriber_id, member_seq, member_occupation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->update_batch_member_occupation: #{e}"
end
```

#### Using the update_batch_member_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_occupation)

```ruby
begin
  # Create or Update Batch MemberOccupation
  data, status_code, headers = api_instance.update_batch_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_occupation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->update_batch_member_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_occupation** | [**Array&lt;MemberOccupation&gt;**](MemberOccupation.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_occupation

> <MemberOccupationVBAResponse> update_member_occupation(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date, member_occupation)

Update MemberOccupation

Updates a specific MemberOccupation.

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

api_instance = Vba::MemberOccupationsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
occupation_id = 'occupation_id_example' # String | Occupation ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
member_occupation = Vba::MemberOccupation.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', occupation_id: 'occupation_id_example', effective_date: Time.now}) # MemberOccupation | 

begin
  # Update MemberOccupation
  result = api_instance.update_member_occupation(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date, member_occupation)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->update_member_occupation: #{e}"
end
```

#### Using the update_member_occupation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberOccupationVBAResponse>, Integer, Hash)> update_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date, member_occupation)

```ruby
begin
  # Update MemberOccupation
  data, status_code, headers = api_instance.update_member_occupation_with_http_info(vbasoftware_database, subscriber_id, member_seq, occupation_id, effective_date, member_occupation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberOccupationVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberOccupationsApi->update_member_occupation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **occupation_id** | **String** | Occupation ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **member_occupation** | [**MemberOccupation**](MemberOccupation.md) |  |  |

### Return type

[**MemberOccupationVBAResponse**](MemberOccupationVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

