# Vba::SubscriberFlexExportsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_flex_exported**](SubscriberFlexExportsApi.md#create_subscriber_flex_exported) | **POST** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate}/exports | Create SubscriberFlexExported |
| [**delete_subscriber_flex_exported**](SubscriberFlexExportsApi.md#delete_subscriber_flex_exported) | **DELETE** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate}/exports/{subscriberFlexExportedKey} | Delete SubscriberFlexExported |
| [**get_subscriber_flex_exported**](SubscriberFlexExportsApi.md#get_subscriber_flex_exported) | **GET** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate}/exports/{subscriberFlexExportedKey} | Get SubscriberFlexExported |
| [**list_subscriber_flex_exported**](SubscriberFlexExportsApi.md#list_subscriber_flex_exported) | **GET** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate}/exports | List SubscriberFlexExported |
| [**update_batch_subscriber_flex_exported**](SubscriberFlexExportsApi.md#update_batch_subscriber_flex_exported) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate}/exports-batch | Create or Update Batch SubscriberFlexExported |
| [**update_subscriber_flex_exported**](SubscriberFlexExportsApi.md#update_subscriber_flex_exported) | **PUT** /subscribers/{subscriberID}/groups/{groupID}/plans/{planID}/flexes/{calendarYear}/{effectiveDate}/exports/{subscriberFlexExportedKey} | Update SubscriberFlexExported |


## create_subscriber_flex_exported

> <SubscriberFlexExportedVBAResponse> create_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)

Create SubscriberFlexExported

Creates a new SubscriberFlexExported

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

api_instance = Vba::SubscriberFlexExportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_flex_exported = Vba::SubscriberFlexExported.new({subscriber_flex_exported_key: 37, calendar_year: 'calendar_year_example', effective_date: Time.now, group_id: 'group_id_example', plan_id: 'plan_id_example', subscriber_id: 'subscriber_id_example'}) # SubscriberFlexExported | 

begin
  # Create SubscriberFlexExported
  result = api_instance.create_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->create_subscriber_flex_exported: #{e}"
end
```

#### Using the create_subscriber_flex_exported_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexExportedVBAResponse>, Integer, Hash)> create_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)

```ruby
begin
  # Create SubscriberFlexExported
  data, status_code, headers = api_instance.create_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexExportedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->create_subscriber_flex_exported_with_http_info: #{e}"
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
| **subscriber_flex_exported** | [**SubscriberFlexExported**](SubscriberFlexExported.md) |  |  |

### Return type

[**SubscriberFlexExportedVBAResponse**](SubscriberFlexExportedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_flex_exported

> delete_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)

Delete SubscriberFlexExported

Deletes an SubscriberFlexExported

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

api_instance = Vba::SubscriberFlexExportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_flex_exported_key = 56 # Integer | SubscriberFlexExported Key

begin
  # Delete SubscriberFlexExported
  api_instance.delete_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->delete_subscriber_flex_exported: #{e}"
end
```

#### Using the delete_subscriber_flex_exported_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)

```ruby
begin
  # Delete SubscriberFlexExported
  data, status_code, headers = api_instance.delete_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->delete_subscriber_flex_exported_with_http_info: #{e}"
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
| **subscriber_flex_exported_key** | **Integer** | SubscriberFlexExported Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_flex_exported

> <SubscriberFlexExportedVBAResponse> get_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)

Get SubscriberFlexExported

Gets SubscriberFlexExported

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

api_instance = Vba::SubscriberFlexExportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_flex_exported_key = 56 # Integer | SubscriberFlexExported Key

begin
  # Get SubscriberFlexExported
  result = api_instance.get_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->get_subscriber_flex_exported: #{e}"
end
```

#### Using the get_subscriber_flex_exported_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexExportedVBAResponse>, Integer, Hash)> get_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)

```ruby
begin
  # Get SubscriberFlexExported
  data, status_code, headers = api_instance.get_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexExportedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->get_subscriber_flex_exported_with_http_info: #{e}"
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
| **subscriber_flex_exported_key** | **Integer** | SubscriberFlexExported Key |  |

### Return type

[**SubscriberFlexExportedVBAResponse**](SubscriberFlexExportedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_flex_exported

> <SubscriberFlexExportedListVBAResponse> list_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, opts)

List SubscriberFlexExported

Lists all SubscriberFlexExported for the given subscriberID and groupID and planID and calendarYear and effectiveDate

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

api_instance = Vba::SubscriberFlexExportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List SubscriberFlexExported
  result = api_instance.list_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->list_subscriber_flex_exported: #{e}"
end
```

#### Using the list_subscriber_flex_exported_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexExportedListVBAResponse>, Integer, Hash)> list_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, opts)

```ruby
begin
  # List SubscriberFlexExported
  data, status_code, headers = api_instance.list_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexExportedListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->list_subscriber_flex_exported_with_http_info: #{e}"
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
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**SubscriberFlexExportedListVBAResponse**](SubscriberFlexExportedListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_flex_exported

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)

Create or Update Batch SubscriberFlexExported

Create or Update multiple SubscriberFlexExported at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberFlexExportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_flex_exported = [Vba::SubscriberFlexExported.new({subscriber_flex_exported_key: 37, calendar_year: 'calendar_year_example', effective_date: Time.now, group_id: 'group_id_example', plan_id: 'plan_id_example', subscriber_id: 'subscriber_id_example'})] # Array<SubscriberFlexExported> | 

begin
  # Create or Update Batch SubscriberFlexExported
  result = api_instance.update_batch_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->update_batch_subscriber_flex_exported: #{e}"
end
```

#### Using the update_batch_subscriber_flex_exported_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)

```ruby
begin
  # Create or Update Batch SubscriberFlexExported
  data, status_code, headers = api_instance.update_batch_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->update_batch_subscriber_flex_exported_with_http_info: #{e}"
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
| **subscriber_flex_exported** | [**Array&lt;SubscriberFlexExported&gt;**](SubscriberFlexExported.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_flex_exported

> <SubscriberFlexExportedVBAResponse> update_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key, subscriber_flex_exported)

Update SubscriberFlexExported

Updates a specific SubscriberFlexExported.

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

api_instance = Vba::SubscriberFlexExportsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
calendar_year = 'calendar_year_example' # String | Calendar Year
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
subscriber_flex_exported_key = 56 # Integer | SubscriberFlexExported Key
subscriber_flex_exported = Vba::SubscriberFlexExported.new({subscriber_flex_exported_key: 37, calendar_year: 'calendar_year_example', effective_date: Time.now, group_id: 'group_id_example', plan_id: 'plan_id_example', subscriber_id: 'subscriber_id_example'}) # SubscriberFlexExported | 

begin
  # Update SubscriberFlexExported
  result = api_instance.update_subscriber_flex_exported(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key, subscriber_flex_exported)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->update_subscriber_flex_exported: #{e}"
end
```

#### Using the update_subscriber_flex_exported_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberFlexExportedVBAResponse>, Integer, Hash)> update_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key, subscriber_flex_exported)

```ruby
begin
  # Update SubscriberFlexExported
  data, status_code, headers = api_instance.update_subscriber_flex_exported_with_http_info(vbasoftware_database, subscriber_id, group_id, plan_id, calendar_year, effective_date, subscriber_flex_exported_key, subscriber_flex_exported)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberFlexExportedVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberFlexExportsApi->update_subscriber_flex_exported_with_http_info: #{e}"
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
| **subscriber_flex_exported_key** | **Integer** | SubscriberFlexExported Key |  |
| **subscriber_flex_exported** | [**SubscriberFlexExported**](SubscriberFlexExported.md) |  |  |

### Return type

[**SubscriberFlexExportedVBAResponse**](SubscriberFlexExportedVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

