# Vba::MemberPlanYearsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_plan_year**](MemberPlanYearsApi.md#create_member_plan_year) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/plan-years | Create MemberPlanYear |
| [**delete_member_plan_year**](MemberPlanYearsApi.md#delete_member_plan_year) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/plan-years/{memberPlanYearKey} | Delete MemberPlanYear |
| [**get_member_plan_year**](MemberPlanYearsApi.md#get_member_plan_year) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/plan-years/{memberPlanYearKey} | Get MemberPlanYear |
| [**list_member_plan_year**](MemberPlanYearsApi.md#list_member_plan_year) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/plan-years | List MemberPlanYear |
| [**update_batch_member_plan_year**](MemberPlanYearsApi.md#update_batch_member_plan_year) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/plan-years-batch | Create or Update Batch MemberPlanYear |
| [**update_member_plan_year**](MemberPlanYearsApi.md#update_member_plan_year) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/plan-years/{memberPlanYearKey} | Update MemberPlanYear |


## create_member_plan_year

> <MemberPlanYearVBAResponse> create_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year)

Create MemberPlanYear

Creates a new MemberPlanYear

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

api_instance = Vba::MemberPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_plan_year = Vba::MemberPlanYear.new({member_plan_year_key: 37, member_seq: 'member_seq_example', plan_year: 'plan_year_example', plan_year_end: Time.now, plan_year_start: Time.now, seq: 37, subscriber_id: 'subscriber_id_example', year: 'year_example'}) # MemberPlanYear | 

begin
  # Create MemberPlanYear
  result = api_instance.create_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->create_member_plan_year: #{e}"
end
```

#### Using the create_member_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPlanYearVBAResponse>, Integer, Hash)> create_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year)

```ruby
begin
  # Create MemberPlanYear
  data, status_code, headers = api_instance.create_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPlanYearVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->create_member_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_plan_year** | [**MemberPlanYear**](MemberPlanYear.md) |  |  |

### Return type

[**MemberPlanYearVBAResponse**](MemberPlanYearVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_plan_year

> delete_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)

Delete MemberPlanYear

Deletes an MemberPlanYear

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

api_instance = Vba::MemberPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_plan_year_key = 56 # Integer | MemberPlanYear Key

begin
  # Delete MemberPlanYear
  api_instance.delete_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->delete_member_plan_year: #{e}"
end
```

#### Using the delete_member_plan_year_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)

```ruby
begin
  # Delete MemberPlanYear
  data, status_code, headers = api_instance.delete_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->delete_member_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_plan_year_key** | **Integer** | MemberPlanYear Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_plan_year

> <MemberPlanYearVBAResponse> get_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)

Get MemberPlanYear

Gets MemberPlanYear

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

api_instance = Vba::MemberPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_plan_year_key = 56 # Integer | MemberPlanYear Key

begin
  # Get MemberPlanYear
  result = api_instance.get_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->get_member_plan_year: #{e}"
end
```

#### Using the get_member_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPlanYearVBAResponse>, Integer, Hash)> get_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)

```ruby
begin
  # Get MemberPlanYear
  data, status_code, headers = api_instance.get_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPlanYearVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->get_member_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_plan_year_key** | **Integer** | MemberPlanYear Key |  |

### Return type

[**MemberPlanYearVBAResponse**](MemberPlanYearVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_plan_year

> <MemberPlanYearListVBAResponse> list_member_plan_year(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberPlanYear

Lists all MemberPlanYear for the given subscriberID and memberSeq

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

api_instance = Vba::MemberPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberPlanYear
  result = api_instance.list_member_plan_year(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->list_member_plan_year: #{e}"
end
```

#### Using the list_member_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPlanYearListVBAResponse>, Integer, Hash)> list_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberPlanYear
  data, status_code, headers = api_instance.list_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPlanYearListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->list_member_plan_year_with_http_info: #{e}"
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

[**MemberPlanYearListVBAResponse**](MemberPlanYearListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_plan_year

> <MultiCodeResponseListVBAResponse> update_batch_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year)

Create or Update Batch MemberPlanYear

Create or Update multiple MemberPlanYear at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_plan_year = [Vba::MemberPlanYear.new({member_plan_year_key: 37, member_seq: 'member_seq_example', plan_year: 'plan_year_example', plan_year_end: Time.now, plan_year_start: Time.now, seq: 37, subscriber_id: 'subscriber_id_example', year: 'year_example'})] # Array<MemberPlanYear> | 

begin
  # Create or Update Batch MemberPlanYear
  result = api_instance.update_batch_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->update_batch_member_plan_year: #{e}"
end
```

#### Using the update_batch_member_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year)

```ruby
begin
  # Create or Update Batch MemberPlanYear
  data, status_code, headers = api_instance.update_batch_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->update_batch_member_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_plan_year** | [**Array&lt;MemberPlanYear&gt;**](MemberPlanYear.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_plan_year

> <MemberPlanYearVBAResponse> update_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year)

Update MemberPlanYear

Updates a specific MemberPlanYear.

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

api_instance = Vba::MemberPlanYearsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_plan_year_key = 56 # Integer | MemberPlanYear Key
member_plan_year = Vba::MemberPlanYear.new({member_plan_year_key: 37, member_seq: 'member_seq_example', plan_year: 'plan_year_example', plan_year_end: Time.now, plan_year_start: Time.now, seq: 37, subscriber_id: 'subscriber_id_example', year: 'year_example'}) # MemberPlanYear | 

begin
  # Update MemberPlanYear
  result = api_instance.update_member_plan_year(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->update_member_plan_year: #{e}"
end
```

#### Using the update_member_plan_year_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPlanYearVBAResponse>, Integer, Hash)> update_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year)

```ruby
begin
  # Update MemberPlanYear
  data, status_code, headers = api_instance.update_member_plan_year_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_plan_year_key, member_plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPlanYearVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPlanYearsApi->update_member_plan_year_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_plan_year_key** | **Integer** | MemberPlanYear Key |  |
| **member_plan_year** | [**MemberPlanYear**](MemberPlanYear.md) |  |  |

### Return type

[**MemberPlanYearVBAResponse**](MemberPlanYearVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

