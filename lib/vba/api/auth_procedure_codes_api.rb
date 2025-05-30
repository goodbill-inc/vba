=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class AuthProcedureCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Procedure Code
    # Creates a new Procedure Code.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param auth_proc_codes [AuthProcCodes] 
    # @param [Hash] opts the optional parameters
    # @return [AuthProcCodesVBAResponse]
    def create_auth_proc_code(vbasoftware_database, auth_number, auth_proc_codes, opts = {})
      data, _status_code, _headers = create_auth_proc_code_with_http_info(vbasoftware_database, auth_number, auth_proc_codes, opts)
      data
    end

    # Create Procedure Code
    # Creates a new Procedure Code.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth Number
    # @param auth_proc_codes [AuthProcCodes] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthProcCodesVBAResponse, Integer, Hash)>] AuthProcCodesVBAResponse data, response status code and response headers
    def create_auth_proc_code_with_http_info(vbasoftware_database, auth_number, auth_proc_codes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.create_auth_proc_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.create_auth_proc_code"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.create_auth_proc_code"
      end
      # verify the required parameter 'auth_proc_codes' is set
      if @api_client.config.client_side_validation && auth_proc_codes.nil?
        fail ArgumentError, "Missing the required parameter 'auth_proc_codes' when calling AuthProcedureCodesApi.create_auth_proc_code"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_proc_codes)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthProcCodesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthProcedureCodesApi.create_auth_proc_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#create_auth_proc_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Procedure Code Batch
    # Creates multiple Procedure Codes
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param auth_proc_codes [Array<AuthProcCodes>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def create_auth_proc_code_batch(vbasoftware_database, auth_number, auth_proc_codes, opts = {})
      data, _status_code, _headers = create_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, auth_proc_codes, opts)
      data
    end

    # Create Procedure Code Batch
    # Creates multiple Procedure Codes
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param auth_proc_codes [Array<AuthProcCodes>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def create_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, auth_proc_codes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.create_auth_proc_code_batch ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.create_auth_proc_code_batch"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.create_auth_proc_code_batch"
      end
      # verify the required parameter 'auth_proc_codes' is set
      if @api_client.config.client_side_validation && auth_proc_codes.nil?
        fail ArgumentError, "Missing the required parameter 'auth_proc_codes' when calling AuthProcedureCodesApi.create_auth_proc_code_batch"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes-batch'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_proc_codes)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthProcedureCodesApi.create_auth_proc_code_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#create_auth_proc_code_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Procedure Code
    # Deletes a specific Procedure Code.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param procedure_code_key [Integer] Procedure Code Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key, opts = {})
      delete_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, opts)
      nil
    end

    # Delete Procedure Code
    # Deletes a specific Procedure Code.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param procedure_code_key [Integer] Procedure Code Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.delete_auth_proc_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.delete_auth_proc_code"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.delete_auth_proc_code"
      end
      # verify the required parameter 'procedure_code_key' is set
      if @api_client.config.client_side_validation && procedure_code_key.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_code_key' when calling AuthProcedureCodesApi.delete_auth_proc_code"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes/{procedureCodeKey}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s)).sub('{' + 'procedureCodeKey' + '}', CGI.escape(procedure_code_key.to_s))

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
        :operation => :"AuthProcedureCodesApi.delete_auth_proc_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#delete_auth_proc_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Procedure Code Batch
    # Deletes multiple Procedure Codes
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param request_body [Array<Integer>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def delete_auth_proc_code_batch(vbasoftware_database, auth_number, request_body, opts = {})
      data, _status_code, _headers = delete_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, request_body, opts)
      data
    end

    # Delete Procedure Code Batch
    # Deletes multiple Procedure Codes
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param request_body [Array<Integer>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def delete_auth_proc_code_batch_with_http_info(vbasoftware_database, auth_number, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.delete_auth_proc_code_batch ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.delete_auth_proc_code_batch"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.delete_auth_proc_code_batch"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling AuthProcedureCodesApi.delete_auth_proc_code_batch"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes-batch'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthProcedureCodesApi.delete_auth_proc_code_batch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#delete_auth_proc_code_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Procedure Code
    # Gets a specific Procedure Code
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param procedure_code_key [Integer] Procedure Code Key
    # @param [Hash] opts the optional parameters
    # @return [AuthProcCodesVBAResponse]
    def get_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key, opts = {})
      data, _status_code, _headers = get_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, opts)
      data
    end

    # Get Procedure Code
    # Gets a specific Procedure Code
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param procedure_code_key [Integer] Procedure Code Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthProcCodesVBAResponse, Integer, Hash)>] AuthProcCodesVBAResponse data, response status code and response headers
    def get_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.get_auth_proc_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.get_auth_proc_code"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.get_auth_proc_code"
      end
      # verify the required parameter 'procedure_code_key' is set
      if @api_client.config.client_side_validation && procedure_code_key.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_code_key' when calling AuthProcedureCodesApi.get_auth_proc_code"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes/{procedureCodeKey}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s)).sub('{' + 'procedureCodeKey' + '}', CGI.escape(procedure_code_key.to_s))

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
      return_type = opts[:debug_return_type] || 'AuthProcCodesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthProcedureCodesApi.get_auth_proc_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#get_auth_proc_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Procedure Codes for Auth
    # Gets all Procedure Codes for a specific Auth
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param [Hash] opts the optional parameters
    # @return [AuthProcCodesListVBAResponse]
    def list_auth_proc_code_by_auth(vbasoftware_database, auth_number, opts = {})
      data, _status_code, _headers = list_auth_proc_code_by_auth_with_http_info(vbasoftware_database, auth_number, opts)
      data
    end

    # List Procedure Codes for Auth
    # Gets all Procedure Codes for a specific Auth
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthProcCodesListVBAResponse, Integer, Hash)>] AuthProcCodesListVBAResponse data, response status code and response headers
    def list_auth_proc_code_by_auth_with_http_info(vbasoftware_database, auth_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.list_auth_proc_code_by_auth ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.list_auth_proc_code_by_auth"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.list_auth_proc_code_by_auth"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s))

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
      return_type = opts[:debug_return_type] || 'AuthProcCodesListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthProcedureCodesApi.list_auth_proc_code_by_auth",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#list_auth_proc_code_by_auth\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Procedure Code
    # Updates a specific Procedure Code.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param procedure_code_key [Integer] Procedure Code Key
    # @param auth_proc_codes [AuthProcCodes] 
    # @param [Hash] opts the optional parameters
    # @return [AuthProcCodesVBAResponse]
    def update_auth_proc_code(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes, opts = {})
      data, _status_code, _headers = update_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes, opts)
      data
    end

    # Update Procedure Code
    # Updates a specific Procedure Code.
    # @param vbasoftware_database [String] Target database
    # @param auth_number [String] Auth number
    # @param procedure_code_key [Integer] Procedure Code Key
    # @param auth_proc_codes [AuthProcCodes] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthProcCodesVBAResponse, Integer, Hash)>] AuthProcCodesVBAResponse data, response status code and response headers
    def update_auth_proc_code_with_http_info(vbasoftware_database, auth_number, procedure_code_key, auth_proc_codes, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthProcedureCodesApi.update_auth_proc_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AuthProcedureCodesApi.update_auth_proc_code"
      end
      # verify the required parameter 'auth_number' is set
      if @api_client.config.client_side_validation && auth_number.nil?
        fail ArgumentError, "Missing the required parameter 'auth_number' when calling AuthProcedureCodesApi.update_auth_proc_code"
      end
      # verify the required parameter 'procedure_code_key' is set
      if @api_client.config.client_side_validation && procedure_code_key.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_code_key' when calling AuthProcedureCodesApi.update_auth_proc_code"
      end
      # verify the required parameter 'auth_proc_codes' is set
      if @api_client.config.client_side_validation && auth_proc_codes.nil?
        fail ArgumentError, "Missing the required parameter 'auth_proc_codes' when calling AuthProcedureCodesApi.update_auth_proc_code"
      end
      # resource path
      local_var_path = '/auths/{authNumber}/procedure-codes/{procedureCodeKey}'.sub('{' + 'authNumber' + '}', CGI.escape(auth_number.to_s)).sub('{' + 'procedureCodeKey' + '}', CGI.escape(procedure_code_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(auth_proc_codes)

      # return_type
      return_type = opts[:debug_return_type] || 'AuthProcCodesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AuthProcedureCodesApi.update_auth_proc_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthProcedureCodesApi#update_auth_proc_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
