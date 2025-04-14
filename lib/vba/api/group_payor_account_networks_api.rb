=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupPayorAccountNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create GroupPayorAccountNetwork
    # Creates a new GroupPayorAccountNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_network [GroupPayorAccountNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [GroupPayorAccountNetworkVBAResponse]
    def create_group_payor_account_network(vbasoftware_database, group_id, setting_id, group_payor_account_network, opts = {})
      data, _status_code, _headers = create_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network, opts)
      data
    end

    # Create GroupPayorAccountNetwork
    # Creates a new GroupPayorAccountNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_network [GroupPayorAccountNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupPayorAccountNetworkVBAResponse, Integer, Hash)>] GroupPayorAccountNetworkVBAResponse data, response status code and response headers
    def create_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountNetworksApi.create_group_payor_account_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountNetworksApi.create_group_payor_account_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountNetworksApi.create_group_payor_account_network"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountNetworksApi.create_group_payor_account_network"
      end
      # verify the required parameter 'group_payor_account_network' is set
      if @api_client.config.client_side_validation && group_payor_account_network.nil?
        fail ArgumentError, "Missing the required parameter 'group_payor_account_network' when calling GroupPayorAccountNetworksApi.create_group_payor_account_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/networks'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_payor_account_network)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupPayorAccountNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountNetworksApi.create_group_payor_account_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountNetworksApi#create_group_payor_account_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete GroupPayorAccountNetwork
    # Deletes an GroupPayorAccountNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_payor_account_network(vbasoftware_database, group_id, setting_id, network_id, opts = {})
      delete_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id, opts)
      nil
    end

    # Delete GroupPayorAccountNetwork
    # Deletes an GroupPayorAccountNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountNetworksApi.delete_group_payor_account_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountNetworksApi.delete_group_payor_account_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountNetworksApi.delete_group_payor_account_network"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountNetworksApi.delete_group_payor_account_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling GroupPayorAccountNetworksApi.delete_group_payor_account_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/networks/{networkID}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s))

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
        :operation => :"GroupPayorAccountNetworksApi.delete_group_payor_account_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountNetworksApi#delete_group_payor_account_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GroupPayorAccountNetwork
    # Gets GroupPayorAccountNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [GroupPayorAccountNetworkVBAResponse]
    def get_group_payor_account_network(vbasoftware_database, group_id, setting_id, network_id, opts = {})
      data, _status_code, _headers = get_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id, opts)
      data
    end

    # Get GroupPayorAccountNetwork
    # Gets GroupPayorAccountNetwork
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupPayorAccountNetworkVBAResponse, Integer, Hash)>] GroupPayorAccountNetworkVBAResponse data, response status code and response headers
    def get_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountNetworksApi.get_group_payor_account_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountNetworksApi.get_group_payor_account_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountNetworksApi.get_group_payor_account_network"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountNetworksApi.get_group_payor_account_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling GroupPayorAccountNetworksApi.get_group_payor_account_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/networks/{networkID}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupPayorAccountNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountNetworksApi.get_group_payor_account_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountNetworksApi#get_group_payor_account_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List GroupPayorAccountNetwork
    # Lists all GroupPayorAccountNetwork for the given groupID and settingID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [GroupPayorAccountNetworkListVBAResponse]
    def list_group_payor_account_network(vbasoftware_database, group_id, setting_id, opts = {})
      data, _status_code, _headers = list_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, opts)
      data
    end

    # List GroupPayorAccountNetwork
    # Lists all GroupPayorAccountNetwork for the given groupID and settingID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(GroupPayorAccountNetworkListVBAResponse, Integer, Hash)>] GroupPayorAccountNetworkListVBAResponse data, response status code and response headers
    def list_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountNetworksApi.list_group_payor_account_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountNetworksApi.list_group_payor_account_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountNetworksApi.list_group_payor_account_network"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountNetworksApi.list_group_payor_account_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/networks'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupPayorAccountNetworkListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountNetworksApi.list_group_payor_account_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountNetworksApi#list_group_payor_account_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch GroupPayorAccountNetwork
    # Create or Update multiple GroupPayorAccountNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_network [Array<GroupPayorAccountNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_group_payor_account_network(vbasoftware_database, group_id, setting_id, group_payor_account_network, opts = {})
      data, _status_code, _headers = update_batch_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network, opts)
      data
    end

    # Create or Update Batch GroupPayorAccountNetwork
    # Create or Update multiple GroupPayorAccountNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_network [Array<GroupPayorAccountNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_group_payor_account_network_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountNetworksApi.update_batch_group_payor_account_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountNetworksApi.update_batch_group_payor_account_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountNetworksApi.update_batch_group_payor_account_network"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountNetworksApi.update_batch_group_payor_account_network"
      end
      # verify the required parameter 'group_payor_account_network' is set
      if @api_client.config.client_side_validation && group_payor_account_network.nil?
        fail ArgumentError, "Missing the required parameter 'group_payor_account_network' when calling GroupPayorAccountNetworksApi.update_batch_group_payor_account_network"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/networks-batch'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_payor_account_network)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountNetworksApi.update_batch_group_payor_account_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountNetworksApi#update_batch_group_payor_account_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
