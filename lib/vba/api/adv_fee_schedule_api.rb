=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class AdvFeeScheduleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Copy Fee Schedule
    # Copy an existing Fee Schedule to a new Fee Schedule.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_copy [FeeSchedCopy] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedVBAResponse]
    def copy_fee_schedule(vbasoftware_database, fee_sched_copy, opts = {})
      data, _status_code, _headers = copy_fee_schedule_with_http_info(vbasoftware_database, fee_sched_copy, opts)
      data
    end

    # Copy Fee Schedule
    # Copy an existing Fee Schedule to a new Fee Schedule.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_copy [FeeSchedCopy] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedVBAResponse, Integer, Hash)>] FeeSchedVBAResponse data, response status code and response headers
    def copy_fee_schedule_with_http_info(vbasoftware_database, fee_sched_copy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvFeeScheduleApi.copy_fee_schedule ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AdvFeeScheduleApi.copy_fee_schedule"
      end
      # verify the required parameter 'fee_sched_copy' is set
      if @api_client.config.client_side_validation && fee_sched_copy.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_copy' when calling AdvFeeScheduleApi.copy_fee_schedule"
      end
      # resource path
      local_var_path = '/fee-schedule-copy'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_copy)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AdvFeeScheduleApi.copy_fee_schedule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvFeeScheduleApi#copy_fee_schedule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Copy Fee Schedule and Adjust Discount
    # Copy an existing Fee Schedule to a new Fee Schedule and adjust the resulting discount in the new Fee Schedule.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_copy [FeeSchedCopy] 
    # @param [Hash] opts the optional parameters
    # @return [FeeSchedVBAResponse]
    def copy_fee_schedule_adj_disc(vbasoftware_database, fee_sched_copy, opts = {})
      data, _status_code, _headers = copy_fee_schedule_adj_disc_with_http_info(vbasoftware_database, fee_sched_copy, opts)
      data
    end

    # Copy Fee Schedule and Adjust Discount
    # Copy an existing Fee Schedule to a new Fee Schedule and adjust the resulting discount in the new Fee Schedule.
    # @param vbasoftware_database [String] Target database
    # @param fee_sched_copy [FeeSchedCopy] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeeSchedVBAResponse, Integer, Hash)>] FeeSchedVBAResponse data, response status code and response headers
    def copy_fee_schedule_adj_disc_with_http_info(vbasoftware_database, fee_sched_copy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvFeeScheduleApi.copy_fee_schedule_adj_disc ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AdvFeeScheduleApi.copy_fee_schedule_adj_disc"
      end
      # verify the required parameter 'fee_sched_copy' is set
      if @api_client.config.client_side_validation && fee_sched_copy.nil?
        fail ArgumentError, "Missing the required parameter 'fee_sched_copy' when calling AdvFeeScheduleApi.copy_fee_schedule_adj_disc"
      end
      # resource path
      local_var_path = '/fee-schedule-copy-adj-disc'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(fee_sched_copy)

      # return_type
      return_type = opts[:debug_return_type] || 'FeeSchedVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AdvFeeScheduleApi.copy_fee_schedule_adj_disc",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvFeeScheduleApi#copy_fee_schedule_adj_disc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
