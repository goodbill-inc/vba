=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupVBAPlanTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create GroupVBAPlanTypeSubscriberID
    # Creates a new GroupVBAPlanTypeSubscriberID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id [GroupVBAPlanTypeSubscriberID] 
    # @param [Hash] opts the optional parameters
    # @return [GroupVBAPlanTypeSubscriberIDVBAResponse]
    def create_group_vba_plan_type_subscriber_id(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id, opts = {})
      data, _status_code, _headers = create_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id, opts)
      data
    end

    # Create GroupVBAPlanTypeSubscriberID
    # Creates a new GroupVBAPlanTypeSubscriberID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id [GroupVBAPlanTypeSubscriberID] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupVBAPlanTypeSubscriberIDVBAResponse, Integer, Hash)>] GroupVBAPlanTypeSubscriberIDVBAResponse data, response status code and response headers
    def create_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupVBAPlanTypesApi.create_group_vba_plan_type_subscriber_id ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupVBAPlanTypesApi.create_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupVBAPlanTypesApi.create_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_vba_plan_type_subscriber_id' is set
      if @api_client.config.client_side_validation && group_vba_plan_type_subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_vba_plan_type_subscriber_id' when calling GroupVBAPlanTypesApi.create_group_vba_plan_type_subscriber_id"
      end
      # resource path
      local_var_path = '/groups/{groupID}/vba-plan-types'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_vba_plan_type_subscriber_id)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupVBAPlanTypeSubscriberIDVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupVBAPlanTypesApi.create_group_vba_plan_type_subscriber_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupVBAPlanTypesApi#create_group_vba_plan_type_subscriber_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete GroupVBAPlanTypeSubscriberID
    # Deletes an GroupVBAPlanTypeSubscriberID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id_key [Integer] GroupVBAPlanTypeSubscriberID Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_vba_plan_type_subscriber_id(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, opts = {})
      delete_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, opts)
      nil
    end

    # Delete GroupVBAPlanTypeSubscriberID
    # Deletes an GroupVBAPlanTypeSubscriberID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id_key [Integer] GroupVBAPlanTypeSubscriberID Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupVBAPlanTypesApi.delete_group_vba_plan_type_subscriber_id ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupVBAPlanTypesApi.delete_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupVBAPlanTypesApi.delete_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_vba_plan_type_subscriber_id_key' is set
      if @api_client.config.client_side_validation && group_vba_plan_type_subscriber_id_key.nil?
        fail ArgumentError, "Missing the required parameter 'group_vba_plan_type_subscriber_id_key' when calling GroupVBAPlanTypesApi.delete_group_vba_plan_type_subscriber_id"
      end
      # resource path
      local_var_path = '/groups/{groupID}/vba-plan-types/{groupVBAPlanTypeSubscriberIDKey}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'groupVBAPlanTypeSubscriberIDKey' + '}', CGI.escape(group_vba_plan_type_subscriber_id_key.to_s))

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
        :operation => :"GroupVBAPlanTypesApi.delete_group_vba_plan_type_subscriber_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupVBAPlanTypesApi#delete_group_vba_plan_type_subscriber_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GroupVBAPlanTypeSubscriberID
    # Gets GroupVBAPlanTypeSubscriberID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id_key [Integer] GroupVBAPlanTypeSubscriberID Key
    # @param [Hash] opts the optional parameters
    # @return [GroupVBAPlanTypeSubscriberIDVBAResponse]
    def get_group_vba_plan_type_subscriber_id(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, opts = {})
      data, _status_code, _headers = get_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, opts)
      data
    end

    # Get GroupVBAPlanTypeSubscriberID
    # Gets GroupVBAPlanTypeSubscriberID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id_key [Integer] GroupVBAPlanTypeSubscriberID Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupVBAPlanTypeSubscriberIDVBAResponse, Integer, Hash)>] GroupVBAPlanTypeSubscriberIDVBAResponse data, response status code and response headers
    def get_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupVBAPlanTypesApi.get_group_vba_plan_type_subscriber_id ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupVBAPlanTypesApi.get_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupVBAPlanTypesApi.get_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_vba_plan_type_subscriber_id_key' is set
      if @api_client.config.client_side_validation && group_vba_plan_type_subscriber_id_key.nil?
        fail ArgumentError, "Missing the required parameter 'group_vba_plan_type_subscriber_id_key' when calling GroupVBAPlanTypesApi.get_group_vba_plan_type_subscriber_id"
      end
      # resource path
      local_var_path = '/groups/{groupID}/vba-plan-types/{groupVBAPlanTypeSubscriberIDKey}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'groupVBAPlanTypeSubscriberIDKey' + '}', CGI.escape(group_vba_plan_type_subscriber_id_key.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupVBAPlanTypeSubscriberIDVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupVBAPlanTypesApi.get_group_vba_plan_type_subscriber_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupVBAPlanTypesApi#get_group_vba_plan_type_subscriber_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List GroupVBAPlanTypeSubscriberID
    # Lists all GroupVBAPlanTypeSubscriberID for the given groupID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [GroupVBAPlanTypeSubscriberIDListVBAResponse]
    def list_group_vba_plan_type_subscriber_id(vbasoftware_database, group_id, opts = {})
      data, _status_code, _headers = list_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, opts)
      data
    end

    # List GroupVBAPlanTypeSubscriberID
    # Lists all GroupVBAPlanTypeSubscriberID for the given groupID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(GroupVBAPlanTypeSubscriberIDListVBAResponse, Integer, Hash)>] GroupVBAPlanTypeSubscriberIDListVBAResponse data, response status code and response headers
    def list_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupVBAPlanTypesApi.list_group_vba_plan_type_subscriber_id ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupVBAPlanTypesApi.list_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupVBAPlanTypesApi.list_group_vba_plan_type_subscriber_id"
      end
      # resource path
      local_var_path = '/groups/{groupID}/vba-plan-types'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupVBAPlanTypeSubscriberIDListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupVBAPlanTypesApi.list_group_vba_plan_type_subscriber_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupVBAPlanTypesApi#list_group_vba_plan_type_subscriber_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch GroupVBAPlanTypeSubscriberID
    # Create or Update multiple GroupVBAPlanTypeSubscriberID at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id [Array<GroupVBAPlanTypeSubscriberID>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_group_vba_plan_type_subscriber_id(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id, opts = {})
      data, _status_code, _headers = update_batch_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id, opts)
      data
    end

    # Create or Update Batch GroupVBAPlanTypeSubscriberID
    # Create or Update multiple GroupVBAPlanTypeSubscriberID at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id [Array<GroupVBAPlanTypeSubscriberID>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupVBAPlanTypesApi.update_batch_group_vba_plan_type_subscriber_id ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupVBAPlanTypesApi.update_batch_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupVBAPlanTypesApi.update_batch_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_vba_plan_type_subscriber_id' is set
      if @api_client.config.client_side_validation && group_vba_plan_type_subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_vba_plan_type_subscriber_id' when calling GroupVBAPlanTypesApi.update_batch_group_vba_plan_type_subscriber_id"
      end
      # resource path
      local_var_path = '/groups/{groupID}/vba-plan-types-batch'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_vba_plan_type_subscriber_id)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupVBAPlanTypesApi.update_batch_group_vba_plan_type_subscriber_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupVBAPlanTypesApi#update_batch_group_vba_plan_type_subscriber_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update GroupVBAPlanTypeSubscriberID
    # Updates a specific GroupVBAPlanTypeSubscriberID.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id_key [Integer] GroupVBAPlanTypeSubscriberID Key
    # @param group_vba_plan_type_subscriber_id [GroupVBAPlanTypeSubscriberID] 
    # @param [Hash] opts the optional parameters
    # @return [GroupVBAPlanTypeSubscriberIDVBAResponse]
    def update_group_vba_plan_type_subscriber_id(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, group_vba_plan_type_subscriber_id, opts = {})
      data, _status_code, _headers = update_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, group_vba_plan_type_subscriber_id, opts)
      data
    end

    # Update GroupVBAPlanTypeSubscriberID
    # Updates a specific GroupVBAPlanTypeSubscriberID.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param group_vba_plan_type_subscriber_id_key [Integer] GroupVBAPlanTypeSubscriberID Key
    # @param group_vba_plan_type_subscriber_id [GroupVBAPlanTypeSubscriberID] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupVBAPlanTypeSubscriberIDVBAResponse, Integer, Hash)>] GroupVBAPlanTypeSubscriberIDVBAResponse data, response status code and response headers
    def update_group_vba_plan_type_subscriber_id_with_http_info(vbasoftware_database, group_id, group_vba_plan_type_subscriber_id_key, group_vba_plan_type_subscriber_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupVBAPlanTypesApi.update_group_vba_plan_type_subscriber_id ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupVBAPlanTypesApi.update_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupVBAPlanTypesApi.update_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_vba_plan_type_subscriber_id_key' is set
      if @api_client.config.client_side_validation && group_vba_plan_type_subscriber_id_key.nil?
        fail ArgumentError, "Missing the required parameter 'group_vba_plan_type_subscriber_id_key' when calling GroupVBAPlanTypesApi.update_group_vba_plan_type_subscriber_id"
      end
      # verify the required parameter 'group_vba_plan_type_subscriber_id' is set
      if @api_client.config.client_side_validation && group_vba_plan_type_subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_vba_plan_type_subscriber_id' when calling GroupVBAPlanTypesApi.update_group_vba_plan_type_subscriber_id"
      end
      # resource path
      local_var_path = '/groups/{groupID}/vba-plan-types/{groupVBAPlanTypeSubscriberIDKey}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'groupVBAPlanTypeSubscriberIDKey' + '}', CGI.escape(group_vba_plan_type_subscriber_id_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_vba_plan_type_subscriber_id)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupVBAPlanTypeSubscriberIDVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupVBAPlanTypesApi.update_group_vba_plan_type_subscriber_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupVBAPlanTypesApi#update_group_vba_plan_type_subscriber_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
