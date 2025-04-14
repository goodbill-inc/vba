# Vba::MemberNetworksApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_network**](MemberNetworksApi.md#create_member_network) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/networks | Create MemberNetwork |
| [**delete_member_network**](MemberNetworksApi.md#delete_member_network) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/networks/{networkID}/{groupID}/{divisionID}/{effectiveDate} | Delete MemberNetwork |
| [**get_member_network**](MemberNetworksApi.md#get_member_network) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/networks/{networkID}/{groupID}/{divisionID}/{effectiveDate} | Get MemberNetwork |
| [**list_member_network**](MemberNetworksApi.md#list_member_network) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/networks | List MemberNetwork |
| [**update_batch_member_network**](MemberNetworksApi.md#update_batch_member_network) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/networks-batch | Create or Update Batch MemberNetwork |
| [**update_member_network**](MemberNetworksApi.md#update_member_network) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/networks/{networkID}/{groupID}/{divisionID}/{effectiveDate} | Update MemberNetwork |


## create_member_network

> <MemberNetworkVBAResponse> create_member_network(vbasoftware_database, subscriber_id, member_seq, member_network)

Create MemberNetwork

Creates a new MemberNetwork

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

api_instance = Vba::MemberNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_network = Vba::MemberNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', network_id: 'network_id_example', effective_date: Time.now}) # MemberNetwork | 

begin
  # Create MemberNetwork
  result = api_instance.create_member_network(vbasoftware_database, subscriber_id, member_seq, member_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->create_member_network: #{e}"
end
```

#### Using the create_member_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberNetworkVBAResponse>, Integer, Hash)> create_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network)

```ruby
begin
  # Create MemberNetwork
  data, status_code, headers = api_instance.create_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->create_member_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_network** | [**MemberNetwork**](MemberNetwork.md) |  |  |

### Return type

[**MemberNetworkVBAResponse**](MemberNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_network

> delete_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)

Delete MemberNetwork

Deletes an MemberNetwork

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

api_instance = Vba::MemberNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
network_id = 'network_id_example' # String | Network ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Delete MemberNetwork
  api_instance.delete_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->delete_member_network: #{e}"
end
```

#### Using the delete_member_network_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)

```ruby
begin
  # Delete MemberNetwork
  data, status_code, headers = api_instance.delete_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->delete_member_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **network_id** | **String** | Network ID |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_network

> <MemberNetworkVBAResponse> get_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)

Get MemberNetwork

Gets MemberNetwork

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

api_instance = Vba::MemberNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
network_id = 'network_id_example' # String | Network ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date

begin
  # Get MemberNetwork
  result = api_instance.get_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->get_member_network: #{e}"
end
```

#### Using the get_member_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberNetworkVBAResponse>, Integer, Hash)> get_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)

```ruby
begin
  # Get MemberNetwork
  data, status_code, headers = api_instance.get_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->get_member_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **network_id** | **String** | Network ID |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **effective_date** | **Time** | Effective Date |  |

### Return type

[**MemberNetworkVBAResponse**](MemberNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_network

> <MemberNetworkListVBAResponse> list_member_network(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberNetwork

Lists all MemberNetwork for the given subscriberID and memberSeq

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

api_instance = Vba::MemberNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberNetwork
  result = api_instance.list_member_network(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->list_member_network: #{e}"
end
```

#### Using the list_member_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberNetworkListVBAResponse>, Integer, Hash)> list_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberNetwork
  data, status_code, headers = api_instance.list_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberNetworkListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->list_member_network_with_http_info: #{e}"
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

[**MemberNetworkListVBAResponse**](MemberNetworkListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_network

> <MultiCodeResponseListVBAResponse> update_batch_member_network(vbasoftware_database, subscriber_id, member_seq, member_network)

Create or Update Batch MemberNetwork

Create or Update multiple MemberNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_network = [Vba::MemberNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', network_id: 'network_id_example', effective_date: Time.now})] # Array<MemberNetwork> | 

begin
  # Create or Update Batch MemberNetwork
  result = api_instance.update_batch_member_network(vbasoftware_database, subscriber_id, member_seq, member_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->update_batch_member_network: #{e}"
end
```

#### Using the update_batch_member_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network)

```ruby
begin
  # Create or Update Batch MemberNetwork
  data, status_code, headers = api_instance.update_batch_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->update_batch_member_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_network** | [**Array&lt;MemberNetwork&gt;**](MemberNetwork.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_network

> <MemberNetworkVBAResponse> update_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network)

Update MemberNetwork

Updates a specific MemberNetwork.

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

api_instance = Vba::MemberNetworksApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
network_id = 'network_id_example' # String | Network ID
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
effective_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | Effective Date
member_network = Vba::MemberNetwork.new({group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', network_id: 'network_id_example', effective_date: Time.now}) # MemberNetwork | 

begin
  # Update MemberNetwork
  result = api_instance.update_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->update_member_network: #{e}"
end
```

#### Using the update_member_network_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberNetworkVBAResponse>, Integer, Hash)> update_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network)

```ruby
begin
  # Update MemberNetwork
  data, status_code, headers = api_instance.update_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberNetworkVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberNetworksApi->update_member_network_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **network_id** | **String** | Network ID |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **effective_date** | **Time** | Effective Date |  |
| **member_network** | [**MemberNetwork**](MemberNetwork.md) |  |  |

### Return type

[**MemberNetworkVBAResponse**](MemberNetworkVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

