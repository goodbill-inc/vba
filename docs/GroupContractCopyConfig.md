# Vba::GroupContractCopyConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | The Group ID of the Contract holding the source records for this copy | [optional] |
| **division_id** | **String** | The Division ID of the Contract holding the source records for this copy | [optional] |
| **coverage_start** | **Time** | The Contract Start of the Contract holding the source records for this copy | [optional] |
| **apply_division_id** | **Array&lt;String&gt;** | List of Division IDs to have the source records copied to.  The desintation Division ID MUST have a matching contract to the source contract | [optional] |
| **user_id** | **String** | The user ID that will be reflected on the newly created (copied) records. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::GroupContractCopyConfig.new(
  group_id: null,
  division_id: null,
  coverage_start: null,
  apply_division_id: null,
  user_id: null
)
```

