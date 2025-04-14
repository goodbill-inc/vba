# Vba::MemberProvidersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_provider**](MemberProvidersApi.md#create_member_provider) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/providers | Create MemberProvider |
| [**delete_member_provider**](MemberProvidersApi.md#delete_member_provider) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey} | Delete MemberProvider |
| [**get_member_provider**](MemberProvidersApi.md#get_member_provider) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey} | Get MemberProvider |
| [**list_member_provider**](MemberProvidersApi.md#list_member_provider) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/providers | List MemberProvider |
| [**update_batch_member_provider**](MemberProvidersApi.md#update_batch_member_provider) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/providers-batch | Create or Update Batch MemberProvider |
| [**update_member_provider**](MemberProvidersApi.md#update_member_provider) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey} | Update MemberProvider |


## create_member_provider

> <MemberProviderVBAResponse> create_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider)

Create MemberProvider

Creates a new MemberProvider

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

api_instance = Vba::MemberProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider = Vba::MemberProvider.new({member_provider_key: 37, effective_date: Time.now, member_seq: 'member_seq_example', provider_id: 'provider_id_example', subscriber_id: 'subscriber_id_example'}) # MemberProvider | 

begin
  # Create MemberProvider
  result = api_instance.create_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->create_member_provider: #{e}"
end
```

#### Using the create_member_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderVBAResponse>, Integer, Hash)> create_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider)

```ruby
begin
  # Create MemberProvider
  data, status_code, headers = api_instance.create_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->create_member_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider** | [**MemberProvider**](MemberProvider.md) |  |  |

### Return type

[**MemberProviderVBAResponse**](MemberProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_provider

> delete_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider_key)

Delete MemberProvider

Deletes an MemberProvider

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

api_instance = Vba::MemberProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key

begin
  # Delete MemberProvider
  api_instance.delete_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->delete_member_provider: #{e}"
end
```

#### Using the delete_member_provider_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key)

```ruby
begin
  # Delete MemberProvider
  data, status_code, headers = api_instance.delete_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->delete_member_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_provider

> <MemberProviderVBAResponse> get_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider_key)

Get MemberProvider

Gets MemberProvider

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

api_instance = Vba::MemberProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key

begin
  # Get MemberProvider
  result = api_instance.get_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->get_member_provider: #{e}"
end
```

#### Using the get_member_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderVBAResponse>, Integer, Hash)> get_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key)

```ruby
begin
  # Get MemberProvider
  data, status_code, headers = api_instance.get_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->get_member_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |

### Return type

[**MemberProviderVBAResponse**](MemberProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_provider

> <MemberProviderListVBAResponse> list_member_provider(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberProvider

Lists all MemberProvider for the given subscriberID and memberSeq

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

api_instance = Vba::MemberProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberProvider
  result = api_instance.list_member_provider(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->list_member_provider: #{e}"
end
```

#### Using the list_member_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderListVBAResponse>, Integer, Hash)> list_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberProvider
  data, status_code, headers = api_instance.list_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->list_member_provider_with_http_info: #{e}"
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

[**MemberProviderListVBAResponse**](MemberProviderListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_provider

> <MultiCodeResponseListVBAResponse> update_batch_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider)

Create or Update Batch MemberProvider

Create or Update multiple MemberProvider at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider = [Vba::MemberProvider.new({member_provider_key: 37, effective_date: Time.now, member_seq: 'member_seq_example', provider_id: 'provider_id_example', subscriber_id: 'subscriber_id_example'})] # Array<MemberProvider> | 

begin
  # Create or Update Batch MemberProvider
  result = api_instance.update_batch_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->update_batch_member_provider: #{e}"
end
```

#### Using the update_batch_member_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider)

```ruby
begin
  # Create or Update Batch MemberProvider
  data, status_code, headers = api_instance.update_batch_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->update_batch_member_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider** | [**Array&lt;MemberProvider&gt;**](MemberProvider.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_provider

> <MemberProviderVBAResponse> update_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider)

Update MemberProvider

Updates a specific MemberProvider.

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

api_instance = Vba::MemberProvidersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
member_provider = Vba::MemberProvider.new({member_provider_key: 37, effective_date: Time.now, member_seq: 'member_seq_example', provider_id: 'provider_id_example', subscriber_id: 'subscriber_id_example'}) # MemberProvider | 

begin
  # Update MemberProvider
  result = api_instance.update_member_provider(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->update_member_provider: #{e}"
end
```

#### Using the update_member_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderVBAResponse>, Integer, Hash)> update_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider)

```ruby
begin
  # Update MemberProvider
  data, status_code, headers = api_instance.update_member_provider_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProvidersApi->update_member_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **member_provider** | [**MemberProvider**](MemberProvider.md) |  |  |

### Return type

[**MemberProviderVBAResponse**](MemberProviderVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

