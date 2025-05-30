=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class VBAInterfaceStatusesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create VBAInterfaceStatus
    # Creates a new VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param vba_interface_status [VBAInterfaceStatus] 
    # @param [Hash] opts the optional parameters
    # @return [VBAInterfaceStatusVBAResponse]
    def create_vba_interface_status(vbasoftware_database, vba_interface_status, opts = {})
      data, _status_code, _headers = create_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status, opts)
      data
    end

    # Create VBAInterfaceStatus
    # Creates a new VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param vba_interface_status [VBAInterfaceStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAInterfaceStatusVBAResponse, Integer, Hash)>] VBAInterfaceStatusVBAResponse data, response status code and response headers
    def create_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceStatusesApi.create_vba_interface_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceStatusesApi.create_vba_interface_status"
      end
      # verify the required parameter 'vba_interface_status' is set
      if @api_client.config.client_side_validation && vba_interface_status.nil?
        fail ArgumentError, "Missing the required parameter 'vba_interface_status' when calling VBAInterfaceStatusesApi.create_vba_interface_status"
      end
      # resource path
      local_var_path = '/vba-interface-statuses'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_interface_status)

      # return_type
      return_type = opts[:debug_return_type] || 'VBAInterfaceStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceStatusesApi.create_vba_interface_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceStatusesApi#create_vba_interface_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete VBAInterfaceStatus
    # Deletes an VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_status [String] VBAInterface Status
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_vba_interface_status(vbasoftware_database, v_ba_interface_status, opts = {})
      delete_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, opts)
      nil
    end

    # Delete VBAInterfaceStatus
    # Deletes an VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_status [String] VBAInterface Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceStatusesApi.delete_vba_interface_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceStatusesApi.delete_vba_interface_status"
      end
      # verify the required parameter 'v_ba_interface_status' is set
      if @api_client.config.client_side_validation && v_ba_interface_status.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_status' when calling VBAInterfaceStatusesApi.delete_vba_interface_status"
      end
      # resource path
      local_var_path = '/vba-interface-statuses/{vBAInterfaceStatus}'.sub('{' + 'vBAInterfaceStatus' + '}', CGI.escape(v_ba_interface_status.to_s))

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
        :operation => :"VBAInterfaceStatusesApi.delete_vba_interface_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceStatusesApi#delete_vba_interface_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get VBAInterfaceStatus
    # Gets VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_status [String] VBAInterface Status
    # @param [Hash] opts the optional parameters
    # @return [VBAInterfaceStatusVBAResponse]
    def get_vba_interface_status(vbasoftware_database, v_ba_interface_status, opts = {})
      data, _status_code, _headers = get_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, opts)
      data
    end

    # Get VBAInterfaceStatus
    # Gets VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_status [String] VBAInterface Status
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAInterfaceStatusVBAResponse, Integer, Hash)>] VBAInterfaceStatusVBAResponse data, response status code and response headers
    def get_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceStatusesApi.get_vba_interface_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceStatusesApi.get_vba_interface_status"
      end
      # verify the required parameter 'v_ba_interface_status' is set
      if @api_client.config.client_side_validation && v_ba_interface_status.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_status' when calling VBAInterfaceStatusesApi.get_vba_interface_status"
      end
      # resource path
      local_var_path = '/vba-interface-statuses/{vBAInterfaceStatus}'.sub('{' + 'vBAInterfaceStatus' + '}', CGI.escape(v_ba_interface_status.to_s))

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
      return_type = opts[:debug_return_type] || 'VBAInterfaceStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceStatusesApi.get_vba_interface_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceStatusesApi#get_vba_interface_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List VBAInterfaceStatus
    # Lists all VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [VBAInterfaceStatusListVBAResponse]
    def list_vba_interface_status(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_vba_interface_status_with_http_info(vbasoftware_database, opts)
      data
    end

    # List VBAInterfaceStatus
    # Lists all VBAInterfaceStatus
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(VBAInterfaceStatusListVBAResponse, Integer, Hash)>] VBAInterfaceStatusListVBAResponse data, response status code and response headers
    def list_vba_interface_status_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceStatusesApi.list_vba_interface_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceStatusesApi.list_vba_interface_status"
      end
      # resource path
      local_var_path = '/vba-interface-statuses'

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
      return_type = opts[:debug_return_type] || 'VBAInterfaceStatusListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceStatusesApi.list_vba_interface_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceStatusesApi#list_vba_interface_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch VBAInterfaceStatus
    # Create or Update multiple VBAInterfaceStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param vba_interface_status [Array<VBAInterfaceStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_vba_interface_status(vbasoftware_database, vba_interface_status, opts = {})
      data, _status_code, _headers = update_batch_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status, opts)
      data
    end

    # Create or Update Batch VBAInterfaceStatus
    # Create or Update multiple VBAInterfaceStatus at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param vba_interface_status [Array<VBAInterfaceStatus>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_vba_interface_status_with_http_info(vbasoftware_database, vba_interface_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceStatusesApi.update_batch_vba_interface_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceStatusesApi.update_batch_vba_interface_status"
      end
      # verify the required parameter 'vba_interface_status' is set
      if @api_client.config.client_side_validation && vba_interface_status.nil?
        fail ArgumentError, "Missing the required parameter 'vba_interface_status' when calling VBAInterfaceStatusesApi.update_batch_vba_interface_status"
      end
      # resource path
      local_var_path = '/vba-interface-statuses-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_interface_status)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceStatusesApi.update_batch_vba_interface_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceStatusesApi#update_batch_vba_interface_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update VBAInterfaceStatus
    # Updates a specific VBAInterfaceStatus.
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_status [String] VBAInterface Status
    # @param vba_interface_status [VBAInterfaceStatus] 
    # @param [Hash] opts the optional parameters
    # @return [VBAInterfaceStatusVBAResponse]
    def update_vba_interface_status(vbasoftware_database, v_ba_interface_status, vba_interface_status, opts = {})
      data, _status_code, _headers = update_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, vba_interface_status, opts)
      data
    end

    # Update VBAInterfaceStatus
    # Updates a specific VBAInterfaceStatus.
    # @param vbasoftware_database [String] Target database
    # @param v_ba_interface_status [String] VBAInterface Status
    # @param vba_interface_status [VBAInterfaceStatus] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VBAInterfaceStatusVBAResponse, Integer, Hash)>] VBAInterfaceStatusVBAResponse data, response status code and response headers
    def update_vba_interface_status_with_http_info(vbasoftware_database, v_ba_interface_status, vba_interface_status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VBAInterfaceStatusesApi.update_vba_interface_status ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling VBAInterfaceStatusesApi.update_vba_interface_status"
      end
      # verify the required parameter 'v_ba_interface_status' is set
      if @api_client.config.client_side_validation && v_ba_interface_status.nil?
        fail ArgumentError, "Missing the required parameter 'v_ba_interface_status' when calling VBAInterfaceStatusesApi.update_vba_interface_status"
      end
      # verify the required parameter 'vba_interface_status' is set
      if @api_client.config.client_side_validation && vba_interface_status.nil?
        fail ArgumentError, "Missing the required parameter 'vba_interface_status' when calling VBAInterfaceStatusesApi.update_vba_interface_status"
      end
      # resource path
      local_var_path = '/vba-interface-statuses/{vBAInterfaceStatus}'.sub('{' + 'vBAInterfaceStatus' + '}', CGI.escape(v_ba_interface_status.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(vba_interface_status)

      # return_type
      return_type = opts[:debug_return_type] || 'VBAInterfaceStatusVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"VBAInterfaceStatusesApi.update_vba_interface_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VBAInterfaceStatusesApi#update_vba_interface_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
