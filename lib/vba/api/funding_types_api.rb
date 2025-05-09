=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FundingTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FundingType
    # Creates a new FundingType
    # @param vbasoftware_database [String] Target database
    # @param funding_type [FundingType] 
    # @param [Hash] opts the optional parameters
    # @return [FundingTypeVBAResponse]
    def create_funding_type(vbasoftware_database, funding_type, opts = {})
      data, _status_code, _headers = create_funding_type_with_http_info(vbasoftware_database, funding_type, opts)
      data
    end

    # Create FundingType
    # Creates a new FundingType
    # @param vbasoftware_database [String] Target database
    # @param funding_type [FundingType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingTypeVBAResponse, Integer, Hash)>] FundingTypeVBAResponse data, response status code and response headers
    def create_funding_type_with_http_info(vbasoftware_database, funding_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingTypesApi.create_funding_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingTypesApi.create_funding_type"
      end
      # verify the required parameter 'funding_type' is set
      if @api_client.config.client_side_validation && funding_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_type' when calling FundingTypesApi.create_funding_type"
      end
      # resource path
      local_var_path = '/funding-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_type)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingTypesApi.create_funding_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingTypesApi#create_funding_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FundingType
    # Deletes an FundingType
    # @param vbasoftware_database [String] Target database
    # @param funding_type [String] Funding Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_funding_type(vbasoftware_database, funding_type, opts = {})
      delete_funding_type_with_http_info(vbasoftware_database, funding_type, opts)
      nil
    end

    # Delete FundingType
    # Deletes an FundingType
    # @param vbasoftware_database [String] Target database
    # @param funding_type [String] Funding Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_funding_type_with_http_info(vbasoftware_database, funding_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingTypesApi.delete_funding_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingTypesApi.delete_funding_type"
      end
      # verify the required parameter 'funding_type' is set
      if @api_client.config.client_side_validation && funding_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_type' when calling FundingTypesApi.delete_funding_type"
      end
      # resource path
      local_var_path = '/funding-types/{fundingType}'.sub('{' + 'fundingType' + '}', CGI.escape(funding_type.to_s))

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
        :operation => :"FundingTypesApi.delete_funding_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingTypesApi#delete_funding_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FundingType
    # Gets FundingType
    # @param vbasoftware_database [String] Target database
    # @param funding_type [String] Funding Type
    # @param [Hash] opts the optional parameters
    # @return [FundingTypeVBAResponse]
    def get_funding_type(vbasoftware_database, funding_type, opts = {})
      data, _status_code, _headers = get_funding_type_with_http_info(vbasoftware_database, funding_type, opts)
      data
    end

    # Get FundingType
    # Gets FundingType
    # @param vbasoftware_database [String] Target database
    # @param funding_type [String] Funding Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingTypeVBAResponse, Integer, Hash)>] FundingTypeVBAResponse data, response status code and response headers
    def get_funding_type_with_http_info(vbasoftware_database, funding_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingTypesApi.get_funding_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingTypesApi.get_funding_type"
      end
      # verify the required parameter 'funding_type' is set
      if @api_client.config.client_side_validation && funding_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_type' when calling FundingTypesApi.get_funding_type"
      end
      # resource path
      local_var_path = '/funding-types/{fundingType}'.sub('{' + 'fundingType' + '}', CGI.escape(funding_type.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingTypesApi.get_funding_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingTypesApi#get_funding_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FundingType
    # Lists all FundingType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FundingTypeListVBAResponse]
    def list_funding_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_funding_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List FundingType
    # Lists all FundingType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FundingTypeListVBAResponse, Integer, Hash)>] FundingTypeListVBAResponse data, response status code and response headers
    def list_funding_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingTypesApi.list_funding_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingTypesApi.list_funding_type"
      end
      # resource path
      local_var_path = '/funding-types'

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
      return_type = opts[:debug_return_type] || 'FundingTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingTypesApi.list_funding_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingTypesApi#list_funding_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FundingType
    # Create or Update multiple FundingType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param funding_type [Array<FundingType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_funding_type(vbasoftware_database, funding_type, opts = {})
      data, _status_code, _headers = update_batch_funding_type_with_http_info(vbasoftware_database, funding_type, opts)
      data
    end

    # Create or Update Batch FundingType
    # Create or Update multiple FundingType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param funding_type [Array<FundingType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_funding_type_with_http_info(vbasoftware_database, funding_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingTypesApi.update_batch_funding_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingTypesApi.update_batch_funding_type"
      end
      # verify the required parameter 'funding_type' is set
      if @api_client.config.client_side_validation && funding_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_type' when calling FundingTypesApi.update_batch_funding_type"
      end
      # resource path
      local_var_path = '/funding-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingTypesApi.update_batch_funding_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingTypesApi#update_batch_funding_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FundingType
    # Updates a specific FundingType.
    # @param vbasoftware_database [String] Target database
    # @param funding_type [String] Funding Type
    # @param funding_type2 [FundingType] 
    # @param [Hash] opts the optional parameters
    # @return [FundingTypeVBAResponse]
    def update_funding_type(vbasoftware_database, funding_type, funding_type2, opts = {})
      data, _status_code, _headers = update_funding_type_with_http_info(vbasoftware_database, funding_type, funding_type2, opts)
      data
    end

    # Update FundingType
    # Updates a specific FundingType.
    # @param vbasoftware_database [String] Target database
    # @param funding_type [String] Funding Type
    # @param funding_type2 [FundingType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingTypeVBAResponse, Integer, Hash)>] FundingTypeVBAResponse data, response status code and response headers
    def update_funding_type_with_http_info(vbasoftware_database, funding_type, funding_type2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingTypesApi.update_funding_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingTypesApi.update_funding_type"
      end
      # verify the required parameter 'funding_type' is set
      if @api_client.config.client_side_validation && funding_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_type' when calling FundingTypesApi.update_funding_type"
      end
      # verify the required parameter 'funding_type2' is set
      if @api_client.config.client_side_validation && funding_type2.nil?
        fail ArgumentError, "Missing the required parameter 'funding_type2' when calling FundingTypesApi.update_funding_type"
      end
      # resource path
      local_var_path = '/funding-types/{fundingType}'.sub('{' + 'fundingType' + '}', CGI.escape(funding_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_type2)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingTypesApi.update_funding_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingTypesApi#update_funding_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
