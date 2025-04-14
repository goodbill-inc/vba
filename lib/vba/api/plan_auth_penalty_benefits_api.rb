=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanAuthPenaltyBenefitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanAuthPenaltyBenefit
    # Creates a new PlanAuthPenaltyBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param plan_auth_penalty_benefit [PlanAuthPenaltyBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [PlanAuthPenaltyBenefitVBAResponse]
    def create_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit, opts = {})
      data, _status_code, _headers = create_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit, opts)
      data
    end

    # Create PlanAuthPenaltyBenefit
    # Creates a new PlanAuthPenaltyBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param plan_auth_penalty_benefit [PlanAuthPenaltyBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanAuthPenaltyBenefitVBAResponse, Integer, Hash)>] PlanAuthPenaltyBenefitVBAResponse data, response status code and response headers
    def create_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanAuthPenaltyBenefitsApi.create_plan_auth_penalty_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanAuthPenaltyBenefitsApi.create_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanAuthPenaltyBenefitsApi.create_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_key' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_key' when calling PlanAuthPenaltyBenefitsApi.create_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_benefit' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_benefit' when calling PlanAuthPenaltyBenefitsApi.create_plan_auth_penalty_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planAuthPenaltyKey' + '}', CGI.escape(plan_auth_penalty_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_auth_penalty_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanAuthPenaltyBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanAuthPenaltyBenefitsApi.create_plan_auth_penalty_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanAuthPenaltyBenefitsApi#create_plan_auth_penalty_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanAuthPenaltyBenefit
    # Deletes an PlanAuthPenaltyBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, opts = {})
      delete_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, opts)
      nil
    end

    # Delete PlanAuthPenaltyBenefit
    # Deletes an PlanAuthPenaltyBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanAuthPenaltyBenefitsApi.delete_plan_auth_penalty_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanAuthPenaltyBenefitsApi.delete_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanAuthPenaltyBenefitsApi.delete_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_key' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_key' when calling PlanAuthPenaltyBenefitsApi.delete_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanAuthPenaltyBenefitsApi.delete_plan_auth_penalty_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits/{benefitCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planAuthPenaltyKey' + '}', CGI.escape(plan_auth_penalty_key.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
        :operation => :"PlanAuthPenaltyBenefitsApi.delete_plan_auth_penalty_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanAuthPenaltyBenefitsApi#delete_plan_auth_penalty_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanAuthPenaltyBenefit
    # Gets PlanAuthPenaltyBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanAuthPenaltyBenefitVBAResponse]
    def get_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, opts = {})
      data, _status_code, _headers = get_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, opts)
      data
    end

    # Get PlanAuthPenaltyBenefit
    # Gets PlanAuthPenaltyBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanAuthPenaltyBenefitVBAResponse, Integer, Hash)>] PlanAuthPenaltyBenefitVBAResponse data, response status code and response headers
    def get_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanAuthPenaltyBenefitsApi.get_plan_auth_penalty_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanAuthPenaltyBenefitsApi.get_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanAuthPenaltyBenefitsApi.get_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_key' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_key' when calling PlanAuthPenaltyBenefitsApi.get_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanAuthPenaltyBenefitsApi.get_plan_auth_penalty_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits/{benefitCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planAuthPenaltyKey' + '}', CGI.escape(plan_auth_penalty_key.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanAuthPenaltyBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanAuthPenaltyBenefitsApi.get_plan_auth_penalty_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanAuthPenaltyBenefitsApi#get_plan_auth_penalty_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanAuthPenaltyBenefit
    # Lists all PlanAuthPenaltyBenefit for the given planAuthPenaltyKey
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PlanAuthPenaltyBenefitListVBAResponse]
    def list_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, opts = {})
      data, _status_code, _headers = list_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, opts)
      data
    end

    # List PlanAuthPenaltyBenefit
    # Lists all PlanAuthPenaltyBenefit for the given planAuthPenaltyKey
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PlanAuthPenaltyBenefitListVBAResponse, Integer, Hash)>] PlanAuthPenaltyBenefitListVBAResponse data, response status code and response headers
    def list_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanAuthPenaltyBenefitsApi.list_plan_auth_penalty_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanAuthPenaltyBenefitsApi.list_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanAuthPenaltyBenefitsApi.list_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_key' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_key' when calling PlanAuthPenaltyBenefitsApi.list_plan_auth_penalty_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planAuthPenaltyKey' + '}', CGI.escape(plan_auth_penalty_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanAuthPenaltyBenefitListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanAuthPenaltyBenefitsApi.list_plan_auth_penalty_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanAuthPenaltyBenefitsApi#list_plan_auth_penalty_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanAuthPenaltyBenefit
    # Create or Update multiple PlanAuthPenaltyBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param plan_auth_penalty_benefit [Array<PlanAuthPenaltyBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit, opts = {})
      data, _status_code, _headers = update_batch_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit, opts)
      data
    end

    # Create or Update Batch PlanAuthPenaltyBenefit
    # Create or Update multiple PlanAuthPenaltyBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param plan_auth_penalty_benefit [Array<PlanAuthPenaltyBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, plan_auth_penalty_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanAuthPenaltyBenefitsApi.update_batch_plan_auth_penalty_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanAuthPenaltyBenefitsApi.update_batch_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanAuthPenaltyBenefitsApi.update_batch_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_key' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_key' when calling PlanAuthPenaltyBenefitsApi.update_batch_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_benefit' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_benefit' when calling PlanAuthPenaltyBenefitsApi.update_batch_plan_auth_penalty_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planAuthPenaltyKey' + '}', CGI.escape(plan_auth_penalty_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_auth_penalty_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanAuthPenaltyBenefitsApi.update_batch_plan_auth_penalty_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanAuthPenaltyBenefitsApi#update_batch_plan_auth_penalty_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanAuthPenaltyBenefit
    # Updates a specific PlanAuthPenaltyBenefit.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param benefit_code [String] Benefit Code
    # @param plan_auth_penalty_benefit [PlanAuthPenaltyBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [PlanAuthPenaltyBenefitVBAResponse]
    def update_plan_auth_penalty_benefit(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit, opts = {})
      data, _status_code, _headers = update_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit, opts)
      data
    end

    # Update PlanAuthPenaltyBenefit
    # Updates a specific PlanAuthPenaltyBenefit.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_auth_penalty_key [Integer] PlanAuthPenalty Key
    # @param benefit_code [String] Benefit Code
    # @param plan_auth_penalty_benefit [PlanAuthPenaltyBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanAuthPenaltyBenefitVBAResponse, Integer, Hash)>] PlanAuthPenaltyBenefitVBAResponse data, response status code and response headers
    def update_plan_auth_penalty_benefit_with_http_info(vbasoftware_database, plan_id, plan_auth_penalty_key, benefit_code, plan_auth_penalty_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_key' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_key' when calling PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit"
      end
      # verify the required parameter 'plan_auth_penalty_benefit' is set
      if @api_client.config.client_side_validation && plan_auth_penalty_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'plan_auth_penalty_benefit' when calling PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/auth-penalties/{planAuthPenaltyKey}/benefits/{benefitCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'planAuthPenaltyKey' + '}', CGI.escape(plan_auth_penalty_key.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_auth_penalty_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanAuthPenaltyBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanAuthPenaltyBenefitsApi.update_plan_auth_penalty_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanAuthPenaltyBenefitsApi#update_plan_auth_penalty_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
