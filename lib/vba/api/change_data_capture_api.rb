=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ChangeDataCaptureApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Members CDC
    # Lists all Change Data Capture information for the Members table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
    # @option opts [String] :member_seq Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
    # @return [VBACDCMembersListVBAResponse]
    def list_cdc_members(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cdc_members_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Members CDC
    # Lists all Change Data Capture information for the Members table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
    # @option opts [String] :member_seq Send a specific Subscriber ID/Member Seq to look up changes or pass no value and get all changes.
    # @return [Array<(VBACDCMembersListVBAResponse, Integer, Hash)>] VBACDCMembersListVBAResponse data, response status code and response headers
    def list_cdc_members_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeDataCaptureApi.list_cdc_members ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ChangeDataCaptureApi.list_cdc_members"
      end
      # resource path
      local_var_path = '/cdc-members'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subscriberId'] = opts[:'subscriber_id'] if !opts[:'subscriber_id'].nil?
      query_params[:'memberSeq'] = opts[:'member_seq'] if !opts[:'member_seq'].nil?

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
      return_type = opts[:debug_return_type] || 'VBACDCMembersListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ChangeDataCaptureApi.list_cdc_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeDataCaptureApi#list_cdc_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Subenrollment CDC
    # Lists all Change Data Capture information for the Subenrollment table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [VBACDCSubenrollmentListVBAResponse]
    def list_cdc_subenrollment(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cdc_subenrollment_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Subenrollment CDC
    # Lists all Change Data Capture information for the Subenrollment table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [Array<(VBACDCSubenrollmentListVBAResponse, Integer, Hash)>] VBACDCSubenrollmentListVBAResponse data, response status code and response headers
    def list_cdc_subenrollment_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeDataCaptureApi.list_cdc_subenrollment ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ChangeDataCaptureApi.list_cdc_subenrollment"
      end
      # resource path
      local_var_path = '/cdc-subenrollment'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subscriberId'] = opts[:'subscriber_id'] if !opts[:'subscriber_id'].nil?

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
      return_type = opts[:debug_return_type] || 'VBACDCSubenrollmentListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ChangeDataCaptureApi.list_cdc_subenrollment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeDataCaptureApi#list_cdc_subenrollment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List SubenrollmentPlan CDC
    # Lists all Change Data Capture information for the SubenrollmentPlan table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [VBACDCSubenrollmentPlanListVBAResponse]
    def list_cdc_subenrollment_plan(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cdc_subenrollment_plan_with_http_info(vbasoftware_database, opts)
      data
    end

    # List SubenrollmentPlan CDC
    # Lists all Change Data Capture information for the SubenrollmentPlan table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [Array<(VBACDCSubenrollmentPlanListVBAResponse, Integer, Hash)>] VBACDCSubenrollmentPlanListVBAResponse data, response status code and response headers
    def list_cdc_subenrollment_plan_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeDataCaptureApi.list_cdc_subenrollment_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ChangeDataCaptureApi.list_cdc_subenrollment_plan"
      end
      # resource path
      local_var_path = '/cdc-subenrollmentplan'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subscriberId'] = opts[:'subscriber_id'] if !opts[:'subscriber_id'].nil?

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
      return_type = opts[:debug_return_type] || 'VBACDCSubenrollmentPlanListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ChangeDataCaptureApi.list_cdc_subenrollment_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeDataCaptureApi#list_cdc_subenrollment_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List SubenrollmentRider CDC
    # Lists all Change Data Capture information for the SubenrollmentRider table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [VBACDCSubenrollmentRiderListVBAResponse]
    def list_cdc_subenrollment_rider(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cdc_subenrollment_rider_with_http_info(vbasoftware_database, opts)
      data
    end

    # List SubenrollmentRider CDC
    # Lists all Change Data Capture information for the SubenrollmentRider table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [Array<(VBACDCSubenrollmentRiderListVBAResponse, Integer, Hash)>] VBACDCSubenrollmentRiderListVBAResponse data, response status code and response headers
    def list_cdc_subenrollment_rider_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeDataCaptureApi.list_cdc_subenrollment_rider ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ChangeDataCaptureApi.list_cdc_subenrollment_rider"
      end
      # resource path
      local_var_path = '/cdc-subenrollmentrider'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subscriberId'] = opts[:'subscriber_id'] if !opts[:'subscriber_id'].nil?

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
      return_type = opts[:debug_return_type] || 'VBACDCSubenrollmentRiderListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ChangeDataCaptureApi.list_cdc_subenrollment_rider",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeDataCaptureApi#list_cdc_subenrollment_rider\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Subscribers CDC
    # Lists all Change Data Capture information for the Subscribers table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [VBACDCSubscribersListVBAResponse]
    def list_cdc_subscribers(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cdc_subscribers_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Subscribers CDC
    # Lists all Change Data Capture information for the Subscribers table.
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subscriber_id Send a specific Subscriber ID to look up changes or pass no value and get all changes.
    # @return [Array<(VBACDCSubscribersListVBAResponse, Integer, Hash)>] VBACDCSubscribersListVBAResponse data, response status code and response headers
    def list_cdc_subscribers_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ChangeDataCaptureApi.list_cdc_subscribers ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ChangeDataCaptureApi.list_cdc_subscribers"
      end
      # resource path
      local_var_path = '/cdc-subscribers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'subscriberId'] = opts[:'subscriber_id'] if !opts[:'subscriber_id'].nil?

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
      return_type = opts[:debug_return_type] || 'VBACDCSubscribersListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ChangeDataCaptureApi.list_cdc_subscribers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ChangeDataCaptureApi#list_cdc_subscribers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
