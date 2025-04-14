# Vba::SubscriberPremRateSplit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_prem_rate_split_key** | **Integer** | Unqiue identiferi for each Premium Rate split configured for this subscriber. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **amount** | **Float** | Specifies the amount of the rate split. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **amount_pct** | **Boolean** | Identifies that the rate split is a percentage. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **effective_date** | **Time** | Date when the associated rate split becomes/became effective. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **invoice_level** | **String** | Identifies at which level the rate split will be invoiced. |  |
| **prem_rate_key** | **Integer** | References PremRate.PremRate_Key value on the referenced record. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **split_rule** | **String** | Identifies the rule, or how, the the rate split will be applied. | [optional] |
| **subscriber_id** | **String** | References Subscribers.Subscriber_ID value on the parent record. |  |
| **term_date** | **Time** | Date when the associated rate split expires/expired. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SubscriberPremRateSplit.new(
  subscriber_prem_rate_split_key: null,
  amount: null,
  amount_pct: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  invoice_level: null,
  prem_rate_key: null,
  split_rule: null,
  subscriber_id: null,
  term_date: null,
  update_date: null,
  update_user: null
)
```

