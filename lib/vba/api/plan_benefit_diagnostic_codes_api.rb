=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitDiagnosticCodesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanBenCodeDiagCode
    # Creates a new PlanBenCodeDiagCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_diag_code [PlanBenCodeDiagCode] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeDiagCodeVBAResponse]
    def create_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code, opts = {})
      data, _status_code, _headers = create_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code, opts)
      data
    end

    # Create PlanBenCodeDiagCode
    # Creates a new PlanBenCodeDiagCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_diag_code [PlanBenCodeDiagCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeDiagCodeVBAResponse, Integer, Hash)>] PlanBenCodeDiagCodeVBAResponse data, response status code and response headers
    def create_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitDiagnosticCodesApi.create_plan_ben_code_diag_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitDiagnosticCodesApi.create_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitDiagnosticCodesApi.create_plan_ben_code_diag_code"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitDiagnosticCodesApi.create_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_ben_code_diag_code' is set
      if @api_client.config.client_side_validation && plan_ben_code_diag_code.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_diag_code' when calling PlanBenefitDiagnosticCodesApi.create_plan_ben_code_diag_code"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/diagnoses'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_diag_code)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenCodeDiagCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitDiagnosticCodesApi.create_plan_ben_code_diag_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitDiagnosticCodesApi#create_plan_ben_code_diag_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanBenCodeDiagCode
    # Deletes an PlanBenCodeDiagCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param diagnostic_code_type [String] Diagnostic Code Type
    # @param from_diag_code [String] From Diag Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, opts = {})
      delete_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, opts)
      nil
    end

    # Delete PlanBenCodeDiagCode
    # Deletes an PlanBenCodeDiagCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param diagnostic_code_type [String] Diagnostic Code Type
    # @param from_diag_code [String] From Diag Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code"
      end
      # verify the required parameter 'diagnostic_code_type' is set
      if @api_client.config.client_side_validation && diagnostic_code_type.nil?
        fail ArgumentError, "Missing the required parameter 'diagnostic_code_type' when calling PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code"
      end
      # verify the required parameter 'from_diag_code' is set
      if @api_client.config.client_side_validation && from_diag_code.nil?
        fail ArgumentError, "Missing the required parameter 'from_diag_code' when calling PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'diagnosticCodeType' + '}', CGI.escape(diagnostic_code_type.to_s)).sub('{' + 'fromDiagCode' + '}', CGI.escape(from_diag_code.to_s))

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
        :operation => :"PlanBenefitDiagnosticCodesApi.delete_plan_ben_code_diag_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitDiagnosticCodesApi#delete_plan_ben_code_diag_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanBenCodeDiagCode
    # Gets PlanBenCodeDiagCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param diagnostic_code_type [String] Diagnostic Code Type
    # @param from_diag_code [String] From Diag Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeDiagCodeVBAResponse]
    def get_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, opts = {})
      data, _status_code, _headers = get_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, opts)
      data
    end

    # Get PlanBenCodeDiagCode
    # Gets PlanBenCodeDiagCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param diagnostic_code_type [String] Diagnostic Code Type
    # @param from_diag_code [String] From Diag Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeDiagCodeVBAResponse, Integer, Hash)>] PlanBenCodeDiagCodeVBAResponse data, response status code and response headers
    def get_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code"
      end
      # verify the required parameter 'diagnostic_code_type' is set
      if @api_client.config.client_side_validation && diagnostic_code_type.nil?
        fail ArgumentError, "Missing the required parameter 'diagnostic_code_type' when calling PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code"
      end
      # verify the required parameter 'from_diag_code' is set
      if @api_client.config.client_side_validation && from_diag_code.nil?
        fail ArgumentError, "Missing the required parameter 'from_diag_code' when calling PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'diagnosticCodeType' + '}', CGI.escape(diagnostic_code_type.to_s)).sub('{' + 'fromDiagCode' + '}', CGI.escape(from_diag_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenCodeDiagCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitDiagnosticCodesApi.get_plan_ben_code_diag_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitDiagnosticCodesApi#get_plan_ben_code_diag_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanBenCodeDiagCode
    # Lists all PlanBenCodeDiagCode for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeDiagCodeListVBAResponse]
    def list_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, opts = {})
      data, _status_code, _headers = list_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, opts)
      data
    end

    # List PlanBenCodeDiagCode
    # Lists all PlanBenCodeDiagCode for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeDiagCodeListVBAResponse, Integer, Hash)>] PlanBenCodeDiagCodeListVBAResponse data, response status code and response headers
    def list_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitDiagnosticCodesApi.list_plan_ben_code_diag_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitDiagnosticCodesApi.list_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitDiagnosticCodesApi.list_plan_ben_code_diag_code"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitDiagnosticCodesApi.list_plan_ben_code_diag_code"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/diagnoses'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenCodeDiagCodeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitDiagnosticCodesApi.list_plan_ben_code_diag_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitDiagnosticCodesApi#list_plan_ben_code_diag_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanBenCodeDiagCode
    # Create or Update multiple PlanBenCodeDiagCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_diag_code [Array<PlanBenCodeDiagCode>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code, opts = {})
      data, _status_code, _headers = update_batch_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code, opts)
      data
    end

    # Create or Update Batch PlanBenCodeDiagCode
    # Create or Update multiple PlanBenCodeDiagCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_diag_code [Array<PlanBenCodeDiagCode>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_diag_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitDiagnosticCodesApi.update_batch_plan_ben_code_diag_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitDiagnosticCodesApi.update_batch_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitDiagnosticCodesApi.update_batch_plan_ben_code_diag_code"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitDiagnosticCodesApi.update_batch_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_ben_code_diag_code' is set
      if @api_client.config.client_side_validation && plan_ben_code_diag_code.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_diag_code' when calling PlanBenefitDiagnosticCodesApi.update_batch_plan_ben_code_diag_code"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/diagnoses-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_diag_code)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitDiagnosticCodesApi.update_batch_plan_ben_code_diag_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitDiagnosticCodesApi#update_batch_plan_ben_code_diag_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanBenCodeDiagCode
    # Updates a specific PlanBenCodeDiagCode.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param diagnostic_code_type [String] Diagnostic Code Type
    # @param from_diag_code [String] From Diag Code
    # @param plan_ben_code_diag_code [PlanBenCodeDiagCode] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeDiagCodeVBAResponse]
    def update_plan_ben_code_diag_code(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code, opts = {})
      data, _status_code, _headers = update_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code, opts)
      data
    end

    # Update PlanBenCodeDiagCode
    # Updates a specific PlanBenCodeDiagCode.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param diagnostic_code_type [String] Diagnostic Code Type
    # @param from_diag_code [String] From Diag Code
    # @param plan_ben_code_diag_code [PlanBenCodeDiagCode] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeDiagCodeVBAResponse, Integer, Hash)>] PlanBenCodeDiagCodeVBAResponse data, response status code and response headers
    def update_plan_ben_code_diag_code_with_http_info(vbasoftware_database, plan_id, benefit_code, diagnostic_code_type, from_diag_code, plan_ben_code_diag_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code"
      end
      # verify the required parameter 'diagnostic_code_type' is set
      if @api_client.config.client_side_validation && diagnostic_code_type.nil?
        fail ArgumentError, "Missing the required parameter 'diagnostic_code_type' when calling PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code"
      end
      # verify the required parameter 'from_diag_code' is set
      if @api_client.config.client_side_validation && from_diag_code.nil?
        fail ArgumentError, "Missing the required parameter 'from_diag_code' when calling PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code"
      end
      # verify the required parameter 'plan_ben_code_diag_code' is set
      if @api_client.config.client_side_validation && plan_ben_code_diag_code.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_diag_code' when calling PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/diagnoses/{diagnosticCodeType}/{fromDiagCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'diagnosticCodeType' + '}', CGI.escape(diagnostic_code_type.to_s)).sub('{' + 'fromDiagCode' + '}', CGI.escape(from_diag_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_diag_code)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenCodeDiagCodeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitDiagnosticCodesApi.update_plan_ben_code_diag_code",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitDiagnosticCodesApi#update_plan_ben_code_diag_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
