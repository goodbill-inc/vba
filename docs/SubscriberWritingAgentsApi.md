# Vba::SubscriberWritingAgentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscriber_writing_agent**](SubscriberWritingAgentsApi.md#create_subscriber_writing_agent) | **POST** /subscribers/{Subscriber_ID}/writing-agents | Create SubscriberWritingAgent |
| [**delete_subscriber_writing_agent**](SubscriberWritingAgentsApi.md#delete_subscriber_writing_agent) | **DELETE** /subscribers/{Subscriber_ID}/writing-agents/{SubscriberWritingAgent_Key} | Delete SubscriberWritingAgent |
| [**get_subscriber_writing_agent**](SubscriberWritingAgentsApi.md#get_subscriber_writing_agent) | **GET** /subscribers/{Subscriber_ID}/writing-agents/{SubscriberWritingAgent_Key} | Get SubscriberWritingAgent |
| [**list_subscriber_writing_agent**](SubscriberWritingAgentsApi.md#list_subscriber_writing_agent) | **GET** /subscribers/{Subscriber_ID}/writing-agents | List SubscriberWritingAgent |
| [**update_batch_subscriber_writing_agent**](SubscriberWritingAgentsApi.md#update_batch_subscriber_writing_agent) | **PUT** /subscribers/{Subscriber_ID}/writing-agents-batch | Create or Update Batch SubscriberWritingAgent |
| [**update_subscriber_writing_agent**](SubscriberWritingAgentsApi.md#update_subscriber_writing_agent) | **PUT** /subscribers/{Subscriber_ID}/writing-agents/{SubscriberWritingAgent_Key} | Update SubscriberWritingAgent |


## create_subscriber_writing_agent

> <SubscriberWritingAgentVBAResponse> create_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent)

Create SubscriberWritingAgent

Creates a new SubscriberWritingAgent

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

api_instance = Vba::SubscriberWritingAgentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_writing_agent = Vba::SubscriberWritingAgent.new({subscriber_writing_agent_key: 37, effective_date: Time.now, plan_id: 'plan_id_example', split: 3.56, subscriber_id: 'subscriber_id_example', term_date: Time.now, writing_commission_agency_rep_key: 37}) # SubscriberWritingAgent | 

begin
  # Create SubscriberWritingAgent
  result = api_instance.create_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->create_subscriber_writing_agent: #{e}"
end
```

#### Using the create_subscriber_writing_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberWritingAgentVBAResponse>, Integer, Hash)> create_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent)

```ruby
begin
  # Create SubscriberWritingAgent
  data, status_code, headers = api_instance.create_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberWritingAgentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->create_subscriber_writing_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_writing_agent** | [**SubscriberWritingAgent**](SubscriberWritingAgent.md) |  |  |

### Return type

[**SubscriberWritingAgentVBAResponse**](SubscriberWritingAgentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_subscriber_writing_agent

> delete_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)

Delete SubscriberWritingAgent

Deletes an SubscriberWritingAgent

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

api_instance = Vba::SubscriberWritingAgentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_writing_agent_key = 56 # Integer | SubscriberWritingAgent Key

begin
  # Delete SubscriberWritingAgent
  api_instance.delete_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->delete_subscriber_writing_agent: #{e}"
end
```

#### Using the delete_subscriber_writing_agent_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)

```ruby
begin
  # Delete SubscriberWritingAgent
  data, status_code, headers = api_instance.delete_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->delete_subscriber_writing_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_writing_agent_key** | **Integer** | SubscriberWritingAgent Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_subscriber_writing_agent

> <SubscriberWritingAgentVBAResponse> get_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)

Get SubscriberWritingAgent

Gets SubscriberWritingAgent

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

api_instance = Vba::SubscriberWritingAgentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_writing_agent_key = 56 # Integer | SubscriberWritingAgent Key

begin
  # Get SubscriberWritingAgent
  result = api_instance.get_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->get_subscriber_writing_agent: #{e}"
end
```

#### Using the get_subscriber_writing_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberWritingAgentVBAResponse>, Integer, Hash)> get_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)

```ruby
begin
  # Get SubscriberWritingAgent
  data, status_code, headers = api_instance.get_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberWritingAgentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->get_subscriber_writing_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_writing_agent_key** | **Integer** | SubscriberWritingAgent Key |  |

### Return type

[**SubscriberWritingAgentVBAResponse**](SubscriberWritingAgentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_subscriber_writing_agent

> <SubscriberWritingAgentListVBAResponse> list_subscriber_writing_agent(vbasoftware_database, subscriber_id, opts)

List SubscriberWritingAgent

Lists all SubscriberWritingAgent for the given Subscriber_ID

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

api_instance = Vba::SubscriberWritingAgentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  sort_by: 'sort_by_example', # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  page: 56, # Integer | Page
  page_size: 56 # Integer | Page Size
}

begin
  # List SubscriberWritingAgent
  result = api_instance.list_subscriber_writing_agent(vbasoftware_database, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->list_subscriber_writing_agent: #{e}"
end
```

#### Using the list_subscriber_writing_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberWritingAgentListVBAResponse>, Integer, Hash)> list_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, opts)

```ruby
begin
  # List SubscriberWritingAgent
  data, status_code, headers = api_instance.list_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberWritingAgentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->list_subscriber_writing_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |

### Return type

[**SubscriberWritingAgentListVBAResponse**](SubscriberWritingAgentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_subscriber_writing_agent

> <MultiCodeResponseListVBAResponse> update_batch_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent)

Create or Update Batch SubscriberWritingAgent

Create or Update multiple SubscriberWritingAgent at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::SubscriberWritingAgentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_writing_agent = [Vba::SubscriberWritingAgent.new({subscriber_writing_agent_key: 37, effective_date: Time.now, plan_id: 'plan_id_example', split: 3.56, subscriber_id: 'subscriber_id_example', term_date: Time.now, writing_commission_agency_rep_key: 37})] # Array<SubscriberWritingAgent> | 

begin
  # Create or Update Batch SubscriberWritingAgent
  result = api_instance.update_batch_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->update_batch_subscriber_writing_agent: #{e}"
end
```

#### Using the update_batch_subscriber_writing_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent)

```ruby
begin
  # Create or Update Batch SubscriberWritingAgent
  data, status_code, headers = api_instance.update_batch_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->update_batch_subscriber_writing_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_writing_agent** | [**Array&lt;SubscriberWritingAgent&gt;**](SubscriberWritingAgent.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_subscriber_writing_agent

> <SubscriberWritingAgentVBAResponse> update_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent_key, subscriber_writing_agent)

Update SubscriberWritingAgent

Updates a specific SubscriberWritingAgent.

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

api_instance = Vba::SubscriberWritingAgentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
subscriber_writing_agent_key = 56 # Integer | SubscriberWritingAgent Key
subscriber_writing_agent = Vba::SubscriberWritingAgent.new({subscriber_writing_agent_key: 37, effective_date: Time.now, plan_id: 'plan_id_example', split: 3.56, subscriber_id: 'subscriber_id_example', term_date: Time.now, writing_commission_agency_rep_key: 37}) # SubscriberWritingAgent | 

begin
  # Update SubscriberWritingAgent
  result = api_instance.update_subscriber_writing_agent(vbasoftware_database, subscriber_id, subscriber_writing_agent_key, subscriber_writing_agent)
  p result
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->update_subscriber_writing_agent: #{e}"
end
```

#### Using the update_subscriber_writing_agent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriberWritingAgentVBAResponse>, Integer, Hash)> update_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent_key, subscriber_writing_agent)

```ruby
begin
  # Update SubscriberWritingAgent
  data, status_code, headers = api_instance.update_subscriber_writing_agent_with_http_info(vbasoftware_database, subscriber_id, subscriber_writing_agent_key, subscriber_writing_agent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriberWritingAgentVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling SubscriberWritingAgentsApi->update_subscriber_writing_agent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **subscriber_writing_agent_key** | **Integer** | SubscriberWritingAgent Key |  |
| **subscriber_writing_agent** | [**SubscriberWritingAgent**](SubscriberWritingAgent.md) |  |  |

### Return type

[**SubscriberWritingAgentVBAResponse**](SubscriberWritingAgentVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

