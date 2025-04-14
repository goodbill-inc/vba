# Vba::Checks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_id** | **Integer** | ID of the check. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ac_h_number** | **String** | ACH (Automated Clearing House) number of the check. | [optional] |
| **account_key** | **Integer** | The account key associated with the check. | [optional] |
| **address2_on_check** | **String** | The second address line on the check. | [optional] |
| **address_on_check** | **String** | Address line 1 listed on the check. | [optional] |
| **adjustment** | **Float** | An adjustment amount assigned to the check. | [optional] |
| **admin_amt** | **Float** | Indicates any administrative fee associated with the check. | [optional] |
| **amount_due** | **Float** | Amount that was written on the check. | [optional] |
| **check_batch** | **Integer** | Identifies which batch the check belongs to. | [optional] |
| **check_date** | **Time** | Date that was written on the check. | [optional] |
| **check_number** | **String** | Number of the check. | [optional] |
| **check_paid_date** | **Time** | The date the check was paid. | [optional] |
| **check_status** | **String** | Indicates the status of the check. | [optional] |
| **check_type** | **String** | Indicates the type associated with the check. | [optional] |
| **city_on_check** | **String** | City of the check&#39;s address. | [optional] |
| **cleared_amount** | **Float** | The amount that was cleared. | [optional] |
| **cleared_date** | **Time** | The date the check cleared. | [optional] |
| **country_id_on_check** | **String** | The country ID on the check. | [optional] |
| **create_date** | **Time** | The date the check was created. | [optional] |
| **create_user** | **String** | The user that created the check. | [optional] |
| **date_printed** | **Time** | Date when the check was printed. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **generated_835** | **Boolean** | Flag that determines if an 835 was generated. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **interest** | **Float** | The interest amount of the check. | [optional] |
| **memo** | **String** | Memo line of the check. | [optional] |
| **name_on_address** | **String** | The name associated with the address on the check. | [optional] |
| **name_on_check** | **String** | Name that was written on the check. | [optional] |
| **paid_amount** | **Float** | The amount paid of the check. | [optional] |
| **pay_to_account_key** | **Integer** | The account the check was paid to. | [optional] |
| **pay_to_id** | **String** | Pay_To_ID is the ID based on the Send_Check_To. &#39;P&#39; &#x3D; Payee_ID, &#39;V&#39; &#x3D; Provider_ID, &#39;S&#39;&#x3D; Subscriber_ID, &#39;G&#39; &#x3D; Group_ID, &#39;B&#39; &#x3D; Beneficiary_ID | [optional] |
| **payee_id** | **String** | ID of the Payee associated with the check. | [optional] |
| **payment_method** | **String** | Identifies the check as a check or wire transfer. | [optional] |
| **payor_id** | **String** | ID of the Payor associated with the check. | [optional] |
| **reconcile_key** | **Integer** | The reconcile key associated with the check. | [optional] |
| **send_check_to** | **String** | A code identifying who the check is sent to. | [optional] |
| **signature_key** | **Integer** | The signature key associated with the check. | [optional] |
| **state_on_check** | **String** | State of the check&#39;s address. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **wire_transfer_date** | **Time** | The date of the wire transfer. | [optional] |
| **zip_on_check** | **String** | Zip code of the check&#39;s address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Checks.new(
  check_id: null,
  ac_h_number: null,
  account_key: null,
  address2_on_check: null,
  address_on_check: null,
  adjustment: null,
  admin_amt: null,
  amount_due: null,
  check_batch: null,
  check_date: null,
  check_number: null,
  check_paid_date: null,
  check_status: null,
  check_type: null,
  city_on_check: null,
  cleared_amount: null,
  cleared_date: null,
  country_id_on_check: null,
  create_date: null,
  create_user: null,
  date_printed: null,
  entry_date: null,
  entry_user: null,
  generated_835: null,
  interest: null,
  memo: null,
  name_on_address: null,
  name_on_check: null,
  paid_amount: null,
  pay_to_account_key: null,
  pay_to_id: null,
  payee_id: null,
  payment_method: null,
  payor_id: null,
  reconcile_key: null,
  send_check_to: null,
  signature_key: null,
  state_on_check: null,
  update_date: null,
  update_user: null,
  wire_transfer_date: null,
  zip_on_check: null
)
```

