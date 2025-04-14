# Vba::MemberMedicareReponsibilityApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_medicare_resp**](MemberMedicareReponsibilityApi.md#create_member_medicare_resp) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities | Create MemberMedicareResp |
| [**delete_member_medicare_resp**](MemberMedicareReponsibilityApi.md#delete_member_medicare_resp) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities/{memberMedicareRespKey} | Delete MemberMedicareResp |
| [**get_member_medicare_resp**](MemberMedicareReponsibilityApi.md#get_member_medicare_resp) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities/{memberMedicareRespKey} | Get MemberMedicareResp |
| [**list_member_medicare_resp**](MemberMedicareReponsibilityApi.md#list_member_medicare_resp) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities | List MemberMedicareResp |
| [**update_batch_member_medicare_resp**](MemberMedicareReponsibilityApi.md#update_batch_member_medicare_resp) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities-batch | Create or Update Batch MemberMedicareResp |
| [**update_member_medicare_resp**](MemberMedicareReponsibilityApi.md#update_member_medicare_resp) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/medicare-responsibilities/{memberMedicareRespKey} | Update MemberMedicareResp |


## create_member_medicare_resp

> <MemberMedicareRespVBAResponse> create_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)

Create MemberMedicareResp

Creates a new MemberMedicareResp

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

api_instance = Vba::MemberMedicareReponsibilityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_medicare_resp = Vba::MemberMedicareResp.new({disposition_code_date: Time.now, ers_d_coord_period_end_date: Time.now, ers_d_coord_period_start_date: Time.now, esr_d_self_training_date: Time.now, first_dialysis_date: Time.now, ms_p_birth_date: Time.now, ms_p_eff_date: Time.now, ms_p_term_date: Time.now, medicare_part_a_eff_date: Time.now, medicare_part_a_term_date: Time.now, medicare_part_a_update_date: Time.now, medicare_part_b_eff_date: Time.now, medicare_part_b_term_date: Time.now, medicare_part_b_update_date: Time.now, medicare_part_c_eff_date: Time.now, medicare_part_c_term_date: Time.now, medicare_part_c_update_date: Time.now, medicare_part_d_eff_date: Time.now, medicare_part_d_term_date: Time.now, medicare_part_d_update_date: Time.now, transplant_date_most_recent: Time.now, transplant_failure_date_most_recent: Time.now}) # MemberMedicareResp | 

begin
  # Create MemberMedicareResp
  result = api_instance.create_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->create_member_medicare_resp: #{e}"
end
```

#### Using the create_member_medicare_resp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberMedicareRespVBAResponse>, Integer, Hash)> create_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)

```ruby
begin
  # Create MemberMedicareResp
  data, status_code, headers = api_instance.create_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberMedicareRespVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->create_member_medicare_resp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_medicare_resp** | [**MemberMedicareResp**](MemberMedicareResp.md) |  |  |

### Return type

[**MemberMedicareRespVBAResponse**](MemberMedicareRespVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_medicare_resp

> delete_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)

Delete MemberMedicareResp

Deletes an MemberMedicareResp

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

api_instance = Vba::MemberMedicareReponsibilityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_medicare_resp_key = 56 # Integer | MemberMedicareResp Key

begin
  # Delete MemberMedicareResp
  api_instance.delete_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->delete_member_medicare_resp: #{e}"
end
```

#### Using the delete_member_medicare_resp_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)

```ruby
begin
  # Delete MemberMedicareResp
  data, status_code, headers = api_instance.delete_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->delete_member_medicare_resp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_medicare_resp_key** | **Integer** | MemberMedicareResp Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_medicare_resp

> <MemberMedicareRespVBAResponse> get_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)

Get MemberMedicareResp

Gets MemberMedicareResp

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

api_instance = Vba::MemberMedicareReponsibilityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_medicare_resp_key = 56 # Integer | MemberMedicareResp Key

begin
  # Get MemberMedicareResp
  result = api_instance.get_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->get_member_medicare_resp: #{e}"
end
```

#### Using the get_member_medicare_resp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberMedicareRespVBAResponse>, Integer, Hash)> get_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)

```ruby
begin
  # Get MemberMedicareResp
  data, status_code, headers = api_instance.get_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberMedicareRespVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->get_member_medicare_resp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_medicare_resp_key** | **Integer** | MemberMedicareResp Key |  |

### Return type

[**MemberMedicareRespVBAResponse**](MemberMedicareRespVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_medicare_resp

> <MemberMedicareRespListVBAResponse> list_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberMedicareResp

Lists all MemberMedicareResp for the given subscriberID and memberSeq

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

api_instance = Vba::MemberMedicareReponsibilityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberMedicareResp
  result = api_instance.list_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->list_member_medicare_resp: #{e}"
end
```

#### Using the list_member_medicare_resp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberMedicareRespListVBAResponse>, Integer, Hash)> list_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberMedicareResp
  data, status_code, headers = api_instance.list_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberMedicareRespListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->list_member_medicare_resp_with_http_info: #{e}"
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

[**MemberMedicareRespListVBAResponse**](MemberMedicareRespListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_medicare_resp

> <MultiCodeResponseListVBAResponse> update_batch_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)

Create or Update Batch MemberMedicareResp

Create or Update multiple MemberMedicareResp at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberMedicareReponsibilityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_medicare_resp = [Vba::MemberMedicareResp.new({disposition_code_date: Time.now, ers_d_coord_period_end_date: Time.now, ers_d_coord_period_start_date: Time.now, esr_d_self_training_date: Time.now, first_dialysis_date: Time.now, ms_p_birth_date: Time.now, ms_p_eff_date: Time.now, ms_p_term_date: Time.now, medicare_part_a_eff_date: Time.now, medicare_part_a_term_date: Time.now, medicare_part_a_update_date: Time.now, medicare_part_b_eff_date: Time.now, medicare_part_b_term_date: Time.now, medicare_part_b_update_date: Time.now, medicare_part_c_eff_date: Time.now, medicare_part_c_term_date: Time.now, medicare_part_c_update_date: Time.now, medicare_part_d_eff_date: Time.now, medicare_part_d_term_date: Time.now, medicare_part_d_update_date: Time.now, transplant_date_most_recent: Time.now, transplant_failure_date_most_recent: Time.now})] # Array<MemberMedicareResp> | 

begin
  # Create or Update Batch MemberMedicareResp
  result = api_instance.update_batch_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->update_batch_member_medicare_resp: #{e}"
end
```

#### Using the update_batch_member_medicare_resp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)

```ruby
begin
  # Create or Update Batch MemberMedicareResp
  data, status_code, headers = api_instance.update_batch_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->update_batch_member_medicare_resp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_medicare_resp** | [**Array&lt;MemberMedicareResp&gt;**](MemberMedicareResp.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_medicare_resp

> <MemberMedicareRespVBAResponse> update_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp)

Update MemberMedicareResp

Updates a specific MemberMedicareResp.

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

api_instance = Vba::MemberMedicareReponsibilityApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_medicare_resp_key = 56 # Integer | MemberMedicareResp Key
member_medicare_resp = Vba::MemberMedicareResp.new({disposition_code_date: Time.now, ers_d_coord_period_end_date: Time.now, ers_d_coord_period_start_date: Time.now, esr_d_self_training_date: Time.now, first_dialysis_date: Time.now, ms_p_birth_date: Time.now, ms_p_eff_date: Time.now, ms_p_term_date: Time.now, medicare_part_a_eff_date: Time.now, medicare_part_a_term_date: Time.now, medicare_part_a_update_date: Time.now, medicare_part_b_eff_date: Time.now, medicare_part_b_term_date: Time.now, medicare_part_b_update_date: Time.now, medicare_part_c_eff_date: Time.now, medicare_part_c_term_date: Time.now, medicare_part_c_update_date: Time.now, medicare_part_d_eff_date: Time.now, medicare_part_d_term_date: Time.now, medicare_part_d_update_date: Time.now, transplant_date_most_recent: Time.now, transplant_failure_date_most_recent: Time.now}) # MemberMedicareResp | 

begin
  # Update MemberMedicareResp
  result = api_instance.update_member_medicare_resp(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->update_member_medicare_resp: #{e}"
end
```

#### Using the update_member_medicare_resp_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberMedicareRespVBAResponse>, Integer, Hash)> update_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp)

```ruby
begin
  # Update MemberMedicareResp
  data, status_code, headers = api_instance.update_member_medicare_resp_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_medicare_resp_key, member_medicare_resp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberMedicareRespVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberMedicareReponsibilityApi->update_member_medicare_resp_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_medicare_resp_key** | **Integer** | MemberMedicareResp Key |  |
| **member_medicare_resp** | [**MemberMedicareResp**](MemberMedicareResp.md) |  |  |

### Return type

[**MemberMedicareRespVBAResponse**](MemberMedicareRespVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

