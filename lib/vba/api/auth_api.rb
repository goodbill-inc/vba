=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Auth Adjustment
    # Performs an Auth Adjustment using the values and flags specified
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param auth_adjustment [AuthAdjustment] 
    # @param [Hash] opts the optional parameters
    # @return [AuthVBAResponse]
    def auth_adjustment(vbasoftware_database, auth_number, auth_adjustment, opts = {})
      data, _status_code, _headers = auth_adjustment_with_http_info(vbasoftware_database, auth_number, auth_adjustment, opts)
      data
    end

    # Auth Adjustment
    # Performs an Auth Adjustment using the values and flags specified
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param auth_adjustment [AuthAdjustment] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVBAResponse, Integer, Hash)>] AuthVBAResponse data, response status code and response headers
    def auth_adjustment_with_http_info(vbasoftware_database, auth_number, auth_adjustment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.auth_adjustment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.auth_adjustment"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthApi.auth_adjustment"
      end
      # verify the required parameter 'auth_adjustment' is set
      if @api_client.config.client_side_validation && auth_adjustment.nil?
        fail ArgumentError, "Missing the required parameter 'auth_adjustment' when calling AuthApi.auth_adjustment"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/adjust'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_adjustment)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.auth_adjustment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#auth_adjustment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process a change in Auth Status
    # Initiates an Auth Status change.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] the Entity
    # @param new_auth_code [String] New Auth Code
    # @param [Hash] opts the optional parameters
    # @return [AuthVBAResponse]
    def auth_process_status(vbasoftware_database, auth_number, new_auth_code, opts = {})
      data, _status_code, _headers = auth_process_status_with_http_info(vbasoftware_database, auth_number, new_auth_code, opts)
      data
    end

    # Process a change in Auth Status
    # Initiates an Auth Status change.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] the Entity
    # @param new_auth_code [String] New Auth Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVBAResponse, Integer, Hash)>] AuthVBAResponse data, response status code and response headers
    def auth_process_status_with_http_info(vbasoftware_database, auth_number, new_auth_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.auth_process_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.auth_process_status"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthApi.auth_process_status"
      end
      # verify the required parameter 'new_auth_code' is set
      if @api_client.config.client_side_validation && new_auth_code.nil?
        fail ArgumentError, "Missing the required parameter 'new_auth_code' when calling AuthApi.auth_process_status"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/process-status/{newAuthCode}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s)).sub('{' + 'newAuthCode' + '}', CGI.escape(new_auth_code.to_s))

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
      return_type = opts[:debug_return_type] || 'AuthVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.auth_process_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#auth_process_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Auth
    # Creates a new Auth and returns the generated Auth.
    # @param vbasoftware_database [String] Target database
    # @param auth [Auth] 
    # @param [Hash] opts the optional parameters
    # @return [AuthVBAResponse]
    def create_auth(vbasoftware_database, auth, opts = {})
      data, _status_code, _headers = create_auth_with_http_info(vbasoftware_database, auth, opts)
      data
    end

    # Create Auth
    # Creates a new Auth and returns the generated Auth.
    # @param vbasoftware_database [String] Target database
    # @param auth [Auth] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVBAResponse, Integer, Hash)>] AuthVBAResponse data, response status code and response headers
    def create_auth_with_http_info(vbasoftware_database, auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.create_auth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.create_auth"
      end
      # verify the required parameter 'auth' is set
      if @api_client.config.client_side_validation && auth.nil?
        fail ArgumentError, "Missing the required parameter 'auth' when calling AuthApi.create_auth"
      end
      # resource path
      local_var_path = '/auths'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.create_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#create_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Auth Batch
    # Creates or Updates Multiple Auths
    # @param vbasoftware_database [String] Target database
    # @param auth [Array<Auth>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def create_or_update_auth_batch(vbasoftware_database, auth, opts = {})
      data, _status_code, _headers = create_or_update_auth_batch_with_http_info(vbasoftware_database, auth, opts)
      data
    end

    # Create or Update Auth Batch
    # Creates or Updates Multiple Auths
    # @param vbasoftware_database [String] Target database
    # @param auth [Array<Auth>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def create_or_update_auth_batch_with_http_info(vbasoftware_database, auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.create_or_update_auth_batch ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.create_or_update_auth_batch"
      end
      # verify the required parameter 'auth' is set
      if @api_client.config.client_side_validation && auth.nil?
        fail ArgumentError, "Missing the required parameter 'auth' when calling AuthApi.create_or_update_auth_batch"
      end
      # resource path
      local_var_path = '/auths'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.create_or_update_auth_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#create_or_update_auth_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Auth
    # Deletes an Auth.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_auth(vbasoftware_database, auth_number, opts = {})
      delete_auth_with_http_info(vbasoftware_database, auth_number, opts)
      nil
    end

    # Delete Auth
    # Deletes an Auth.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_auth_with_http_info(vbasoftware_database, auth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.delete_auth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.delete_auth"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthApi.delete_auth"
      end
      # resource path
      local_var_path = '/auths/{authNumber}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.delete_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#delete_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Auth
    # Gets a specific Auth.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param [Hash] opts the optional parameters
    # @return [AuthVBAResponse]
    def get_auth(vbasoftware_database, auth_number, opts = {})
      data, _status_code, _headers = get_auth_with_http_info(vbasoftware_database, auth_number, opts)
      data
    end

    # Get Auth
    # Gets a specific Auth.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVBAResponse, Integer, Hash)>] AuthVBAResponse data, response status code and response headers
    def get_auth_with_http_info(vbasoftware_database, auth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.get_auth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.get_auth"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthApi.get_auth"
      end
      # resource path
      local_var_path = '/auths/{authNumber}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      return_type = opts[:debug_return_type] || 'AuthVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.get_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#get_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get VBA Auth
    # Gets a specific Auth with VBASoftware custom fields included.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param [Hash] opts the optional parameters
    # @return [VBAAuthVBAResponse]
    def get_vba_auth(vbasoftware_database, auth_number, opts = {})
      data, _status_code, _headers = get_vba_auth_with_http_info(vbasoftware_database, auth_number, opts)
      data
    end

    # Get VBA Auth
    # Gets a specific Auth with VBASoftware custom fields included.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAAuthVBAResponse, Integer, Hash)>] VBAAuthVBAResponse data, response status code and response headers
    def get_vba_auth_with_http_info(vbasoftware_database, auth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.get_vba_auth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.get_vba_auth"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthApi.get_vba_auth"
      end
      # resource path
      local_var_path = '/auths-vba/{authNumber}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      return_type = opts[:debug_return_type] || 'VBAAuthVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.get_vba_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#get_vba_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Auth
    # Updates a specific Auth and returns the updated Auth after changes have been applied.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param auth [Auth] 
    # @param [Hash] opts the optional parameters
    # @return [AuthVBAResponse]
    def update_auth(vbasoftware_database, auth_number, auth, opts = {})
      data, _status_code, _headers = update_auth_with_http_info(vbasoftware_database, auth_number, auth, opts)
      data
    end

    # Update Auth
    # Updates a specific Auth and returns the updated Auth after changes have been applied.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param auth [Auth] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthVBAResponse, Integer, Hash)>] AuthVBAResponse data, response status code and response headers
    def update_auth_with_http_info(vbasoftware_database, auth_number, auth, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.update_auth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthApi.update_auth"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthApi.update_auth"
      end
      # verify the required parameter 'auth' is set
      if @api_client.config.client_side_validation && auth.nil?
        fail ArgumentError, "Missing the required parameter 'auth' when calling AuthApi.update_auth"
      end
      # resource path
      local_var_path = '/auths/{authNumber}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthApi.update_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#update_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
