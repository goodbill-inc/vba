# Vba::MemberTaxesApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_member_tax**](MemberTaxesApi.md#create_member_tax) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/taxes | Create MemberTax |
| [**delete_member_tax**](MemberTaxesApi.md#delete_member_tax) | **DELETE** /subscribers/{subscriberID}/members/{memberSeq}/taxes/{memberTaxKey} | Delete MemberTax |
| [**get_member_tax**](MemberTaxesApi.md#get_member_tax) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/taxes/{memberTaxKey} | Get MemberTax |
| [**list_member_tax**](MemberTaxesApi.md#list_member_tax) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/taxes | List MemberTax |
| [**update_batch_member_tax**](MemberTaxesApi.md#update_batch_member_tax) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/taxes-batch | Create or Update Batch MemberTax |
| [**update_member_tax**](MemberTaxesApi.md#update_member_tax) | **PUT** /subscribers/{subscriberID}/members/{memberSeq}/taxes/{memberTaxKey} | Update MemberTax |


## create_member_tax

> <MemberTaxVBAResponse> create_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax)

Create MemberTax

Creates a new MemberTax

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

api_instance = Vba::MemberTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tax = Vba::MemberTax.new({member_tax_key: 37, exemptions: 37, federal_tax_exempt: false, medicare_tax_exempt: false, soc_sec_tax_exempt: false, state_percentage_election: false, state_tax_exempt: false, tax_exempt: false, w4_2020: false, w4_box_c: false}) # MemberTax | 

begin
  # Create MemberTax
  result = api_instance.create_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->create_member_tax: #{e}"
end
```

#### Using the create_member_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberTaxVBAResponse>, Integer, Hash)> create_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax)

```ruby
begin
  # Create MemberTax
  data, status_code, headers = api_instance.create_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->create_member_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tax** | [**MemberTax**](MemberTax.md) |  |  |

### Return type

[**MemberTaxVBAResponse**](MemberTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_member_tax

> delete_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax_key)

Delete MemberTax

Deletes an MemberTax

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

api_instance = Vba::MemberTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tax_key = 56 # Integer | MemberTax Key

begin
  # Delete MemberTax
  api_instance.delete_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax_key)
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->delete_member_tax: #{e}"
end
```

#### Using the delete_member_tax_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax_key)

```ruby
begin
  # Delete MemberTax
  data, status_code, headers = api_instance.delete_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->delete_member_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tax_key** | **Integer** | MemberTax Key |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_member_tax

> <MemberTaxVBAResponse> get_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax_key)

Get MemberTax

Gets MemberTax

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

api_instance = Vba::MemberTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tax_key = 56 # Integer | MemberTax Key

begin
  # Get MemberTax
  result = api_instance.get_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->get_member_tax: #{e}"
end
```

#### Using the get_member_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberTaxVBAResponse>, Integer, Hash)> get_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax_key)

```ruby
begin
  # Get MemberTax
  data, status_code, headers = api_instance.get_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->get_member_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tax_key** | **Integer** | MemberTax Key |  |

### Return type

[**MemberTaxVBAResponse**](MemberTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_member_tax

> <MemberTaxListVBAResponse> list_member_tax(vbasoftware_database, subscriber_id, member_seq, opts)

List MemberTax

Lists all MemberTax for the given subscriberID and memberSeq and memberTaxKey

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

api_instance = Vba::MemberTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List MemberTax
  result = api_instance.list_member_tax(vbasoftware_database, subscriber_id, member_seq, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->list_member_tax: #{e}"
end
```

#### Using the list_member_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberTaxListVBAResponse>, Integer, Hash)> list_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # List MemberTax
  data, status_code, headers = api_instance.list_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberTaxListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->list_member_tax_with_http_info: #{e}"
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

[**MemberTaxListVBAResponse**](MemberTaxListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_member_tax

> <MultiCodeResponseListVBAResponse> update_batch_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax)

Create or Update Batch MemberTax

Create or Update multiple MemberTax at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::MemberTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tax = [Vba::MemberTax.new({member_tax_key: 37, exemptions: 37, federal_tax_exempt: false, medicare_tax_exempt: false, soc_sec_tax_exempt: false, state_percentage_election: false, state_tax_exempt: false, tax_exempt: false, w4_2020: false, w4_box_c: false})] # Array<MemberTax> | 

begin
  # Create or Update Batch MemberTax
  result = api_instance.update_batch_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->update_batch_member_tax: #{e}"
end
```

#### Using the update_batch_member_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax)

```ruby
begin
  # Create or Update Batch MemberTax
  data, status_code, headers = api_instance.update_batch_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->update_batch_member_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tax** | [**Array&lt;MemberTax&gt;**](MemberTax.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_member_tax

> <MemberTaxVBAResponse> update_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax_key, member_tax)

Update MemberTax

Updates a specific MemberTax.

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

api_instance = Vba::MemberTaxesApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
member_tax_key = 56 # Integer | MemberTax Key
member_tax = Vba::MemberTax.new({member_tax_key: 37, exemptions: 37, federal_tax_exempt: false, medicare_tax_exempt: false, soc_sec_tax_exempt: false, state_percentage_election: false, state_tax_exempt: false, tax_exempt: false, w4_2020: false, w4_box_c: false}) # MemberTax | 

begin
  # Update MemberTax
  result = api_instance.update_member_tax(vbasoftware_database, subscriber_id, member_seq, member_tax_key, member_tax)
  p result
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->update_member_tax: #{e}"
end
```

#### Using the update_member_tax_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MemberTaxVBAResponse>, Integer, Hash)> update_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax_key, member_tax)

```ruby
begin
  # Update MemberTax
  data, status_code, headers = api_instance.update_member_tax_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_tax_key, member_tax)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MemberTaxVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling MemberTaxesApi->update_member_tax_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **member_tax_key** | **Integer** | MemberTax Key |  |
| **member_tax** | [**MemberTax**](MemberTax.md) |  |  |

### Return type

[**MemberTaxVBAResponse**](MemberTaxVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

