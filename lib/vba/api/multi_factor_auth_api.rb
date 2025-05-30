=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MultiFactorAuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Disable MFA for all Users
    # Disables MFA (Multi-Factor Authentication) for all users in the organization.  If an MFA software token has previously been registered, it will be set to inactive.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [StringVBAResponse]
    def disable_mfa_globally(vbasoftware_database, opts = {})
      data, _status_code, _headers = disable_mfa_globally_with_http_info(vbasoftware_database, opts)
      data
    end

    # Disable MFA for all Users
    # Disables MFA (Multi-Factor Authentication) for all users in the organization.  If an MFA software token has previously been registered, it will be set to inactive.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringVBAResponse, Integer, Hash)>] StringVBAResponse data, response status code and response headers
    def disable_mfa_globally_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.disable_mfa_globally ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.disable_mfa_globally"
      end
      # resource path
      local_var_path = '/mfa-disable-globally'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StringVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.disable_mfa_globally",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#disable_mfa_globally\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Disable MFA
    # Disables MFA (Multi-Factor Authentication) for a specified user.  If a MFA software token has previously been registered, it is not destroyed, just disabled.
    # @param vbasoftware_database [String] Target database
    # @param disable_mfa_setup_request [DisableMFASetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [StringVBAResponse]
    def disable_mfa_setup(vbasoftware_database, disable_mfa_setup_request, opts = {})
      data, _status_code, _headers = disable_mfa_setup_with_http_info(vbasoftware_database, disable_mfa_setup_request, opts)
      data
    end

    # Disable MFA
    # Disables MFA (Multi-Factor Authentication) for a specified user.  If a MFA software token has previously been registered, it is not destroyed, just disabled.
    # @param vbasoftware_database [String] Target database
    # @param disable_mfa_setup_request [DisableMFASetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringVBAResponse, Integer, Hash)>] StringVBAResponse data, response status code and response headers
    def disable_mfa_setup_with_http_info(vbasoftware_database, disable_mfa_setup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.disable_mfa_setup ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.disable_mfa_setup"
      end
      # verify the required parameter 'disable_mfa_setup_request' is set
      if @api_client.config.client_side_validation && disable_mfa_setup_request.nil?
        fail ArgumentError, "Missing the required parameter 'disable_mfa_setup_request' when calling MultiFactorAuthApi.disable_mfa_setup"
      end
      # resource path
      local_var_path = '/mfa-disable'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(disable_mfa_setup_request)

      # return_type
      return_type = opts[:debug_return_type] || 'StringVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.disable_mfa_setup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#disable_mfa_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable MFA for all Users
    # Enables MFA (Multi-Factor Authentication) for all users in the organization.  If an MFA software token has previously been registered, it will be re-enabled.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [StringVBAResponse]
    def enable_mfa_globally(vbasoftware_database, opts = {})
      data, _status_code, _headers = enable_mfa_globally_with_http_info(vbasoftware_database, opts)
      data
    end

    # Enable MFA for all Users
    # Enables MFA (Multi-Factor Authentication) for all users in the organization.  If an MFA software token has previously been registered, it will be re-enabled.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringVBAResponse, Integer, Hash)>] StringVBAResponse data, response status code and response headers
    def enable_mfa_globally_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.enable_mfa_globally ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.enable_mfa_globally"
      end
      # resource path
      local_var_path = '/mfa-enable-globally'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'StringVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.enable_mfa_globally",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#enable_mfa_globally\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Enable MFA
    # Enables MFA (Multi-Factor Authentication) for a specified user.  If an MFA software token has previously been registered, it will be re-enabled.
    # @param vbasoftware_database [String] Target database
    # @param enable_mfa_setup_request [EnableMFASetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [StringVBAResponse]
    def enable_mfa_setup(vbasoftware_database, enable_mfa_setup_request, opts = {})
      data, _status_code, _headers = enable_mfa_setup_with_http_info(vbasoftware_database, enable_mfa_setup_request, opts)
      data
    end

    # Enable MFA
    # Enables MFA (Multi-Factor Authentication) for a specified user.  If an MFA software token has previously been registered, it will be re-enabled.
    # @param vbasoftware_database [String] Target database
    # @param enable_mfa_setup_request [EnableMFASetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StringVBAResponse, Integer, Hash)>] StringVBAResponse data, response status code and response headers
    def enable_mfa_setup_with_http_info(vbasoftware_database, enable_mfa_setup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.enable_mfa_setup ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.enable_mfa_setup"
      end
      # verify the required parameter 'enable_mfa_setup_request' is set
      if @api_client.config.client_side_validation && enable_mfa_setup_request.nil?
        fail ArgumentError, "Missing the required parameter 'enable_mfa_setup_request' when calling MultiFactorAuthApi.enable_mfa_setup"
      end
      # resource path
      local_var_path = '/mfa-enable'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(enable_mfa_setup_request)

      # return_type
      return_type = opts[:debug_return_type] || 'StringVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.enable_mfa_setup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#enable_mfa_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Current MFA Status
    # Fetches the current multi-factor authentication (MFA) status for the logged-in user.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [BooleanVBAResponse]
    def get_mfa_status(vbasoftware_database, opts = {})
      data, _status_code, _headers = get_mfa_status_with_http_info(vbasoftware_database, opts)
      data
    end

    # Get Current MFA Status
    # Fetches the current multi-factor authentication (MFA) status for the logged-in user.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(BooleanVBAResponse, Integer, Hash)>] BooleanVBAResponse data, response status code and response headers
    def get_mfa_status_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.get_mfa_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.get_mfa_status"
      end
      # resource path
      local_var_path = '/mfa-status'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'BooleanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.get_mfa_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#get_mfa_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request MFA Device Setup
    # Generates a SecretCode and a QR code.  Either can be used for setting up multi-factor authentication (MFA) with an authenticator app.
    # @param vbasoftware_database [String] Target database
    # @param mfa_device_setup_request [MFADeviceSetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [MFADeviceSetupResponseVBAResponse]
    def m_fa_device_setup(vbasoftware_database, mfa_device_setup_request, opts = {})
      data, _status_code, _headers = m_fa_device_setup_with_http_info(vbasoftware_database, mfa_device_setup_request, opts)
      data
    end

    # Request MFA Device Setup
    # Generates a SecretCode and a QR code.  Either can be used for setting up multi-factor authentication (MFA) with an authenticator app.
    # @param vbasoftware_database [String] Target database
    # @param mfa_device_setup_request [MFADeviceSetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MFADeviceSetupResponseVBAResponse, Integer, Hash)>] MFADeviceSetupResponseVBAResponse data, response status code and response headers
    def m_fa_device_setup_with_http_info(vbasoftware_database, mfa_device_setup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.m_fa_device_setup ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.m_fa_device_setup"
      end
      # verify the required parameter 'mfa_device_setup_request' is set
      if @api_client.config.client_side_validation && mfa_device_setup_request.nil?
        fail ArgumentError, "Missing the required parameter 'mfa_device_setup_request' when calling MultiFactorAuthApi.m_fa_device_setup"
      end
      # resource path
      local_var_path = '/mfa-setup'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(mfa_device_setup_request)

      # return_type
      return_type = opts[:debug_return_type] || 'MFADeviceSetupResponseVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.m_fa_device_setup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#m_fa_device_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify an MFA Device Setup
    # Verifies the registration of a multi-factor authentication (MFA) device for the user by verifying the software token and associating it with the user's account.
    # @param vbasoftware_database [String] Target database
    # @param verify_mfa_device_setup_request [VerifyMFADeviceSetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [VerifyMFADeviceSetupResponseVBAResponse]
    def verify_mfa_device_setup(vbasoftware_database, verify_mfa_device_setup_request, opts = {})
      data, _status_code, _headers = verify_mfa_device_setup_with_http_info(vbasoftware_database, verify_mfa_device_setup_request, opts)
      data
    end

    # Verify an MFA Device Setup
    # Verifies the registration of a multi-factor authentication (MFA) device for the user by verifying the software token and associating it with the user&#39;s account.
    # @param vbasoftware_database [String] Target database
    # @param verify_mfa_device_setup_request [VerifyMFADeviceSetupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VerifyMFADeviceSetupResponseVBAResponse, Integer, Hash)>] VerifyMFADeviceSetupResponseVBAResponse data, response status code and response headers
    def verify_mfa_device_setup_with_http_info(vbasoftware_database, verify_mfa_device_setup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MultiFactorAuthApi.verify_mfa_device_setup ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MultiFactorAuthApi.verify_mfa_device_setup"
      end
      # verify the required parameter 'verify_mfa_device_setup_request' is set
      if @api_client.config.client_side_validation && verify_mfa_device_setup_request.nil?
        fail ArgumentError, "Missing the required parameter 'verify_mfa_device_setup_request' when calling MultiFactorAuthApi.verify_mfa_device_setup"
      end
      # resource path
      local_var_path = '/mfa-verify-setup'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json', 'text/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(verify_mfa_device_setup_request)

      # return_type
      return_type = opts[:debug_return_type] || 'VerifyMFADeviceSetupResponseVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MultiFactorAuthApi.verify_mfa_device_setup",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MultiFactorAuthApi#verify_mfa_device_setup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
