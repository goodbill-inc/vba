=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CapitationServicePlansApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CapitationServicePlan
    # Creates a new CapitationServicePlan
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param capitation_service_plan [CapitationServicePlan] 
    # @param [Hash] opts the optional parameters
    # @return [CapitationServicePlanVBAResponse]
    def create_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan, opts = {})
      data, _status_code, _headers = create_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan, opts)
      data
    end

    # Create CapitationServicePlan
    # Creates a new CapitationServicePlan
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param capitation_service_plan [CapitationServicePlan] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapitationServicePlanVBAResponse, Integer, Hash)>] CapitationServicePlanVBAResponse data, response status code and response headers
    def create_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationServicePlansApi.create_capitation_service_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationServicePlansApi.create_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_key' is set
      if @api_client.config.client_side_validation && capitation_service_key.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_key' when calling CapitationServicePlansApi.create_capitation_service_plan"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling CapitationServicePlansApi.create_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_plan' is set
      if @api_client.config.client_side_validation && capitation_service_plan.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_plan' when calling CapitationServicePlansApi.create_capitation_service_plan"
      end
      # resource path
      local_var_path = '/capitation-services/{capitationServiceKey}/capitation-service-plans/{planID}'.sub('{' + 'capitationServiceKey' + '}', CGI.escape(capitation_service_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capitation_service_plan)

      # return_type
      return_type = opts[:debug_return_type] || 'CapitationServicePlanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationServicePlansApi.create_capitation_service_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationServicePlansApi#create_capitation_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CapitationServicePlan
    # Deletes an CapitationServicePlan
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, opts = {})
      delete_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, opts)
      nil
    end

    # Delete CapitationServicePlan
    # Deletes an CapitationServicePlan
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationServicePlansApi.delete_capitation_service_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationServicePlansApi.delete_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_key' is set
      if @api_client.config.client_side_validation && capitation_service_key.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_key' when calling CapitationServicePlansApi.delete_capitation_service_plan"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling CapitationServicePlansApi.delete_capitation_service_plan"
      end
      # resource path
      local_var_path = '/capitation-services/{capitationServiceKey}/capitation-service-plans/{planID}'.sub('{' + 'capitationServiceKey' + '}', CGI.escape(capitation_service_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
        :operation => :"CapitationServicePlansApi.delete_capitation_service_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationServicePlansApi#delete_capitation_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CapitationServicePlan
    # Gets CapitationServicePlan
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @return [CapitationServicePlanVBAResponse]
    def get_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, opts = {})
      data, _status_code, _headers = get_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, opts)
      data
    end

    # Get CapitationServicePlan
    # Gets CapitationServicePlan
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapitationServicePlanVBAResponse, Integer, Hash)>] CapitationServicePlanVBAResponse data, response status code and response headers
    def get_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationServicePlansApi.get_capitation_service_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationServicePlansApi.get_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_key' is set
      if @api_client.config.client_side_validation && capitation_service_key.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_key' when calling CapitationServicePlansApi.get_capitation_service_plan"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling CapitationServicePlansApi.get_capitation_service_plan"
      end
      # resource path
      local_var_path = '/capitation-services/{capitationServiceKey}/capitation-service-plans/{planID}'.sub('{' + 'capitationServiceKey' + '}', CGI.escape(capitation_service_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CapitationServicePlanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationServicePlansApi.get_capitation_service_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationServicePlansApi#get_capitation_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CapitationServicePlan
    # Lists all CapitationServicePlan for the given capitationServiceKey
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CapitationServicePlanListVBAResponse]
    def list_capitation_service_plan(vbasoftware_database, capitation_service_key, opts = {})
      data, _status_code, _headers = list_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, opts)
      data
    end

    # List CapitationServicePlan
    # Lists all CapitationServicePlan for the given capitationServiceKey
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CapitationServicePlanListVBAResponse, Integer, Hash)>] CapitationServicePlanListVBAResponse data, response status code and response headers
    def list_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationServicePlansApi.list_capitation_service_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationServicePlansApi.list_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_key' is set
      if @api_client.config.client_side_validation && capitation_service_key.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_key' when calling CapitationServicePlansApi.list_capitation_service_plan"
      end
      # resource path
      local_var_path = '/capitation-services/{capitationServiceKey}/capitation-service-plans'.sub('{' + 'capitationServiceKey' + '}', CGI.escape(capitation_service_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CapitationServicePlanListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationServicePlansApi.list_capitation_service_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationServicePlansApi#list_capitation_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CapitationServicePlan
    # Create or Update multiple CapitationServicePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param capitation_service_plan [Array<CapitationServicePlan>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_capitation_service_plan(vbasoftware_database, capitation_service_key, capitation_service_plan, opts = {})
      data, _status_code, _headers = update_batch_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, capitation_service_plan, opts)
      data
    end

    # Create or Update Batch CapitationServicePlan
    # Create or Update multiple CapitationServicePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param capitation_service_plan [Array<CapitationServicePlan>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, capitation_service_plan, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationServicePlansApi.update_batch_capitation_service_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationServicePlansApi.update_batch_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_key' is set
      if @api_client.config.client_side_validation && capitation_service_key.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_key' when calling CapitationServicePlansApi.update_batch_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_plan' is set
      if @api_client.config.client_side_validation && capitation_service_plan.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_plan' when calling CapitationServicePlansApi.update_batch_capitation_service_plan"
      end
      # resource path
      local_var_path = '/capitation-services/{capitationServiceKey}/capitation-service-plans-batch'.sub('{' + 'capitationServiceKey' + '}', CGI.escape(capitation_service_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capitation_service_plan)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationServicePlansApi.update_batch_capitation_service_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationServicePlansApi#update_batch_capitation_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CapitationServicePlan
    # Updates a specific CapitationServicePlan.
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param capitation_service_plan [CapitationServicePlan] 
    # @param [Hash] opts the optional parameters
    # @return [CapitationServicePlanVBAResponse]
    def update_capitation_service_plan(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan, opts = {})
      data, _status_code, _headers = update_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan, opts)
      data
    end

    # Update CapitationServicePlan
    # Updates a specific CapitationServicePlan.
    # @param vbasoftware_database [String] Target database
    # @param capitation_service_key [Integer] CapitationService Key
    # @param plan_id [String] Plan ID
    # @param capitation_service_plan [CapitationServicePlan] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapitationServicePlanVBAResponse, Integer, Hash)>] CapitationServicePlanVBAResponse data, response status code and response headers
    def update_capitation_service_plan_with_http_info(vbasoftware_database, capitation_service_key, plan_id, capitation_service_plan, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CapitationServicePlansApi.update_capitation_service_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CapitationServicePlansApi.update_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_key' is set
      if @api_client.config.client_side_validation && capitation_service_key.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_key' when calling CapitationServicePlansApi.update_capitation_service_plan"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling CapitationServicePlansApi.update_capitation_service_plan"
      end
      # verify the required parameter 'capitation_service_plan' is set
      if @api_client.config.client_side_validation && capitation_service_plan.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_service_plan' when calling CapitationServicePlansApi.update_capitation_service_plan"
      end
      # resource path
      local_var_path = '/capitation-services/{capitationServiceKey}/capitation-service-plans/{planID}'.sub('{' + 'capitationServiceKey' + '}', CGI.escape(capitation_service_key.to_s)).sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capitation_service_plan)

      # return_type
      return_type = opts[:debug_return_type] || 'CapitationServicePlanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CapitationServicePlansApi.update_capitation_service_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CapitationServicePlansApi#update_capitation_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
