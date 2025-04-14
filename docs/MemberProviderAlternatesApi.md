# Vba::MemberProviderAlternatesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_provider_alternate**](MemberProviderAlternatesApi.md#create_member_provider_alternate) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey}/alternates | Create MemberProviderAlternate |
| [**delete_member_provider_alternate**](MemberProviderAlternatesApi.md#delete_member_provider_alternate) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey}/alternates/{providerID} | Delete MemberProviderAlternate |
| [**get_member_provider_alternate**](MemberProviderAlternatesApi.md#get_member_provider_alternate) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey}/alternates/{providerID} | Get MemberProviderAlternate |
| [**list_member_provider_alternate**](MemberProviderAlternatesApi.md#list_member_provider_alternate) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey}/alternates | List MemberProviderAlternate |
| [**update_batch_member_provider_alternate**](MemberProviderAlternatesApi.md#update_batch_member_provider_alternate) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey}/alternates-batch | Create or Update Batch MemberProviderAlternate |
| [**update_member_provider_alternate**](MemberProviderAlternatesApi.md#update_member_provider_alternate) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/providers/{memberProviderKey}/alternates/{providerID} | Update MemberProviderAlternate |


## create_member_provider_alternate

> <MemberProviderAlternateVBAResponse> create_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)

Create MemberProviderAlternate

Creates a new MemberProviderAlternate

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

api_instance = Vba::MemberProviderAlternatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
member_provider_alternate = Vba::MemberProviderAlternate.new({member_provider_key: 37, provider_id: 'provider_id_example'}) # MemberProviderAlternate | 

begin
  # Create MemberProviderAlternate
  result = api_instance.create_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->create_member_provider_alternate: #{e}"
end
```

#### Using the create_member_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderAlternateVBAResponse>, Integer, Hash)> create_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)

```ruby
begin
  # Create MemberProviderAlternate
  data, status_code, headers = api_instance.create_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderAlternateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->create_member_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **member_provider_alternate** | [**MemberProviderAlternate**](MemberProviderAlternate.md) |  |  |

### Return type

[**MemberProviderAlternateVBAResponse**](MemberProviderAlternateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_provider_alternate

> delete_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)

Delete MemberProviderAlternate

Deletes an MemberProviderAlternate

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

api_instance = Vba::MemberProviderAlternatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
provider_id = 'provider_id_example' # String | Provider ID

begin
  # Delete MemberProviderAlternate
  api_instance.delete_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->delete_member_provider_alternate: #{e}"
end
```

#### Using the delete_member_provider_alternate_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)

```ruby
begin
  # Delete MemberProviderAlternate
  data, status_code, headers = api_instance.delete_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->delete_member_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_provider_alternate

> <MemberProviderAlternateVBAResponse> get_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)

Get MemberProviderAlternate

Gets MemberProviderAlternate

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

api_instance = Vba::MemberProviderAlternatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
provider_id = 'provider_id_example' # String | Provider ID

begin
  # Get MemberProviderAlternate
  result = api_instance.get_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->get_member_provider_alternate: #{e}"
end
```

#### Using the get_member_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderAlternateVBAResponse>, Integer, Hash)> get_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)

```ruby
begin
  # Get MemberProviderAlternate
  data, status_code, headers = api_instance.get_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderAlternateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->get_member_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **provider_id** | **String** | Provider ID |  |

### Return type

[**MemberProviderAlternateVBAResponse**](MemberProviderAlternateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_provider_alternate

> <MemberProviderAlternateListVBAResponse> list_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, opts)

List MemberProviderAlternate

Lists all MemberProviderAlternate for the given memberProviderKey

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

api_instance = Vba::MemberProviderAlternatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberProviderAlternate
  result = api_instance.list_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->list_member_provider_alternate: #{e}"
end
```

#### Using the list_member_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderAlternateListVBAResponse>, Integer, Hash)> list_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, opts)

```ruby
begin
  # List MemberProviderAlternate
  data, status_code, headers = api_instance.list_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderAlternateListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->list_member_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**MemberProviderAlternateListVBAResponse**](MemberProviderAlternateListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_provider_alternate

> <MultiCodeResponseListVBAResponse> update_batch_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)

Create or Update Batch MemberProviderAlternate

Create or Update multiple MemberProviderAlternate at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberProviderAlternatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
member_provider_alternate = [Vba::MemberProviderAlternate.new({member_provider_key: 37, provider_id: 'provider_id_example'})] # Array<MemberProviderAlternate> | 

begin
  # Create or Update Batch MemberProviderAlternate
  result = api_instance.update_batch_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->update_batch_member_provider_alternate: #{e}"
end
```

#### Using the update_batch_member_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)

```ruby
begin
  # Create or Update Batch MemberProviderAlternate
  data, status_code, headers = api_instance.update_batch_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, member_provider_alternate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->update_batch_member_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **member_provider_alternate** | [**Array&lt;MemberProviderAlternate&gt;**](MemberProviderAlternate.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_provider_alternate

> <MemberProviderAlternateVBAResponse> update_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id, member_provider_alternate)

Update MemberProviderAlternate

Updates a specific MemberProviderAlternate.

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

api_instance = Vba::MemberProviderAlternatesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_provider_key = 56 # Integer | MemberProvider Key
provider_id = 'provider_id_example' # String | Provider ID
member_provider_alternate = Vba::MemberProviderAlternate.new({member_provider_key: 37, provider_id: 'provider_id_example'}) # MemberProviderAlternate | 

begin
  # Update MemberProviderAlternate
  result = api_instance.update_member_provider_alternate(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id, member_provider_alternate)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->update_member_provider_alternate: #{e}"
end
```

#### Using the update_member_provider_alternate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberProviderAlternateVBAResponse>, Integer, Hash)> update_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id, member_provider_alternate)

```ruby
begin
  # Update MemberProviderAlternate
  data, status_code, headers = api_instance.update_member_provider_alternate_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_provider_key, provider_id, member_provider_alternate)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberProviderAlternateVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberProviderAlternatesApi->update_member_provider_alternate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_provider_key** | **Integer** | MemberProvider Key |  |
| **provider_id** | **String** | Provider ID |  |
| **member_provider_alternate** | [**MemberProviderAlternate**](MemberProviderAlternate.md) |  |  |

### Return type

[**MemberProviderAlternateVBAResponse**](MemberProviderAlternateVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

