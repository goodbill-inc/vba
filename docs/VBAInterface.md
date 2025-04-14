# Vba::VBAInterface

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vba_interface_key** | **Integer** | ID of the VBA interface. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **ed_m_client_id** | **String** | References the EDM (VBADataManagement) Interface value to create a hook into VBASoftware. | [optional] |
| **ed_m_interface_id** | **String** | References the EDM (VBADataManagement) Interface value to create a hook into VBASoftware. | [optional] |
| **ed_m_vendor_id** | **String** | References the EDM (VBADataManagement) Interface value to create a hook into VBASoftware. | [optional] |
| **entry_date** | **Time** | Date record was first added to the system | [optional] |
| **entry_user** | **String** | User that first added the record to the system | [optional] |
| **update_date** | **Time** | Date the record was last updated in the system | [optional] |
| **update_user** | **String** | User that last updated the record in the system | [optional] |
| **vba_interface_automate_job_name** | **String** | Name for the automation job. | [optional] |
| **vba_interface_description** | **String** | Description of the VBA interface. | [optional] |
| **vba_interface_direction** | **String** | Indicates whether the interface is outbound, inbound, or a web service. | [optional] |
| **vba_interface_execute_details** | **String** | Free text area where the interface execution details may be described. | [optional] |
| **vba_interface_file_naming_convention** | **String** | Free text area where any naming conventions may be described. | [optional] |
| **vba_interface_name** | **String** | Name for the VBA interface. | [optional] |
| **vba_interface_owner** | **String** | Indicates the owner who is associated with the interface. | [optional] |
| **vba_interface_schedule** | **String** | Free text area where the interface schedule may be described. | [optional] |
| **vba_interface_status** | **String** | Indicates the current status of the interface. | [optional] |
| **vba_interface_type** | **String** | Indicates the type of interface being configured. | [optional] |
| **vba_interface_vendor** | **String** | Indicates the vendor who is associated with the interface. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::VBAInterface.new(
  vba_interface_key: null,
  ed_m_client_id: null,
  ed_m_interface_id: null,
  ed_m_vendor_id: null,
  entry_date: null,
  entry_user: null,
  update_date: null,
  update_user: null,
  vba_interface_automate_job_name: null,
  vba_interface_description: null,
  vba_interface_direction: null,
  vba_interface_execute_details: null,
  vba_interface_file_naming_convention: null,
  vba_interface_name: null,
  vba_interface_owner: null,
  vba_interface_schedule: null,
  vba_interface_status: null,
  vba_interface_type: null,
  vba_interface_vendor: null
)
```

