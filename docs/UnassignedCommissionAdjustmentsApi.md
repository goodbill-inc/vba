# Vba::UnassignedCommissionAdjustmentsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_unassigned_commission_adjustment**](UnassignedCommissionAdjustmentsApi.md#list_unassigned_commission_adjustment) | **GET** /unassigned-commission-adjustments | List Unassigned CommissionAdjustment |


## list_unassigned_commission_adjustment

> <CommissionAdjustmentListVBAResponse> list_unassigned_commission_adjustment(vbasoftware_database, opts)

List Unassigned CommissionAdjustment

Lists all CommissionAdjustment that have no Commission Transaction.

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

api_instance = Vba::UnassignedCommissionAdjustmentsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
opts = {
  page: 56, # Integer | Page
  page_size: 56, # Integer | Page Size
  sort_by: 'sort_by_example' # String | Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., 'Property1:desc,Property2:asc,Property3:asc' sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
}

begin
  # List Unassigned CommissionAdjustment
  result = api_instance.list_unassigned_commission_adjustment(vbasoftware_database, opts)
  p result
rescue Vba::ApiError => e
  puts "Error when calling UnassignedCommissionAdjustmentsApi->list_unassigned_commission_adjustment: #{e}"
end
```

#### Using the list_unassigned_commission_adjustment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommissionAdjustmentListVBAResponse>, Integer, Hash)> list_unassigned_commission_adjustment_with_http_info(vbasoftware_database, opts)

```ruby
begin
  # List Unassigned CommissionAdjustment
  data, status_code, headers = api_instance.list_unassigned_commission_adjustment_with_http_info(vbasoftware_database, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommissionAdjustmentListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling UnassignedCommissionAdjustmentsApi->list_unassigned_commission_adjustment_with_http_info: #{e}"
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

[**CommissionAdjustmentListVBAResponse**](CommissionAdjustmentListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

