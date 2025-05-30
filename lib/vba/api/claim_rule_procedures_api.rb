=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimRuleProceduresApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimRuleProcedure
    # Creates a new ClaimRuleProcedure
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param claim_rule_procedure [ClaimRuleProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimRuleProcedureVBAResponse]
    def create_claim_rule_procedure(vbasoftware_database, claim_rule_key, claim_rule_procedure, opts = {})
      data, _status_code, _headers = create_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure, opts)
      data
    end

    # Create ClaimRuleProcedure
    # Creates a new ClaimRuleProcedure
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param claim_rule_procedure [ClaimRuleProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimRuleProcedureVBAResponse, Integer, Hash)>] ClaimRuleProcedureVBAResponse data, response status code and response headers
    def create_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleProceduresApi.create_claim_rule_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleProceduresApi.create_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_key' is set
      if @api_client.config.client_side_validation && claim_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_key' when calling ClaimRuleProceduresApi.create_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_procedure' is set
      if @api_client.config.client_side_validation && claim_rule_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_procedure' when calling ClaimRuleProceduresApi.create_claim_rule_procedure"
      end
      # resource path
      local_var_path = '/claim-rules/{claimRuleKey}/procedures'.sub('{' + 'claimRuleKey' + '}', CGI.escape(claim_rule_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_rule_procedure)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimRuleProcedureVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleProceduresApi.create_claim_rule_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleProceduresApi#create_claim_rule_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimRuleProcedure
    # Deletes an ClaimRuleProcedure
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure, opts = {})
      delete_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, opts)
      nil
    end

    # Delete ClaimRuleProcedure
    # Deletes an ClaimRuleProcedure
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleProceduresApi.delete_claim_rule_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleProceduresApi.delete_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_key' is set
      if @api_client.config.client_side_validation && claim_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_key' when calling ClaimRuleProceduresApi.delete_claim_rule_procedure"
      end
      # verify the required parameter 'from_procedure' is set
      if @api_client.config.client_side_validation && from_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'from_procedure' when calling ClaimRuleProceduresApi.delete_claim_rule_procedure"
      end
      # resource path
      local_var_path = '/claim-rules/{claimRuleKey}/procedures/{fromProcedure}'.sub('{' + 'claimRuleKey' + '}', CGI.escape(claim_rule_key.to_s)).sub('{' + 'fromProcedure' + '}', CGI.escape(from_procedure.to_s))

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
        :operation => :"ClaimRuleProceduresApi.delete_claim_rule_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleProceduresApi#delete_claim_rule_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimRuleProcedure
    # Gets ClaimRuleProcedure
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [ClaimRuleProcedureVBAResponse]
    def get_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure, opts = {})
      data, _status_code, _headers = get_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, opts)
      data
    end

    # Get ClaimRuleProcedure
    # Gets ClaimRuleProcedure
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param from_procedure [String] From Procedure
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimRuleProcedureVBAResponse, Integer, Hash)>] ClaimRuleProcedureVBAResponse data, response status code and response headers
    def get_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleProceduresApi.get_claim_rule_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleProceduresApi.get_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_key' is set
      if @api_client.config.client_side_validation && claim_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_key' when calling ClaimRuleProceduresApi.get_claim_rule_procedure"
      end
      # verify the required parameter 'from_procedure' is set
      if @api_client.config.client_side_validation && from_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'from_procedure' when calling ClaimRuleProceduresApi.get_claim_rule_procedure"
      end
      # resource path
      local_var_path = '/claim-rules/{claimRuleKey}/procedures/{fromProcedure}'.sub('{' + 'claimRuleKey' + '}', CGI.escape(claim_rule_key.to_s)).sub('{' + 'fromProcedure' + '}', CGI.escape(from_procedure.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimRuleProcedureVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleProceduresApi.get_claim_rule_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleProceduresApi#get_claim_rule_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimRuleProcedure
    # Lists all ClaimRuleProcedure for the given claimRuleKey
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimRuleProcedureListVBAResponse]
    def list_claim_rule_procedure(vbasoftware_database, claim_rule_key, opts = {})
      data, _status_code, _headers = list_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, opts)
      data
    end

    # List ClaimRuleProcedure
    # Lists all ClaimRuleProcedure for the given claimRuleKey
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimRuleProcedureListVBAResponse, Integer, Hash)>] ClaimRuleProcedureListVBAResponse data, response status code and response headers
    def list_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleProceduresApi.list_claim_rule_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleProceduresApi.list_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_key' is set
      if @api_client.config.client_side_validation && claim_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_key' when calling ClaimRuleProceduresApi.list_claim_rule_procedure"
      end
      # resource path
      local_var_path = '/claim-rules/{claimRuleKey}/procedures'.sub('{' + 'claimRuleKey' + '}', CGI.escape(claim_rule_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimRuleProcedureListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleProceduresApi.list_claim_rule_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleProceduresApi#list_claim_rule_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimRuleProcedure
    # Create or Update multiple ClaimRuleProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param claim_rule_procedure [Array<ClaimRuleProcedure>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_rule_procedure(vbasoftware_database, claim_rule_key, claim_rule_procedure, opts = {})
      data, _status_code, _headers = update_batch_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure, opts)
      data
    end

    # Create or Update Batch ClaimRuleProcedure
    # Create or Update multiple ClaimRuleProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param claim_rule_procedure [Array<ClaimRuleProcedure>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, claim_rule_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleProceduresApi.update_batch_claim_rule_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleProceduresApi.update_batch_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_key' is set
      if @api_client.config.client_side_validation && claim_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_key' when calling ClaimRuleProceduresApi.update_batch_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_procedure' is set
      if @api_client.config.client_side_validation && claim_rule_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_procedure' when calling ClaimRuleProceduresApi.update_batch_claim_rule_procedure"
      end
      # resource path
      local_var_path = '/claim-rules/{claimRuleKey}/procedures-batch'.sub('{' + 'claimRuleKey' + '}', CGI.escape(claim_rule_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_rule_procedure)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleProceduresApi.update_batch_claim_rule_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleProceduresApi#update_batch_claim_rule_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimRuleProcedure
    # Updates a specific ClaimRuleProcedure.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param from_procedure [String] From Procedure
    # @param claim_rule_procedure [ClaimRuleProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimRuleProcedureVBAResponse]
    def update_claim_rule_procedure(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure, opts = {})
      data, _status_code, _headers = update_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure, opts)
      data
    end

    # Update ClaimRuleProcedure
    # Updates a specific ClaimRuleProcedure.
    # @param vbasoftware_database [String] Target database
    # @param claim_rule_key [Integer] ClaimRule Key
    # @param from_procedure [String] From Procedure
    # @param claim_rule_procedure [ClaimRuleProcedure] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimRuleProcedureVBAResponse, Integer, Hash)>] ClaimRuleProcedureVBAResponse data, response status code and response headers
    def update_claim_rule_procedure_with_http_info(vbasoftware_database, claim_rule_key, from_procedure, claim_rule_procedure, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimRuleProceduresApi.update_claim_rule_procedure ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimRuleProceduresApi.update_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_key' is set
      if @api_client.config.client_side_validation && claim_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_key' when calling ClaimRuleProceduresApi.update_claim_rule_procedure"
      end
      # verify the required parameter 'from_procedure' is set
      if @api_client.config.client_side_validation && from_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'from_procedure' when calling ClaimRuleProceduresApi.update_claim_rule_procedure"
      end
      # verify the required parameter 'claim_rule_procedure' is set
      if @api_client.config.client_side_validation && claim_rule_procedure.nil?
        fail ArgumentError, "Missing the required parameter 'claim_rule_procedure' when calling ClaimRuleProceduresApi.update_claim_rule_procedure"
      end
      # resource path
      local_var_path = '/claim-rules/{claimRuleKey}/procedures/{fromProcedure}'.sub('{' + 'claimRuleKey' + '}', CGI.escape(claim_rule_key.to_s)).sub('{' + 'fromProcedure' + '}', CGI.escape(from_procedure.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_rule_procedure)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimRuleProcedureVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimRuleProceduresApi.update_claim_rule_procedure",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimRuleProceduresApi#update_claim_rule_procedure\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
