# Vba::MemberAddressApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_address**](MemberAddressApi.md#create_member_address) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/addresses | Create MemberAddress |
| [**delete_member_address**](MemberAddressApi.md#delete_member_address) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/addresses | Delete MemberAddress |
| [**get_member_address**](MemberAddressApi.md#get_member_address) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/addresses | Get MemberAddress |
| [**update_member_address**](MemberAddressApi.md#update_member_address) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/addresses | Update MemberAddress |


## create_member_address

> <MemberAddressVBAResponse> create_member_address(vbasoftware_database, subscriber_id, member_seq, member_address)

Create MemberAddress

Creates a new MemberAddress

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

api_instance = Vba::MemberAddressApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address = Vba::MemberAddress.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # MemberAddress | 

begin
  # Create MemberAddress
  result = api_instance.create_member_address(vbasoftware_database, subscriber_id, member_seq, member_address)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->create_member_address: #{e}"
end
```

#### Using the create_member_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressVBAResponse>, Integer, Hash)> create_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address)

```ruby
begin
  # Create MemberAddress
  data, status_code, headers = api_instance.create_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->create_member_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address** | [**MemberAddress**](MemberAddress.md) |  |  |

### Return type

[**MemberAddressVBAResponse**](MemberAddressVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_address

> delete_member_address(vbasoftware_database, subscriber_id, member_seq)

Delete MemberAddress

Deletes an MemberAddress

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

api_instance = Vba::MemberAddressApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Delete MemberAddress
  api_instance.delete_member_address(vbasoftware_database, subscriber_id, member_seq)
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->delete_member_address: #{e}"
end
```

#### Using the delete_member_address_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq)

```ruby
begin
  # Delete MemberAddress
  data, status_code, headers = api_instance.delete_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->delete_member_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_address

> <MemberAddressVBAResponse> get_member_address(vbasoftware_database, subscriber_id, member_seq)

Get MemberAddress

Gets MemberAddress

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

api_instance = Vba::MemberAddressApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq

begin
  # Get MemberAddress
  result = api_instance.get_member_address(vbasoftware_database, subscriber_id, member_seq)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->get_member_address: #{e}"
end
```

#### Using the get_member_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressVBAResponse>, Integer, Hash)> get_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq)

```ruby
begin
  # Get MemberAddress
  data, status_code, headers = api_instance.get_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->get_member_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |

### Return type

[**MemberAddressVBAResponse**](MemberAddressVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_member_address

> <MemberAddressVBAResponse> update_member_address(vbasoftware_database, subscriber_id, member_seq, member_address)

Update MemberAddress

Updates a specific MemberAddress.

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

api_instance = Vba::MemberAddressApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_address = Vba::MemberAddress.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example'}) # MemberAddress | 

begin
  # Update MemberAddress
  result = api_instance.update_member_address(vbasoftware_database, subscriber_id, member_seq, member_address)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->update_member_address: #{e}"
end
```

#### Using the update_member_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberAddressVBAResponse>, Integer, Hash)> update_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address)

```ruby
begin
  # Update MemberAddress
  data, status_code, headers = api_instance.update_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberAddressVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberAddressApi->update_member_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_address** | [**MemberAddress**](MemberAddress.md) |  |  |

### Return type

[**MemberAddressVBAResponse**](MemberAddressVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

