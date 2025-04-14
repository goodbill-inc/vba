# Vba::MemberCareAlertsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_care_alert**](MemberCareAlertsApi.md#create_member_care_alert) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/care-alerts | Create MemberCareAlert |
| [**delete_member_care_alert**](MemberCareAlertsApi.md#delete_member_care_alert) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/care-alerts/{memberCareAlertKey} | Delete MemberCareAlert |
| [**get_member_care_alert**](MemberCareAlertsApi.md#get_member_care_alert) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/care-alerts/{memberCareAlertKey} | Get MemberCareAlert |
| [**list_member_care_alert**](MemberCareAlertsApi.md#list_member_care_alert) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/care-alerts | List MemberCareAlert |
| [**update_batch_member_care_alert**](MemberCareAlertsApi.md#update_batch_member_care_alert) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/care-alerts-batch | Create or Update Batch MemberCareAlert |
| [**update_member_care_alert**](MemberCareAlertsApi.md#update_member_care_alert) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/care-alerts/{memberCareAlertKey} | Update MemberCareAlert |


## create_member_care_alert

> <MemberCareAlertVBAResponse> create_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert)

Create MemberCareAlert

Creates a new MemberCareAlert

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

api_instance = Vba::MemberCareAlertsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_care_alert = Vba::MemberCareAlert.new({member_care_alert_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberCareAlert | 

begin
  # Create MemberCareAlert
  result = api_instance.create_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->create_member_care_alert: #{e}"
end
```

#### Using the create_member_care_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCareAlertVBAResponse>, Integer, Hash)> create_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert)

```ruby
begin
  # Create MemberCareAlert
  data, status_code, headers = api_instance.create_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCareAlertVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->create_member_care_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_care_alert** | [**MemberCareAlert**](MemberCareAlert.md) |  |  |

### Return type

[**MemberCareAlertVBAResponse**](MemberCareAlertVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_care_alert

> delete_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)

Delete MemberCareAlert

Deletes an MemberCareAlert

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

api_instance = Vba::MemberCareAlertsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_care_alert_key = 56 # Integer | MemberCareAlert Key

begin
  # Delete MemberCareAlert
  api_instance.delete_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->delete_member_care_alert: #{e}"
end
```

#### Using the delete_member_care_alert_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)

```ruby
begin
  # Delete MemberCareAlert
  data, status_code, headers = api_instance.delete_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->delete_member_care_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_care_alert_key** | **Integer** | MemberCareAlert Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_care_alert

> <MemberCareAlertVBAResponse> get_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)

Get MemberCareAlert

Gets MemberCareAlert

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

api_instance = Vba::MemberCareAlertsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_care_alert_key = 56 # Integer | MemberCareAlert Key

begin
  # Get MemberCareAlert
  result = api_instance.get_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->get_member_care_alert: #{e}"
end
```

#### Using the get_member_care_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCareAlertVBAResponse>, Integer, Hash)> get_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)

```ruby
begin
  # Get MemberCareAlert
  data, status_code, headers = api_instance.get_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCareAlertVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->get_member_care_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_care_alert_key** | **Integer** | MemberCareAlert Key |  |

### Return type

[**MemberCareAlertVBAResponse**](MemberCareAlertVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_care_alert

> <MemberCareAlertListVBAResponse> list_member_care_alert(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberCareAlert

Lists all MemberCareAlert for the given subscriberID and memberSeq

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

api_instance = Vba::MemberCareAlertsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberCareAlert
  result = api_instance.list_member_care_alert(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->list_member_care_alert: #{e}"
end
```

#### Using the list_member_care_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCareAlertListVBAResponse>, Integer, Hash)> list_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberCareAlert
  data, status_code, headers = api_instance.list_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCareAlertListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->list_member_care_alert_with_http_info: #{e}"
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

[**MemberCareAlertListVBAResponse**](MemberCareAlertListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_care_alert

> <MultiCodeResponseListVBAResponse> update_batch_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert)

Create or Update Batch MemberCareAlert

Create or Update multiple MemberCareAlert at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberCareAlertsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_care_alert = [Vba::MemberCareAlert.new({member_care_alert_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberCareAlert> | 

begin
  # Create or Update Batch MemberCareAlert
  result = api_instance.update_batch_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->update_batch_member_care_alert: #{e}"
end
```

#### Using the update_batch_member_care_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert)

```ruby
begin
  # Create or Update Batch MemberCareAlert
  data, status_code, headers = api_instance.update_batch_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->update_batch_member_care_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_care_alert** | [**Array&lt;MemberCareAlert&gt;**](MemberCareAlert.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_care_alert

> <MemberCareAlertVBAResponse> update_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key, member_care_alert)

Update MemberCareAlert

Updates a specific MemberCareAlert.

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

api_instance = Vba::MemberCareAlertsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_care_alert_key = 56 # Integer | MemberCareAlert Key
member_care_alert = Vba::MemberCareAlert.new({member_care_alert_key: 37, member_seq: 'member_seq_example', subscriber_id: 'subscriber_id_example'}) # MemberCareAlert | 

begin
  # Update MemberCareAlert
  result = api_instance.update_member_care_alert(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key, member_care_alert)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->update_member_care_alert: #{e}"
end
```

#### Using the update_member_care_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberCareAlertVBAResponse>, Integer, Hash)> update_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key, member_care_alert)

```ruby
begin
  # Update MemberCareAlert
  data, status_code, headers = api_instance.update_member_care_alert_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_care_alert_key, member_care_alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberCareAlertVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberCareAlertsApi->update_member_care_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_care_alert_key** | **Integer** | MemberCareAlert Key |  |
| **member_care_alert** | [**MemberCareAlert**](MemberCareAlert.md) |  |  |

### Return type

[**MemberCareAlertVBAResponse**](MemberCareAlertVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

