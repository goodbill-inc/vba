# Vba::EDICodeMap

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edi_code_map_key** | **Integer** | Key value that identifies the EDI code map Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **destination_value** | **String** | Value that is assigned at the destination when the source value is encountered |  |
| **direction** | **String** | Specifies the direction of the EDI transfer - import or export |  |
| **effective_date** | **Time** | Optional date when the EDI code map condition becomes effective | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **map_type** | **String** | Type of map that is being used for the EDI transfer |  |
| **map_variable1** | **String** | Variable associated with the EDI code map | [optional] |
| **map_variable2** | **String** | Variable associated with the EDI code map | [optional] |
| **map_variable3** | **String** | Variable associated with the EDI code map | [optional] |
| **map_variable4** | **String** | Variable associated with the EDI code map | [optional] |
| **map_variable5** | **String** | Variable associated with the EDI code map | [optional] |
| **source_value** | **String** | Value specified by the source that needs to be mapped |  |
| **term_date** | **Time** | Optional date when the EDI code map condition terminates | [optional] |
| **trading_partner_key** | **Integer** | Kev value that identifies the EDI trading partner or vendor | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::EDICodeMap.new(
  edi_code_map_key: null,
  destination_value: null,
  direction: null,
  effective_date: null,
  entry_date: null,
  entry_user: null,
  map_type: null,
  map_variable1: null,
  map_variable2: null,
  map_variable3: null,
  map_variable4: null,
  map_variable5: null,
  source_value: null,
  term_date: null,
  trading_partner_key: null,
  update_date: null,
  update_user: null
)
```

