=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberNetworksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberNetwork
    # Creates a new MemberNetwork
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_network [MemberNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [MemberNetworkVBAResponse]
    def create_member_network(vbasoftware_database, subscriber_id, member_seq, member_network, opts = {})
      data, _status_code, _headers = create_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network, opts)
      data
    end

    # Create MemberNetwork
    # Creates a new MemberNetwork
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_network [MemberNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberNetworkVBAResponse, Integer, Hash)>] MemberNetworkVBAResponse data, response status code and response headers
    def create_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberNetworksApi.create_member_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberNetworksApi.create_member_network"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberNetworksApi.create_member_network"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberNetworksApi.create_member_network"
      end
      # verify the required parameter 'member_network' is set
      if @api_client.config.client_side_validation && member_network.nil?
        fail ArgumentError, "Missing the required parameter 'member_network' when calling MemberNetworksApi.create_member_network"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/networks'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_network)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberNetworksApi.create_member_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberNetworksApi#create_member_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberNetwork
    # Deletes an MemberNetwork
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param network_id [String] Network ID
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, opts = {})
      delete_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, opts)
      nil
    end

    # Delete MemberNetwork
    # Deletes an MemberNetwork
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param network_id [String] Network ID
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberNetworksApi.delete_member_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberNetworksApi.delete_member_network"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberNetworksApi.delete_member_network"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberNetworksApi.delete_member_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling MemberNetworksApi.delete_member_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling MemberNetworksApi.delete_member_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling MemberNetworksApi.delete_member_network"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling MemberNetworksApi.delete_member_network"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/networks/{networkID}/{groupID}/{divisionID}/{effectiveDate}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
        :operation => :"MemberNetworksApi.delete_member_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberNetworksApi#delete_member_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberNetwork
    # Gets MemberNetwork
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param network_id [String] Network ID
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [MemberNetworkVBAResponse]
    def get_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, opts = {})
      data, _status_code, _headers = get_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, opts)
      data
    end

    # Get MemberNetwork
    # Gets MemberNetwork
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param network_id [String] Network ID
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberNetworkVBAResponse, Integer, Hash)>] MemberNetworkVBAResponse data, response status code and response headers
    def get_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberNetworksApi.get_member_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberNetworksApi.get_member_network"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberNetworksApi.get_member_network"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberNetworksApi.get_member_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling MemberNetworksApi.get_member_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling MemberNetworksApi.get_member_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling MemberNetworksApi.get_member_network"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling MemberNetworksApi.get_member_network"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/networks/{networkID}/{groupID}/{divisionID}/{effectiveDate}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberNetworksApi.get_member_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberNetworksApi#get_member_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List MemberNetwork
    # Lists all MemberNetwork for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [MemberNetworkListVBAResponse]
    def list_member_network(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = list_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # List MemberNetwork
    # Lists all MemberNetwork for the given subscriberID and memberSeq
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(MemberNetworkListVBAResponse, Integer, Hash)>] MemberNetworkListVBAResponse data, response status code and response headers
    def list_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberNetworksApi.list_member_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberNetworksApi.list_member_network"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberNetworksApi.list_member_network"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberNetworksApi.list_member_network"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/networks'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberNetworkListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberNetworksApi.list_member_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberNetworksApi#list_member_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch MemberNetwork
    # Create or Update multiple MemberNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_network [Array<MemberNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_member_network(vbasoftware_database, subscriber_id, member_seq, member_network, opts = {})
      data, _status_code, _headers = update_batch_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network, opts)
      data
    end

    # Create or Update Batch MemberNetwork
    # Create or Update multiple MemberNetwork at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_network [Array<MemberNetwork>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberNetworksApi.update_batch_member_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberNetworksApi.update_batch_member_network"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberNetworksApi.update_batch_member_network"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberNetworksApi.update_batch_member_network"
      end
      # verify the required parameter 'member_network' is set
      if @api_client.config.client_side_validation && member_network.nil?
        fail ArgumentError, "Missing the required parameter 'member_network' when calling MemberNetworksApi.update_batch_member_network"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/networks-batch'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_network)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberNetworksApi.update_batch_member_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberNetworksApi#update_batch_member_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberNetwork
    # Updates a specific MemberNetwork.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param network_id [String] Network ID
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param effective_date [Time] Effective Date
    # @param member_network [MemberNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [MemberNetworkVBAResponse]
    def update_member_network(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network, opts = {})
      data, _status_code, _headers = update_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network, opts)
      data
    end

    # Update MemberNetwork
    # Updates a specific MemberNetwork.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param network_id [String] Network ID
    # @param group_id [String] Group ID
    # @param division_id [String] Division ID
    # @param effective_date [Time] Effective Date
    # @param member_network [MemberNetwork] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberNetworkVBAResponse, Integer, Hash)>] MemberNetworkVBAResponse data, response status code and response headers
    def update_member_network_with_http_info(vbasoftware_database, subscriber_id, member_seq, network_id, group_id, division_id, effective_date, member_network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberNetworksApi.update_member_network ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'division_id' is set
      if @api_client.config.client_side_validation && division_id.nil?
        fail ArgumentError, "Missing the required parameter 'division_id' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling MemberNetworksApi.update_member_network"
      end
      # verify the required parameter 'member_network' is set
      if @api_client.config.client_side_validation && member_network.nil?
        fail ArgumentError, "Missing the required parameter 'member_network' when calling MemberNetworksApi.update_member_network"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/networks/{networkID}/{groupID}/{divisionID}/{effectiveDate}'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s)).sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'divisionID' + '}', CGI.escape(division_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_network)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberNetworkVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberNetworksApi.update_member_network",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberNetworksApi#update_member_network\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
