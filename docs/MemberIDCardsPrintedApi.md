# Vba::MemberIDCardsPrintedApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_id_card_printed**](MemberIDCardsPrintedApi.md#create_member_id_card_printed) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards | Create MemberIDCardPrinted |
| [**delete_member_id_card_printed**](MemberIDCardsPrintedApi.md#delete_member_id_card_printed) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards/{reportDefinitionKey}/{printedDate} | Delete MemberIDCardPrinted |
| [**get_member_id_card_printed**](MemberIDCardsPrintedApi.md#get_member_id_card_printed) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards/{reportDefinitionKey}/{printedDate} | Get MemberIDCardPrinted |
| [**list_member_id_card_printed**](MemberIDCardsPrintedApi.md#list_member_id_card_printed) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards | List MemberIDCardPrinted |
| [**update_batch_member_id_card_printed**](MemberIDCardsPrintedApi.md#update_batch_member_id_card_printed) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards-batch | Create or Update Batch MemberIDCardPrinted |
| [**update_member_id_card_printed**](MemberIDCardsPrintedApi.md#update_member_id_card_printed) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/printed-id-cards/{reportDefinitionKey}/{printedDate} | Update MemberIDCardPrinted |


## create_member_id_card_printed

> <MemberIDCardPrintedVBAResponse> create_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)

Create MemberIDCardPrinted

Creates a new MemberIDCardPrinted

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

api_instance = Vba::MemberIDCardsPrintedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_id_card_printed = Vba::MemberIDCardPrinted.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', report_definition_key: 37, printed_date: Time.now}) # MemberIDCardPrinted | 

begin
  # Create MemberIDCardPrinted
  result = api_instance.create_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->create_member_id_card_printed: #{e}"
end
```

#### Using the create_member_id_card_printed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberIDCardPrintedVBAResponse>, Integer, Hash)> create_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)

```ruby
begin
  # Create MemberIDCardPrinted
  data, status_code, headers = api_instance.create_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberIDCardPrintedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->create_member_id_card_printed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_id_card_printed** | [**MemberIDCardPrinted**](MemberIDCardPrinted.md) |  |  |

### Return type

[**MemberIDCardPrintedVBAResponse**](MemberIDCardPrintedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_id_card_printed

> delete_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)

Delete MemberIDCardPrinted

Deletes an MemberIDCardPrinted

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

api_instance = Vba::MemberIDCardsPrintedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
report_definition_key = 56 # Integer | ReportDefinition Key
printed_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Printed Date

begin
  # Delete MemberIDCardPrinted
  api_instance.delete_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->delete_member_id_card_printed: #{e}"
end
```

#### Using the delete_member_id_card_printed_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)

```ruby
begin
  # Delete MemberIDCardPrinted
  data, status_code, headers = api_instance.delete_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->delete_member_id_card_printed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **printed_date** | **Time** | Printed Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_id_card_printed

> <MemberIDCardPrintedVBAResponse> get_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)

Get MemberIDCardPrinted

Gets MemberIDCardPrinted

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

api_instance = Vba::MemberIDCardsPrintedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
report_definition_key = 56 # Integer | ReportDefinition Key
printed_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Printed Date

begin
  # Get MemberIDCardPrinted
  result = api_instance.get_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->get_member_id_card_printed: #{e}"
end
```

#### Using the get_member_id_card_printed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberIDCardPrintedVBAResponse>, Integer, Hash)> get_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)

```ruby
begin
  # Get MemberIDCardPrinted
  data, status_code, headers = api_instance.get_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberIDCardPrintedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->get_member_id_card_printed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **printed_date** | **Time** | Printed Date |  |

### Return type

[**MemberIDCardPrintedVBAResponse**](MemberIDCardPrintedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_id_card_printed

> <MemberIDCardPrintedListVBAResponse> list_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberIDCardPrinted

Lists all MemberIDCardPrinted for the given subscriberID and memberSeq

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

api_instance = Vba::MemberIDCardsPrintedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberIDCardPrinted
  result = api_instance.list_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->list_member_id_card_printed: #{e}"
end
```

#### Using the list_member_id_card_printed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberIDCardPrintedListVBAResponse>, Integer, Hash)> list_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberIDCardPrinted
  data, status_code, headers = api_instance.list_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberIDCardPrintedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->list_member_id_card_printed_with_http_info: #{e}"
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

[**MemberIDCardPrintedListVBAResponse**](MemberIDCardPrintedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_id_card_printed

> <MultiCodeResponseListVBAResponse> update_batch_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)

Create or Update Batch MemberIDCardPrinted

Create or Update multiple MemberIDCardPrinted at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberIDCardsPrintedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_id_card_printed = [Vba::MemberIDCardPrinted.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', report_definition_key: 37, printed_date: Time.now})] # Array<MemberIDCardPrinted> | 

begin
  # Create or Update Batch MemberIDCardPrinted
  result = api_instance.update_batch_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->update_batch_member_id_card_printed: #{e}"
end
```

#### Using the update_batch_member_id_card_printed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)

```ruby
begin
  # Create or Update Batch MemberIDCardPrinted
  data, status_code, headers = api_instance.update_batch_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_id_card_printed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->update_batch_member_id_card_printed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_id_card_printed** | [**Array&lt;MemberIDCardPrinted&gt;**](MemberIDCardPrinted.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_id_card_printed

> <MemberIDCardPrintedVBAResponse> update_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed)

Update MemberIDCardPrinted

Updates a specific MemberIDCardPrinted.

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

api_instance = Vba::MemberIDCardsPrintedApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
report_definition_key = 56 # Integer | ReportDefinition Key
printed_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Printed Date
member_id_card_printed = Vba::MemberIDCardPrinted.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', report_definition_key: 37, printed_date: Time.now}) # MemberIDCardPrinted | 

begin
  # Update MemberIDCardPrinted
  result = api_instance.update_member_id_card_printed(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->update_member_id_card_printed: #{e}"
end
```

#### Using the update_member_id_card_printed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberIDCardPrintedVBAResponse>, Integer, Hash)> update_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed)

```ruby
begin
  # Update MemberIDCardPrinted
  data, status_code, headers = api_instance.update_member_id_card_printed_with_http_info(vbasoftware_database, subscriber_id, member_seq, report_definition_key, printed_date, member_id_card_printed)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberIDCardPrintedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberIDCardsPrintedApi->update_member_id_card_printed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **report_definition_key** | **Integer** | ReportDefinition Key |  |
| **printed_date** | **Time** | Printed Date |  |
| **member_id_card_printed** | [**MemberIDCardPrinted**](MemberIDCardPrinted.md) |  |  |

### Return type

[**MemberIDCardPrintedVBAResponse**](MemberIDCardPrintedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

