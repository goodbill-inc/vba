=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupExCodeCriteriasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create GroupExCodeCriteria
    # Creates a new GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria [GroupExCodeCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [GroupExCodeCriteriaVBAResponse]
    def create_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria, opts = {})
      data, _status_code, _headers = create_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria, opts)
      data
    end

    # Create GroupExCodeCriteria
    # Creates a new GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria [GroupExCodeCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupExCodeCriteriaVBAResponse, Integer, Hash)>] GroupExCodeCriteriaVBAResponse data, response status code and response headers
    def create_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupExCodeCriteriasApi.create_group_ex_code_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupExCodeCriteriasApi.create_group_ex_code_criteria"
      end
      # verify the required parameter 'group_ex_code_criteria' is set
      if @api_client.config.client_side_validation && group_ex_code_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'group_ex_code_criteria' when calling GroupExCodeCriteriasApi.create_group_ex_code_criteria"
      end
      # resource path
      local_var_path = '/group-ex-code-criterias'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_ex_code_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupExCodeCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupExCodeCriteriasApi.create_group_ex_code_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupExCodeCriteriasApi#create_group_ex_code_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete GroupExCodeCriteria
    # Deletes an GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria_key [Integer] GroupExCodeCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key, opts = {})
      delete_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, opts)
      nil
    end

    # Delete GroupExCodeCriteria
    # Deletes an GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria_key [Integer] GroupExCodeCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupExCodeCriteriasApi.delete_group_ex_code_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupExCodeCriteriasApi.delete_group_ex_code_criteria"
      end
      # verify the required parameter 'group_ex_code_criteria_key' is set
      if @api_client.config.client_side_validation && group_ex_code_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'group_ex_code_criteria_key' when calling GroupExCodeCriteriasApi.delete_group_ex_code_criteria"
      end
      # resource path
      local_var_path = '/group-ex-code-criterias/{groupExCodeCriteriaKey}'.sub('{' + 'groupExCodeCriteriaKey' + '}', CGI.escape(group_ex_code_criteria_key.to_s))

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
        :operation => :"GroupExCodeCriteriasApi.delete_group_ex_code_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupExCodeCriteriasApi#delete_group_ex_code_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GroupExCodeCriteria
    # Gets GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria_key [Integer] GroupExCodeCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [GroupExCodeCriteriaVBAResponse]
    def get_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key, opts = {})
      data, _status_code, _headers = get_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, opts)
      data
    end

    # Get GroupExCodeCriteria
    # Gets GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria_key [Integer] GroupExCodeCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupExCodeCriteriaVBAResponse, Integer, Hash)>] GroupExCodeCriteriaVBAResponse data, response status code and response headers
    def get_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupExCodeCriteriasApi.get_group_ex_code_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupExCodeCriteriasApi.get_group_ex_code_criteria"
      end
      # verify the required parameter 'group_ex_code_criteria_key' is set
      if @api_client.config.client_side_validation && group_ex_code_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'group_ex_code_criteria_key' when calling GroupExCodeCriteriasApi.get_group_ex_code_criteria"
      end
      # resource path
      local_var_path = '/group-ex-code-criterias/{groupExCodeCriteriaKey}'.sub('{' + 'groupExCodeCriteriaKey' + '}', CGI.escape(group_ex_code_criteria_key.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupExCodeCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupExCodeCriteriasApi.get_group_ex_code_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupExCodeCriteriasApi#get_group_ex_code_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List GroupExCodeCriteria
    # Lists all GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [GroupExCodeCriteriaListVBAResponse]
    def list_group_ex_code_criteria(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_group_ex_code_criteria_with_http_info(vbasoftware_database, opts)
      data
    end

    # List GroupExCodeCriteria
    # Lists all GroupExCodeCriteria
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(GroupExCodeCriteriaListVBAResponse, Integer, Hash)>] GroupExCodeCriteriaListVBAResponse data, response status code and response headers
    def list_group_ex_code_criteria_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupExCodeCriteriasApi.list_group_ex_code_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupExCodeCriteriasApi.list_group_ex_code_criteria"
      end
      # resource path
      local_var_path = '/group-ex-code-criterias'

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
      return_type = opts[:debug_return_type] || 'GroupExCodeCriteriaListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupExCodeCriteriasApi.list_group_ex_code_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupExCodeCriteriasApi#list_group_ex_code_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch GroupExCodeCriteria
    # Create or Update multiple GroupExCodeCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria [Array<GroupExCodeCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria, opts = {})
      data, _status_code, _headers = update_batch_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria, opts)
      data
    end

    # Create or Update Batch GroupExCodeCriteria
    # Create or Update multiple GroupExCodeCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria [Array<GroupExCodeCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupExCodeCriteriasApi.update_batch_group_ex_code_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupExCodeCriteriasApi.update_batch_group_ex_code_criteria"
      end
      # verify the required parameter 'group_ex_code_criteria' is set
      if @api_client.config.client_side_validation && group_ex_code_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'group_ex_code_criteria' when calling GroupExCodeCriteriasApi.update_batch_group_ex_code_criteria"
      end
      # resource path
      local_var_path = '/group-ex-code-criterias-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_ex_code_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupExCodeCriteriasApi.update_batch_group_ex_code_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupExCodeCriteriasApi#update_batch_group_ex_code_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update GroupExCodeCriteria
    # Updates a specific GroupExCodeCriteria.
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria_key [Integer] GroupExCodeCriteria Key
    # @param group_ex_code_criteria [GroupExCodeCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [GroupExCodeCriteriaVBAResponse]
    def update_group_ex_code_criteria(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria, opts = {})
      data, _status_code, _headers = update_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria, opts)
      data
    end

    # Update GroupExCodeCriteria
    # Updates a specific GroupExCodeCriteria.
    # @param vbasoftware_database [String] Target database
    # @param group_ex_code_criteria_key [Integer] GroupExCodeCriteria Key
    # @param group_ex_code_criteria [GroupExCodeCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupExCodeCriteriaVBAResponse, Integer, Hash)>] GroupExCodeCriteriaVBAResponse data, response status code and response headers
    def update_group_ex_code_criteria_with_http_info(vbasoftware_database, group_ex_code_criteria_key, group_ex_code_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupExCodeCriteriasApi.update_group_ex_code_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupExCodeCriteriasApi.update_group_ex_code_criteria"
      end
      # verify the required parameter 'group_ex_code_criteria_key' is set
      if @api_client.config.client_side_validation && group_ex_code_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'group_ex_code_criteria_key' when calling GroupExCodeCriteriasApi.update_group_ex_code_criteria"
      end
      # verify the required parameter 'group_ex_code_criteria' is set
      if @api_client.config.client_side_validation && group_ex_code_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'group_ex_code_criteria' when calling GroupExCodeCriteriasApi.update_group_ex_code_criteria"
      end
      # resource path
      local_var_path = '/group-ex-code-criterias/{groupExCodeCriteriaKey}'.sub('{' + 'groupExCodeCriteriaKey' + '}', CGI.escape(group_ex_code_criteria_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_ex_code_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupExCodeCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupExCodeCriteriasApi.update_group_ex_code_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupExCodeCriteriasApi#update_group_ex_code_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
