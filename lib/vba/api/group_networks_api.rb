=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create GroupNetwork
    # Creates a new GroupNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param group_network [GroupNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [GroupNetworkVBAResponse]
    def create_group_network(vbasoftware_database, group_id, division_id, coverage_start, group_network, opts = {})
      data, _status_code, _headers = create_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network, opts)
      data
    end

    # Create GroupNetwork
    # Creates a new GroupNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param group_network [GroupNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupNetworkVBAResponse, Integer, Hash)>] GroupNetworkVBAResponse data, response status code and response headers
    def create_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupNetworksApi.create_group_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupNetworksApi.create_group_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupNetworksApi.create_group_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupNetworksApi.create_group_network"
      end
      # verify the required parameter 'coverage_start' is set
      if @api_client.config.client_side_validation && coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_start' when calling GroupNetworksApi.create_group_network"
      end
      # verify the required parameter 'group_network' is set
      if @api_client.config.client_side_validation && group_network.nil?
        fail ArgumentError, "Missing the required parameter 'group_network' when calling GroupNetworksApi.create_group_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'coverageStart' + '}', CGI.escape(coverage_start.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_network)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupNetworksApi.create_group_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupNetworksApi#create_group_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete GroupNetwork
    # Deletes an GroupNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param network_id [String] NetworkID
    # @param state [String] State
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts = {})
      delete_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts)
      nil
    end

    # Delete GroupNetwork
    # Deletes an GroupNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param network_id [String] NetworkID
    # @param state [String] State
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupNetworksApi.delete_group_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupNetworksApi.delete_group_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupNetworksApi.delete_group_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupNetworksApi.delete_group_network"
      end
      # verify the required parameter 'coverage_start' is set
      if @api_client.config.client_side_validation && coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_start' when calling GroupNetworksApi.delete_group_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling GroupNetworksApi.delete_group_network"
      end
      # verify the required parameter 'state' is set
      if @api_client.config.client_side_validation && state.nil?
        fail ArgumentError, "Missing the required parameter 'state' when calling GroupNetworksApi.delete_group_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'coverageStart' + '}', CGI.escape(coverage_start.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'state' + '}', CGI.escape(state.to_s))

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
        :operation => :"GroupNetworksApi.delete_group_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupNetworksApi#delete_group_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GroupNetwork
    # Gets GroupNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param network_id [String] NetworkID
    # @param state [String] State
    # @param [Hash] opts the optional parameters
    # @return [GroupNetworkVBAResponse]
    def get_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts = {})
      data, _status_code, _headers = get_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts)
      data
    end

    # Get GroupNetwork
    # Gets GroupNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param network_id [String] NetworkID
    # @param state [String] State
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupNetworkVBAResponse, Integer, Hash)>] GroupNetworkVBAResponse data, response status code and response headers
    def get_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupNetworksApi.get_group_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupNetworksApi.get_group_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupNetworksApi.get_group_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupNetworksApi.get_group_network"
      end
      # verify the required parameter 'coverage_start' is set
      if @api_client.config.client_side_validation && coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_start' when calling GroupNetworksApi.get_group_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling GroupNetworksApi.get_group_network"
      end
      # verify the required parameter 'state' is set
      if @api_client.config.client_side_validation && state.nil?
        fail ArgumentError, "Missing the required parameter 'state' when calling GroupNetworksApi.get_group_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'coverageStart' + '}', CGI.escape(coverage_start.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'state' + '}', CGI.escape(state.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupNetworksApi.get_group_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupNetworksApi#get_group_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List GroupNetwork
    # Lists all GroupNetwork for the given groupID and divisionID and coverageStart
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [GroupNetworkListVBAResponse]
    def list_group_network(vbasoftware_database, group_id, division_id, coverage_start, opts = {})
      data, _status_code, _headers = list_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts)
      data
    end

    # List GroupNetwork
    # Lists all GroupNetwork for the given groupID and divisionID and coverageStart
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(GroupNetworkListVBAResponse, Integer, Hash)>] GroupNetworkListVBAResponse data, response status code and response headers
    def list_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupNetworksApi.list_group_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupNetworksApi.list_group_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupNetworksApi.list_group_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupNetworksApi.list_group_network"
      end
      # verify the required parameter 'coverage_start' is set
      if @api_client.config.client_side_validation && coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_start' when calling GroupNetworksApi.list_group_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'coverageStart' + '}', CGI.escape(coverage_start.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupNetworkListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupNetworksApi.list_group_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupNetworksApi#list_group_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch GroupNetwork
    # Create or Update multiple GroupNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param group_network [Array<GroupNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_group_network(vbasoftware_database, group_id, division_id, coverage_start, group_network, opts = {})
      data, _status_code, _headers = update_batch_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network, opts)
      data
    end

    # Create or Update Batch GroupNetwork
    # Create or Update multiple GroupNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param group_network [Array<GroupNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, group_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupNetworksApi.update_batch_group_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupNetworksApi.update_batch_group_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupNetworksApi.update_batch_group_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupNetworksApi.update_batch_group_network"
      end
      # verify the required parameter 'coverage_start' is set
      if @api_client.config.client_side_validation && coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_start' when calling GroupNetworksApi.update_batch_group_network"
      end
      # verify the required parameter 'group_network' is set
      if @api_client.config.client_side_validation && group_network.nil?
        fail ArgumentError, "Missing the required parameter 'group_network' when calling GroupNetworksApi.update_batch_group_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks-batch'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'coverageStart' + '}', CGI.escape(coverage_start.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_network)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupNetworksApi.update_batch_group_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupNetworksApi#update_batch_group_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update GroupNetwork
    # Updates a specific GroupNetwork.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param network_id [String] NetworkID
    # @param state [String] State
    # @param group_network [GroupNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [GroupNetworkVBAResponse]
    def update_group_network(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network, opts = {})
      data, _status_code, _headers = update_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network, opts)
      data
    end

    # Update GroupNetwork
    # Updates a specific GroupNetwork.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param coverage_start [Time] Coverage Start
    # @param network_id [String] NetworkID
    # @param state [String] State
    # @param group_network [GroupNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupNetworkVBAResponse, Integer, Hash)>] GroupNetworkVBAResponse data, response status code and response headers
    def update_group_network_with_http_info(vbasoftware_database, group_id, division_id, coverage_start, network_id, state, group_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupNetworksApi.update_group_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupNetworksApi.update_group_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupNetworksApi.update_group_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling GroupNetworksApi.update_group_network"
      end
      # verify the required parameter 'coverage_start' is set
      if @api_client.config.client_side_validation && coverage_start.nil?
        fail ArgumentError, "Missing the required parameter 'coverage_start' when calling GroupNetworksApi.update_group_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling GroupNetworksApi.update_group_network"
      end
      # verify the required parameter 'state' is set
      if @api_client.config.client_side_validation && state.nil?
        fail ArgumentError, "Missing the required parameter 'state' when calling GroupNetworksApi.update_group_network"
      end
      # verify the required parameter 'group_network' is set
      if @api_client.config.client_side_validation && group_network.nil?
        fail ArgumentError, "Missing the required parameter 'group_network' when calling GroupNetworksApi.update_group_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/divisions/{divisionID}/contracts/{coverageStart}/networks/{networkID}/{state}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'coverageStart' + '}', CGI.escape(coverage_start.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'state' + '}', CGI.escape(state.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_network)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupNetworksApi.update_group_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupNetworksApi#update_group_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
