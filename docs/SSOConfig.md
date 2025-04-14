# Vba::SSOConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sso_config_id** | **String** | A unique identifier for each SSO configuration setting. This is the primary key of the table. |  |
| **auth_url** | **String** | The authorization URL for the initial authentication step in the SSO process. | [optional] |
| **client_id** | **String** | The client ID issued by the identity provider. | [optional] |
| **client_secret** | **String** | The client secret issued by the identity provider. | [optional] |
| **description** | **String** | A detailed description of the SSO configuration. | [optional] |
| **display** | **String** | The display name for the SSO configuration.  This value is displayed to the user on the login screen. | [optional] |
| **provider_name** | **String** | The name of the SSO provider (e.g., Active Directory, Google, Okta, Auth0). | [optional] |
| **redirect_url** | **String** | The URL to which the identity provider will redirect the user after authentication. | [optional] |
| **ss_o_enable** | **Boolean** | A flag indicating whether the SSO configuration is enabled. Note: This field is marked as NOT NULL in the database and therefore required by the API. |  |
| **scopes** | **String** | A list of scopes or permissions requested from the identity provider. | [optional] |
| **token_url** | **String** | The token URL used to exchange an authorization code for an access token. | [optional] |

## Example

```ruby
require 'vba'

instance = Vba::SSOConfig.new(
  sso_config_id: null,
  auth_url: null,
  client_id: null,
  client_secret: null,
  description: null,
  display: null,
  provider_name: null,
  redirect_url: null,
  ss_o_enable: null,
  scopes: null,
  token_url: null
)
```

