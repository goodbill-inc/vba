=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanLineageDetailsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanLineageDetail
    # Creates a new PlanLineageDetail
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail [PlanLineageDetail] 
    # @param [Hash] opts the optional parameters
    # @return [PlanLineageDetailVBAResponse]
    def create_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail, opts = {})
      data, _status_code, _headers = create_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail, opts)
      data
    end

    # Create PlanLineageDetail
    # Creates a new PlanLineageDetail
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail [PlanLineageDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanLineageDetailVBAResponse, Integer, Hash)>] PlanLineageDetailVBAResponse data, response status code and response headers
    def create_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanLineageDetailsApi.create_plan_lineage_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanLineageDetailsApi.create_plan_lineage_detail"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanLineageDetailsApi.create_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_id' is set
      if @api_client.config.client_side_validation && plan_lineage_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_id' when calling PlanLineageDetailsApi.create_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_detail' is set
      if @api_client.config.client_side_validation && plan_lineage_detail.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_detail' when calling PlanLineageDetailsApi.create_plan_lineage_detail"
      end
      # resource path
      local_var_path = '/plans/{planID}/lineages/{planLineageID}/details'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planLineageID' + '}', CGI.escape(plan_lineage_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_lineage_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanLineageDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanLineageDetailsApi.create_plan_lineage_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanLineageDetailsApi#create_plan_lineage_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanLineageDetail
    # Deletes an PlanLineageDetail
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail_key [Integer] PlanLineageDetail Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, opts = {})
      delete_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, opts)
      nil
    end

    # Delete PlanLineageDetail
    # Deletes an PlanLineageDetail
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail_key [Integer] PlanLineageDetail Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanLineageDetailsApi.delete_plan_lineage_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanLineageDetailsApi.delete_plan_lineage_detail"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanLineageDetailsApi.delete_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_id' is set
      if @api_client.config.client_side_validation && plan_lineage_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_id' when calling PlanLineageDetailsApi.delete_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_detail_key' is set
      if @api_client.config.client_side_validation && plan_lineage_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_detail_key' when calling PlanLineageDetailsApi.delete_plan_lineage_detail"
      end
      # resource path
      local_var_path = '/plans/{planID}/lineages/{planLineageID}/details/{planLineageDetailKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planLineageID' + '}', CGI.escape(plan_lineage_id.to_s)).sub('{' + 'planLineageDetailKey' + '}', CGI.escape(plan_lineage_detail_key.to_s))

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
        :operation => :"PlanLineageDetailsApi.delete_plan_lineage_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanLineageDetailsApi#delete_plan_lineage_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanLineageDetail
    # Gets PlanLineageDetail
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail_key [Integer] PlanLineageDetail Key
    # @param [Hash] opts the optional parameters
    # @return [PlanLineageDetailVBAResponse]
    def get_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, opts = {})
      data, _status_code, _headers = get_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, opts)
      data
    end

    # Get PlanLineageDetail
    # Gets PlanLineageDetail
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail_key [Integer] PlanLineageDetail Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanLineageDetailVBAResponse, Integer, Hash)>] PlanLineageDetailVBAResponse data, response status code and response headers
    def get_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanLineageDetailsApi.get_plan_lineage_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanLineageDetailsApi.get_plan_lineage_detail"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanLineageDetailsApi.get_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_id' is set
      if @api_client.config.client_side_validation && plan_lineage_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_id' when calling PlanLineageDetailsApi.get_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_detail_key' is set
      if @api_client.config.client_side_validation && plan_lineage_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_detail_key' when calling PlanLineageDetailsApi.get_plan_lineage_detail"
      end
      # resource path
      local_var_path = '/plans/{planID}/lineages/{planLineageID}/details/{planLineageDetailKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planLineageID' + '}', CGI.escape(plan_lineage_id.to_s)).sub('{' + 'planLineageDetailKey' + '}', CGI.escape(plan_lineage_detail_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanLineageDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanLineageDetailsApi.get_plan_lineage_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanLineageDetailsApi#get_plan_lineage_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanLineageDetail
    # Lists all PlanLineageDetail for the given planID and planLineageID
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param [Hash] opts the optional parameters
    # @return [PlanLineageDetailListVBAResponse]
    def list_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, opts = {})
      data, _status_code, _headers = list_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, opts)
      data
    end

    # List PlanLineageDetail
    # Lists all PlanLineageDetail for the given planID and planLineageID
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanLineageDetailListVBAResponse, Integer, Hash)>] PlanLineageDetailListVBAResponse data, response status code and response headers
    def list_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanLineageDetailsApi.list_plan_lineage_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanLineageDetailsApi.list_plan_lineage_detail"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanLineageDetailsApi.list_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_id' is set
      if @api_client.config.client_side_validation && plan_lineage_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_id' when calling PlanLineageDetailsApi.list_plan_lineage_detail"
      end
      # resource path
      local_var_path = '/plans/{planID}/lineages/{planLineageID}/details'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planLineageID' + '}', CGI.escape(plan_lineage_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanLineageDetailListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanLineageDetailsApi.list_plan_lineage_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanLineageDetailsApi#list_plan_lineage_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanLineageDetail
    # Create or Update multiple PlanLineageDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail [Array<PlanLineageDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail, opts = {})
      data, _status_code, _headers = update_batch_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail, opts)
      data
    end

    # Create or Update Batch PlanLineageDetail
    # Create or Update multiple PlanLineageDetail at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail [Array<PlanLineageDetail>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanLineageDetailsApi.update_batch_plan_lineage_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanLineageDetailsApi.update_batch_plan_lineage_detail"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanLineageDetailsApi.update_batch_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_id' is set
      if @api_client.config.client_side_validation && plan_lineage_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_id' when calling PlanLineageDetailsApi.update_batch_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_detail' is set
      if @api_client.config.client_side_validation && plan_lineage_detail.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_detail' when calling PlanLineageDetailsApi.update_batch_plan_lineage_detail"
      end
      # resource path
      local_var_path = '/plans/{planID}/lineages/{planLineageID}/details-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planLineageID' + '}', CGI.escape(plan_lineage_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_lineage_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanLineageDetailsApi.update_batch_plan_lineage_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanLineageDetailsApi#update_batch_plan_lineage_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanLineageDetail
    # Updates a specific PlanLineageDetail.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail_key [Integer] PlanLineageDetail Key
    # @param plan_lineage_detail [PlanLineageDetail] 
    # @param [Hash] opts the optional parameters
    # @return [PlanLineageDetailVBAResponse]
    def update_plan_lineage_detail(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail, opts = {})
      data, _status_code, _headers = update_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail, opts)
      data
    end

    # Update PlanLineageDetail
    # Updates a specific PlanLineageDetail.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_lineage_id [String] Plan Lineage ID
    # @param plan_lineage_detail_key [Integer] PlanLineageDetail Key
    # @param plan_lineage_detail [PlanLineageDetail] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanLineageDetailVBAResponse, Integer, Hash)>] PlanLineageDetailVBAResponse data, response status code and response headers
    def update_plan_lineage_detail_with_http_info(vbasoftware_database, plan_id, plan_lineage_id, plan_lineage_detail_key, plan_lineage_detail, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanLineageDetailsApi.update_plan_lineage_detail ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanLineageDetailsApi.update_plan_lineage_detail"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanLineageDetailsApi.update_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_id' is set
      if @api_client.config.client_side_validation && plan_lineage_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_id' when calling PlanLineageDetailsApi.update_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_detail_key' is set
      if @api_client.config.client_side_validation && plan_lineage_detail_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_detail_key' when calling PlanLineageDetailsApi.update_plan_lineage_detail"
      end
      # verify the required parameter 'plan_lineage_detail' is set
      if @api_client.config.client_side_validation && plan_lineage_detail.nil?
        fail ArgumentError, "Missing the required parameter 'plan_lineage_detail' when calling PlanLineageDetailsApi.update_plan_lineage_detail"
      end
      # resource path
      local_var_path = '/plans/{planID}/lineages/{planLineageID}/details/{planLineageDetailKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planLineageID' + '}', CGI.escape(plan_lineage_id.to_s)).sub('{' + 'planLineageDetailKey' + '}', CGI.escape(plan_lineage_detail_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_lineage_detail)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanLineageDetailVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanLineageDetailsApi.update_plan_lineage_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanLineageDetailsApi#update_plan_lineage_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
