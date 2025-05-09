=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class NetworkProfileNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create NetworkProfileNetwork
    # Creates a new NetworkProfileNetwork
    # @param vbasoftware_database [String] Target database
    # @param network_profile_network [NetworkProfileNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [NetworkProfileNetworkVBAResponse]
    def create_network_profile_network(vbasoftware_database, network_profile_network, opts = {})
      data, _status_code, _headers = create_network_profile_network_with_http_info(vbasoftware_database, network_profile_network, opts)
      data
    end

    # Create NetworkProfileNetwork
    # Creates a new NetworkProfileNetwork
    # @param vbasoftware_database [String] Target database
    # @param network_profile_network [NetworkProfileNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkProfileNetworkVBAResponse, Integer, Hash)>] NetworkProfileNetworkVBAResponse data, response status code and response headers
    def create_network_profile_network_with_http_info(vbasoftware_database, network_profile_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProfileNetworksApi.create_network_profile_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkProfileNetworksApi.create_network_profile_network"
      end
      # verify the required parameter 'network_profile_network' is set
      if @api_client.config.client_side_validation && network_profile_network.nil?
        fail ArgumentError, "Missing the required parameter 'network_profile_network' when calling NetworkProfileNetworksApi.create_network_profile_network"
      end
      # resource path
      local_var_path = '/network-profile-networks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_profile_network)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProfileNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkProfileNetworksApi.create_network_profile_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProfileNetworksApi#create_network_profile_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete NetworkProfileNetwork
    # Deletes an NetworkProfileNetwork
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param network_id [String] Network ID
    # @param eff_date [Time] Eff Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date, opts = {})
      delete_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, opts)
      nil
    end

    # Delete NetworkProfileNetwork
    # Deletes an NetworkProfileNetwork
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param network_id [String] Network ID
    # @param eff_date [Time] Eff Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProfileNetworksApi.delete_network_profile_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkProfileNetworksApi.delete_network_profile_network"
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling NetworkProfileNetworksApi.delete_network_profile_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkProfileNetworksApi.delete_network_profile_network"
      end
      # verify the required parameter 'eff_date' is set
      if @api_client.config.client_side_validation && eff_date.nil?
        fail ArgumentError, "Missing the required parameter 'eff_date' when calling NetworkProfileNetworksApi.delete_network_profile_network"
      end
      # resource path
      local_var_path = '/network-profiles/{Profile_ID}/networks/{Network_ID}/effective/{Eff_Date}'.sub('{' + 'Profile_ID' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'Network_ID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'Eff_Date' + '}', CGI.escape(eff_date.to_s))

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
        :operation => :"NetworkProfileNetworksApi.delete_network_profile_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProfileNetworksApi#delete_network_profile_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get NetworkProfileNetwork
    # Gets NetworkProfileNetwork
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param network_id [String] Network ID
    # @param eff_date [Time] Eff Date
    # @param [Hash] opts the optional parameters
    # @return [NetworkProfileNetworkVBAResponse]
    def get_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date, opts = {})
      data, _status_code, _headers = get_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, opts)
      data
    end

    # Get NetworkProfileNetwork
    # Gets NetworkProfileNetwork
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param network_id [String] Network ID
    # @param eff_date [Time] Eff Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkProfileNetworkVBAResponse, Integer, Hash)>] NetworkProfileNetworkVBAResponse data, response status code and response headers
    def get_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProfileNetworksApi.get_network_profile_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkProfileNetworksApi.get_network_profile_network"
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling NetworkProfileNetworksApi.get_network_profile_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkProfileNetworksApi.get_network_profile_network"
      end
      # verify the required parameter 'eff_date' is set
      if @api_client.config.client_side_validation && eff_date.nil?
        fail ArgumentError, "Missing the required parameter 'eff_date' when calling NetworkProfileNetworksApi.get_network_profile_network"
      end
      # resource path
      local_var_path = '/network-profiles/{Profile_ID}/networks/{Network_ID}/effective/{Eff_Date}'.sub('{' + 'Profile_ID' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'Network_ID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'Eff_Date' + '}', CGI.escape(eff_date.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkProfileNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkProfileNetworksApi.get_network_profile_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProfileNetworksApi#get_network_profile_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List NetworkProfileNetwork
    # Lists all NetworkProfileNetwork for the given Profile_ID
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [NetworkProfileNetworkListVBAResponse]
    def list_network_profile_network(vbasoftware_database, profile_id, opts = {})
      data, _status_code, _headers = list_network_profile_network_with_http_info(vbasoftware_database, profile_id, opts)
      data
    end

    # List NetworkProfileNetwork
    # Lists all NetworkProfileNetwork for the given Profile_ID
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @return [Array<(NetworkProfileNetworkListVBAResponse, Integer, Hash)>] NetworkProfileNetworkListVBAResponse data, response status code and response headers
    def list_network_profile_network_with_http_info(vbasoftware_database, profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProfileNetworksApi.list_network_profile_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkProfileNetworksApi.list_network_profile_network"
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling NetworkProfileNetworksApi.list_network_profile_network"
      end
      # resource path
      local_var_path = '/network-profiles/{Profile_ID}/networks'.sub('{' + 'Profile_ID' + '}', CGI.escape(profile_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
      return_type = opts[:debug_return_type] || 'NetworkProfileNetworkListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkProfileNetworksApi.list_network_profile_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProfileNetworksApi#list_network_profile_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch NetworkProfileNetwork
    # Create or Update multiple NetworkProfileNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param network_profile_network [Array<NetworkProfileNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_network_profile_network(vbasoftware_database, network_profile_network, opts = {})
      data, _status_code, _headers = update_batch_network_profile_network_with_http_info(vbasoftware_database, network_profile_network, opts)
      data
    end

    # Create or Update Batch NetworkProfileNetwork
    # Create or Update multiple NetworkProfileNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param network_profile_network [Array<NetworkProfileNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_network_profile_network_with_http_info(vbasoftware_database, network_profile_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProfileNetworksApi.update_batch_network_profile_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkProfileNetworksApi.update_batch_network_profile_network"
      end
      # verify the required parameter 'network_profile_network' is set
      if @api_client.config.client_side_validation && network_profile_network.nil?
        fail ArgumentError, "Missing the required parameter 'network_profile_network' when calling NetworkProfileNetworksApi.update_batch_network_profile_network"
      end
      # resource path
      local_var_path = '/network-profile-networks-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_profile_network)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkProfileNetworksApi.update_batch_network_profile_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProfileNetworksApi#update_batch_network_profile_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update NetworkProfileNetwork
    # Updates a specific NetworkProfileNetwork.
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param network_id [String] Network ID
    # @param eff_date [Time] Eff Date
    # @param network_profile_network [NetworkProfileNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [NetworkProfileNetworkVBAResponse]
    def update_network_profile_network(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network, opts = {})
      data, _status_code, _headers = update_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network, opts)
      data
    end

    # Update NetworkProfileNetwork
    # Updates a specific NetworkProfileNetwork.
    # @param vbasoftware_database [String] Target database
    # @param profile_id [String] Profile ID
    # @param network_id [String] Network ID
    # @param eff_date [Time] Eff Date
    # @param network_profile_network [NetworkProfileNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkProfileNetworkVBAResponse, Integer, Hash)>] NetworkProfileNetworkVBAResponse data, response status code and response headers
    def update_network_profile_network_with_http_info(vbasoftware_database, profile_id, network_id, eff_date, network_profile_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkProfileNetworksApi.update_network_profile_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkProfileNetworksApi.update_network_profile_network"
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling NetworkProfileNetworksApi.update_network_profile_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkProfileNetworksApi.update_network_profile_network"
      end
      # verify the required parameter 'eff_date' is set
      if @api_client.config.client_side_validation && eff_date.nil?
        fail ArgumentError, "Missing the required parameter 'eff_date' when calling NetworkProfileNetworksApi.update_network_profile_network"
      end
      # verify the required parameter 'network_profile_network' is set
      if @api_client.config.client_side_validation && network_profile_network.nil?
        fail ArgumentError, "Missing the required parameter 'network_profile_network' when calling NetworkProfileNetworksApi.update_network_profile_network"
      end
      # resource path
      local_var_path = '/network-profiles/{Profile_ID}/networks/{Network_ID}/effective/{Eff_Date}'.sub('{' + 'Profile_ID' + '}', CGI.escape(profile_id.to_s)).sub('{' + 'Network_ID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'Eff_Date' + '}', CGI.escape(eff_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_profile_network)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkProfileNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkProfileNetworksApi.update_network_profile_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkProfileNetworksApi#update_network_profile_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
