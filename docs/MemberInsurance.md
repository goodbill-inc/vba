# Vba::MemberInsurance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriber_id** | **String** | References Members.Subscriber_ID value on the parent record. |  |
| **member_seq** | **String** | References Members.Member_Seq value on the parent record. |  |
| **seq_number** | **Integer** | Unique sequence value for each Insurance record for this Member. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **carrier_key** | **Integer** | Identifies the &#39;Other Insurance&#39; Carrier. | [optional] |
| **carrier_name** | **String** | Carrier name for this other insurance record. | [optional] |
| **coverage_type** | **String** | Coverage Type of &#39;Other Insurance&#39; policy. | [optional] |
| **end_date** | **Time** | Date when the &#39;Other Insurance&#39; expires/expired. | [optional] |
| **entry_date** | **Time** | Date when the record was first added to the system. | [optional] |
| **entry_user** | **String** | User that first added the record to the system. | [optional] |
| **group_number** | **String** | Group number of &#39;Other Insurance&#39; policy. | [optional] |
| **insurance_type** | **Integer** | Insurance type of the &#39;Other Insurance&#39; policy. | [optional] |
| **limits** | **Float** | Dollar amount of the &#39;Other Insurance&#39; policy. | [optional] |
| **plan_type** | **String** | Plan type associated with the &#39;Other Insurance&#39;. | [optional] |
| **policy_holder_name** | **String** | Name of the &#39;Other Insurance&#39; primary policy holder. | [optional] |
| **policy_number** | **String** | Number of the &#39;Other Insurance&#39; policy. | [optional] |
| **priority** | **Integer** | Priority of the Member&#39;s &#39;Other Insurance&#39;. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **secondary_member_seq** | **String** | For purposes of utlizing Auto-COB processing, this indicates the member who is covered by Secondary Insurance under this Insured record. | [optional] |
| **secondary_subscriber_id** | **String** | For purposes of utlizing Auto-COB processing, this indicates the member who is covered by Secondary Insurance under this Insured record. | [optional] |
| **start_date** | **Time** | Date when the &#39;Other Insurance&#39; becomes/became effective. | [optional] |
| **update_date** | **Time** | Date when the record was last updated in the system. | [optional] |
| **update_user** | **String** | User that last updated the record in the system. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::MemberInsurance.new(
  subscriber_id: null,
  member_seq: null,
  seq_number: null,
  carrier_key: null,
  carrier_name: null,
  coverage_type: null,
  end_date: null,
  entry_date: null,
  entry_user: null,
  group_number: null,
  insurance_type: null,
  limits: null,
  plan_type: null,
  policy_holder_name: null,
  policy_number: null,
  priority: null,
  secondary_member_seq: null,
  secondary_subscriber_id: null,
  start_date: null,
  update_date: null,
  update_user: null
)
```

