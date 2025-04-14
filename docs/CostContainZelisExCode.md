# Vba::CostContainZelisExCode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ex_code** | **String** | An Ex Code that is being used for Zelis |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **in_network** | **Boolean** | When the Ex Code is present on the claim, when this is sent to Zelis, send it as In Network Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **oon** | **Boolean** | When the Ex Code is present on the claim, when this is sent to Zelis, send it as Out of Network Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::CostContainZelisExCode.new(
  ex_code: null,
  entry_date: null,
  entry_user: null,
  in_network: null,
  oon: null,
  update_date: null,
  update_user: null
)
```

