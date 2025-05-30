=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ReportQueueDetailArgumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ReportQueueDetailArg
    # Creates a new ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg [ReportQueueDetailArg] 
    # @param [Hash] opts the optional parameters
    # @return [ReportQueueDetailArgVBAResponse]
    def create_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg, opts = {})
      data, _status_code, _headers = create_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg, opts)
      data
    end

    # Create ReportQueueDetailArg
    # Creates a new ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg [ReportQueueDetailArg] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportQueueDetailArgVBAResponse, Integer, Hash)>] ReportQueueDetailArgVBAResponse data, response status code and response headers
    def create_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportQueueDetailArgumentsApi.create_report_queue_detail_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportQueueDetailArgumentsApi.create_report_queue_detail_arg"
      end
      # verify the required parameter 'report_queue_detail_arg' is set
      if @api_client.config.client_side_validation && report_queue_detail_arg.nil?
        fail ArgumentError, "Missing the required parameter 'report_queue_detail_arg' when calling ReportQueueDetailArgumentsApi.create_report_queue_detail_arg"
      end
      # resource path
      local_var_path = '/report-queue-detail-args'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_queue_detail_arg)

      # return_type
      return_type = opts[:debug_return_type] || 'ReportQueueDetailArgVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportQueueDetailArgumentsApi.create_report_queue_detail_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportQueueDetailArgumentsApi#create_report_queue_detail_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ReportQueueDetailArg
    # Deletes an ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg_key [Integer] ReportQueueDetailArg Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key, opts = {})
      delete_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, opts)
      nil
    end

    # Delete ReportQueueDetailArg
    # Deletes an ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg_key [Integer] ReportQueueDetailArg Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportQueueDetailArgumentsApi.delete_report_queue_detail_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportQueueDetailArgumentsApi.delete_report_queue_detail_arg"
      end
      # verify the required parameter 'report_queue_detail_arg_key' is set
      if @api_client.config.client_side_validation && report_queue_detail_arg_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_queue_detail_arg_key' when calling ReportQueueDetailArgumentsApi.delete_report_queue_detail_arg"
      end
      # resource path
      local_var_path = '/report-queue-detail-args/{reportQueueDetailArgKey}'.sub('{' + 'reportQueueDetailArgKey' + '}', CGI.escape(report_queue_detail_arg_key.to_s))

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
        :operation => :"ReportQueueDetailArgumentsApi.delete_report_queue_detail_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportQueueDetailArgumentsApi#delete_report_queue_detail_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ReportQueueDetailArg
    # Gets ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg_key [Integer] ReportQueueDetailArg Key
    # @param [Hash] opts the optional parameters
    # @return [ReportQueueDetailArgVBAResponse]
    def get_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key, opts = {})
      data, _status_code, _headers = get_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, opts)
      data
    end

    # Get ReportQueueDetailArg
    # Gets ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg_key [Integer] ReportQueueDetailArg Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportQueueDetailArgVBAResponse, Integer, Hash)>] ReportQueueDetailArgVBAResponse data, response status code and response headers
    def get_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportQueueDetailArgumentsApi.get_report_queue_detail_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportQueueDetailArgumentsApi.get_report_queue_detail_arg"
      end
      # verify the required parameter 'report_queue_detail_arg_key' is set
      if @api_client.config.client_side_validation && report_queue_detail_arg_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_queue_detail_arg_key' when calling ReportQueueDetailArgumentsApi.get_report_queue_detail_arg"
      end
      # resource path
      local_var_path = '/report-queue-detail-args/{reportQueueDetailArgKey}'.sub('{' + 'reportQueueDetailArgKey' + '}', CGI.escape(report_queue_detail_arg_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ReportQueueDetailArgVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportQueueDetailArgumentsApi.get_report_queue_detail_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportQueueDetailArgumentsApi#get_report_queue_detail_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ReportQueueDetailArg
    # Lists all ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :report_queue_detail_key Filter by ReportQueueDetailKey
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ReportQueueDetailArgListVBAResponse]
    def list_report_queue_detail_arg(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_report_queue_detail_arg_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ReportQueueDetailArg
    # Lists all ReportQueueDetailArg
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :report_queue_detail_key Filter by ReportQueueDetailKey
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ReportQueueDetailArgListVBAResponse, Integer, Hash)>] ReportQueueDetailArgListVBAResponse data, response status code and response headers
    def list_report_queue_detail_arg_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportQueueDetailArgumentsApi.list_report_queue_detail_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportQueueDetailArgumentsApi.list_report_queue_detail_arg"
      end
      # resource path
      local_var_path = '/report-queue-detail-args'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reportQueueDetailKey'] = opts[:'report_queue_detail_key'] if !opts[:'report_queue_detail_key'].nil?
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
      return_type = opts[:debug_return_type] || 'ReportQueueDetailArgListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportQueueDetailArgumentsApi.list_report_queue_detail_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportQueueDetailArgumentsApi#list_report_queue_detail_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ReportQueueDetailArg
    # Create or Update multiple ReportQueueDetailArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg [Array<ReportQueueDetailArg>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg, opts = {})
      data, _status_code, _headers = update_batch_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg, opts)
      data
    end

    # Create or Update Batch ReportQueueDetailArg
    # Create or Update multiple ReportQueueDetailArg at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg [Array<ReportQueueDetailArg>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportQueueDetailArgumentsApi.update_batch_report_queue_detail_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportQueueDetailArgumentsApi.update_batch_report_queue_detail_arg"
      end
      # verify the required parameter 'report_queue_detail_arg' is set
      if @api_client.config.client_side_validation && report_queue_detail_arg.nil?
        fail ArgumentError, "Missing the required parameter 'report_queue_detail_arg' when calling ReportQueueDetailArgumentsApi.update_batch_report_queue_detail_arg"
      end
      # resource path
      local_var_path = '/report-queue-detail-args-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_queue_detail_arg)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportQueueDetailArgumentsApi.update_batch_report_queue_detail_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportQueueDetailArgumentsApi#update_batch_report_queue_detail_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ReportQueueDetailArg
    # Updates a specific ReportQueueDetailArg.
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg_key [Integer] ReportQueueDetailArg Key
    # @param report_queue_detail_arg [ReportQueueDetailArg] 
    # @param [Hash] opts the optional parameters
    # @return [ReportQueueDetailArgVBAResponse]
    def update_report_queue_detail_arg(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg, opts = {})
      data, _status_code, _headers = update_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg, opts)
      data
    end

    # Update ReportQueueDetailArg
    # Updates a specific ReportQueueDetailArg.
    # @param vbasoftware_database [String] Target database
    # @param report_queue_detail_arg_key [Integer] ReportQueueDetailArg Key
    # @param report_queue_detail_arg [ReportQueueDetailArg] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReportQueueDetailArgVBAResponse, Integer, Hash)>] ReportQueueDetailArgVBAResponse data, response status code and response headers
    def update_report_queue_detail_arg_with_http_info(vbasoftware_database, report_queue_detail_arg_key, report_queue_detail_arg, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReportQueueDetailArgumentsApi.update_report_queue_detail_arg ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ReportQueueDetailArgumentsApi.update_report_queue_detail_arg"
      end
      # verify the required parameter 'report_queue_detail_arg_key' is set
      if @api_client.config.client_side_validation && report_queue_detail_arg_key.nil?
        fail ArgumentError, "Missing the required parameter 'report_queue_detail_arg_key' when calling ReportQueueDetailArgumentsApi.update_report_queue_detail_arg"
      end
      # verify the required parameter 'report_queue_detail_arg' is set
      if @api_client.config.client_side_validation && report_queue_detail_arg.nil?
        fail ArgumentError, "Missing the required parameter 'report_queue_detail_arg' when calling ReportQueueDetailArgumentsApi.update_report_queue_detail_arg"
      end
      # resource path
      local_var_path = '/report-queue-detail-args/{reportQueueDetailArgKey}'.sub('{' + 'reportQueueDetailArgKey' + '}', CGI.escape(report_queue_detail_arg_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(report_queue_detail_arg)

      # return_type
      return_type = opts[:debug_return_type] || 'ReportQueueDetailArgVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ReportQueueDetailArgumentsApi.update_report_queue_detail_arg",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReportQueueDetailArgumentsApi#update_report_queue_detail_arg\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
