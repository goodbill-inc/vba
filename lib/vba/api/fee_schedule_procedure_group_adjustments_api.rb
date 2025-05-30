=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FeeScheduleProcedureGroupAdjustmentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create FeeSchedProcedureGroupAdjust
    # Creates a new FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust [FeeSchedProcedureGroupAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedProcedureGroupAdjustVBAResponse]
    def create_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust, opts = {})
      data, _status_code, _headers = create_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust, opts)
      data
    end

    # Create FeeSchedProcedureGroupAdjust
    # Creates a new FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust [FeeSchedProcedureGroupAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedProcedureGroupAdjustVBAResponse, Integer, Hash)>] FeeSchedProcedureGroupAdjustVBAResponse data, response status code and response headers
    def create_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleProcedureGroupAdjustmentsApi.create_fee_sched_procedure_group_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleProcedureGroupAdjustmentsApi.create_fee_sched_procedure_group_adjust"
      end
      # verify the required parameter 'fee_sched_procedure_group_adjust' is set
      if @api_client.config.client_side_validation && fee_sched_procedure_group_adjust.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_procedure_group_adjust' when calling FeeScheduleProcedureGroupAdjustmentsApi.create_fee_sched_procedure_group_adjust"
      end
      # resource path
      local_var_path = '/fee-schedule-procedure-group-adjustments'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_procedure_group_adjust)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedProcedureGroupAdjustVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleProcedureGroupAdjustmentsApi.create_fee_sched_procedure_group_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleProcedureGroupAdjustmentsApi#create_fee_sched_procedure_group_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FeeSchedProcedureGroupAdjust
    # Deletes an FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust_key [Integer] FeeSchedProcedureGroupAdjust Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key, opts = {})
      delete_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, opts)
      nil
    end

    # Delete FeeSchedProcedureGroupAdjust
    # Deletes an FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust_key [Integer] FeeSchedProcedureGroupAdjust Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleProcedureGroupAdjustmentsApi.delete_fee_sched_procedure_group_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleProcedureGroupAdjustmentsApi.delete_fee_sched_procedure_group_adjust"
      end
      # verify the required parameter 'fee_sched_procedure_group_adjust_key' is set
      if @api_client.config.client_side_validation && fee_sched_procedure_group_adjust_key.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_procedure_group_adjust_key' when calling FeeScheduleProcedureGroupAdjustmentsApi.delete_fee_sched_procedure_group_adjust"
      end
      # resource path
      local_var_path = '/fee-schedule-procedure-group-adjustments/{feeSchedProcedureGroupAdjustKey}'.sub('{' + 'feeSchedProcedureGroupAdjustKey' + '}', CGI.escape(fee_sched_procedure_group_adjust_key.to_s))

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
        :operation => :"FeeScheduleProcedureGroupAdjustmentsApi.delete_fee_sched_procedure_group_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleProcedureGroupAdjustmentsApi#delete_fee_sched_procedure_group_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FeeSchedProcedureGroupAdjust
    # Gets FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust_key [Integer] FeeSchedProcedureGroupAdjust Key
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedProcedureGroupAdjustVBAResponse]
    def get_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key, opts = {})
      data, _status_code, _headers = get_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, opts)
      data
    end

    # Get FeeSchedProcedureGroupAdjust
    # Gets FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust_key [Integer] FeeSchedProcedureGroupAdjust Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedProcedureGroupAdjustVBAResponse, Integer, Hash)>] FeeSchedProcedureGroupAdjustVBAResponse data, response status code and response headers
    def get_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleProcedureGroupAdjustmentsApi.get_fee_sched_procedure_group_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleProcedureGroupAdjustmentsApi.get_fee_sched_procedure_group_adjust"
      end
      # verify the required parameter 'fee_sched_procedure_group_adjust_key' is set
      if @api_client.config.client_side_validation && fee_sched_procedure_group_adjust_key.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_procedure_group_adjust_key' when calling FeeScheduleProcedureGroupAdjustmentsApi.get_fee_sched_procedure_group_adjust"
      end
      # resource path
      local_var_path = '/fee-schedule-procedure-group-adjustments/{feeSchedProcedureGroupAdjustKey}'.sub('{' + 'feeSchedProcedureGroupAdjustKey' + '}', CGI.escape(fee_sched_procedure_group_adjust_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FeeSchedProcedureGroupAdjustVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleProcedureGroupAdjustmentsApi.get_fee_sched_procedure_group_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleProcedureGroupAdjustmentsApi#get_fee_sched_procedure_group_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FeeSchedProcedureGroupAdjust
    # Lists all FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FeeSchedProcedureGroupAdjustListVBAResponse]
    def list_fee_sched_procedure_group_adjust(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, opts)
      data
    end

    # List FeeSchedProcedureGroupAdjust
    # Lists all FeeSchedProcedureGroupAdjust
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FeeSchedProcedureGroupAdjustListVBAResponse, Integer, Hash)>] FeeSchedProcedureGroupAdjustListVBAResponse data, response status code and response headers
    def list_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleProcedureGroupAdjustmentsApi.list_fee_sched_procedure_group_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleProcedureGroupAdjustmentsApi.list_fee_sched_procedure_group_adjust"
      end
      # resource path
      local_var_path = '/fee-schedule-procedure-group-adjustments'

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
      return_type = opts[:debug_return_type] || 'FeeSchedProcedureGroupAdjustListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleProcedureGroupAdjustmentsApi.list_fee_sched_procedure_group_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleProcedureGroupAdjustmentsApi#list_fee_sched_procedure_group_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FeeSchedProcedureGroupAdjust
    # Create or Update multiple FeeSchedProcedureGroupAdjust at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust [Array<FeeSchedProcedureGroupAdjust>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust, opts = {})
      data, _status_code, _headers = update_batch_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust, opts)
      data
    end

    # Create or Update Batch FeeSchedProcedureGroupAdjust
    # Create or Update multiple FeeSchedProcedureGroupAdjust at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust [Array<FeeSchedProcedureGroupAdjust>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleProcedureGroupAdjustmentsApi.update_batch_fee_sched_procedure_group_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleProcedureGroupAdjustmentsApi.update_batch_fee_sched_procedure_group_adjust"
      end
      # verify the required parameter 'fee_sched_procedure_group_adjust' is set
      if @api_client.config.client_side_validation && fee_sched_procedure_group_adjust.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_procedure_group_adjust' when calling FeeScheduleProcedureGroupAdjustmentsApi.update_batch_fee_sched_procedure_group_adjust"
      end
      # resource path
      local_var_path = '/fee-schedule-procedure-group-adjustments-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_procedure_group_adjust)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleProcedureGroupAdjustmentsApi.update_batch_fee_sched_procedure_group_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleProcedureGroupAdjustmentsApi#update_batch_fee_sched_procedure_group_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FeeSchedProcedureGroupAdjust
    # Updates a specific FeeSchedProcedureGroupAdjust.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust_key [Integer] FeeSchedProcedureGroupAdjust Key
    # @param fee_sched_procedure_group_adjust [FeeSchedProcedureGroupAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedProcedureGroupAdjustVBAResponse]
    def update_fee_sched_procedure_group_adjust(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust, opts = {})
      data, _status_code, _headers = update_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust, opts)
      data
    end

    # Update FeeSchedProcedureGroupAdjust
    # Updates a specific FeeSchedProcedureGroupAdjust.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_procedure_group_adjust_key [Integer] FeeSchedProcedureGroupAdjust Key
    # @param fee_sched_procedure_group_adjust [FeeSchedProcedureGroupAdjust] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedProcedureGroupAdjustVBAResponse, Integer, Hash)>] FeeSchedProcedureGroupAdjustVBAResponse data, response status code and response headers
    def update_fee_sched_procedure_group_adjust_with_http_info(vbasoftware_database, fee_sched_procedure_group_adjust_key, fee_sched_procedure_group_adjust, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeeScheduleProcedureGroupAdjustmentsApi.update_fee_sched_procedure_group_adjust ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FeeScheduleProcedureGroupAdjustmentsApi.update_fee_sched_procedure_group_adjust"
      end
      # verify the required parameter 'fee_sched_procedure_group_adjust_key' is set
      if @api_client.config.client_side_validation && fee_sched_procedure_group_adjust_key.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_procedure_group_adjust_key' when calling FeeScheduleProcedureGroupAdjustmentsApi.update_fee_sched_procedure_group_adjust"
      end
      # verify the required parameter 'fee_sched_procedure_group_adjust' is set
      if @api_client.config.client_side_validation && fee_sched_procedure_group_adjust.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_procedure_group_adjust' when calling FeeScheduleProcedureGroupAdjustmentsApi.update_fee_sched_procedure_group_adjust"
      end
      # resource path
      local_var_path = '/fee-schedule-procedure-group-adjustments/{feeSchedProcedureGroupAdjustKey}'.sub('{' + 'feeSchedProcedureGroupAdjustKey' + '}', CGI.escape(fee_sched_procedure_group_adjust_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_procedure_group_adjust)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedProcedureGroupAdjustVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FeeScheduleProcedureGroupAdjustmentsApi.update_fee_sched_procedure_group_adjust",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeeScheduleProcedureGroupAdjustmentsApi#update_fee_sched_procedure_group_adjust\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
