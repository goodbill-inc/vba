=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupDivisionIDCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create GroupDivisionIDCode
    # Creates a new GroupDivisionIDCode
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param group_division_id_code [GroupDivisionIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [GroupDivisionIDCodeVBAResponse]
    def create_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code, opts = {})
      data, _status_code, _headers = create_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code, opts)
      data
    end

    # Create GroupDivisionIDCode
    # Creates a new GroupDivisionIDCode
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param group_division_id_code [GroupDivisionIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupDivisionIDCodeVBAResponse, Integer, Hash)>] GroupDivisionIDCodeVBAResponse data, response status code and response headers
    def create_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDivisionIDCodesApi.create_group_division_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDivisionIDCodesApi.create_group_division_id_code"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDivisionIDCodesApi.create_group_division_id_code"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupDivisionIDCodesApi.create_group_division_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling GroupDivisionIDCodesApi.create_group_division_id_code"
      end
      # verify the required parameter 'group_division_id_code' is set
      if @api_client.config.client_side_validation && group_division_id_code.nil?
        fail ArgumentError, "Missing the required parameter 'group_division_id_code' when calling GroupDivisionIDCodesApi.create_group_division_id_code"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_division_id_code)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupDivisionIDCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupDivisionIDCodesApi.create_group_division_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDivisionIDCodesApi#create_group_division_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete GroupDivisionIDCode
    # Deletes an GroupDivisionIDCode
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, opts = {})
      delete_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, opts)
      nil
    end

    # Delete GroupDivisionIDCode
    # Deletes an GroupDivisionIDCode
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDivisionIDCodesApi.delete_group_division_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDivisionIDCodesApi.delete_group_division_id_code"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDivisionIDCodesApi.delete_group_division_id_code"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupDivisionIDCodesApi.delete_group_division_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling GroupDivisionIDCodesApi.delete_group_division_id_code"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
        :operation => :"GroupDivisionIDCodesApi.delete_group_division_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDivisionIDCodesApi#delete_group_division_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GroupDivisionIDCode
    # Gets GroupDivisionIDCode
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [GroupDivisionIDCodeVBAResponse]
    def get_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, opts = {})
      data, _status_code, _headers = get_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, opts)
      data
    end

    # Get GroupDivisionIDCode
    # Gets GroupDivisionIDCode
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupDivisionIDCodeVBAResponse, Integer, Hash)>] GroupDivisionIDCodeVBAResponse data, response status code and response headers
    def get_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDivisionIDCodesApi.get_group_division_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDivisionIDCodesApi.get_group_division_id_code"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDivisionIDCodesApi.get_group_division_id_code"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupDivisionIDCodesApi.get_group_division_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling GroupDivisionIDCodesApi.get_group_division_id_code"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupDivisionIDCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupDivisionIDCodesApi.get_group_division_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDivisionIDCodesApi#get_group_division_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List GroupDivisionIDCode
    # Lists all GroupDivisionIDCode for the given groupID and divisionID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [GroupDivisionIDCodeListVBAResponse]
    def list_group_division_id_code(vbasoftware_database, group_id, division_id, opts = {})
      data, _status_code, _headers = list_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, opts)
      data
    end

    # List GroupDivisionIDCode
    # Lists all GroupDivisionIDCode for the given groupID and divisionID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(GroupDivisionIDCodeListVBAResponse, Integer, Hash)>] GroupDivisionIDCodeListVBAResponse data, response status code and response headers
    def list_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDivisionIDCodesApi.list_group_division_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDivisionIDCodesApi.list_group_division_id_code"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDivisionIDCodesApi.list_group_division_id_code"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupDivisionIDCodesApi.list_group_division_id_code"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/id-codes'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupDivisionIDCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupDivisionIDCodesApi.list_group_division_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDivisionIDCodesApi#list_group_division_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch GroupDivisionIDCode
    # Create or Update multiple GroupDivisionIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param group_division_id_code [Array<GroupDivisionIDCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_group_division_id_code(vbasoftware_database, group_id, division_id, group_division_id_code, opts = {})
      data, _status_code, _headers = update_batch_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, group_division_id_code, opts)
      data
    end

    # Create or Update Batch GroupDivisionIDCode
    # Create or Update multiple GroupDivisionIDCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param group_division_id_code [Array<GroupDivisionIDCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, group_division_id_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDivisionIDCodesApi.update_batch_group_division_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDivisionIDCodesApi.update_batch_group_division_id_code"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDivisionIDCodesApi.update_batch_group_division_id_code"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupDivisionIDCodesApi.update_batch_group_division_id_code"
      end
      # verify the required parameter 'group_division_id_code' is set
      if @api_client.config.client_side_validation && group_division_id_code.nil?
        fail ArgumentError, "Missing the required parameter 'group_division_id_code' when calling GroupDivisionIDCodesApi.update_batch_group_division_id_code"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/id-codes-batch'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_division_id_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupDivisionIDCodesApi.update_batch_group_division_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDivisionIDCodesApi#update_batch_group_division_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update GroupDivisionIDCode
    # Updates a specific GroupDivisionIDCode.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param group_division_id_code [GroupDivisionIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [GroupDivisionIDCodeVBAResponse]
    def update_group_division_id_code(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code, opts = {})
      data, _status_code, _headers = update_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code, opts)
      data
    end

    # Update GroupDivisionIDCode
    # Updates a specific GroupDivisionIDCode.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param i_d_code [String] ID Code
    # @param group_division_id_code [GroupDivisionIDCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupDivisionIDCodeVBAResponse, Integer, Hash)>] GroupDivisionIDCodeVBAResponse data, response status code and response headers
    def update_group_division_id_code_with_http_info(vbasoftware_database, group_id, division_id, i_d_code, group_division_id_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupDivisionIDCodesApi.update_group_division_id_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupDivisionIDCodesApi.update_group_division_id_code"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupDivisionIDCodesApi.update_group_division_id_code"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupDivisionIDCodesApi.update_group_division_id_code"
      end
      # verify the required parameter 'i_d_code' is set
      if @api_client.config.client_side_validation && i_d_code.nil?
        fail ArgumentError, "Missing the required parameter 'i_d_code' when calling GroupDivisionIDCodesApi.update_group_division_id_code"
      end
      # verify the required parameter 'group_division_id_code' is set
      if @api_client.config.client_side_validation && group_division_id_code.nil?
        fail ArgumentError, "Missing the required parameter 'group_division_id_code' when calling GroupDivisionIDCodesApi.update_group_division_id_code"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/id-codes/{iDCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'iDCode' + '}', CGI.escape(i_d_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_division_id_code)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupDivisionIDCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupDivisionIDCodesApi.update_group_division_id_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupDivisionIDCodesApi#update_group_division_id_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
