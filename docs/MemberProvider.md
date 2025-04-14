# Vba::MemberProvider

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member_provider_key** | **Integer** | Unique identifier for each PCP record attached to this member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **capitation_category** | **String** | Specifies the capitation category. | [optional] |
| **effective_date** | **Time** | Date when the Provider became the Member&#39;s PCP. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **end_date** | **Time** | Date when the Member left the Provider as their PCP. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **ip_a_number** | **String** | Information field used for custom reporting and interfaces. | [optional] |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **provider_id** | **String** | Provider designated this Member&#39;s PCP. |  |
| **reason_code** | **Integer** | Specifies the reason for the Member leaving the Provider as their PCP. | [optional] |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberProvider.new(
  member_provider_key: null,
  capitation_category: null,
  effective_date: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  ip_a_number: null,
  member_seq: null,
  provider_id: null,
  reason_code: null,
  subscriber_id: null,
  update_date: null,
  update_user: null
)
```

