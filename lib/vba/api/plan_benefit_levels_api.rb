=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitLevelsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanBenefitLevel
    # Creates a new PlanBenefitLevel
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level [PlanBenefitLevel] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitLevelVBAResponse]
    def create_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level, opts = {})
      data, _status_code, _headers = create_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level, opts)
      data
    end

    # Create PlanBenefitLevel
    # Creates a new PlanBenefitLevel
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level [PlanBenefitLevel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitLevelVBAResponse, Integer, Hash)>] PlanBenefitLevelVBAResponse data, response status code and response headers
    def create_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitLevelsApi.create_plan_benefit_level ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitLevelsApi.create_plan_benefit_level"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitLevelsApi.create_plan_benefit_level"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitLevelsApi.create_plan_benefit_level"
      end
      # verify the required parameter 'plan_benefit_level' is set
      if @api_client.config.client_side_validation && plan_benefit_level.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefit_level' when calling PlanBenefitLevelsApi.create_plan_benefit_level"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/levels'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_benefit_level)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenefitLevelVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitLevelsApi.create_plan_benefit_level",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitLevelsApi#create_plan_benefit_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanBenefitLevel
    # Deletes an PlanBenefitLevel
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level_key [Integer] PlanBenefitLevel Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, opts = {})
      delete_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, opts)
      nil
    end

    # Delete PlanBenefitLevel
    # Deletes an PlanBenefitLevel
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level_key [Integer] PlanBenefitLevel Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitLevelsApi.delete_plan_benefit_level ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitLevelsApi.delete_plan_benefit_level"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitLevelsApi.delete_plan_benefit_level"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitLevelsApi.delete_plan_benefit_level"
      end
      # verify the required parameter 'plan_benefit_level_key' is set
      if @api_client.config.client_side_validation && plan_benefit_level_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefit_level_key' when calling PlanBenefitLevelsApi.delete_plan_benefit_level"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/levels/{planBenefitLevelKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'planBenefitLevelKey' + '}', CGI.escape(plan_benefit_level_key.to_s))

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
        :operation => :"PlanBenefitLevelsApi.delete_plan_benefit_level",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitLevelsApi#delete_plan_benefit_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanBenefitLevel
    # Gets PlanBenefitLevel
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level_key [Integer] PlanBenefitLevel Key
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitLevelVBAResponse]
    def get_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, opts = {})
      data, _status_code, _headers = get_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, opts)
      data
    end

    # Get PlanBenefitLevel
    # Gets PlanBenefitLevel
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level_key [Integer] PlanBenefitLevel Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitLevelVBAResponse, Integer, Hash)>] PlanBenefitLevelVBAResponse data, response status code and response headers
    def get_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitLevelsApi.get_plan_benefit_level ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitLevelsApi.get_plan_benefit_level"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitLevelsApi.get_plan_benefit_level"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitLevelsApi.get_plan_benefit_level"
      end
      # verify the required parameter 'plan_benefit_level_key' is set
      if @api_client.config.client_side_validation && plan_benefit_level_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefit_level_key' when calling PlanBenefitLevelsApi.get_plan_benefit_level"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/levels/{planBenefitLevelKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'planBenefitLevelKey' + '}', CGI.escape(plan_benefit_level_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenefitLevelVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitLevelsApi.get_plan_benefit_level",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitLevelsApi#get_plan_benefit_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanBenefitLevel
    # Lists all PlanBenefitLevel for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitLevelListVBAResponse]
    def list_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, opts = {})
      data, _status_code, _headers = list_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, opts)
      data
    end

    # List PlanBenefitLevel
    # Lists all PlanBenefitLevel for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitLevelListVBAResponse, Integer, Hash)>] PlanBenefitLevelListVBAResponse data, response status code and response headers
    def list_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitLevelsApi.list_plan_benefit_level ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitLevelsApi.list_plan_benefit_level"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitLevelsApi.list_plan_benefit_level"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitLevelsApi.list_plan_benefit_level"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/levels'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenefitLevelListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitLevelsApi.list_plan_benefit_level",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitLevelsApi#list_plan_benefit_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanBenefitLevel
    # Create or Update multiple PlanBenefitLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level [Array<PlanBenefitLevel>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level, opts = {})
      data, _status_code, _headers = update_batch_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level, opts)
      data
    end

    # Create or Update Batch PlanBenefitLevel
    # Create or Update multiple PlanBenefitLevel at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level [Array<PlanBenefitLevel>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitLevelsApi.update_batch_plan_benefit_level ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitLevelsApi.update_batch_plan_benefit_level"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitLevelsApi.update_batch_plan_benefit_level"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitLevelsApi.update_batch_plan_benefit_level"
      end
      # verify the required parameter 'plan_benefit_level' is set
      if @api_client.config.client_side_validation && plan_benefit_level.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefit_level' when calling PlanBenefitLevelsApi.update_batch_plan_benefit_level"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/levels-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_benefit_level)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitLevelsApi.update_batch_plan_benefit_level",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitLevelsApi#update_batch_plan_benefit_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanBenefitLevel
    # Updates a specific PlanBenefitLevel.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level_key [Integer] PlanBenefitLevel Key
    # @param plan_benefit_level [PlanBenefitLevel] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitLevelVBAResponse]
    def update_plan_benefit_level(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level, opts = {})
      data, _status_code, _headers = update_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level, opts)
      data
    end

    # Update PlanBenefitLevel
    # Updates a specific PlanBenefitLevel.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefit_level_key [Integer] PlanBenefitLevel Key
    # @param plan_benefit_level [PlanBenefitLevel] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitLevelVBAResponse, Integer, Hash)>] PlanBenefitLevelVBAResponse data, response status code and response headers
    def update_plan_benefit_level_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefit_level_key, plan_benefit_level, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitLevelsApi.update_plan_benefit_level ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitLevelsApi.update_plan_benefit_level"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitLevelsApi.update_plan_benefit_level"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitLevelsApi.update_plan_benefit_level"
      end
      # verify the required parameter 'plan_benefit_level_key' is set
      if @api_client.config.client_side_validation && plan_benefit_level_key.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefit_level_key' when calling PlanBenefitLevelsApi.update_plan_benefit_level"
      end
      # verify the required parameter 'plan_benefit_level' is set
      if @api_client.config.client_side_validation && plan_benefit_level.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefit_level' when calling PlanBenefitLevelsApi.update_plan_benefit_level"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/levels/{planBenefitLevelKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'planBenefitLevelKey' + '}', CGI.escape(plan_benefit_level_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_benefit_level)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenefitLevelVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitLevelsApi.update_plan_benefit_level",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitLevelsApi#update_plan_benefit_level\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
