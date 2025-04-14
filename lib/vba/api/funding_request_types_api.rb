=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FundingRequestTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FundingRequestType
    # Creates a new FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param funding_request_type [FundingRequestType] 
    # @param [Hash] opts the optional parameters
    # @return [FundingRequestTypeVBAResponse]
    def create_funding_request_type(vbasoftware_database, funding_request_type, opts = {})
      data, _status_code, _headers = create_funding_request_type_with_http_info(vbasoftware_database, funding_request_type, opts)
      data
    end

    # Create FundingRequestType
    # Creates a new FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param funding_request_type [FundingRequestType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingRequestTypeVBAResponse, Integer, Hash)>] FundingRequestTypeVBAResponse data, response status code and response headers
    def create_funding_request_type_with_http_info(vbasoftware_database, funding_request_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestTypesApi.create_funding_request_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestTypesApi.create_funding_request_type"
      end
      # verify the required parameter 'funding_request_type' is set
      if @api_client.config.client_side_validation && funding_request_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_type' when calling FundingRequestTypesApi.create_funding_request_type"
      end
      # resource path
      local_var_path = '/funding-request-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_type)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingRequestTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestTypesApi.create_funding_request_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestTypesApi#create_funding_request_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FundingRequestType
    # Deletes an FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param request_type [String] Request Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_funding_request_type(vbasoftware_database, request_type, opts = {})
      delete_funding_request_type_with_http_info(vbasoftware_database, request_type, opts)
      nil
    end

    # Delete FundingRequestType
    # Deletes an FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param request_type [String] Request Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_funding_request_type_with_http_info(vbasoftware_database, request_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestTypesApi.delete_funding_request_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestTypesApi.delete_funding_request_type"
      end
      # verify the required parameter 'request_type' is set
      if @api_client.config.client_side_validation && request_type.nil?
        fail ArgumentError, "Missing the required parameter 'request_type' when calling FundingRequestTypesApi.delete_funding_request_type"
      end
      # resource path
      local_var_path = '/funding-request-types/{requestType}'.sub('{' + 'requestType' + '}', CGI.escape(request_type.to_s))

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
        :operation => :"FundingRequestTypesApi.delete_funding_request_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestTypesApi#delete_funding_request_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FundingRequestType
    # Gets FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param request_type [String] Request Type
    # @param [Hash] opts the optional parameters
    # @return [FundingRequestTypeVBAResponse]
    def get_funding_request_type(vbasoftware_database, request_type, opts = {})
      data, _status_code, _headers = get_funding_request_type_with_http_info(vbasoftware_database, request_type, opts)
      data
    end

    # Get FundingRequestType
    # Gets FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param request_type [String] Request Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingRequestTypeVBAResponse, Integer, Hash)>] FundingRequestTypeVBAResponse data, response status code and response headers
    def get_funding_request_type_with_http_info(vbasoftware_database, request_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestTypesApi.get_funding_request_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestTypesApi.get_funding_request_type"
      end
      # verify the required parameter 'request_type' is set
      if @api_client.config.client_side_validation && request_type.nil?
        fail ArgumentError, "Missing the required parameter 'request_type' when calling FundingRequestTypesApi.get_funding_request_type"
      end
      # resource path
      local_var_path = '/funding-request-types/{requestType}'.sub('{' + 'requestType' + '}', CGI.escape(request_type.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingRequestTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestTypesApi.get_funding_request_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestTypesApi#get_funding_request_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FundingRequestType
    # Lists all FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FundingRequestTypeListVBAResponse]
    def list_funding_request_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_funding_request_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List FundingRequestType
    # Lists all FundingRequestType
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FundingRequestTypeListVBAResponse, Integer, Hash)>] FundingRequestTypeListVBAResponse data, response status code and response headers
    def list_funding_request_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestTypesApi.list_funding_request_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestTypesApi.list_funding_request_type"
      end
      # resource path
      local_var_path = '/funding-request-types'

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
      return_type = opts[:debug_return_type] || 'FundingRequestTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestTypesApi.list_funding_request_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestTypesApi#list_funding_request_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FundingRequestType
    # Create or Update multiple FundingRequestType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param funding_request_type [Array<FundingRequestType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_funding_request_type(vbasoftware_database, funding_request_type, opts = {})
      data, _status_code, _headers = update_batch_funding_request_type_with_http_info(vbasoftware_database, funding_request_type, opts)
      data
    end

    # Create or Update Batch FundingRequestType
    # Create or Update multiple FundingRequestType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param funding_request_type [Array<FundingRequestType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_funding_request_type_with_http_info(vbasoftware_database, funding_request_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestTypesApi.update_batch_funding_request_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestTypesApi.update_batch_funding_request_type"
      end
      # verify the required parameter 'funding_request_type' is set
      if @api_client.config.client_side_validation && funding_request_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_type' when calling FundingRequestTypesApi.update_batch_funding_request_type"
      end
      # resource path
      local_var_path = '/funding-request-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestTypesApi.update_batch_funding_request_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestTypesApi#update_batch_funding_request_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FundingRequestType
    # Updates a specific FundingRequestType.
    # @param vbasoftware_database [String] Target database
    # @param request_type [String] Request Type
    # @param funding_request_type [FundingRequestType] 
    # @param [Hash] opts the optional parameters
    # @return [FundingRequestTypeVBAResponse]
    def update_funding_request_type(vbasoftware_database, request_type, funding_request_type, opts = {})
      data, _status_code, _headers = update_funding_request_type_with_http_info(vbasoftware_database, request_type, funding_request_type, opts)
      data
    end

    # Update FundingRequestType
    # Updates a specific FundingRequestType.
    # @param vbasoftware_database [String] Target database
    # @param request_type [String] Request Type
    # @param funding_request_type [FundingRequestType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingRequestTypeVBAResponse, Integer, Hash)>] FundingRequestTypeVBAResponse data, response status code and response headers
    def update_funding_request_type_with_http_info(vbasoftware_database, request_type, funding_request_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingRequestTypesApi.update_funding_request_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingRequestTypesApi.update_funding_request_type"
      end
      # verify the required parameter 'request_type' is set
      if @api_client.config.client_side_validation && request_type.nil?
        fail ArgumentError, "Missing the required parameter 'request_type' when calling FundingRequestTypesApi.update_funding_request_type"
      end
      # verify the required parameter 'funding_request_type' is set
      if @api_client.config.client_side_validation && funding_request_type.nil?
        fail ArgumentError, "Missing the required parameter 'funding_request_type' when calling FundingRequestTypesApi.update_funding_request_type"
      end
      # resource path
      local_var_path = '/funding-request-types/{requestType}'.sub('{' + 'requestType' + '}', CGI.escape(request_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_request_type)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingRequestTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingRequestTypesApi.update_funding_request_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingRequestTypesApi#update_funding_request_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
