=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class IssueDurationValueDetailApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create IssueDurationValueDetail
    # Creates a new IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail [IssueDurationValueDetail] 
    # @param [Hash] opts the optional parameters
    # @return [IssueDurationValueDetailVBAResponse]
    def create_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail, opts = {})
      data, _status_code, _headers = create_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail, opts)
      data
    end

    # Create IssueDurationValueDetail
    # Creates a new IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail [IssueDurationValueDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IssueDurationValueDetailVBAResponse, Integer, Hash)>] IssueDurationValueDetailVBAResponse data, response status code and response headers
    def create_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssueDurationValueDetailApi.create_issue_duration_value_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling IssueDurationValueDetailApi.create_issue_duration_value_detail"
      end
      # verify the required parameter 'issue_duration_value_detail' is set
      if @api_client.config.client_side_validation && issue_duration_value_detail.nil?
        fail ArgumentError, "Missing the required parameter 'issue_duration_value_detail' when calling IssueDurationValueDetailApi.create_issue_duration_value_detail"
      end
      # resource path
      local_var_path = '/issue-duration-value-details'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(issue_duration_value_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'IssueDurationValueDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IssueDurationValueDetailApi.create_issue_duration_value_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssueDurationValueDetailApi#create_issue_duration_value_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete IssueDurationValueDetail
    # Deletes an IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail_key [Integer] IssueDurationValueDetail Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key, opts = {})
      delete_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, opts)
      nil
    end

    # Delete IssueDurationValueDetail
    # Deletes an IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail_key [Integer] IssueDurationValueDetail Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssueDurationValueDetailApi.delete_issue_duration_value_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling IssueDurationValueDetailApi.delete_issue_duration_value_detail"
      end
      # verify the required parameter 'issue_duration_value_detail_key' is set
      if @api_client.config.client_side_validation && issue_duration_value_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'issue_duration_value_detail_key' when calling IssueDurationValueDetailApi.delete_issue_duration_value_detail"
      end
      # resource path
      local_var_path = '/issue-duration-value-details/{IssueDurationValueDetail_Key}'.sub('{' + 'IssueDurationValueDetail_Key' + '}', CGI.escape(issue_duration_value_detail_key.to_s))

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
        :operation => :"IssueDurationValueDetailApi.delete_issue_duration_value_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssueDurationValueDetailApi#delete_issue_duration_value_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get IssueDurationValueDetail
    # Gets IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail_key [Integer] IssueDurationValueDetail Key
    # @param [Hash] opts the optional parameters
    # @return [IssueDurationValueDetailVBAResponse]
    def get_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key, opts = {})
      data, _status_code, _headers = get_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, opts)
      data
    end

    # Get IssueDurationValueDetail
    # Gets IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail_key [Integer] IssueDurationValueDetail Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(IssueDurationValueDetailVBAResponse, Integer, Hash)>] IssueDurationValueDetailVBAResponse data, response status code and response headers
    def get_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssueDurationValueDetailApi.get_issue_duration_value_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling IssueDurationValueDetailApi.get_issue_duration_value_detail"
      end
      # verify the required parameter 'issue_duration_value_detail_key' is set
      if @api_client.config.client_side_validation && issue_duration_value_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'issue_duration_value_detail_key' when calling IssueDurationValueDetailApi.get_issue_duration_value_detail"
      end
      # resource path
      local_var_path = '/issue-duration-value-details/{IssueDurationValueDetail_Key}'.sub('{' + 'IssueDurationValueDetail_Key' + '}', CGI.escape(issue_duration_value_detail_key.to_s))

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
      return_type = opts[:debug_return_type] || 'IssueDurationValueDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IssueDurationValueDetailApi.get_issue_duration_value_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssueDurationValueDetailApi#get_issue_duration_value_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List IssueDurationValueDetail
    # Lists all IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [Integer] :issue_duration_value_key IssueDurationValue Key
    # @return [IssueDurationValueDetailListVBAResponse]
    def list_issue_duration_value_detail(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_issue_duration_value_detail_with_http_info(vbasoftware_database, opts)
      data
    end

    # List IssueDurationValueDetail
    # Lists all IssueDurationValueDetail
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [Integer] :issue_duration_value_key IssueDurationValue Key
    # @return [Array<(IssueDurationValueDetailListVBAResponse, Integer, Hash)>] IssueDurationValueDetailListVBAResponse data, response status code and response headers
    def list_issue_duration_value_detail_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssueDurationValueDetailApi.list_issue_duration_value_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling IssueDurationValueDetailApi.list_issue_duration_value_detail"
      end
      # resource path
      local_var_path = '/issue-duration-value-details'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'IssueDurationValue_Key'] = opts[:'issue_duration_value_key'] if !opts[:'issue_duration_value_key'].nil?

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
      return_type = opts[:debug_return_type] || 'IssueDurationValueDetailListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IssueDurationValueDetailApi.list_issue_duration_value_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssueDurationValueDetailApi#list_issue_duration_value_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch IssueDurationValueDetail
    # Create or Update multiple IssueDurationValueDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail [Array<IssueDurationValueDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail, opts = {})
      data, _status_code, _headers = update_batch_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail, opts)
      data
    end

    # Create or Update Batch IssueDurationValueDetail
    # Create or Update multiple IssueDurationValueDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail [Array<IssueDurationValueDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssueDurationValueDetailApi.update_batch_issue_duration_value_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling IssueDurationValueDetailApi.update_batch_issue_duration_value_detail"
      end
      # verify the required parameter 'issue_duration_value_detail' is set
      if @api_client.config.client_side_validation && issue_duration_value_detail.nil?
        fail ArgumentError, "Missing the required parameter 'issue_duration_value_detail' when calling IssueDurationValueDetailApi.update_batch_issue_duration_value_detail"
      end
      # resource path
      local_var_path = '/issue-duration-value-details-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(issue_duration_value_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IssueDurationValueDetailApi.update_batch_issue_duration_value_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssueDurationValueDetailApi#update_batch_issue_duration_value_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update IssueDurationValueDetail
    # Updates a specific IssueDurationValueDetail.
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail_key [Integer] IssueDurationValueDetail Key
    # @param issue_duration_value_detail [IssueDurationValueDetail] 
    # @param [Hash] opts the optional parameters
    # @return [IssueDurationValueDetailVBAResponse]
    def update_issue_duration_value_detail(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail, opts = {})
      data, _status_code, _headers = update_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail, opts)
      data
    end

    # Update IssueDurationValueDetail
    # Updates a specific IssueDurationValueDetail.
    # @param vbasoftware_database [String] Target database
    # @param issue_duration_value_detail_key [Integer] IssueDurationValueDetail Key
    # @param issue_duration_value_detail [IssueDurationValueDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IssueDurationValueDetailVBAResponse, Integer, Hash)>] IssueDurationValueDetailVBAResponse data, response status code and response headers
    def update_issue_duration_value_detail_with_http_info(vbasoftware_database, issue_duration_value_detail_key, issue_duration_value_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IssueDurationValueDetailApi.update_issue_duration_value_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling IssueDurationValueDetailApi.update_issue_duration_value_detail"
      end
      # verify the required parameter 'issue_duration_value_detail_key' is set
      if @api_client.config.client_side_validation && issue_duration_value_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'issue_duration_value_detail_key' when calling IssueDurationValueDetailApi.update_issue_duration_value_detail"
      end
      # verify the required parameter 'issue_duration_value_detail' is set
      if @api_client.config.client_side_validation && issue_duration_value_detail.nil?
        fail ArgumentError, "Missing the required parameter 'issue_duration_value_detail' when calling IssueDurationValueDetailApi.update_issue_duration_value_detail"
      end
      # resource path
      local_var_path = '/issue-duration-value-details/{IssueDurationValueDetail_Key}'.sub('{' + 'IssueDurationValueDetail_Key' + '}', CGI.escape(issue_duration_value_detail_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(issue_duration_value_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'IssueDurationValueDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"IssueDurationValueDetailApi.update_issue_duration_value_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: IssueDurationValueDetailApi#update_issue_duration_value_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
