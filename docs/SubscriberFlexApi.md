# Vba::SubscriberFlexApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_flex**](SubscriberFlexApi.md#create_subscriber_flex) | **POST** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes | Create SubscriberFlex |
| [**delete_subscriber_flex**](SubscriberFlexApi.md#delete_subscriber_flex) | **DELETE** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate} | Delete SubscriberFlex |
| [**get_subscriber_flex**](SubscriberFlexApi.md#get_subscriber_flex) | **GET** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate} | Get SubscriberFlex |
| [**list_subscriber_flex**](SubscriberFlexApi.md#list_subscriber_flex) | **GET** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes | List SubscriberFlex |
| [**update_batch_subscriber_flex**](SubscriberFlexApi.md#update_batch_subscriber_flex) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes-batch | Create or Update Batch SubscriberFlex |
| [**update_subscriber_flex**](SubscriberFlexApi.md#update_subscriber_flex) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate} | Update SubscriberFlex |


## create_subscriber_flex

> <SubscriberFlexVBAResponse> create_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)

Create SubscriberFlex

Creates a new SubscriberFlex

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

api_instance = Vba::SubscriberFlexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex = Vba::SubscriberFlex.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', plan_id: 'plan_id_example', calendar_year: 'calendar_year_example', effective_date: Time.now, auto_create_flex: false, custom_election_info_only: false, full_election_for_partial_year: false, term_date: Time.now}) # SubscriberFlex | 

begin
  # Create SubscriberFlex
  result = api_instance.create_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->create_subscriber_flex: #{e}"
end
```

#### Using the create_subscriber_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexVBAResponse>, Integer, Hash)> create_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)

```ruby
begin
  # Create SubscriberFlex
  data, status_code, headers = api_instance.create_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->create_subscriber_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex** | [**SubscriberFlex**](SubscriberFlex.md) |  |  |

### Return type

[**SubscriberFlexVBAResponse**](SubscriberFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_flex

> delete_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)

Delete SubscriberFlex

Deletes an SubscriberFlex

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

api_instance = Vba::SubscriberFlexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete SubscriberFlex
  api_instance.delete_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->delete_subscriber_flex: #{e}"
end
```

#### Using the delete_subscriber_flex_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)

```ruby
begin
  # Delete SubscriberFlex
  data, status_code, headers = api_instance.delete_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->delete_subscriber_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **calendar_year** | **String** | Calendar Year |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_flex

> <SubscriberFlexVBAResponse> get_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)

Get SubscriberFlex

Gets SubscriberFlex

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

api_instance = Vba::SubscriberFlexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get SubscriberFlex
  result = api_instance.get_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->get_subscriber_flex: #{e}"
end
```

#### Using the get_subscriber_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexVBAResponse>, Integer, Hash)> get_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)

```ruby
begin
  # Get SubscriberFlex
  data, status_code, headers = api_instance.get_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->get_subscriber_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **calendar_year** | **String** | Calendar Year |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**SubscriberFlexVBAResponse**](SubscriberFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_flex

> <SubscriberFlexListVBAResponse> list_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, opts)

List SubscriberFlex

Lists all SubscriberFlex for the given subscriberID and groupID and planID

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

api_instance = Vba::SubscriberFlexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberFlex
  result = api_instance.list_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->list_subscriber_flex: #{e}"
end
```

#### Using the list_subscriber_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexListVBAResponse>, Integer, Hash)> list_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, opts)

```ruby
begin
  # List SubscriberFlex
  data, status_code, headers = api_instance.list_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->list_subscriber_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberFlexListVBAResponse**](SubscriberFlexListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_flex

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)

Create or Update Batch SubscriberFlex

Create or Update multiple SubscriberFlex at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberFlexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
subscriber_flex = [Vba::SubscriberFlex.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', plan_id: 'plan_id_example', calendar_year: 'calendar_year_example', effective_date: Time.now, auto_create_flex: false, custom_election_info_only: false, full_election_for_partial_year: false, term_date: Time.now})] # Array<SubscriberFlex> | 

begin
  # Create or Update Batch SubscriberFlex
  result = api_instance.update_batch_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->update_batch_subscriber_flex: #{e}"
end
```

#### Using the update_batch_subscriber_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)

```ruby
begin
  # Create or Update Batch SubscriberFlex
  data, status_code, headers = api_instance.update_batch_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, subscriber_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->update_batch_subscriber_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **subscriber_flex** | [**Array&lt;SubscriberFlex&gt;**](SubscriberFlex.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_flex

> <SubscriberFlexVBAResponse> update_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex)

Update SubscriberFlex

Updates a specific SubscriberFlex.

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

api_instance = Vba::SubscriberFlexApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_flex = Vba::SubscriberFlex.new({subscriber_id: 'subscriber_id_example', group_id: 'group_id_example', plan_id: 'plan_id_example', calendar_year: 'calendar_year_example', effective_date: Time.now, auto_create_flex: false, custom_election_info_only: false, full_election_for_partial_year: false, term_date: Time.now}) # SubscriberFlex | 

begin
  # Update SubscriberFlex
  result = api_instance.update_subscriber_flex(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->update_subscriber_flex: #{e}"
end
```

#### Using the update_subscriber_flex_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexVBAResponse>, Integer, Hash)> update_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex)

```ruby
begin
  # Update SubscriberFlex
  data, status_code, headers = api_instance.update_subscriber_flex_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexApi->update_subscriber_flex_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **calendar_year** | **String** | Calendar Year |  |
| **effective_date** | **Time** | Effective Date |  |
| **subscriber_flex** | [**SubscriberFlex**](SubscriberFlex.md) |  |  |

### Return type

[**SubscriberFlexVBAResponse**](SubscriberFlexVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

