=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PlanProcedureAgeRestrictionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PlanProcedureAge
    # Creates a new PlanProcedureAge
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_procedure_age [PlanProcedureAge] 
    # @param [Hash] opts the optional parameters
    # @return [PlanProcedureAgeVBAResponse]
    def create_plan_procedure_age(vbasoftware_database, plan_id, plan_procedure_age, opts = {})
      data, _status_code, _headers = create_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age, opts)
      data
    end

    # Create PlanProcedureAge
    # Creates a new PlanProcedureAge
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_procedure_age [PlanProcedureAge] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanProcedureAgeVBAResponse, Integer, Hash)>] PlanProcedureAgeVBAResponse data, response status code and response headers
    def create_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanProcedureAgeRestrictionsApi.create_plan_procedure_age ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanProcedureAgeRestrictionsApi.create_plan_procedure_age"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanProcedureAgeRestrictionsApi.create_plan_procedure_age"
      end
      # verify the required parameter 'plan_procedure_age' is set
      if @api_client.config.client_side_validation && plan_procedure_age.nil?
        fail ArgumentError, "Missing the required parameter 'plan_procedure_age' when calling PlanProcedureAgeRestrictionsApi.create_plan_procedure_age"
      end
      # resource path
      local_var_path = '/plans/{planID}/procedure-restrictions'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_procedure_age)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanProcedureAgeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanProcedureAgeRestrictionsApi.create_plan_procedure_age",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanProcedureAgeRestrictionsApi#create_plan_procedure_age\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PlanProcedureAge
    # Deletes an PlanProcedureAge
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param procedure_age_key [Integer] ProcedureAgeKey
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key, opts = {})
      delete_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, opts)
      nil
    end

    # Delete PlanProcedureAge
    # Deletes an PlanProcedureAge
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param procedure_age_key [Integer] ProcedureAgeKey
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanProcedureAgeRestrictionsApi.delete_plan_procedure_age ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanProcedureAgeRestrictionsApi.delete_plan_procedure_age"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanProcedureAgeRestrictionsApi.delete_plan_procedure_age"
      end
      # verify the required parameter 'procedure_age_key' is set
      if @api_client.config.client_side_validation && procedure_age_key.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_age_key' when calling PlanProcedureAgeRestrictionsApi.delete_plan_procedure_age"
      end
      # resource path
      local_var_path = '/plans/{planID}/procedure-restrictions/{procedureAgeKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'procedureAgeKey' + '}', CGI.escape(procedure_age_key.to_s))

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
        :operation => :"PlanProcedureAgeRestrictionsApi.delete_plan_procedure_age",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanProcedureAgeRestrictionsApi#delete_plan_procedure_age\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PlanProcedureAge
    # Gets PlanProcedureAge
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param procedure_age_key [Integer] ProcedureAgeKey
    # @param [Hash] opts the optional parameters
    # @return [PlanProcedureAgeVBAResponse]
    def get_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key, opts = {})
      data, _status_code, _headers = get_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, opts)
      data
    end

    # Get PlanProcedureAge
    # Gets PlanProcedureAge
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param procedure_age_key [Integer] ProcedureAgeKey
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanProcedureAgeVBAResponse, Integer, Hash)>] PlanProcedureAgeVBAResponse data, response status code and response headers
    def get_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanProcedureAgeRestrictionsApi.get_plan_procedure_age ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanProcedureAgeRestrictionsApi.get_plan_procedure_age"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanProcedureAgeRestrictionsApi.get_plan_procedure_age"
      end
      # verify the required parameter 'procedure_age_key' is set
      if @api_client.config.client_side_validation && procedure_age_key.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_age_key' when calling PlanProcedureAgeRestrictionsApi.get_plan_procedure_age"
      end
      # resource path
      local_var_path = '/plans/{planID}/procedure-restrictions/{procedureAgeKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'procedureAgeKey' + '}', CGI.escape(procedure_age_key.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanProcedureAgeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanProcedureAgeRestrictionsApi.get_plan_procedure_age",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanProcedureAgeRestrictionsApi#get_plan_procedure_age\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PlanProcedureAge
    # Lists all PlanProcedureAge for the given planID
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @return [PlanProcedureAgeListVBAResponse]
    def list_plan_procedure_age(vbasoftware_database, plan_id, opts = {})
      data, _status_code, _headers = list_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, opts)
      data
    end

    # List PlanProcedureAge
    # Lists all PlanProcedureAge for the given planID
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanProcedureAgeListVBAResponse, Integer, Hash)>] PlanProcedureAgeListVBAResponse data, response status code and response headers
    def list_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanProcedureAgeRestrictionsApi.list_plan_procedure_age ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanProcedureAgeRestrictionsApi.list_plan_procedure_age"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanProcedureAgeRestrictionsApi.list_plan_procedure_age"
      end
      # resource path
      local_var_path = '/plans/{planID}/procedure-restrictions'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PlanProcedureAgeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanProcedureAgeRestrictionsApi.list_plan_procedure_age",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanProcedureAgeRestrictionsApi#list_plan_procedure_age\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PlanProcedureAge
    # Create or Update multiple PlanProcedureAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_procedure_age [Array<PlanProcedureAge>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_plan_procedure_age(vbasoftware_database, plan_id, plan_procedure_age, opts = {})
      data, _status_code, _headers = update_batch_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age, opts)
      data
    end

    # Create or Update Batch PlanProcedureAge
    # Create or Update multiple PlanProcedureAge at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param plan_procedure_age [Array<PlanProcedureAge>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, plan_procedure_age, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanProcedureAgeRestrictionsApi.update_batch_plan_procedure_age ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanProcedureAgeRestrictionsApi.update_batch_plan_procedure_age"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanProcedureAgeRestrictionsApi.update_batch_plan_procedure_age"
      end
      # verify the required parameter 'plan_procedure_age' is set
      if @api_client.config.client_side_validation && plan_procedure_age.nil?
        fail ArgumentError, "Missing the required parameter 'plan_procedure_age' when calling PlanProcedureAgeRestrictionsApi.update_batch_plan_procedure_age"
      end
      # resource path
      local_var_path = '/plans/{planID}/procedure-restrictions-batch'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_procedure_age)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanProcedureAgeRestrictionsApi.update_batch_plan_procedure_age",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanProcedureAgeRestrictionsApi#update_batch_plan_procedure_age\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PlanProcedureAge
    # Updates a specific PlanProcedureAge.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param procedure_age_key [Integer] ProcedureAgeKey
    # @param plan_procedure_age [PlanProcedureAge] 
    # @param [Hash] opts the optional parameters
    # @return [PlanProcedureAgeVBAResponse]
    def update_plan_procedure_age(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age, opts = {})
      data, _status_code, _headers = update_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age, opts)
      data
    end

    # Update PlanProcedureAge
    # Updates a specific PlanProcedureAge.
    # @param vbasoftware_database [String] Target database
    # @param plan_id [String] Plan ID
    # @param procedure_age_key [Integer] ProcedureAgeKey
    # @param plan_procedure_age [PlanProcedureAge] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PlanProcedureAgeVBAResponse, Integer, Hash)>] PlanProcedureAgeVBAResponse data, response status code and response headers
    def update_plan_procedure_age_with_http_info(vbasoftware_database, plan_id, procedure_age_key, plan_procedure_age, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlanProcedureAgeRestrictionsApi.update_plan_procedure_age ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PlanProcedureAgeRestrictionsApi.update_plan_procedure_age"
      end
      # verify the required parameter 'plan_id' is set
      if @api_client.config.client_side_validation && plan_id.nil?
        fail ArgumentError, "Missing the required parameter 'plan_id' when calling PlanProcedureAgeRestrictionsApi.update_plan_procedure_age"
      end
      # verify the required parameter 'procedure_age_key' is set
      if @api_client.config.client_side_validation && procedure_age_key.nil?
        fail ArgumentError, "Missing the required parameter 'procedure_age_key' when calling PlanProcedureAgeRestrictionsApi.update_plan_procedure_age"
      end
      # verify the required parameter 'plan_procedure_age' is set
      if @api_client.config.client_side_validation && plan_procedure_age.nil?
        fail ArgumentError, "Missing the required parameter 'plan_procedure_age' when calling PlanProcedureAgeRestrictionsApi.update_plan_procedure_age"
      end
      # resource path
      local_var_path = '/plans/{planID}/procedure-restrictions/{procedureAgeKey}'.sub('{' + 'planID' + '}', CGI.escape(plan_id.to_s)).sub('{' + 'procedureAgeKey' + '}', CGI.escape(procedure_age_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(plan_procedure_age)

      # return_type
      return_type = opts[:debug_return_type] || 'PlanProcedureAgeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PlanProcedureAgeRestrictionsApi.update_plan_procedure_age",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanProcedureAgeRestrictionsApi#update_plan_procedure_age\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
