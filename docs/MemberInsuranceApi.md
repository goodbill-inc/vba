# Vba::MemberInsuranceApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_insurance**](MemberInsuranceApi.md#create_member_insurance) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/insurances | Create MemberInsurance |
| [**delete_member_insurance**](MemberInsuranceApi.md#delete_member_insurance) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/insurances/{seqNumber} | Delete MemberInsurance |
| [**get_member_insurance**](MemberInsuranceApi.md#get_member_insurance) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/insurances/{seqNumber} | Get MemberInsurance |
| [**list_member_insurance**](MemberInsuranceApi.md#list_member_insurance) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/insurances | List MemberInsurance |
| [**update_batch_member_insurance**](MemberInsuranceApi.md#update_batch_member_insurance) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/insurances-batch | Create or Update Batch MemberInsurance |
| [**update_member_insurance**](MemberInsuranceApi.md#update_member_insurance) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/insurances/{seqNumber} | Update MemberInsurance |


## create_member_insurance

> <MemberInsuranceVBAResponse> create_member_insurance(vbasoftware_database, subscriber_id, member_seq, member_insurance)

Create MemberInsurance

Creates a new MemberInsurance

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

api_instance = Vba::MemberInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_insurance = Vba::MemberInsurance.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', seq_number: 37, priority: 37}) # MemberInsurance | 

begin
  # Create MemberInsurance
  result = api_instance.create_member_insurance(vbasoftware_database, subscriber_id, member_seq, member_insurance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->create_member_insurance: #{e}"
end
```

#### Using the create_member_insurance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberInsuranceVBAResponse>, Integer, Hash)> create_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_insurance)

```ruby
begin
  # Create MemberInsurance
  data, status_code, headers = api_instance.create_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_insurance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberInsuranceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->create_member_insurance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_insurance** | [**MemberInsurance**](MemberInsurance.md) |  |  |

### Return type

[**MemberInsuranceVBAResponse**](MemberInsuranceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_insurance

> delete_member_insurance(vbasoftware_database, subscriber_id, member_seq, seq_number)

Delete MemberInsurance

Deletes an MemberInsurance

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

api_instance = Vba::MemberInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
seq_number = 56 # Integer | Seq Number

begin
  # Delete MemberInsurance
  api_instance.delete_member_insurance(vbasoftware_database, subscriber_id, member_seq, seq_number)
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->delete_member_insurance: #{e}"
end
```

#### Using the delete_member_insurance_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, seq_number)

```ruby
begin
  # Delete MemberInsurance
  data, status_code, headers = api_instance.delete_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, seq_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->delete_member_insurance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **seq_number** | **Integer** | Seq Number |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_insurance

> <MemberInsuranceVBAResponse> get_member_insurance(vbasoftware_database, subscriber_id, member_seq, seq_number)

Get MemberInsurance

Gets MemberInsurance

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

api_instance = Vba::MemberInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
seq_number = 56 # Integer | Seq Number

begin
  # Get MemberInsurance
  result = api_instance.get_member_insurance(vbasoftware_database, subscriber_id, member_seq, seq_number)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->get_member_insurance: #{e}"
end
```

#### Using the get_member_insurance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberInsuranceVBAResponse>, Integer, Hash)> get_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, seq_number)

```ruby
begin
  # Get MemberInsurance
  data, status_code, headers = api_instance.get_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, seq_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberInsuranceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->get_member_insurance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **seq_number** | **Integer** | Seq Number |  |

### Return type

[**MemberInsuranceVBAResponse**](MemberInsuranceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_insurance

> <MemberInsuranceListVBAResponse> list_member_insurance(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberInsurance

Lists all MemberInsurance for the given subscriberID and memberSeq

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

api_instance = Vba::MemberInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberInsurance
  result = api_instance.list_member_insurance(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->list_member_insurance: #{e}"
end
```

#### Using the list_member_insurance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberInsuranceListVBAResponse>, Integer, Hash)> list_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberInsurance
  data, status_code, headers = api_instance.list_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberInsuranceListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->list_member_insurance_with_http_info: #{e}"
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

[**MemberInsuranceListVBAResponse**](MemberInsuranceListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_insurance

> <MultiCodeResponseListVBAResponse> update_batch_member_insurance(vbasoftware_database, subscriber_id, member_seq, member_insurance)

Create or Update Batch MemberInsurance

Create or Update multiple MemberInsurance at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_insurance = [Vba::MemberInsurance.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', seq_number: 37, priority: 37})] # Array<MemberInsurance> | 

begin
  # Create or Update Batch MemberInsurance
  result = api_instance.update_batch_member_insurance(vbasoftware_database, subscriber_id, member_seq, member_insurance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->update_batch_member_insurance: #{e}"
end
```

#### Using the update_batch_member_insurance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_insurance)

```ruby
begin
  # Create or Update Batch MemberInsurance
  data, status_code, headers = api_instance.update_batch_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_insurance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->update_batch_member_insurance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_insurance** | [**Array&lt;MemberInsurance&gt;**](MemberInsurance.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_insurance

> <MemberInsuranceVBAResponse> update_member_insurance(vbasoftware_database, subscriber_id, member_seq, seq_number, member_insurance)

Update MemberInsurance

Updates a specific MemberInsurance.

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

api_instance = Vba::MemberInsuranceApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
seq_number = 56 # Integer | Seq Number
member_insurance = Vba::MemberInsurance.new({subscriber_id: 'subscriber_id_example', member_seq: 'member_seq_example', seq_number: 37, priority: 37}) # MemberInsurance | 

begin
  # Update MemberInsurance
  result = api_instance.update_member_insurance(vbasoftware_database, subscriber_id, member_seq, seq_number, member_insurance)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->update_member_insurance: #{e}"
end
```

#### Using the update_member_insurance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberInsuranceVBAResponse>, Integer, Hash)> update_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, seq_number, member_insurance)

```ruby
begin
  # Update MemberInsurance
  data, status_code, headers = api_instance.update_member_insurance_with_http_info(vbasoftware_database, subscriber_id, member_seq, seq_number, member_insurance)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberInsuranceVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberInsuranceApi->update_member_insurance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **seq_number** | **Integer** | Seq Number |  |
| **member_insurance** | [**MemberInsurance**](MemberInsurance.md) |  |  |

### Return type

[**MemberInsuranceVBAResponse**](MemberInsuranceVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

