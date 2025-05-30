=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimBatchLogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimBatchLog
    # Creates a new ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log [ClaimBatchLog] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchLogVBAResponse]
    def create_claim_batch_log(vbasoftware_database, claim_batch_log, opts = {})
      data, _status_code, _headers = create_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log, opts)
      data
    end

    # Create ClaimBatchLog
    # Creates a new ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log [ClaimBatchLog] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchLogVBAResponse, Integer, Hash)>] ClaimBatchLogVBAResponse data, response status code and response headers
    def create_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLogsApi.create_claim_batch_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLogsApi.create_claim_batch_log"
      end
      # verify the required parameter 'claim_batch_log' is set
      if @api_client.config.client_side_validation && claim_batch_log.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_log' when calling ClaimBatchLogsApi.create_claim_batch_log"
      end
      # resource path
      local_var_path = '/claim-batch-logs'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batch_log)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimBatchLogVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLogsApi.create_claim_batch_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLogsApi#create_claim_batch_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimBatchLog
    # Deletes an ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log_key [Integer] ClaimBatchLog Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_batch_log(vbasoftware_database, claim_batch_log_key, opts = {})
      delete_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, opts)
      nil
    end

    # Delete ClaimBatchLog
    # Deletes an ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log_key [Integer] ClaimBatchLog Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLogsApi.delete_claim_batch_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLogsApi.delete_claim_batch_log"
      end
      # verify the required parameter 'claim_batch_log_key' is set
      if @api_client.config.client_side_validation && claim_batch_log_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_log_key' when calling ClaimBatchLogsApi.delete_claim_batch_log"
      end
      # resource path
      local_var_path = '/claim-batch-logs/{claimBatchLogKey}'.sub('{' + 'claimBatchLogKey' + '}', CGI.escape(claim_batch_log_key.to_s))

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
        :operation => :"ClaimBatchLogsApi.delete_claim_batch_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLogsApi#delete_claim_batch_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimBatchLog
    # Gets ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log_key [Integer] ClaimBatchLog Key
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchLogVBAResponse]
    def get_claim_batch_log(vbasoftware_database, claim_batch_log_key, opts = {})
      data, _status_code, _headers = get_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, opts)
      data
    end

    # Get ClaimBatchLog
    # Gets ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log_key [Integer] ClaimBatchLog Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchLogVBAResponse, Integer, Hash)>] ClaimBatchLogVBAResponse data, response status code and response headers
    def get_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLogsApi.get_claim_batch_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLogsApi.get_claim_batch_log"
      end
      # verify the required parameter 'claim_batch_log_key' is set
      if @api_client.config.client_side_validation && claim_batch_log_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_log_key' when calling ClaimBatchLogsApi.get_claim_batch_log"
      end
      # resource path
      local_var_path = '/claim-batch-logs/{claimBatchLogKey}'.sub('{' + 'claimBatchLogKey' + '}', CGI.escape(claim_batch_log_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimBatchLogVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLogsApi.get_claim_batch_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLogsApi#get_claim_batch_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimBatchLog
    # Lists all ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimBatchLogListVBAResponse]
    def list_claim_batch_log(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_claim_batch_log_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ClaimBatchLog
    # Lists all ClaimBatchLog
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimBatchLogListVBAResponse, Integer, Hash)>] ClaimBatchLogListVBAResponse data, response status code and response headers
    def list_claim_batch_log_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLogsApi.list_claim_batch_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLogsApi.list_claim_batch_log"
      end
      # resource path
      local_var_path = '/claim-batch-logs'

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
      return_type = opts[:debug_return_type] || 'ClaimBatchLogListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLogsApi.list_claim_batch_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLogsApi#list_claim_batch_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimBatchLog
    # Create or Update multiple ClaimBatchLog at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log [Array<ClaimBatchLog>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_batch_log(vbasoftware_database, claim_batch_log, opts = {})
      data, _status_code, _headers = update_batch_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log, opts)
      data
    end

    # Create or Update Batch ClaimBatchLog
    # Create or Update multiple ClaimBatchLog at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log [Array<ClaimBatchLog>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLogsApi.update_batch_claim_batch_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLogsApi.update_batch_claim_batch_log"
      end
      # verify the required parameter 'claim_batch_log' is set
      if @api_client.config.client_side_validation && claim_batch_log.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_log' when calling ClaimBatchLogsApi.update_batch_claim_batch_log"
      end
      # resource path
      local_var_path = '/claim-batch-logs-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batch_log)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLogsApi.update_batch_claim_batch_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLogsApi#update_batch_claim_batch_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimBatchLog
    # Updates a specific ClaimBatchLog.
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log_key [Integer] ClaimBatchLog Key
    # @param claim_batch_log [ClaimBatchLog] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchLogVBAResponse]
    def update_claim_batch_log(vbasoftware_database, claim_batch_log_key, claim_batch_log, opts = {})
      data, _status_code, _headers = update_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, claim_batch_log, opts)
      data
    end

    # Update ClaimBatchLog
    # Updates a specific ClaimBatchLog.
    # @param vbasoftware_database [String] Target database
    # @param claim_batch_log_key [Integer] ClaimBatchLog Key
    # @param claim_batch_log [ClaimBatchLog] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchLogVBAResponse, Integer, Hash)>] ClaimBatchLogVBAResponse data, response status code and response headers
    def update_claim_batch_log_with_http_info(vbasoftware_database, claim_batch_log_key, claim_batch_log, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLogsApi.update_claim_batch_log ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLogsApi.update_claim_batch_log"
      end
      # verify the required parameter 'claim_batch_log_key' is set
      if @api_client.config.client_side_validation && claim_batch_log_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_log_key' when calling ClaimBatchLogsApi.update_claim_batch_log"
      end
      # verify the required parameter 'claim_batch_log' is set
      if @api_client.config.client_side_validation && claim_batch_log.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_log' when calling ClaimBatchLogsApi.update_claim_batch_log"
      end
      # resource path
      local_var_path = '/claim-batch-logs/{claimBatchLogKey}'.sub('{' + 'claimBatchLogKey' + '}', CGI.escape(claim_batch_log_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batch_log)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimBatchLogVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLogsApi.update_claim_batch_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLogsApi#update_claim_batch_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
