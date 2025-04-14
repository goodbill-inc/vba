# Vba::MemberPaymentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_payment**](MemberPaymentsApi.md#create_member_payment) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/payments | Create MemberPayment |
| [**delete_member_payment**](MemberPaymentsApi.md#delete_member_payment) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/payments/{memberPaymentKey} | Delete MemberPayment |
| [**get_member_payment**](MemberPaymentsApi.md#get_member_payment) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/payments/{memberPaymentKey} | Get MemberPayment |
| [**list_member_payment**](MemberPaymentsApi.md#list_member_payment) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/payments | List MemberPayment |
| [**list_member_payment_filtered**](MemberPaymentsApi.md#list_member_payment_filtered) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/payments-filtered | List MemberPayments Filtered |
| [**update_batch_member_payment**](MemberPaymentsApi.md#update_batch_member_payment) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/payments-batch | Create or Update Batch MemberPayment |
| [**update_member_payment**](MemberPaymentsApi.md#update_member_payment) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/payments/{memberPaymentKey} | Update MemberPayment |


## create_member_payment

> <MemberPaymentVBAResponse> create_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment)

Create MemberPayment

Creates a new MemberPayment

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_payment = Vba::MemberPayment.new({member_payment_key: 37, division_id: 'division_id_example', group_coverage_start: Time.now, group_id: 'group_id_example', member_seq: 'member_seq_example', start_date: Time.now, subscriber_id: 'subscriber_id_example'}) # MemberPayment | 

begin
  # Create MemberPayment
  result = api_instance.create_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->create_member_payment: #{e}"
end
```

#### Using the create_member_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPaymentVBAResponse>, Integer, Hash)> create_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment)

```ruby
begin
  # Create MemberPayment
  data, status_code, headers = api_instance.create_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->create_member_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_payment** | [**MemberPayment**](MemberPayment.md) |  |  |

### Return type

[**MemberPaymentVBAResponse**](MemberPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_payment

> delete_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key)

Delete MemberPayment

Deletes an MemberPayment

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_payment_key = 56 # Integer | MemberPayment Key

begin
  # Delete MemberPayment
  api_instance.delete_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->delete_member_payment: #{e}"
end
```

#### Using the delete_member_payment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key)

```ruby
begin
  # Delete MemberPayment
  data, status_code, headers = api_instance.delete_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->delete_member_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_payment_key** | **Integer** | MemberPayment Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_payment

> <MemberPaymentVBAResponse> get_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key)

Get MemberPayment

Gets MemberPayment

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_payment_key = 56 # Integer | MemberPayment Key

begin
  # Get MemberPayment
  result = api_instance.get_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->get_member_payment: #{e}"
end
```

#### Using the get_member_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPaymentVBAResponse>, Integer, Hash)> get_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key)

```ruby
begin
  # Get MemberPayment
  data, status_code, headers = api_instance.get_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->get_member_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_payment_key** | **Integer** | MemberPayment Key |  |

### Return type

[**MemberPaymentVBAResponse**](MemberPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_payment

> <MemberPaymentListVBAResponse> list_member_payment(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberPayment

Lists all MemberPayment for the given subscriberID and memberSeq

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberPayment
  result = api_instance.list_member_payment(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->list_member_payment: #{e}"
end
```

#### Using the list_member_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPaymentListVBAResponse>, Integer, Hash)> list_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberPayment
  data, status_code, headers = api_instance.list_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->list_member_payment_with_http_info: #{e}"
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

[**MemberPaymentListVBAResponse**](MemberPaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_payment_filtered

> <MemberPaymentListVBAResponse> list_member_payment_filtered(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts)

List MemberPayments Filtered

Lists all MemberPayment for the given Subscriber ID, Member Seq, Group ID, Division ID, Group Coverage Start and Start Date

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
group_coverage_start = Time.parse('2013-10-20T19:20:30+01:00') # Time | Group Coverage Start
start_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Start Date
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberPayments Filtered
  result = api_instance.list_member_payment_filtered(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->list_member_payment_filtered: #{e}"
end
```

#### Using the list_member_payment_filtered_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPaymentListVBAResponse>, Integer, Hash)> list_member_payment_filtered_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts)

```ruby
begin
  # List MemberPayments Filtered
  data, status_code, headers = api_instance.list_member_payment_filtered_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, division_id, group_coverage_start, start_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPaymentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->list_member_payment_filtered_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **group_coverage_start** | **Time** | Group Coverage Start |  |
| **start_date** | **Time** | Start Date |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberPaymentListVBAResponse**](MemberPaymentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_payment

> <MultiCodeResponseListVBAResponse> update_batch_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment)

Create or Update Batch MemberPayment

Create or Update multiple MemberPayment at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_payment = [Vba::MemberPayment.new({member_payment_key: 37, division_id: 'division_id_example', group_coverage_start: Time.now, group_id: 'group_id_example', member_seq: 'member_seq_example', start_date: Time.now, subscriber_id: 'subscriber_id_example'})] # Array<MemberPayment> | 

begin
  # Create or Update Batch MemberPayment
  result = api_instance.update_batch_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->update_batch_member_payment: #{e}"
end
```

#### Using the update_batch_member_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment)

```ruby
begin
  # Create or Update Batch MemberPayment
  data, status_code, headers = api_instance.update_batch_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->update_batch_member_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_payment** | [**Array&lt;MemberPayment&gt;**](MemberPayment.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_payment

> <MemberPaymentVBAResponse> update_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment)

Update MemberPayment

Updates a specific MemberPayment.

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

api_instance = Vba::MemberPaymentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_payment_key = 56 # Integer | MemberPayment Key
member_payment = Vba::MemberPayment.new({member_payment_key: 37, division_id: 'division_id_example', group_coverage_start: Time.now, group_id: 'group_id_example', member_seq: 'member_seq_example', start_date: Time.now, subscriber_id: 'subscriber_id_example'}) # MemberPayment | 

begin
  # Update MemberPayment
  result = api_instance.update_member_payment(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->update_member_payment: #{e}"
end
```

#### Using the update_member_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberPaymentVBAResponse>, Integer, Hash)> update_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment)

```ruby
begin
  # Update MemberPayment
  data, status_code, headers = api_instance.update_member_payment_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_payment_key, member_payment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberPaymentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberPaymentsApi->update_member_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_payment_key** | **Integer** | MemberPayment Key |  |
| **member_payment** | [**MemberPayment**](MemberPayment.md) |  |  |

### Return type

[**MemberPaymentVBAResponse**](MemberPaymentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

