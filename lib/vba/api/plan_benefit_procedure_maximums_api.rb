=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitProcedureMaximumsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanMaximumProcedure
    # Creates a new PlanMaximumProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param plan_maximum_procedure [PlanMaximumProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumProcedureVBAResponse]
    def create_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure, opts = {})
      data, _status_code, _headers = create_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure, opts)
      data
    end

    # Create PlanMaximumProcedure
    # Creates a new PlanMaximumProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param plan_maximum_procedure [PlanMaximumProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumProcedureVBAResponse, Integer, Hash)>] PlanMaximumProcedureVBAResponse data, response status code and response headers
    def create_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_maximum_procedure' is set
      if @api_client.config.client_side_validation && plan_maximum_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'plan_maximum_procedure' when calling PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_maximum_procedure)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanMaximumProcedureVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProcedureMaximumsApi.create_plan_maximum_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProcedureMaximumsApi#create_plan_maximum_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanMaximumProcedure
    # Deletes an PlanMaximumProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, opts = {})
      delete_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, opts)
      nil
    end

    # Delete PlanMaximumProcedure
    # Deletes an PlanMaximumProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure"
      end
      # verify the required parameter 'from_procedure' is set
      if @api_client.config.client_side_validation && from_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'from_procedure' when calling PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures/{fromProcedure}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'fromProcedure' + '}', CGI.escape(from_procedure.to_s))

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
        :operation => :"PlanBenefitProcedureMaximumsApi.delete_plan_maximum_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProcedureMaximumsApi#delete_plan_maximum_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanMaximumProcedure
    # Gets PlanMaximumProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumProcedureVBAResponse]
    def get_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, opts = {})
      data, _status_code, _headers = get_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, opts)
      data
    end

    # Get PlanMaximumProcedure
    # Gets PlanMaximumProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumProcedureVBAResponse, Integer, Hash)>] PlanMaximumProcedureVBAResponse data, response status code and response headers
    def get_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure"
      end
      # verify the required parameter 'from_procedure' is set
      if @api_client.config.client_side_validation && from_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'from_procedure' when calling PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures/{fromProcedure}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'fromProcedure' + '}', CGI.escape(from_procedure.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanMaximumProcedureVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProcedureMaximumsApi.get_plan_maximum_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProcedureMaximumsApi#get_plan_maximum_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanMaximumProcedure
    # Lists all PlanMaximumProcedure for the given planID and benefitCode and fromProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumProcedureListVBAResponse]
    def list_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, opts = {})
      data, _status_code, _headers = list_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, opts)
      data
    end

    # List PlanMaximumProcedure
    # Lists all PlanMaximumProcedure for the given planID and benefitCode and fromProcedure
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumProcedureListVBAResponse, Integer, Hash)>] PlanMaximumProcedureListVBAResponse data, response status code and response headers
    def list_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProcedureMaximumsApi.list_plan_maximum_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProcedureMaximumsApi.list_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProcedureMaximumsApi.list_plan_maximum_procedure"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProcedureMaximumsApi.list_plan_maximum_procedure"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitProcedureMaximumsApi.list_plan_maximum_procedure"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanMaximumProcedureListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProcedureMaximumsApi.list_plan_maximum_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProcedureMaximumsApi#list_plan_maximum_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanMaximumProcedure
    # Create or Update multiple PlanMaximumProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param plan_maximum_procedure [Array<PlanMaximumProcedure>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure, opts = {})
      data, _status_code, _headers = update_batch_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure, opts)
      data
    end

    # Create or Update Batch PlanMaximumProcedure
    # Create or Update multiple PlanMaximumProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param plan_maximum_procedure [Array<PlanMaximumProcedure>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_maximum_procedure' is set
      if @api_client.config.client_side_validation && plan_maximum_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'plan_maximum_procedure' when calling PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_maximum_procedure)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProcedureMaximumsApi.update_batch_plan_maximum_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProcedureMaximumsApi#update_batch_plan_maximum_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanMaximumProcedure
    # Updates a specific PlanMaximumProcedure.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param from_procedure [String] From Procedure
    # @param plan_maximum_procedure [PlanMaximumProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumProcedureVBAResponse]
    def update_plan_maximum_procedure(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure, opts = {})
      data, _status_code, _headers = update_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure, opts)
      data
    end

    # Update PlanMaximumProcedure
    # Updates a specific PlanMaximumProcedure.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param from_procedure [String] From Procedure
    # @param plan_maximum_procedure [PlanMaximumProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumProcedureVBAResponse, Integer, Hash)>] PlanMaximumProcedureVBAResponse data, response status code and response headers
    def update_plan_maximum_procedure_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, from_procedure, plan_maximum_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure"
      end
      # verify the required parameter 'from_procedure' is set
      if @api_client.config.client_side_validation && from_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'from_procedure' when calling PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure"
      end
      # verify the required parameter 'plan_maximum_procedure' is set
      if @api_client.config.client_side_validation && plan_maximum_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'plan_maximum_procedure' when calling PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/procedures/{fromProcedure}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'fromProcedure' + '}', CGI.escape(from_procedure.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_maximum_procedure)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanMaximumProcedureVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProcedureMaximumsApi.update_plan_maximum_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProcedureMaximumsApi#update_plan_maximum_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
