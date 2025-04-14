# Vba::GroupNetworkAddOn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_network_add_on_key** | **Integer** | Used in custom client processing with no functional impact on existing processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **description** | **String** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **discount_payment** | **Float** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **discount_payment_pct** | **Boolean** | Used in custom client processing with no functional impact on existing processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **discount_threshold** | **Float** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **discount_threshold_pct** | **Boolean** | Used in custom client processing with no functional impact on existing processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_id** | **String** | Used in custom client processing with no functional impact on existing processing. |  |
| **incurred_from** | **Time** | Used in custom client processing with no functional impact on existing processing. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **incurred_thru** | **Time** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **member_seq** | **String** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **network_id** | **String** | Used in custom client processing with no functional impact on existing processing. |  |
| **paid_from** | **Time** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **paid_thru** | **Time** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **payment_limit** | **Float** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **payment_limit_type** | **String** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **provider_id** | **String** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **subscriber_id** | **String** | Used in custom client processing with no functional impact on existing processing. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupNetworkAddOn.new(
  group_network_add_on_key: null,
  description: null,
  discount_payment: null,
  discount_payment_pct: null,
  discount_threshold: null,
  discount_threshold_pct: null,
  entry_date: null,
  entry_user: null,
  group_id: null,
  incurred_from: null,
  incurred_thru: null,
  member_seq: null,
  network_id: null,
  paid_from: null,
  paid_thru: null,
  payment_limit: null,
  payment_limit_type: null,
  provider_id: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

