# Vba::EnrollmentAccumulatorsApi

All URIs are relative to *https://vbapi.vbasoftware.com/vbasoftware*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_accumulator_all_benefit_detail**](EnrollmentAccumulatorsApi.md#list_accumulator_all_benefit_detail) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-accum-all-benefit-detail | List All Accumulator Benefit Detail |
| [**list_accumulator_benefit_detail**](EnrollmentAccumulatorsApi.md#list_accumulator_benefit_detail) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-accum-benefit-detail | List Accumulator Benefit Detail |
| [**list_accumulator_detail**](EnrollmentAccumulatorsApi.md#list_accumulator_detail) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-accum-detail | List Accumulator Detail |
| [**list_accumulator_plan_max_claim_detail**](EnrollmentAccumulatorsApi.md#list_accumulator_plan_max_claim_detail) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-accum-plan-max-claim-detail | List Accumulator Plan Max Claim Detail |
| [**list_accumulator_plan_max_summary**](EnrollmentAccumulatorsApi.md#list_accumulator_plan_max_summary) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-accum-plan-max-summary | List Accumulator Plan Max Summary |
| [**list_added_accumulator_detail**](EnrollmentAccumulatorsApi.md#list_added_accumulator_detail) | **GET** /subscribers/{subscriberID}/members/{memberSeq}/list-added-accum-detail | List Added Accumulator Detail |
| [**recalculate_member_teeth**](EnrollmentAccumulatorsApi.md#recalculate_member_teeth) | **POST** /subscribers/{subscriberID}/members/{memberSeq}/recalculate-teeth | Recalculate Member Teeth |
| [**subscriber_recalc_accum**](EnrollmentAccumulatorsApi.md#subscriber_recalc_accum) | **POST** /subscribers/{subscriberID}/recalculate-accumulators | Recalculate Subscriber Accumulators |


## list_accumulator_all_benefit_detail

> <AccumulatorAllBenefitDetailResultListVBAResponse> list_accumulator_all_benefit_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)

List All Accumulator Benefit Detail

List accumulator detail for any benefit the member has accumulators against by Member, Plan, and Plan Year.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
plan_year = 'plan_year_example' # String | Plan Year

begin
  # List All Accumulator Benefit Detail
  result = api_instance.list_accumulator_all_benefit_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_all_benefit_detail: #{e}"
end
```

#### Using the list_accumulator_all_benefit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccumulatorAllBenefitDetailResultListVBAResponse>, Integer, Hash)> list_accumulator_all_benefit_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)

```ruby
begin
  # List All Accumulator Benefit Detail
  data, status_code, headers = api_instance.list_accumulator_all_benefit_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccumulatorAllBenefitDetailResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_all_benefit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_year** | **String** | Plan Year |  |

### Return type

[**AccumulatorAllBenefitDetailResultListVBAResponse**](AccumulatorAllBenefitDetailResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_accumulator_benefit_detail

> <AccumulatorBenefitDetailResultListVBAResponse> list_accumulator_benefit_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code)

List Accumulator Benefit Detail

List accumulator benefit detail by Member, Plan, and Plan Year.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
plan_year = 'plan_year_example' # String | Plan Year
benefti_code = 'benefti_code_example' # String | Benefit Code

begin
  # List Accumulator Benefit Detail
  result = api_instance.list_accumulator_benefit_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_benefit_detail: #{e}"
end
```

#### Using the list_accumulator_benefit_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccumulatorBenefitDetailResultListVBAResponse>, Integer, Hash)> list_accumulator_benefit_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code)

```ruby
begin
  # List Accumulator Benefit Detail
  data, status_code, headers = api_instance.list_accumulator_benefit_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccumulatorBenefitDetailResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_benefit_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_year** | **String** | Plan Year |  |
| **benefti_code** | **String** | Benefit Code |  |

### Return type

[**AccumulatorBenefitDetailResultListVBAResponse**](AccumulatorBenefitDetailResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_accumulator_detail

> <AccumulatorDetailResultListVBAResponse> list_accumulator_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)

List Accumulator Detail

List accumulator detail by Member, Plan, and Plan Year.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
plan_year = 'plan_year_example' # String | Plan Year

begin
  # List Accumulator Detail
  result = api_instance.list_accumulator_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_detail: #{e}"
end
```

#### Using the list_accumulator_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccumulatorDetailResultListVBAResponse>, Integer, Hash)> list_accumulator_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)

```ruby
begin
  # List Accumulator Detail
  data, status_code, headers = api_instance.list_accumulator_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccumulatorDetailResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_year** | **String** | Plan Year |  |

### Return type

[**AccumulatorDetailResultListVBAResponse**](AccumulatorDetailResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_accumulator_plan_max_claim_detail

> <GetPlanMaxClaimDetailResultListVBAResponse> list_accumulator_plan_max_claim_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)

List Accumulator Plan Max Claim Detail

List Plan Max Claim Detail for a selected Plan and Max ID for a particualr Subscriber, Group, Plan Year.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
plan_year = 'plan_year_example' # String | Plan Year
benefti_code = 'benefti_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # List Accumulator Plan Max Claim Detail
  result = api_instance.list_accumulator_plan_max_claim_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_plan_max_claim_detail: #{e}"
end
```

#### Using the list_accumulator_plan_max_claim_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlanMaxClaimDetailResultListVBAResponse>, Integer, Hash)> list_accumulator_plan_max_claim_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)

```ruby
begin
  # List Accumulator Plan Max Claim Detail
  data, status_code, headers = api_instance.list_accumulator_plan_max_claim_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlanMaxClaimDetailResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_plan_max_claim_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_year** | **String** | Plan Year |  |
| **benefti_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

[**GetPlanMaxClaimDetailResultListVBAResponse**](GetPlanMaxClaimDetailResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_accumulator_plan_max_summary

> <GetPlanMaxSummaryResultListVBAResponse> list_accumulator_plan_max_summary(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)

List Accumulator Plan Max Summary

List Plan Max Summary for a selected Plan and Max ID for a particualr Subscriber, Group, Plan Year.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
plan_year = 'plan_year_example' # String | Plan Year
benefti_code = 'benefti_code_example' # String | Benefit Code
max_id = 'max_id_example' # String | Max ID
as_of_date = Time.parse('2013-10-20T19:20:30+01:00') # Time | As of Date

begin
  # List Accumulator Plan Max Summary
  result = api_instance.list_accumulator_plan_max_summary(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_plan_max_summary: #{e}"
end
```

#### Using the list_accumulator_plan_max_summary_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPlanMaxSummaryResultListVBAResponse>, Integer, Hash)> list_accumulator_plan_max_summary_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)

```ruby
begin
  # List Accumulator Plan Max Summary
  data, status_code, headers = api_instance.list_accumulator_plan_max_summary_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year, benefti_code, max_id, as_of_date)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPlanMaxSummaryResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_accumulator_plan_max_summary_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_year** | **String** | Plan Year |  |
| **benefti_code** | **String** | Benefit Code |  |
| **max_id** | **String** | Max ID |  |
| **as_of_date** | **Time** | As of Date |  |

### Return type

[**GetPlanMaxSummaryResultListVBAResponse**](GetPlanMaxSummaryResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## list_added_accumulator_detail

> <AccumulatorAddedAccumDetailResultListVBAResponse> list_added_accumulator_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)

List Added Accumulator Detail

List added accumulator detail by Member, Plan, and Plan Year.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
group_id = 'group_id_example' # String | Group ID
plan_id = 'plan_id_example' # String | Plan ID
plan_year = 'plan_year_example' # String | Plan Year

begin
  # List Added Accumulator Detail
  result = api_instance.list_added_accumulator_detail(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)
  p result
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_added_accumulator_detail: #{e}"
end
```

#### Using the list_added_accumulator_detail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccumulatorAddedAccumDetailResultListVBAResponse>, Integer, Hash)> list_added_accumulator_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)

```ruby
begin
  # List Added Accumulator Detail
  data, status_code, headers = api_instance.list_added_accumulator_detail_with_http_info(vbasoftware_database, subscriber_id, member_seq, group_id, plan_id, plan_year)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccumulatorAddedAccumDetailResultListVBAResponse>
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->list_added_accumulator_detail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **group_id** | **String** | Group ID |  |
| **plan_id** | **String** | Plan ID |  |
| **plan_year** | **String** | Plan Year |  |

### Return type

[**AccumulatorAddedAccumDetailResultListVBAResponse**](AccumulatorAddedAccumDetailResultListVBAResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## recalculate_member_teeth

> recalculate_member_teeth(vbasoftware_database, subscriber_id, member_seq, opts)

Recalculate Member Teeth

Recalculate All Teeth for a given Subscriber and Member.  Pass the requestingUserId if this request is being made on behalf of another User.

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID
member_seq = 'member_seq_example' # String | Member Seq
opts = {
  requesting_user_id: 'requesting_user_id_example' # String | Requesting User
}

begin
  # Recalculate Member Teeth
  api_instance.recalculate_member_teeth(vbasoftware_database, subscriber_id, member_seq, opts)
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->recalculate_member_teeth: #{e}"
end
```

#### Using the recalculate_member_teeth_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> recalculate_member_teeth_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)

```ruby
begin
  # Recalculate Member Teeth
  data, status_code, headers = api_instance.recalculate_member_teeth_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->recalculate_member_teeth_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vbasoftware_database** | **String** | Target database |  |
| **subscriber_id** | **String** | Subscriber ID |  |
| **member_seq** | **String** | Member Seq |  |
| **requesting_user_id** | **String** | Requesting User | [optional] |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## subscriber_recalc_accum

> subscriber_recalc_accum(vbasoftware_database, subscriber_id)

Recalculate Subscriber Accumulators

Recalculate Accumulators for a given Subscriber ID

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

api_instance = Vba::EnrollmentAccumulatorsApi.new
vbasoftware_database = 'vbasoftware_database_example' # String | Target database
subscriber_id = 'subscriber_id_example' # String | Subscriber ID

begin
  # Recalculate Subscriber Accumulators
  api_instance.subscriber_recalc_accum(vbasoftware_database, subscriber_id)
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->subscriber_recalc_accum: #{e}"
end
```

#### Using the subscriber_recalc_accum_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> subscriber_recalc_accum_with_http_info(vbasoftware_database, subscriber_id)

```ruby
begin
  # Recalculate Subscriber Accumulators
  data, status_code, headers = api_instance.subscriber_recalc_accum_with_http_info(vbasoftware_database, subscriber_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Vba::ApiError => e
  puts "Error when calling EnrollmentAccumulatorsApi->subscriber_recalc_accum_with_http_info: #{e}"
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

