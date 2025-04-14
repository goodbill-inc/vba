=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class AuthCodeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create AuthCode
    # Creates a new AuthCode.
    # @param vbasoftware_database [String] Target database
    # @param auth_code [AuthCode] 
    # @param [Hash] opts the optional parameters
    # @return [AuthCodeVBAResponse]
    def create_auth_code(vbasoftware_database, auth_code, opts = {})
      data, _status_code, _headers = create_auth_code_with_http_info(vbasoftware_database, auth_code, opts)
      data
    end

    # Create AuthCode
    # Creates a new AuthCode.
    # @param vbasoftware_database [String] Target database
    # @param auth_code [AuthCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthCodeVBAResponse, Integer, Hash)>] AuthCodeVBAResponse data, response status code and response headers
    def create_auth_code_with_http_info(vbasoftware_database, auth_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthCodeApi.create_auth_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthCodeApi.create_auth_code"
      end
      # verify the required parameter 'auth_code' is set
      if @api_client.config.client_side_validation && auth_code.nil?
        fail ArgumentError, "Missing the required parameter 'auth_code' when calling AuthCodeApi.create_auth_code"
      end
      # resource path
      local_var_path = '/auth-codes'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_code)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthCodeApi.create_auth_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthCodeApi#create_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete AuthCode
    # Deletes an AuthCode
    # @param vbasoftware_database [String] Target database
    # @param auth_code [String] Auth Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_auth_code(vbasoftware_database, auth_code, opts = {})
      delete_auth_code_with_http_info(vbasoftware_database, auth_code, opts)
      nil
    end

    # Delete AuthCode
    # Deletes an AuthCode
    # @param vbasoftware_database [String] Target database
    # @param auth_code [String] Auth Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_auth_code_with_http_info(vbasoftware_database, auth_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthCodeApi.delete_auth_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthCodeApi.delete_auth_code"
      end
      # verify the required parameter 'auth_code' is set
      if @api_client.config.client_side_validation && auth_code.nil?
        fail ArgumentError, "Missing the required parameter 'auth_code' when calling AuthCodeApi.delete_auth_code"
      end
      # resource path
      local_var_path = '/auth-codes/{authCode}'.sub('{' + 'authCode' + '}', CGI.escape(auth_code.to_s))

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
        :operation => :"AuthCodeApi.delete_auth_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthCodeApi#delete_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get AuthCode
    # Gets AuthCode
    # @param vbasoftware_database [String] Target database
    # @param auth_code [String] Auth Code
    # @param [Hash] opts the optional parameters
    # @return [AuthCodeVBAResponse]
    def get_auth_code(vbasoftware_database, auth_code, opts = {})
      data, _status_code, _headers = get_auth_code_with_http_info(vbasoftware_database, auth_code, opts)
      data
    end

    # Get AuthCode
    # Gets AuthCode
    # @param vbasoftware_database [String] Target database
    # @param auth_code [String] Auth Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthCodeVBAResponse, Integer, Hash)>] AuthCodeVBAResponse data, response status code and response headers
    def get_auth_code_with_http_info(vbasoftware_database, auth_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthCodeApi.get_auth_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthCodeApi.get_auth_code"
      end
      # verify the required parameter 'auth_code' is set
      if @api_client.config.client_side_validation && auth_code.nil?
        fail ArgumentError, "Missing the required parameter 'auth_code' when calling AuthCodeApi.get_auth_code"
      end
      # resource path
      local_var_path = '/auth-codes/{authCode}'.sub('{' + 'authCode' + '}', CGI.escape(auth_code.to_s))

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
      return_type = opts[:debug_return_type] || 'AuthCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthCodeApi.get_auth_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthCodeApi#get_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update AuthCode
    # Updates a specific AuthCode.
    # @param vbasoftware_database [String] Target database
    # @param auth_code [String] Auth Code
    # @param auth_code2 [AuthCode] 
    # @param [Hash] opts the optional parameters
    # @return [AuthCodeVBAResponse]
    def update_auth_code(vbasoftware_database, auth_code, auth_code2, opts = {})
      data, _status_code, _headers = update_auth_code_with_http_info(vbasoftware_database, auth_code, auth_code2, opts)
      data
    end

    # Update AuthCode
    # Updates a specific AuthCode.
    # @param vbasoftware_database [String] Target database
    # @param auth_code [String] Auth Code
    # @param auth_code2 [AuthCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthCodeVBAResponse, Integer, Hash)>] AuthCodeVBAResponse data, response status code and response headers
    def update_auth_code_with_http_info(vbasoftware_database, auth_code, auth_code2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthCodeApi.update_auth_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthCodeApi.update_auth_code"
      end
      # verify the required parameter 'auth_code' is set
      if @api_client.config.client_side_validation && auth_code.nil?
        fail ArgumentError, "Missing the required parameter 'auth_code' when calling AuthCodeApi.update_auth_code"
      end
      # verify the required parameter 'auth_code2' is set
      if @api_client.config.client_side_validation && auth_code2.nil?
        fail ArgumentError, "Missing the required parameter 'auth_code2' when calling AuthCodeApi.update_auth_code"
      end
      # resource path
      local_var_path = '/auth-codes/{authCode}'.sub('{' + 'authCode' + '}', CGI.escape(auth_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_code2)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthCodeApi.update_auth_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthCodeApi#update_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Batch AuthCode
    # Updates a multiple AuthCode.
    # @param vbasoftware_database [String] Target database
    # @param auth_code [Array<AuthCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_auth_code(vbasoftware_database, auth_code, opts = {})
      data, _status_code, _headers = update_batch_auth_code_with_http_info(vbasoftware_database, auth_code, opts)
      data
    end

    # Update Batch AuthCode
    # Updates a multiple AuthCode.
    # @param vbasoftware_database [String] Target database
    # @param auth_code [Array<AuthCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_auth_code_with_http_info(vbasoftware_database, auth_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthCodeApi.update_batch_auth_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthCodeApi.update_batch_auth_code"
      end
      # verify the required parameter 'auth_code' is set
      if @api_client.config.client_side_validation && auth_code.nil?
        fail ArgumentError, "Missing the required parameter 'auth_code' when calling AuthCodeApi.update_batch_auth_code"
      end
      # resource path
      local_var_path = '/auth-codes-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthCodeApi.update_batch_auth_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthCodeApi#update_batch_auth_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
