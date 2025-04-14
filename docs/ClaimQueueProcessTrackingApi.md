# Vba::ClaimQueueProcessTrackingApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_claim_queue_process_track**](ClaimQueueProcessTrackingApi.md#create_claim_queue_process_track) | **POST** /claim-queue-process-tracking | Create ClaimQueueProcessTrack |
| [**delete_claim_queue_process_track**](ClaimQueueProcessTrackingApi.md#delete_claim_queue_process_track) | **DELETE** /claim-queue-process-tracking/{subscriberID} | Delete ClaimQueueProcessTrack |
| [**get_claim_queue_process_track**](ClaimQueueProcessTrackingApi.md#get_claim_queue_process_track) | **GET** /claim-queue-process-tracking/{subscriberID} | Get ClaimQueueProcessTrack |
| [**list_claim_queue_process_track**](ClaimQueueProcessTrackingApi.md#list_claim_queue_process_track) | **GET** /claim-queue-process-tracking | List ClaimQueueProcessTrack |
| [**update_batch_claim_queue_process_track**](ClaimQueueProcessTrackingApi.md#update_batch_claim_queue_process_track) | **PUT** /claim-queue-process-tracking-batch | Create or Update Batch ClaimQueueProcessTrack |
| [**update_claim_queue_process_track**](ClaimQueueProcessTrackingApi.md#update_claim_queue_process_track) | **PUT** /claim-queue-process-tracking/{subscriberID} | Update ClaimQueueProcessTrack |


## create_claim_queue_process_track

> <ClaimQueueProcessTrackVBAResponse> create_claim_queue_process_track(vbasoftware_database, claim_queue_process_track)

Create ClaimQueueProcessTrack

Creates a new ClaimQueueProcessTrack

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

api_instance = Vba::ClaimQueueProcessTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_process_track = Vba::ClaimQueueProcessTrack.new({subscriber_id: 'subscriber_id_example'}) # ClaimQueueProcessTrack | 

begin
  # Create ClaimQueueProcessTrack
  result = api_instance.create_claim_queue_process_track(vbasoftware_database, claim_queue_process_track)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->create_claim_queue_process_track: #{e}"
end
```

#### Using the create_claim_queue_process_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessTrackVBAResponse>, Integer, Hash)> create_claim_queue_process_track_with_http_info(vbasoftware_database, claim_queue_process_track)

```ruby
begin
  # Create ClaimQueueProcessTrack
  data, status_code, headers = api_instance.create_claim_queue_process_track_with_http_info(vbasoftware_database, claim_queue_process_track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessTrackVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->create_claim_queue_process_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_process_track** | [**ClaimQueueProcessTrack**](ClaimQueueProcessTrack.md) |  |  |

### Return type

[**ClaimQueueProcessTrackVBAResponse**](ClaimQueueProcessTrackVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_claim_queue_process_track

> delete_claim_queue_process_track(vbasoftware_database, subscriber_id)

Delete ClaimQueueProcessTrack

Deletes an ClaimQueueProcessTrack

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

api_instance = Vba::ClaimQueueProcessTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Delete ClaimQueueProcessTrack
  api_instance.delete_claim_queue_process_track(vbasoftware_database, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->delete_claim_queue_process_track: #{e}"
end
```

#### Using the delete_claim_queue_process_track_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_claim_queue_process_track_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # Delete ClaimQueueProcessTrack
  data, status_code, headers = api_instance.delete_claim_queue_process_track_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->delete_claim_queue_process_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_claim_queue_process_track

> <ClaimQueueProcessTrackVBAResponse> get_claim_queue_process_track(vbasoftware_database, subscriber_id)

Get ClaimQueueProcessTrack

Gets ClaimQueueProcessTrack

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

api_instance = Vba::ClaimQueueProcessTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Get ClaimQueueProcessTrack
  result = api_instance.get_claim_queue_process_track(vbasoftware_database, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->get_claim_queue_process_track: #{e}"
end
```

#### Using the get_claim_queue_process_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessTrackVBAResponse>, Integer, Hash)> get_claim_queue_process_track_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # Get ClaimQueueProcessTrack
  data, status_code, headers = api_instance.get_claim_queue_process_track_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessTrackVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->get_claim_queue_process_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**ClaimQueueProcessTrackVBAResponse**](ClaimQueueProcessTrackVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_claim_queue_process_track

> <ClaimQueueProcessTrackListVBAResponse> list_claim_queue_process_track(vbasoftware_database, opts)

List ClaimQueueProcessTrack

Lists all ClaimQueueProcessTrack

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

api_instance = Vba::ClaimQueueProcessTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List ClaimQueueProcessTrack
  result = api_instance.list_claim_queue_process_track(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->list_claim_queue_process_track: #{e}"
end
```

#### Using the list_claim_queue_process_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessTrackListVBAResponse>, Integer, Hash)> list_claim_queue_process_track_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List ClaimQueueProcessTrack
  data, status_code, headers = api_instance.list_claim_queue_process_track_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessTrackListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->list_claim_queue_process_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**ClaimQueueProcessTrackListVBAResponse**](ClaimQueueProcessTrackListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_claim_queue_process_track

> <MultiCodeResponseListVBAResponse> update_batch_claim_queue_process_track(vbasoftware_database, claim_queue_process_track)

Create or Update Batch ClaimQueueProcessTrack

Create or Update multiple ClaimQueueProcessTrack at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::ClaimQueueProcessTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
claim_queue_process_track = [Vba::ClaimQueueProcessTrack.new({subscriber_id: 'subscriber_id_example'})] # Array<ClaimQueueProcessTrack> | 

begin
  # Create or Update Batch ClaimQueueProcessTrack
  result = api_instance.update_batch_claim_queue_process_track(vbasoftware_database, claim_queue_process_track)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->update_batch_claim_queue_process_track: #{e}"
end
```

#### Using the update_batch_claim_queue_process_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_claim_queue_process_track_with_http_info(vbasoftware_database, claim_queue_process_track)

```ruby
begin
  # Create or Update Batch ClaimQueueProcessTrack
  data, status_code, headers = api_instance.update_batch_claim_queue_process_track_with_http_info(vbasoftware_database, claim_queue_process_track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->update_batch_claim_queue_process_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **claim_queue_process_track** | [**Array&lt;ClaimQueueProcessTrack&gt;**](ClaimQueueProcessTrack.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_claim_queue_process_track

> <ClaimQueueProcessTrackVBAResponse> update_claim_queue_process_track(vbasoftware_database, subscriber_id, claim_queue_process_track)

Update ClaimQueueProcessTrack

Updates a specific ClaimQueueProcessTrack.

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

api_instance = Vba::ClaimQueueProcessTrackingApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
claim_queue_process_track = Vba::ClaimQueueProcessTrack.new({subscriber_id: 'subscriber_id_example'}) # ClaimQueueProcessTrack | 

begin
  # Update ClaimQueueProcessTrack
  result = api_instance.update_claim_queue_process_track(vbasoftware_database, subscriber_id, claim_queue_process_track)
  p result
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->update_claim_queue_process_track: #{e}"
end
```

#### Using the update_claim_queue_process_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClaimQueueProcessTrackVBAResponse>, Integer, Hash)> update_claim_queue_process_track_with_http_info(vbasoftware_database, subscriber_id, claim_queue_process_track)

```ruby
begin
  # Update ClaimQueueProcessTrack
  data, status_code, headers = api_instance.update_claim_queue_process_track_with_http_info(vbasoftware_database, subscriber_id, claim_queue_process_track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClaimQueueProcessTrackVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling ClaimQueueProcessTrackingApi->update_claim_queue_process_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **claim_queue_process_track** | [**ClaimQueueProcessTrack**](ClaimQueueProcessTrack.md) |  |  |

### Return type

[**ClaimQueueProcessTrackVBAResponse**](ClaimQueueProcessTrackVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

