=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitPlaceCoInsuranceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanBenefitsPlaceCoIns
    # Creates a new PlanBenefitsPlaceCoIns
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefits_place_co_ins [PlanBenefitsPlaceCoIns] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitsPlaceCoInsVBAResponse]
    def create_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins, opts = {})
      data, _status_code, _headers = create_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins, opts)
      data
    end

    # Create PlanBenefitsPlaceCoIns
    # Creates a new PlanBenefitsPlaceCoIns
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefits_place_co_ins [PlanBenefitsPlaceCoIns] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitsPlaceCoInsVBAResponse, Integer, Hash)>] PlanBenefitsPlaceCoInsVBAResponse data, response status code and response headers
    def create_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlaceCoInsuranceApi.create_plan_benefits_place_co_ins ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlaceCoInsuranceApi.create_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlaceCoInsuranceApi.create_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlaceCoInsuranceApi.create_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_benefits_place_co_ins' is set
      if @api_client.config.client_side_validation && plan_benefits_place_co_ins.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefits_place_co_ins' when calling PlanBenefitPlaceCoInsuranceApi.create_plan_benefits_place_co_ins"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/place-co-insurance'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_benefits_place_co_ins)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenefitsPlaceCoInsVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlaceCoInsuranceApi.create_plan_benefits_place_co_ins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlaceCoInsuranceApi#create_plan_benefits_place_co_ins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanBenefitsPlaceCoIns
    # Deletes an PlanBenefitsPlaceCoIns
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      delete_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts)
      nil
    end

    # Delete PlanBenefitsPlaceCoIns
    # Deletes an PlanBenefitsPlaceCoIns
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlaceCoInsuranceApi.delete_plan_benefits_place_co_ins ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlaceCoInsuranceApi.delete_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlaceCoInsuranceApi.delete_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlaceCoInsuranceApi.delete_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'place_code' is set
      if @api_client.config.client_side_validation && place_code.nil?
        fail ArgumentError, "Missing the required parameter 'place_code' when calling PlanBenefitPlaceCoInsuranceApi.delete_plan_benefits_place_co_ins"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/place-co-insurance/{placeCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'placeCode' + '}', CGI.escape(place_code.to_s))

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
        :operation => :"PlanBenefitPlaceCoInsuranceApi.delete_plan_benefits_place_co_ins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlaceCoInsuranceApi#delete_plan_benefits_place_co_ins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanBenefitsPlaceCoIns
    # Gets PlanBenefitsPlaceCoIns
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitsPlaceCoInsVBAResponse]
    def get_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      data, _status_code, _headers = get_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts)
      data
    end

    # Get PlanBenefitsPlaceCoIns
    # Gets PlanBenefitsPlaceCoIns
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitsPlaceCoInsVBAResponse, Integer, Hash)>] PlanBenefitsPlaceCoInsVBAResponse data, response status code and response headers
    def get_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlaceCoInsuranceApi.get_plan_benefits_place_co_ins ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlaceCoInsuranceApi.get_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlaceCoInsuranceApi.get_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlaceCoInsuranceApi.get_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'place_code' is set
      if @api_client.config.client_side_validation && place_code.nil?
        fail ArgumentError, "Missing the required parameter 'place_code' when calling PlanBenefitPlaceCoInsuranceApi.get_plan_benefits_place_co_ins"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/place-co-insurance/{placeCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'placeCode' + '}', CGI.escape(place_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenefitsPlaceCoInsVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlaceCoInsuranceApi.get_plan_benefits_place_co_ins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlaceCoInsuranceApi#get_plan_benefits_place_co_ins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanBenefitsPlaceCoIns
    # Lists all PlanBenefitsPlaceCoIns for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitsPlaceCoInsListVBAResponse]
    def list_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, opts = {})
      data, _status_code, _headers = list_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, opts)
      data
    end

    # List PlanBenefitsPlaceCoIns
    # Lists all PlanBenefitsPlaceCoIns for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitsPlaceCoInsListVBAResponse, Integer, Hash)>] PlanBenefitsPlaceCoInsListVBAResponse data, response status code and response headers
    def list_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlaceCoInsuranceApi.list_plan_benefits_place_co_ins ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlaceCoInsuranceApi.list_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlaceCoInsuranceApi.list_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlaceCoInsuranceApi.list_plan_benefits_place_co_ins"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/place-co-insurance'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenefitsPlaceCoInsListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlaceCoInsuranceApi.list_plan_benefits_place_co_ins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlaceCoInsuranceApi#list_plan_benefits_place_co_ins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanBenefitsPlaceCoIns
    # Create or Update multiple PlanBenefitsPlaceCoIns at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefits_place_co_ins [Array<PlanBenefitsPlaceCoIns>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins, opts = {})
      data, _status_code, _headers = update_batch_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins, opts)
      data
    end

    # Create or Update Batch PlanBenefitsPlaceCoIns
    # Create or Update multiple PlanBenefitsPlaceCoIns at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_benefits_place_co_ins [Array<PlanBenefitsPlaceCoIns>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_benefits_place_co_ins, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlaceCoInsuranceApi.update_batch_plan_benefits_place_co_ins ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlaceCoInsuranceApi.update_batch_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlaceCoInsuranceApi.update_batch_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlaceCoInsuranceApi.update_batch_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_benefits_place_co_ins' is set
      if @api_client.config.client_side_validation && plan_benefits_place_co_ins.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefits_place_co_ins' when calling PlanBenefitPlaceCoInsuranceApi.update_batch_plan_benefits_place_co_ins"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/place-co-insurance-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_benefits_place_co_ins)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlaceCoInsuranceApi.update_batch_plan_benefits_place_co_ins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlaceCoInsuranceApi#update_batch_plan_benefits_place_co_ins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanBenefitsPlaceCoIns
    # Updates a specific PlanBenefitsPlaceCoIns.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param plan_benefits_place_co_ins [PlanBenefitsPlaceCoIns] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenefitsPlaceCoInsVBAResponse]
    def update_plan_benefits_place_co_ins(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins, opts = {})
      data, _status_code, _headers = update_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins, opts)
      data
    end

    # Update PlanBenefitsPlaceCoIns
    # Updates a specific PlanBenefitsPlaceCoIns.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param place_code [String] Place Code
    # @param plan_benefits_place_co_ins [PlanBenefitsPlaceCoIns] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenefitsPlaceCoInsVBAResponse, Integer, Hash)>] PlanBenefitsPlaceCoInsVBAResponse data, response status code and response headers
    def update_plan_benefits_place_co_ins_with_http_info(vbasoftware_database, plan_id, benefit_code, place_code, plan_benefits_place_co_ins, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'place_code' is set
      if @api_client.config.client_side_validation && place_code.nil?
        fail ArgumentError, "Missing the required parameter 'place_code' when calling PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins"
      end
      # verify the required parameter 'plan_benefits_place_co_ins' is set
      if @api_client.config.client_side_validation && plan_benefits_place_co_ins.nil?
        fail ArgumentError, "Missing the required parameter 'plan_benefits_place_co_ins' when calling PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/place-co-insurance/{placeCode}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'placeCode' + '}', CGI.escape(place_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_benefits_place_co_ins)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenefitsPlaceCoInsVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitPlaceCoInsuranceApi.update_plan_benefits_place_co_ins",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitPlaceCoInsuranceApi#update_plan_benefits_place_co_ins\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
