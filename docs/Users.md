# Vba::Users

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User ID of the selected User. |  |
| **account_locked** | **Boolean** | This option will lock the account out of the application. To unlock the account, uncheck the box. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **address** | **String** | Address of the selected User. | [optional] |
| **address2** | **String** | Address line 2 of the selected User. | [optional] |
| **administrator** | **Boolean** | Grants the User administrative rights. No security area needs to be assigned. This User will have full rights to every aspect of the application. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **audit_user** | **Boolean** | This option enables logging based on the definitions provided within ‘User Log Message’. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **can_set_allowed** | **String** | If this option is selected, the User can override the ‘Allowed’ amount on the ‘Claim’ screen. This option applies to Users who are not flagged as an Administrator but have ‘View Access’ to the ‘Claim’ screen. | [optional] |
| **can_set_co_ins** | **String** | If this option is selected, the User can override the ‘Co-Ins’ amount on the ‘Claim’ screen. This option applies to Users who are not flagged as an Administrator but have ‘View Access’ to the ‘Claim’ screen. | [optional] |
| **can_set_not_covered** | **String** | If this option is selected, the User can override the ‘Not Covered’ amount on the ‘Claim’ screen. This option applies to Users who are not flagged as an Administrator but have ‘View Access’ to the ‘Claim’ screen. | [optional] |
| **city** | **String** | City of the selected User&#39;s address. | [optional] |
| **claim_maximum** | **Float** | When an adjudicated claim’s ‘Payable Amount’ exceeds this number, the ‘User Claim Max Exceeded’ Ex Code will be applied to the claim. | [optional] |
| **country_id** | **String** | ID of the country of the User&#39;s address. | [optional] |
| **e_mail_address** | **String** | Email address of the User. |  |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **fax** | **String** | Fax number of the User. | [optional] |
| **fax_country_code** | **String** | Country code of the User&#39;s fax number. | [optional] |
| **grace_logins** | **Integer** | Identifies the number of login attempts that are allowed before the User&#39;s account is locked. | [optional] |
| **home_phone** | **String** | Home phone number of the User. | [optional] |
| **home_phone_country_code** | **String** | Country code of the User&#39;s home phone number. | [optional] |
| **i_d_card_notification** | **Boolean** | This option is informational only but can be used with a custom report. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **is_sso_user** | **Boolean** | Notes that this user is utilizing SSO to authenticate and login. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **login_machine** | **String** | Identifies the machine on which the User is logged in. | [optional] |
| **login_sound** | **String** | No Longer In Use | [optional] |
| **login_status** | **Integer** | Identifies the login status of the associated User. | [optional] |
| **mf_a_device_name** | **String** | The device name for the authenticator being utilzied by this user. | [optional] |
| **mf_a_enabled** | **Boolean** | Identifies that this user has enabled MFA (Multi-Factor Authentication) and a code is required to login. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **name** | **String** | Name of the selected User. | [optional] |
| **nav_id_color** | **Integer** | Identifies the color that will be used for navigation fields. | [optional] |
| **nav_id_type** | **String** | The nav. (navigation) fields are related to the functionality within VBA that allows a User to use hyperlinks to move between screens/service areas. The fields will appear blank on the ‘User System Options’ area, but the system is setup with the default functionality that is recommended by VBA. | [optional] |
| **nav_id_underline** | **Boolean** | When the box is checked, the field hyperlinks within VBA will appear underlined. When the box is unchecked, the hyperlinks will still function but will not be underlined. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **password** | **String** | Password of the selected User. Password requirements are set within the &#39;Application Settings&#39; found from &#39;System Services&#39; &gt; &#39;VBA Control Panel&#39;. | [optional] |
| **password_expiration** | **Time** | Date when the User&#39;s password will expire. | [optional] |
| **phone** | **String** | Phone number of the User. | [optional] |
| **phone_country_code** | **String** | Country code of the User&#39;s phone number. | [optional] |
| **ss_o_user_name** | **String** | The SSO user name to be used during the Single Sign-On process. | [optional] |
| **single_use_account** | **Boolean** | This option indicates that only one application can be opened using this login ID. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **state** | **String** | State of the selected User&#39;s address. | [optional] |
| **title** | **String** | Title of the selected User. | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **use_windows_authentication** | **Boolean** | Whether or not to use Windows Authentication to login Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **user_idle** | **Integer** | Identifies the idle time, in seconds, before the application closes. | [optional] |
| **user_type** | **String** | Identifies the type associated with the User. | [optional] |
| **vb_a_password_reset** | **Boolean** | This flag indicates that this user can change other VBA_User&#39;s passwords. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **vb_a_user** | **Boolean** | Identifies that the User is a VBA User. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **zip_code** | **String** | Zip code of the selected User&#39;s address. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::Users.new(
  user_id: null,
  account_locked: null,
  address: null,
  address2: null,
  administrator: null,
  audit_user: null,
  can_set_allowed: null,
  can_set_co_ins: null,
  can_set_not_covered: null,
  city: null,
  claim_maximum: null,
  country_id: null,
  e_mail_address: null,
  entry_date: null,
  entry_user: null,
  fax: null,
  fax_country_code: null,
  grace_logins: null,
  home_phone: null,
  home_phone_country_code: null,
  i_d_card_notification: null,
  is_sso_user: null,
  login_machine: null,
  login_sound: null,
  login_status: null,
  mf_a_device_name: null,
  mf_a_enabled: null,
  name: null,
  nav_id_color: null,
  nav_id_type: null,
  nav_id_underline: null,
  password: null,
  password_expiration: null,
  phone: null,
  phone_country_code: null,
  ss_o_user_name: null,
  single_use_account: null,
  state: null,
  title: null,
  update_date: null,
  update_user: null,
  use_windows_authentication: null,
  user_idle: null,
  user_type: null,
  vb_a_password_reset: null,
  vb_a_user: null,
  zip_code: null
)
```

