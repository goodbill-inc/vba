=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class VBAInterfaceIDCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create VBAInterfaceIDCode
    # Creates a new VBAInterfaceIDCode
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param vba_interface_id_code [VBAInterfaceIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [VBAInterfaceIDCodeVBAResponse]
    def create_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, vba_interface_id_code, opts = {})
      data, _status_code, _headers = create_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code, opts)
      data
    end

    # Create VBAInterfaceIDCode
    # Creates a new VBAInterfaceIDCode
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param vba_interface_id_code [VBAInterfaceIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAInterfaceIDCodeVBAResponse, Integer, Hash)>] VBAInterfaceIDCodeVBAResponse data, response status code and response headers
    def create_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceIDCodesApi.create_vba_interface_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceIDCodesApi.create_vba_interface_id_code"
      end
      # verify the required parameter 'v_ba_interface_key' is set
      if @api_client.config.client_side_validation && v_ba_interface_key.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_key' when calling VBAInterfaceIDCodesApi.create_vba_interface_id_code"
      end
      # verify the required parameter 'vba_interface_id_code' is set
      if @api_client.config.client_side_validation && vba_interface_id_code.nil?
        fail ArgumentError, "Missing the required parameter 'vba_interface_id_code' when calling VBAInterfaceIDCodesApi.create_vba_interface_id_code"
      end
      # resource path
      local_var_path = '/vba-interfaces/{vBAInterfaceKey}/id-codes'.sub('{' + 'vBAInterfaceKey' + '}', CGI.escape(v_ba_interface_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_interface_id_code)

      # return_type
      return_type = opts[:debug_return_type] || 'VBAInterfaceIDCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceIDCodesApi.create_vba_interface_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceIDCodesApi#create_vba_interface_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete VBAInterfaceIDCode
    # Deletes an VBAInterfaceIDCode
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param type [String] Type
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code, opts = {})
      delete_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, opts)
      nil
    end

    # Delete VBAInterfaceIDCode
    # Deletes an VBAInterfaceIDCode
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param type [String] Type
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceIDCodesApi.delete_vba_interface_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceIDCodesApi.delete_vba_interface_id_code"
      end
      # verify the required parameter 'v_ba_interface_key' is set
      if @api_client.config.client_side_validation && v_ba_interface_key.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_key' when calling VBAInterfaceIDCodesApi.delete_vba_interface_id_code"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VBAInterfaceIDCodesApi.delete_vba_interface_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling VBAInterfaceIDCodesApi.delete_vba_interface_id_code"
      end
      # resource path
      local_var_path = '/vba-interfaces/{vBAInterfaceKey}/id-codes/{type}/{iDCode}'.sub('{' + 'vBAInterfaceKey' + '}', CGI.escape(v_ba_interface_key.to_s)).sub('{' + 'type' + '}', CGI.escape(type.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
        :operation => :"VBAInterfaceIDCodesApi.delete_vba_interface_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceIDCodesApi#delete_vba_interface_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get VBAInterfaceIDCode
    # Gets VBAInterfaceIDCode
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param type [String] Type
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [VBAInterfaceIDCodeVBAResponse]
    def get_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code, opts = {})
      data, _status_code, _headers = get_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, opts)
      data
    end

    # Get VBAInterfaceIDCode
    # Gets VBAInterfaceIDCode
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param type [String] Type
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAInterfaceIDCodeVBAResponse, Integer, Hash)>] VBAInterfaceIDCodeVBAResponse data, response status code and response headers
    def get_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceIDCodesApi.get_vba_interface_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceIDCodesApi.get_vba_interface_id_code"
      end
      # verify the required parameter 'v_ba_interface_key' is set
      if @api_client.config.client_side_validation && v_ba_interface_key.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_key' when calling VBAInterfaceIDCodesApi.get_vba_interface_id_code"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VBAInterfaceIDCodesApi.get_vba_interface_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling VBAInterfaceIDCodesApi.get_vba_interface_id_code"
      end
      # resource path
      local_var_path = '/vba-interfaces/{vBAInterfaceKey}/id-codes/{type}/{iDCode}'.sub('{' + 'vBAInterfaceKey' + '}', CGI.escape(v_ba_interface_key.to_s)).sub('{' + 'type' + '}', CGI.escape(type.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
      return_type = opts[:debug_return_type] || 'VBAInterfaceIDCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceIDCodesApi.get_vba_interface_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceIDCodesApi#get_vba_interface_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List VBAInterfaceIDCode
    # Lists all VBAInterfaceIDCode for the given vBAInterfaceKey
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [VBAInterfaceIDCodeListVBAResponse]
    def list_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, opts = {})
      data, _status_code, _headers = list_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, opts)
      data
    end

    # List VBAInterfaceIDCode
    # Lists all VBAInterfaceIDCode for the given vBAInterfaceKey
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(VBAInterfaceIDCodeListVBAResponse, Integer, Hash)>] VBAInterfaceIDCodeListVBAResponse data, response status code and response headers
    def list_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceIDCodesApi.list_vba_interface_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceIDCodesApi.list_vba_interface_id_code"
      end
      # verify the required parameter 'v_ba_interface_key' is set
      if @api_client.config.client_side_validation && v_ba_interface_key.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_key' when calling VBAInterfaceIDCodesApi.list_vba_interface_id_code"
      end
      # resource path
      local_var_path = '/vba-interfaces/{vBAInterfaceKey}/id-codes'.sub('{' + 'vBAInterfaceKey' + '}', CGI.escape(v_ba_interface_key.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
      return_type = opts[:debug_return_type] || 'VBAInterfaceIDCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceIDCodesApi.list_vba_interface_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceIDCodesApi#list_vba_interface_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch VBAInterfaceIDCode
    # Create or Update multiple VBAInterfaceIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param vba_interface_id_code [Array<VBAInterfaceIDCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, vba_interface_id_code, opts = {})
      data, _status_code, _headers = update_batch_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code, opts)
      data
    end

    # Create or Update Batch VBAInterfaceIDCode
    # Create or Update multiple VBAInterfaceIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param vba_interface_id_code [Array<VBAInterfaceIDCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, vba_interface_id_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceIDCodesApi.update_batch_vba_interface_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceIDCodesApi.update_batch_vba_interface_id_code"
      end
      # verify the required parameter 'v_ba_interface_key' is set
      if @api_client.config.client_side_validation && v_ba_interface_key.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_key' when calling VBAInterfaceIDCodesApi.update_batch_vba_interface_id_code"
      end
      # verify the required parameter 'vba_interface_id_code' is set
      if @api_client.config.client_side_validation && vba_interface_id_code.nil?
        fail ArgumentError, "Missing the required parameter 'vba_interface_id_code' when calling VBAInterfaceIDCodesApi.update_batch_vba_interface_id_code"
      end
      # resource path
      local_var_path = '/vba-interfaces/{vBAInterfaceKey}/id-codes-batch'.sub('{' + 'vBAInterfaceKey' + '}', CGI.escape(v_ba_interface_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_interface_id_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceIDCodesApi.update_batch_vba_interface_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceIDCodesApi#update_batch_vba_interface_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update VBAInterfaceIDCode
    # Updates a specific VBAInterfaceIDCode.
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param type [String] Type
    # @param i_d_code [String] ID Code
    # @param vba_interface_id_code [VBAInterfaceIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [VBAInterfaceIDCodeVBAResponse]
    def update_vba_interface_id_code(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code, opts = {})
      data, _status_code, _headers = update_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code, opts)
      data
    end

    # Update VBAInterfaceIDCode
    # Updates a specific VBAInterfaceIDCode.
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_key [Integer] VBAInterface Key
    # @param type [String] Type
    # @param i_d_code [String] ID Code
    # @param vba_interface_id_code [VBAInterfaceIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAInterfaceIDCodeVBAResponse, Integer, Hash)>] VBAInterfaceIDCodeVBAResponse data, response status code and response headers
    def update_vba_interface_id_code_with_http_info(vbasoftware_database, v_ba_interface_key, type, i_d_code, vba_interface_id_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceIDCodesApi.update_vba_interface_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceIDCodesApi.update_vba_interface_id_code"
      end
      # verify the required parameter 'v_ba_interface_key' is set
      if @api_client.config.client_side_validation && v_ba_interface_key.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_key' when calling VBAInterfaceIDCodesApi.update_vba_interface_id_code"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling VBAInterfaceIDCodesApi.update_vba_interface_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling VBAInterfaceIDCodesApi.update_vba_interface_id_code"
      end
      # verify the required parameter 'vba_interface_id_code' is set
      if @api_client.config.client_side_validation && vba_interface_id_code.nil?
        fail ArgumentError, "Missing the required parameter 'vba_interface_id_code' when calling VBAInterfaceIDCodesApi.update_vba_interface_id_code"
      end
      # resource path
      local_var_path = '/vba-interfaces/{vBAInterfaceKey}/id-codes/{type}/{iDCode}'.sub('{' + 'vBAInterfaceKey' + '}', CGI.escape(v_ba_interface_key.to_s)).sub('{' + 'type' + '}', CGI.escape(type.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_interface_id_code)

      # return_type
      return_type = opts[:debug_return_type] || 'VBAInterfaceIDCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceIDCodesApi.update_vba_interface_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceIDCodesApi#update_vba_interface_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
