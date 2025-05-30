=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanBenefitProviderTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanBenCodeProviderType
    # Creates a new PlanBenCodeProviderType
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_provider_type [PlanBenCodeProviderType] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeProviderTypeVBAResponse]
    def create_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type, opts = {})
      data, _status_code, _headers = create_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type, opts)
      data
    end

    # Create PlanBenCodeProviderType
    # Creates a new PlanBenCodeProviderType
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_provider_type [PlanBenCodeProviderType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeProviderTypeVBAResponse, Integer, Hash)>] PlanBenCodeProviderTypeVBAResponse data, response status code and response headers
    def create_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProviderTypesApi.create_plan_ben_code_provider_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProviderTypesApi.create_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProviderTypesApi.create_plan_ben_code_provider_type"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProviderTypesApi.create_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_ben_code_provider_type' is set
      if @api_client.config.client_side_validation && plan_ben_code_provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_provider_type' when calling PlanBenefitProviderTypesApi.create_plan_ben_code_provider_type"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/provider-types'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_provider_type)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenCodeProviderTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProviderTypesApi.create_plan_ben_code_provider_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProviderTypesApi#create_plan_ben_code_provider_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanBenCodeProviderType
    # Deletes an PlanBenCodeProviderType
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type, opts = {})
      delete_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, opts)
      nil
    end

    # Delete PlanBenCodeProviderType
    # Deletes an PlanBenCodeProviderType
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProviderTypesApi.delete_plan_ben_code_provider_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProviderTypesApi.delete_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProviderTypesApi.delete_plan_ben_code_provider_type"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProviderTypesApi.delete_plan_ben_code_provider_type"
      end
      # verify the required parameter 'provider_type' is set
      if @api_client.config.client_side_validation && provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'provider_type' when calling PlanBenefitProviderTypesApi.delete_plan_ben_code_provider_type"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/provider-types/{providerType}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'providerType' + '}', CGI.escape(provider_type.to_s))

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
        :operation => :"PlanBenefitProviderTypesApi.delete_plan_ben_code_provider_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProviderTypesApi#delete_plan_ben_code_provider_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanBenCodeProviderType
    # Gets PlanBenCodeProviderType
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeProviderTypeVBAResponse]
    def get_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type, opts = {})
      data, _status_code, _headers = get_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, opts)
      data
    end

    # Get PlanBenCodeProviderType
    # Gets PlanBenCodeProviderType
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param provider_type [String] Provider Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeProviderTypeVBAResponse, Integer, Hash)>] PlanBenCodeProviderTypeVBAResponse data, response status code and response headers
    def get_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProviderTypesApi.get_plan_ben_code_provider_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProviderTypesApi.get_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProviderTypesApi.get_plan_ben_code_provider_type"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProviderTypesApi.get_plan_ben_code_provider_type"
      end
      # verify the required parameter 'provider_type' is set
      if @api_client.config.client_side_validation && provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'provider_type' when calling PlanBenefitProviderTypesApi.get_plan_ben_code_provider_type"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/provider-types/{providerType}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'providerType' + '}', CGI.escape(provider_type.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenCodeProviderTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProviderTypesApi.get_plan_ben_code_provider_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProviderTypesApi#get_plan_ben_code_provider_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanBenCodeProviderType
    # Lists all PlanBenCodeProviderType for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeProviderTypeListVBAResponse]
    def list_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, opts = {})
      data, _status_code, _headers = list_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, opts)
      data
    end

    # List PlanBenCodeProviderType
    # Lists all PlanBenCodeProviderType for the given planID and benefitCode
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeProviderTypeListVBAResponse, Integer, Hash)>] PlanBenCodeProviderTypeListVBAResponse data, response status code and response headers
    def list_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProviderTypesApi.list_plan_ben_code_provider_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProviderTypesApi.list_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProviderTypesApi.list_plan_ben_code_provider_type"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProviderTypesApi.list_plan_ben_code_provider_type"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/provider-types'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanBenCodeProviderTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProviderTypesApi.list_plan_ben_code_provider_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProviderTypesApi#list_plan_ben_code_provider_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanBenCodeProviderType
    # Create or Update multiple PlanBenCodeProviderType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_provider_type [Array<PlanBenCodeProviderType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type, opts = {})
      data, _status_code, _headers = update_batch_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type, opts)
      data
    end

    # Create or Update Batch PlanBenCodeProviderType
    # Create or Update multiple PlanBenCodeProviderType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param plan_ben_code_provider_type [Array<PlanBenCodeProviderType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, plan_ben_code_provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProviderTypesApi.update_batch_plan_ben_code_provider_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProviderTypesApi.update_batch_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProviderTypesApi.update_batch_plan_ben_code_provider_type"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProviderTypesApi.update_batch_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_ben_code_provider_type' is set
      if @api_client.config.client_side_validation && plan_ben_code_provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_provider_type' when calling PlanBenefitProviderTypesApi.update_batch_plan_ben_code_provider_type"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/provider-types-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_provider_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProviderTypesApi.update_batch_plan_ben_code_provider_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProviderTypesApi#update_batch_plan_ben_code_provider_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanBenCodeProviderType
    # Updates a specific PlanBenCodeProviderType.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param provider_type [String] Provider Type
    # @param plan_ben_code_provider_type [PlanBenCodeProviderType] 
    # @param [Hash] opts the optional parameters
    # @return [PlanBenCodeProviderTypeVBAResponse]
    def update_plan_ben_code_provider_type(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type, opts = {})
      data, _status_code, _headers = update_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type, opts)
      data
    end

    # Update PlanBenCodeProviderType
    # Updates a specific PlanBenCodeProviderType.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param benefit_code [String] Benefit Code
    # @param provider_type [String] Provider Type
    # @param plan_ben_code_provider_type [PlanBenCodeProviderType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanBenCodeProviderTypeVBAResponse, Integer, Hash)>] PlanBenCodeProviderTypeVBAResponse data, response status code and response headers
    def update_plan_ben_code_provider_type_with_http_info(vbasoftware_database, plan_id, benefit_code, provider_type, plan_ben_code_provider_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type"
      end
      # verify the required parameter 'provider_type' is set
      if @api_client.config.client_side_validation && provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'provider_type' when calling PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type"
      end
      # verify the required parameter 'plan_ben_code_provider_type' is set
      if @api_client.config.client_side_validation && plan_ben_code_provider_type.nil?
        fail ArgumentError, "Missing the required parameter 'plan_ben_code_provider_type' when calling PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type"
      end
      # resource path
      local_var_path = '/plans/{planID}/benefits/{benefitCode}/provider-types/{providerType}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s)).sub('{' + 'providerType' + '}', CGI.escape(provider_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_ben_code_provider_type)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanBenCodeProviderTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanBenefitProviderTypesApi.update_plan_ben_code_provider_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanBenefitProviderTypesApi#update_plan_ben_code_provider_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
