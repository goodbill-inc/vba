# Vba::SecurityUserLimitMemberClaimData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_user_limit_member_claim_data_key** | **Integer** | Key of the Security User Limit Member Data Limit |  |
| **member_seq** | **String** | Sequential identifier of the Member whose data is being limited. | [optional] |
| **subscriber_id** | **String** | ID of the Subscriber whose data is being limited. This limit means that the User will be unable to see claim specifics (procedure codes and diagnosis codes) of the selected Member. | [optional] |
| **user_id** | **String** | ID of the User to whom the Member Data limit is being applied. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SecurityUserLimitMemberClaimData.new(
  security_user_limit_member_claim_data_key: null,
  member_seq: null,
  subscriber_id: null,
  user_id: null
)
```

