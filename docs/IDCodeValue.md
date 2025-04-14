# Vba::IDCodeValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_code_value_key** | **Integer** | Key value identifying a specific ID Code value  Note: The database will apply a default value of &#x60;0&#x60; for this field if a value is not provided.  This field is also marked as NOT NULL in the database and therefore required by the API.  If you do not have a value for this field, supply the database default value of &#x60;0&#x60; to meet the API requirements and ensure that the functionality occurs as expected. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **i_d_code** | **String** | Identifier for a specific ID Code |  |
| **i_d_code_data** | **String** | Data value for the ID Code when it is a string | [optional] |
| **i_d_code_data_date** | **Time** | Data value for the ID Code when it is a datetime field | [optional] |
| **i_d_code_data_decimal** | **Float** | Data value for the ID Code when it is a decimal | [optional] |
| **i_d_code_data_number** | **Integer** | Data value for the ID Code when it is a integer | [optional] |
| **i_d_code_data_option** | **Boolean** | Data value for the ID Code when it is a bit | [optional] |
| **key_column1** | **String** | Key value column name that the ID Code is associated with | [optional] |
| **key_column2** | **String** | Additional key value column name that the ID Code is associated with (if needed) | [optional] |
| **key_column3** | **String** | Additional key value column name that the ID Code is associated with (if needed) | [optional] |
| **key_column4** | **String** | Additional key value column name that the ID Code is associated with (if needed) | [optional] |
| **key_column5** | **String** | Additional key value column name that the ID Code is associated with (if needed) | [optional] |
| **key_data_type1** | **String** | Data type of the key value column the ID Code is associated with | [optional] |
| **key_data_type2** | **String** | Additional data type of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_data_type3** | **String** | Additional data type of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_data_type4** | **String** | Additional data type of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_data_type5** | **String** | Additional data type of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_value1** | **String** | Value of the key value column the ID Code is associated with | [optional] |
| **key_value2** | **String** | Additional value of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_value3** | **String** | Additional value of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_value4** | **String** | Additional value of the key value column the ID Code is associated with (if needed) | [optional] |
| **key_value5** | **String** | Additional value of the key value column the ID Code is associated with (if needed) | [optional] |
| **type** | **String** | Type of the ID Code |  |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::IDCodeValue.new(
  id_code_value_key: null,
  entry_date: null,
  entry_user: null,
  i_d_code: null,
  i_d_code_data: null,
  i_d_code_data_date: null,
  i_d_code_data_decimal: null,
  i_d_code_data_number: null,
  i_d_code_data_option: null,
  key_column1: null,
  key_column2: null,
  key_column3: null,
  key_column4: null,
  key_column5: null,
  key_data_type1: null,
  key_data_type2: null,
  key_data_type3: null,
  key_data_type4: null,
  key_data_type5: null,
  key_value1: null,
  key_value2: null,
  key_value3: null,
  key_value4: null,
  key_value5: null,
  type: null,
  update_date: null,
  update_user: null
)
```

