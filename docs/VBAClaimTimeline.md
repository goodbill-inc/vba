# Vba::VBAClaimTimeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | **Integer** |  | [optional] |
| **transaction_type** | **String** |  | [optional] |
| **transaction_date** | **Time** |  | [optional] |
| **pre_process_image** | **String** |  | [optional] |
| **pre_process_arrow_right** | **String** |  | [optional] |
| **pre_process_arrow_down** | **String** |  | [optional] |
| **pre_process_description** | **String** |  | [optional] |
| **post_process_image** | **String** |  | [optional] |
| **post_process_arrow_right** | **String** |  | [optional] |
| **post_process_arrow_left** | **String** |  | [optional] |
| **post_process_arrow_down** | **String** |  | [optional] |
| **post_process_description** | **String** |  | [optional] |
| **post_payment_image** | **String** |  | [optional] |
| **post_payment_arrow_left** | **String** |  | [optional] |
| **post_payment_arrow_down** | **String** |  | [optional] |
| **post_payment_description** | **String** |  | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAClaimTimeline.new(
  sort: null,
  transaction_type: null,
  transaction_date: null,
  pre_process_image: null,
  pre_process_arrow_right: null,
  pre_process_arrow_down: null,
  pre_process_description: null,
  post_process_image: null,
  post_process_arrow_right: null,
  post_process_arrow_left: null,
  post_process_arrow_down: null,
  post_process_description: null,
  post_payment_image: null,
  post_payment_arrow_left: null,
  post_payment_arrow_down: null,
  post_payment_description: null
)
```

