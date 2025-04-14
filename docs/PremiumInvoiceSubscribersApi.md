# Vba::PremiumInvoiceSubscribersApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_prem_invoice_subscriber**](PremiumInvoiceSubscribersApi.md#create_prem_invoice_subscriber) | **POST** /premium-invoices/{invoiceKey}/subscribers | Create PremInvoiceSubscriber |
| [**delete_prem_invoice_subscriber**](PremiumInvoiceSubscribersApi.md#delete_prem_invoice_subscriber) | **DELETE** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID} | Delete PremInvoiceSubscriber |
| [**get_prem_invoice_subscriber**](PremiumInvoiceSubscribersApi.md#get_prem_invoice_subscriber) | **GET** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID} | Get PremInvoiceSubscriber |
| [**list_prem_invoice_subscriber**](PremiumInvoiceSubscribersApi.md#list_prem_invoice_subscriber) | **GET** /premium-invoices/{invoiceKey}/subscribers | List PremInvoiceSubscriber |
| [**list_prem_invoice_subscriber_calculations**](PremiumInvoiceSubscribersApi.md#list_prem_invoice_subscriber_calculations) | **GET** /premium-invoices/{invoiceKey}/subscriber-calculations | List of Premium Invoice Calculations by Subscriber |
| [**list_prem_invoice_subscriber_detail_adjustments**](PremiumInvoiceSubscribersApi.md#list_prem_invoice_subscriber_detail_adjustments) | **GET** /premium-invoices/{invoiceKey}/subscriber-detail-adjustments | List of Premium Invoice Adjustment Details for Subscribers |
| [**list_prem_invoice_subscriber_details**](PremiumInvoiceSubscribersApi.md#list_prem_invoice_subscriber_details) | **GET** /premium-invoices/{invoiceKey}/subscriber-details | List of Premium Invoice Details for Subscribers |
| [**list_prem_invoice_subscriber_history**](PremiumInvoiceSubscribersApi.md#list_prem_invoice_subscriber_history) | **GET** /premium-invoices/{invoiceKey}/subscribers/{subscriberID}/history | List PremInvoiceSubscriberHistory |
| [**update_batch_prem_invoice_subscriber**](PremiumInvoiceSubscribersApi.md#update_batch_prem_invoice_subscriber) | **PUT** /premium-invoices/{invoiceKey}/subscribers-batch | Create or Update Batch PremInvoiceSubscriber |
| [**update_prem_invoice_subscriber**](PremiumInvoiceSubscribersApi.md#update_prem_invoice_subscriber) | **PUT** /premium-invoices/{invoiceKey}/subscribers/{groupID}/{divisionID}/{subscriberID} | Update PremInvoiceSubscriber |


## create_prem_invoice_subscriber

> <PremInvoiceSubscriberVBAResponse> create_prem_invoice_subscriber(vbasoftware_database, invoice_key, prem_invoice_subscriber)

Create PremInvoiceSubscriber

Creates a new PremInvoiceSubscriber

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_subscriber = Vba::PremInvoiceSubscriber.new({invoice_key: 37, group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', premium_waived: false}) # PremInvoiceSubscriber | 

begin
  # Create PremInvoiceSubscriber
  result = api_instance.create_prem_invoice_subscriber(vbasoftware_database, invoice_key, prem_invoice_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->create_prem_invoice_subscriber: #{e}"
end
```

#### Using the create_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberVBAResponse>, Integer, Hash)> create_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, prem_invoice_subscriber)

```ruby
begin
  # Create PremInvoiceSubscriber
  data, status_code, headers = api_instance.create_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, prem_invoice_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->create_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_subscriber** | [**PremInvoiceSubscriber**](PremInvoiceSubscriber.md) |  |  |

### Return type

[**PremInvoiceSubscriberVBAResponse**](PremInvoiceSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## delete_prem_invoice_subscriber

> delete_prem_invoice_subscriber(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)

Delete PremInvoiceSubscriber

Deletes an PremInvoiceSubscriber

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Delete PremInvoiceSubscriber
  api_instance.delete_prem_invoice_subscriber(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->delete_prem_invoice_subscriber: #{e}"
end
```

#### Using the delete_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)

```ruby
begin
  # Delete PremInvoiceSubscriber
  data, status_code, headers = api_instance.delete_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->delete_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_prem_invoice_subscriber

> <PremInvoiceSubscriberVBAResponse> get_prem_invoice_subscriber(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)

Get PremInvoiceSubscriber

Gets PremInvoiceSubscriber

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Get PremInvoiceSubscriber
  result = api_instance.get_prem_invoice_subscriber(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->get_prem_invoice_subscriber: #{e}"
end
```

#### Using the get_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberVBAResponse>, Integer, Hash)> get_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)

```ruby
begin
  # Get PremInvoiceSubscriber
  data, status_code, headers = api_instance.get_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->get_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **subscriber_id** | **String** | Subscriber ID |  |

### Return type

[**PremInvoiceSubscriberVBAResponse**](PremInvoiceSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_subscriber

> <PremInvoiceSubscriberListVBAResponse> list_prem_invoice_subscriber(vbasoftware_database, invoice_key, opts)

List PremInvoiceSubscriber

Lists all PremInvoiceSubscriber for the given invoiceKey

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceSubscriber
  result = api_instance.list_prem_invoice_subscriber(vbasoftware_database, invoice_key, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber: #{e}"
end
```

#### Using the list_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberListVBAResponse>, Integer, Hash)> list_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, opts)

```ruby
begin
  # List PremInvoiceSubscriber
  data, status_code, headers = api_instance.list_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**PremInvoiceSubscriberListVBAResponse**](PremInvoiceSubscriberListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_subscriber_calculations

> <GetPremInvoiceSubscriberListResultListVBAResponse> list_prem_invoice_subscriber_calculations(vbasoftware_database, invoice_key)

List of Premium Invoice Calculations by Subscriber

Retrieves detailed calculations and metrics for subscribers associated with a specific invoice key, including financial summaries, premium adjustments, and waiver statuses.

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # List of Premium Invoice Calculations by Subscriber
  result = api_instance.list_prem_invoice_subscriber_calculations(vbasoftware_database, invoice_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_calculations: #{e}"
end
```

#### Using the list_prem_invoice_subscriber_calculations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPremInvoiceSubscriberListResultListVBAResponse>, Integer, Hash)> list_prem_invoice_subscriber_calculations_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # List of Premium Invoice Calculations by Subscriber
  data, status_code, headers = api_instance.list_prem_invoice_subscriber_calculations_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPremInvoiceSubscriberListResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_calculations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

[**GetPremInvoiceSubscriberListResultListVBAResponse**](GetPremInvoiceSubscriberListResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_subscriber_detail_adjustments

> <VBAPremInvoiceSubscriberDetailAdjustmentListVBAResponse> list_prem_invoice_subscriber_detail_adjustments(vbasoftware_database, invoice_key)

List of Premium Invoice Adjustment Details for Subscribers

Retrieves detailed invoice adjustments for subscribers associated with a specific invoice key, including financial summaries, & premium adjustments.

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # List of Premium Invoice Adjustment Details for Subscribers
  result = api_instance.list_prem_invoice_subscriber_detail_adjustments(vbasoftware_database, invoice_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_detail_adjustments: #{e}"
end
```

#### Using the list_prem_invoice_subscriber_detail_adjustments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAPremInvoiceSubscriberDetailAdjustmentListVBAResponse>, Integer, Hash)> list_prem_invoice_subscriber_detail_adjustments_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # List of Premium Invoice Adjustment Details for Subscribers
  data, status_code, headers = api_instance.list_prem_invoice_subscriber_detail_adjustments_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAPremInvoiceSubscriberDetailAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_detail_adjustments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

[**VBAPremInvoiceSubscriberDetailAdjustmentListVBAResponse**](VBAPremInvoiceSubscriberDetailAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_subscriber_details

> <VBAPremInvoiceSubscriberDetailListVBAResponse> list_prem_invoice_subscriber_details(vbasoftware_database, invoice_key)

List of Premium Invoice Details for Subscribers

Retrieves detailed calculations and metrics for subscribers associated with a specific invoice key, including financial summaries, premium adjustments, and waiver statuses.

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key

begin
  # List of Premium Invoice Details for Subscribers
  result = api_instance.list_prem_invoice_subscriber_details(vbasoftware_database, invoice_key)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_details: #{e}"
end
```

#### Using the list_prem_invoice_subscriber_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAPremInvoiceSubscriberDetailListVBAResponse>, Integer, Hash)> list_prem_invoice_subscriber_details_with_http_info(vbasoftware_database, invoice_key)

```ruby
begin
  # List of Premium Invoice Details for Subscribers
  data, status_code, headers = api_instance.list_prem_invoice_subscriber_details_with_http_info(vbasoftware_database, invoice_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAPremInvoiceSubscriberDetailListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |

### Return type

[**VBAPremInvoiceSubscriberDetailListVBAResponse**](VBAPremInvoiceSubscriberDetailListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_prem_invoice_subscriber_history

> <VBAPremInvoiceSubscriberHistoryListVBAResponse> list_prem_invoice_subscriber_history(vbasoftware_database, invoice_key, subscriber_id, opts)

List PremInvoiceSubscriberHistory

Lists all PremInvoiceSubscriber History for the given invoiceKey and Subscriber ID

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List PremInvoiceSubscriberHistory
  result = api_instance.list_prem_invoice_subscriber_history(vbasoftware_database, invoice_key, subscriber_id, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_history: #{e}"
end
```

#### Using the list_prem_invoice_subscriber_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VBAPremInvoiceSubscriberHistoryListVBAResponse>, Integer, Hash)> list_prem_invoice_subscriber_history_with_http_info(vbasoftware_database, invoice_key, subscriber_id, opts)

```ruby
begin
  # List PremInvoiceSubscriberHistory
  data, status_code, headers = api_instance.list_prem_invoice_subscriber_history_with_http_info(vbasoftware_database, invoice_key, subscriber_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VBAPremInvoiceSubscriberHistoryListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->list_prem_invoice_subscriber_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **page** | **Integer** | Page | [optional][default to 1] |
| **page_size** | **Integer** | Page Size | [optional][default to 100] |
| **sort_by** | **String** | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending. | [optional] |

### Return type

[**VBAPremInvoiceSubscriberHistoryListVBAResponse**](VBAPremInvoiceSubscriberHistoryListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## update_batch_prem_invoice_subscriber

> <MultiCodeResponseListVBAResponse> update_batch_prem_invoice_subscriber(vbasoftware_database, invoice_key, prem_invoice_subscriber)

Create or Update Batch PremInvoiceSubscriber

Create or Update multiple PremInvoiceSubscriber at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
prem_invoice_subscriber = [Vba::PremInvoiceSubscriber.new({invoice_key: 37, group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', premium_waived: false})] # Array<PremInvoiceSubscriber> | 

begin
  # Create or Update Batch PremInvoiceSubscriber
  result = api_instance.update_batch_prem_invoice_subscriber(vbasoftware_database, invoice_key, prem_invoice_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->update_batch_prem_invoice_subscriber: #{e}"
end
```

#### Using the update_batch_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultiCodeResponseListVBAResponse>, Integer, Hash)> update_batch_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, prem_invoice_subscriber)

```ruby
begin
  # Create or Update Batch PremInvoiceSubscriber
  data, status_code, headers = api_instance.update_batch_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, prem_invoice_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultiCodeResponseListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->update_batch_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **prem_invoice_subscriber** | [**Array&lt;PremInvoiceSubscriber&gt;**](PremInvoiceSubscriber.md) |  |  |

### Return type

[**MultiCodeResponseListVBAResponse**](MultiCodeResponseListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json


## update_prem_invoice_subscriber

> <PremInvoiceSubscriberVBAResponse> update_prem_invoice_subscriber(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber)

Update PremInvoiceSubscriber

Updates a specific PremInvoiceSubscriber.

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

api_instance = Vba::PremiumInvoiceSubscribersApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
invoice_key = 56 # Integer | Invoice Key
group_id = 'group_id_example' # String | Group ID
division_id = 'division_id_example' # String | Division ID
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
prem_invoice_subscriber = Vba::PremInvoiceSubscriber.new({invoice_key: 37, group_id: 'group_id_example', division_id: 'division_id_example', subscriber_id: 'subscriber_id_example', premium_waived: false}) # PremInvoiceSubscriber | 

begin
  # Update PremInvoiceSubscriber
  result = api_instance.update_prem_invoice_subscriber(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber)
  p result
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->update_prem_invoice_subscriber: #{e}"
end
```

#### Using the update_prem_invoice_subscriber_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PremInvoiceSubscriberVBAResponse>, Integer, Hash)> update_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber)

```ruby
begin
  # Update PremInvoiceSubscriber
  data, status_code, headers = api_instance.update_prem_invoice_subscriber_with_http_info(vbasoftware_database, invoice_key, group_id, division_id, subscriber_id, prem_invoice_subscriber)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PremInvoiceSubscriberVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling PremiumInvoiceSubscribersApi->update_prem_invoice_subscriber_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **invoice_key** | **Integer** | Invoice Key |  |
| **group_id** | **String** | Group ID |  |
| **division_id** | **String** | Division ID |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **prem_invoice_subscriber** | [**PremInvoiceSubscriber**](PremInvoiceSubscriber.md) |  |  |

### Return type

[**PremInvoiceSubscriberVBAResponse**](PremInvoiceSubscriberVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/*+json
- **Accept**: text/plain, application/json, text/json

