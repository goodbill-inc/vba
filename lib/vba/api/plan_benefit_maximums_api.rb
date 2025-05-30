=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitMaximumsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanMaximumBenefit
    # Creates a new PlanMaximumBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param included_benefit_code [String] Included Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumBenefitVBAResponse]
    def create_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts = {})
      data, _status_code, _headers = create_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts)
      data
    end

    # Create PlanMaximumBenefit
    # Creates a new PlanMaximumBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param included_benefit_code [String] Included Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumBenefitVBAResponse, Integer, Hash)>] PlanMaximumBenefitVBAResponse data, response status code and response headers
    def create_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitMaximumsApi.create_plan_maximum_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitMaximumsApi.create_plan_maximum_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitMaximumsApi.create_plan_maximum_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitMaximumsApi.create_plan_maximum_benefit"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitMaximumsApi.create_plan_maximum_benefit"
      end
      # verify the required parameter 'included_benefit_code' is set
      if @api_client.config.client_side_validation && included_benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'included_benefit_code' when calling PlanBenefitMaximumsApi.create_plan_maximum_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits/{includedBenefitCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'includedBenefitCode' + '}', CGI.escape(included_benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanMaximumBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitMaximumsApi.create_plan_maximum_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitMaximumsApi#create_plan_maximum_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanMaximumBenefit
    # Deletes an PlanMaximumBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param included_benefit_code [String] Included Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts = {})
      delete_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts)
      nil
    end

    # Delete PlanMaximumBenefit
    # Deletes an PlanMaximumBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param included_benefit_code [String] Included Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitMaximumsApi.delete_plan_maximum_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitMaximumsApi.delete_plan_maximum_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitMaximumsApi.delete_plan_maximum_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitMaximumsApi.delete_plan_maximum_benefit"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitMaximumsApi.delete_plan_maximum_benefit"
      end
      # verify the required parameter 'included_benefit_code' is set
      if @api_client.config.client_side_validation && included_benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'included_benefit_code' when calling PlanBenefitMaximumsApi.delete_plan_maximum_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits/{includedBenefitCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'includedBenefitCode' + '}', CGI.escape(included_benefit_code.to_s))

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
        :operation => :"PlanBenefitMaximumsApi.delete_plan_maximum_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitMaximumsApi#delete_plan_maximum_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanMaximumBenefit
    # Gets PlanMaximumBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param included_benefit_code [String] Included Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumBenefitVBAResponse]
    def get_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts = {})
      data, _status_code, _headers = get_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts)
      data
    end

    # Get PlanMaximumBenefit
    # Gets PlanMaximumBenefit
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param included_benefit_code [String] Included Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumBenefitVBAResponse, Integer, Hash)>] PlanMaximumBenefitVBAResponse data, response status code and response headers
    def get_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, included_benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitMaximumsApi.get_plan_maximum_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitMaximumsApi.get_plan_maximum_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitMaximumsApi.get_plan_maximum_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitMaximumsApi.get_plan_maximum_benefit"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitMaximumsApi.get_plan_maximum_benefit"
      end
      # verify the required parameter 'included_benefit_code' is set
      if @api_client.config.client_side_validation && included_benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'included_benefit_code' when calling PlanBenefitMaximumsApi.get_plan_maximum_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits/{includedBenefitCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s)).sub('{' + 'includedBenefitCode' + '}', CGI.escape(included_benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanMaximumBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitMaximumsApi.get_plan_maximum_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitMaximumsApi#get_plan_maximum_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanMaximumBenefit
    # Lists all PlanMaximumBenefit for the given planID and benefitCode and maxID
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param [Hash] opts the optional parameters
    # @return [PlanMaximumBenefitListVBAResponse]
    def list_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, opts = {})
      data, _status_code, _headers = list_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, opts)
      data
    end

    # List PlanMaximumBenefit
    # Lists all PlanMaximumBenefit for the given planID and benefitCode and maxID
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanMaximumBenefitListVBAResponse, Integer, Hash)>] PlanMaximumBenefitListVBAResponse data, response status code and response headers
    def list_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitMaximumsApi.list_plan_maximum_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitMaximumsApi.list_plan_maximum_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitMaximumsApi.list_plan_maximum_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitMaximumsApi.list_plan_maximum_benefit"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitMaximumsApi.list_plan_maximum_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanMaximumBenefitListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitMaximumsApi.list_plan_maximum_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitMaximumsApi#list_plan_maximum_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanMaximumBenefit
    # Create or Update multiple PlanMaximumBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param plan_maximum_benefit [Array<PlanMaximumBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_maximum_benefit(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit, opts = {})
      data, _status_code, _headers = update_batch_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit, opts)
      data
    end

    # Create or Update Batch PlanMaximumBenefit
    # Create or Update multiple PlanMaximumBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param max_id [String] Max ID
    # @param plan_maximum_benefit [Array<PlanMaximumBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_maximum_benefit_with_http_info(vbasoftware_database, plan_id, benefit_code, max_id, plan_maximum_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit"
      end
      # verify the required parameter 'max_id' is set
      if @api_client.config.client_side_validation && max_id.nil?
        fail ArgumentError, "Missing the required parameter 'max_id' when calling PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit"
      end
      # verify the required parameter 'plan_maximum_benefit' is set
      if @api_client.config.client_side_validation && plan_maximum_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'plan_maximum_benefit' when calling PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/maximums/{maxID}/included-benefits-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'maxID' + '}', CGI.escape(max_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_maximum_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitMaximumsApi.update_batch_plan_maximum_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitMaximumsApi#update_batch_plan_maximum_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
