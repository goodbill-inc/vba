=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class NetworkPracticeTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create NetworkPracticeType
    # Creates a new NetworkPracticeType
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param network_practice_type [NetworkPracticeType] 
    # @param [Hash] opts the optional parameters
    # @return [NetworkPracticeTypeVBAResponse]
    def create_network_practice_type(vbasoftware_database, network_id, network_practice_type, opts = {})
      data, _status_code, _headers = create_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type, opts)
      data
    end

    # Create NetworkPracticeType
    # Creates a new NetworkPracticeType
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param network_practice_type [NetworkPracticeType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkPracticeTypeVBAResponse, Integer, Hash)>] NetworkPracticeTypeVBAResponse data, response status code and response headers
    def create_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkPracticeTypesApi.create_network_practice_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkPracticeTypesApi.create_network_practice_type"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkPracticeTypesApi.create_network_practice_type"
      end
      # verify the required parameter 'network_practice_type' is set
      if @api_client.config.client_side_validation && network_practice_type.nil?
        fail ArgumentError, "Missing the required parameter 'network_practice_type' when calling NetworkPracticeTypesApi.create_network_practice_type"
      end
      # resource path
      local_var_path = '/networks/{networkID}/practice-types'.sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_practice_type)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkPracticeTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkPracticeTypesApi.create_network_practice_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkPracticeTypesApi#create_network_practice_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete NetworkPracticeType
    # Deletes an NetworkPracticeType
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param practice_type [String] Practice Type
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date, opts = {})
      delete_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, opts)
      nil
    end

    # Delete NetworkPracticeType
    # Deletes an NetworkPracticeType
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param practice_type [String] Practice Type
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkPracticeTypesApi.delete_network_practice_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkPracticeTypesApi.delete_network_practice_type"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkPracticeTypesApi.delete_network_practice_type"
      end
      # verify the required parameter 'practice_type' is set
      if @api_client.config.client_side_validation && practice_type.nil?
        fail ArgumentError, "Missing the required parameter 'practice_type' when calling NetworkPracticeTypesApi.delete_network_practice_type"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling NetworkPracticeTypesApi.delete_network_practice_type"
      end
      # resource path
      local_var_path = '/networks/{networkID}/practice-types/{practiceType}/{effectiveDate}'.sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'practiceType' + '}', CGI.escape(practice_type.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
        :operation => :"NetworkPracticeTypesApi.delete_network_practice_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkPracticeTypesApi#delete_network_practice_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get NetworkPracticeType
    # Gets NetworkPracticeType
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param practice_type [String] Practice Type
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [NetworkPracticeTypeVBAResponse]
    def get_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date, opts = {})
      data, _status_code, _headers = get_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, opts)
      data
    end

    # Get NetworkPracticeType
    # Gets NetworkPracticeType
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param practice_type [String] Practice Type
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkPracticeTypeVBAResponse, Integer, Hash)>] NetworkPracticeTypeVBAResponse data, response status code and response headers
    def get_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkPracticeTypesApi.get_network_practice_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkPracticeTypesApi.get_network_practice_type"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkPracticeTypesApi.get_network_practice_type"
      end
      # verify the required parameter 'practice_type' is set
      if @api_client.config.client_side_validation && practice_type.nil?
        fail ArgumentError, "Missing the required parameter 'practice_type' when calling NetworkPracticeTypesApi.get_network_practice_type"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling NetworkPracticeTypesApi.get_network_practice_type"
      end
      # resource path
      local_var_path = '/networks/{networkID}/practice-types/{practiceType}/{effectiveDate}'.sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'practiceType' + '}', CGI.escape(practice_type.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkPracticeTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkPracticeTypesApi.get_network_practice_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkPracticeTypesApi#get_network_practice_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List NetworkPracticeType
    # Lists all NetworkPracticeType for the given networkID
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [NetworkPracticeTypeListVBAResponse]
    def list_network_practice_type(vbasoftware_database, network_id, opts = {})
      data, _status_code, _headers = list_network_practice_type_with_http_info(vbasoftware_database, network_id, opts)
      data
    end

    # List NetworkPracticeType
    # Lists all NetworkPracticeType for the given networkID
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(NetworkPracticeTypeListVBAResponse, Integer, Hash)>] NetworkPracticeTypeListVBAResponse data, response status code and response headers
    def list_network_practice_type_with_http_info(vbasoftware_database, network_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkPracticeTypesApi.list_network_practice_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkPracticeTypesApi.list_network_practice_type"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkPracticeTypesApi.list_network_practice_type"
      end
      # resource path
      local_var_path = '/networks/{networkID}/practice-types'.sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NetworkPracticeTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkPracticeTypesApi.list_network_practice_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkPracticeTypesApi#list_network_practice_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch NetworkPracticeType
    # Create or Update multiple NetworkPracticeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param network_practice_type [Array<NetworkPracticeType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_network_practice_type(vbasoftware_database, network_id, network_practice_type, opts = {})
      data, _status_code, _headers = update_batch_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type, opts)
      data
    end

    # Create or Update Batch NetworkPracticeType
    # Create or Update multiple NetworkPracticeType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param network_practice_type [Array<NetworkPracticeType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_network_practice_type_with_http_info(vbasoftware_database, network_id, network_practice_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkPracticeTypesApi.update_batch_network_practice_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkPracticeTypesApi.update_batch_network_practice_type"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkPracticeTypesApi.update_batch_network_practice_type"
      end
      # verify the required parameter 'network_practice_type' is set
      if @api_client.config.client_side_validation && network_practice_type.nil?
        fail ArgumentError, "Missing the required parameter 'network_practice_type' when calling NetworkPracticeTypesApi.update_batch_network_practice_type"
      end
      # resource path
      local_var_path = '/networks/{networkID}/practice-types-batch'.sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_practice_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkPracticeTypesApi.update_batch_network_practice_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkPracticeTypesApi#update_batch_network_practice_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update NetworkPracticeType
    # Updates a specific NetworkPracticeType.
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param practice_type [String] Practice Type
    # @param effective_date [Time] Effective Date
    # @param network_practice_type [NetworkPracticeType] 
    # @param [Hash] opts the optional parameters
    # @return [NetworkPracticeTypeVBAResponse]
    def update_network_practice_type(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type, opts = {})
      data, _status_code, _headers = update_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type, opts)
      data
    end

    # Update NetworkPracticeType
    # Updates a specific NetworkPracticeType.
    # @param vbasoftware_database [String] Target database
    # @param network_id [String] Network ID
    # @param practice_type [String] Practice Type
    # @param effective_date [Time] Effective Date
    # @param network_practice_type [NetworkPracticeType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NetworkPracticeTypeVBAResponse, Integer, Hash)>] NetworkPracticeTypeVBAResponse data, response status code and response headers
    def update_network_practice_type_with_http_info(vbasoftware_database, network_id, practice_type, effective_date, network_practice_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NetworkPracticeTypesApi.update_network_practice_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NetworkPracticeTypesApi.update_network_practice_type"
      end
      # verify the required parameter 'network_id' is set
      if @api_client.config.client_side_validation && network_id.nil?
        fail ArgumentError, "Missing the required parameter 'network_id' when calling NetworkPracticeTypesApi.update_network_practice_type"
      end
      # verify the required parameter 'practice_type' is set
      if @api_client.config.client_side_validation && practice_type.nil?
        fail ArgumentError, "Missing the required parameter 'practice_type' when calling NetworkPracticeTypesApi.update_network_practice_type"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling NetworkPracticeTypesApi.update_network_practice_type"
      end
      # verify the required parameter 'network_practice_type' is set
      if @api_client.config.client_side_validation && network_practice_type.nil?
        fail ArgumentError, "Missing the required parameter 'network_practice_type' when calling NetworkPracticeTypesApi.update_network_practice_type"
      end
      # resource path
      local_var_path = '/networks/{networkID}/practice-types/{practiceType}/{effectiveDate}'.sub('{' + 'networkID' + '}', CGI.escape(network_id.to_s)).sub('{' + 'practiceType' + '}', CGI.escape(practice_type.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(network_practice_type)

      # return_type
      return_type = opts[:debug_return_type] || 'NetworkPracticeTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NetworkPracticeTypesApi.update_network_practice_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NetworkPracticeTypesApi#update_network_practice_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
