=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimAnesthesiaProcedureCodeUnitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimAnesthesiaProcedureCodeUnit
    # Creates a new ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit [ClaimAnesthesiaProcedureCodeUnit] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimAnesthesiaProcedureCodeUnitVBAResponse]
    def create_claim_anesthesia_procedure_code_unit(vbasoftware_database, claim_anesthesia_procedure_code_unit, opts = {})
      data, _status_code, _headers = create_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit, opts)
      data
    end

    # Create ClaimAnesthesiaProcedureCodeUnit
    # Creates a new ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit [ClaimAnesthesiaProcedureCodeUnit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimAnesthesiaProcedureCodeUnitVBAResponse, Integer, Hash)>] ClaimAnesthesiaProcedureCodeUnitVBAResponse data, response status code and response headers
    def create_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAnesthesiaProcedureCodeUnitsApi.create_claim_anesthesia_procedure_code_unit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAnesthesiaProcedureCodeUnitsApi.create_claim_anesthesia_procedure_code_unit"
      end
      # verify the required parameter 'claim_anesthesia_procedure_code_unit' is set
      if @api_client.config.client_side_validation && claim_anesthesia_procedure_code_unit.nil?
        fail ArgumentError, "Missing the required parameter 'claim_anesthesia_procedure_code_unit' when calling ClaimAnesthesiaProcedureCodeUnitsApi.create_claim_anesthesia_procedure_code_unit"
      end
      # resource path
      local_var_path = '/claim-anesthesia-procedure-code-units'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_anesthesia_procedure_code_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimAnesthesiaProcedureCodeUnitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAnesthesiaProcedureCodeUnitsApi.create_claim_anesthesia_procedure_code_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAnesthesiaProcedureCodeUnitsApi#create_claim_anesthesia_procedure_code_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimAnesthesiaProcedureCodeUnit
    # Deletes an ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit_key [Integer] ClaimAnesthesiaProcedureCodeUnit Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_anesthesia_procedure_code_unit(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, opts = {})
      delete_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, opts)
      nil
    end

    # Delete ClaimAnesthesiaProcedureCodeUnit
    # Deletes an ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit_key [Integer] ClaimAnesthesiaProcedureCodeUnit Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAnesthesiaProcedureCodeUnitsApi.delete_claim_anesthesia_procedure_code_unit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAnesthesiaProcedureCodeUnitsApi.delete_claim_anesthesia_procedure_code_unit"
      end
      # verify the required parameter 'claim_anesthesia_procedure_code_unit_key' is set
      if @api_client.config.client_side_validation && claim_anesthesia_procedure_code_unit_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_anesthesia_procedure_code_unit_key' when calling ClaimAnesthesiaProcedureCodeUnitsApi.delete_claim_anesthesia_procedure_code_unit"
      end
      # resource path
      local_var_path = '/claim-anesthesia-procedure-code-units/{claimAnesthesiaProcedureCodeUnitKey}'.sub('{' + 'claimAnesthesiaProcedureCodeUnitKey' + '}', CGI.escape(claim_anesthesia_procedure_code_unit_key.to_s))

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
        :operation => :"ClaimAnesthesiaProcedureCodeUnitsApi.delete_claim_anesthesia_procedure_code_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAnesthesiaProcedureCodeUnitsApi#delete_claim_anesthesia_procedure_code_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimAnesthesiaProcedureCodeUnit
    # Gets ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit_key [Integer] ClaimAnesthesiaProcedureCodeUnit Key
    # @param [Hash] opts the optional parameters
    # @return [ClaimAnesthesiaProcedureCodeUnitVBAResponse]
    def get_claim_anesthesia_procedure_code_unit(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, opts = {})
      data, _status_code, _headers = get_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, opts)
      data
    end

    # Get ClaimAnesthesiaProcedureCodeUnit
    # Gets ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit_key [Integer] ClaimAnesthesiaProcedureCodeUnit Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimAnesthesiaProcedureCodeUnitVBAResponse, Integer, Hash)>] ClaimAnesthesiaProcedureCodeUnitVBAResponse data, response status code and response headers
    def get_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAnesthesiaProcedureCodeUnitsApi.get_claim_anesthesia_procedure_code_unit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAnesthesiaProcedureCodeUnitsApi.get_claim_anesthesia_procedure_code_unit"
      end
      # verify the required parameter 'claim_anesthesia_procedure_code_unit_key' is set
      if @api_client.config.client_side_validation && claim_anesthesia_procedure_code_unit_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_anesthesia_procedure_code_unit_key' when calling ClaimAnesthesiaProcedureCodeUnitsApi.get_claim_anesthesia_procedure_code_unit"
      end
      # resource path
      local_var_path = '/claim-anesthesia-procedure-code-units/{claimAnesthesiaProcedureCodeUnitKey}'.sub('{' + 'claimAnesthesiaProcedureCodeUnitKey' + '}', CGI.escape(claim_anesthesia_procedure_code_unit_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimAnesthesiaProcedureCodeUnitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAnesthesiaProcedureCodeUnitsApi.get_claim_anesthesia_procedure_code_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAnesthesiaProcedureCodeUnitsApi#get_claim_anesthesia_procedure_code_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimAnesthesiaProcedureCodeUnit
    # Lists all ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimAnesthesiaProcedureCodeUnitListVBAResponse]
    def list_claim_anesthesia_procedure_code_unit(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ClaimAnesthesiaProcedureCodeUnit
    # Lists all ClaimAnesthesiaProcedureCodeUnit
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimAnesthesiaProcedureCodeUnitListVBAResponse, Integer, Hash)>] ClaimAnesthesiaProcedureCodeUnitListVBAResponse data, response status code and response headers
    def list_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAnesthesiaProcedureCodeUnitsApi.list_claim_anesthesia_procedure_code_unit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAnesthesiaProcedureCodeUnitsApi.list_claim_anesthesia_procedure_code_unit"
      end
      # resource path
      local_var_path = '/claim-anesthesia-procedure-code-units'

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
      return_type = opts[:debug_return_type] || 'ClaimAnesthesiaProcedureCodeUnitListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAnesthesiaProcedureCodeUnitsApi.list_claim_anesthesia_procedure_code_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAnesthesiaProcedureCodeUnitsApi#list_claim_anesthesia_procedure_code_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimAnesthesiaProcedureCodeUnit
    # Create or Update multiple ClaimAnesthesiaProcedureCodeUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit [Array<ClaimAnesthesiaProcedureCodeUnit>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_anesthesia_procedure_code_unit(vbasoftware_database, claim_anesthesia_procedure_code_unit, opts = {})
      data, _status_code, _headers = update_batch_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit, opts)
      data
    end

    # Create or Update Batch ClaimAnesthesiaProcedureCodeUnit
    # Create or Update multiple ClaimAnesthesiaProcedureCodeUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit [Array<ClaimAnesthesiaProcedureCodeUnit>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAnesthesiaProcedureCodeUnitsApi.update_batch_claim_anesthesia_procedure_code_unit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAnesthesiaProcedureCodeUnitsApi.update_batch_claim_anesthesia_procedure_code_unit"
      end
      # verify the required parameter 'claim_anesthesia_procedure_code_unit' is set
      if @api_client.config.client_side_validation && claim_anesthesia_procedure_code_unit.nil?
        fail ArgumentError, "Missing the required parameter 'claim_anesthesia_procedure_code_unit' when calling ClaimAnesthesiaProcedureCodeUnitsApi.update_batch_claim_anesthesia_procedure_code_unit"
      end
      # resource path
      local_var_path = '/claim-anesthesia-procedure-code-units-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_anesthesia_procedure_code_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAnesthesiaProcedureCodeUnitsApi.update_batch_claim_anesthesia_procedure_code_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAnesthesiaProcedureCodeUnitsApi#update_batch_claim_anesthesia_procedure_code_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimAnesthesiaProcedureCodeUnit
    # Updates a specific ClaimAnesthesiaProcedureCodeUnit.
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit_key [Integer] ClaimAnesthesiaProcedureCodeUnit Key
    # @param claim_anesthesia_procedure_code_unit [ClaimAnesthesiaProcedureCodeUnit] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimAnesthesiaProcedureCodeUnitVBAResponse]
    def update_claim_anesthesia_procedure_code_unit(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, claim_anesthesia_procedure_code_unit, opts = {})
      data, _status_code, _headers = update_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, claim_anesthesia_procedure_code_unit, opts)
      data
    end

    # Update ClaimAnesthesiaProcedureCodeUnit
    # Updates a specific ClaimAnesthesiaProcedureCodeUnit.
    # @param vbasoftware_database [String] Target database
    # @param claim_anesthesia_procedure_code_unit_key [Integer] ClaimAnesthesiaProcedureCodeUnit Key
    # @param claim_anesthesia_procedure_code_unit [ClaimAnesthesiaProcedureCodeUnit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimAnesthesiaProcedureCodeUnitVBAResponse, Integer, Hash)>] ClaimAnesthesiaProcedureCodeUnitVBAResponse data, response status code and response headers
    def update_claim_anesthesia_procedure_code_unit_with_http_info(vbasoftware_database, claim_anesthesia_procedure_code_unit_key, claim_anesthesia_procedure_code_unit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimAnesthesiaProcedureCodeUnitsApi.update_claim_anesthesia_procedure_code_unit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimAnesthesiaProcedureCodeUnitsApi.update_claim_anesthesia_procedure_code_unit"
      end
      # verify the required parameter 'claim_anesthesia_procedure_code_unit_key' is set
      if @api_client.config.client_side_validation && claim_anesthesia_procedure_code_unit_key.nil?
        fail ArgumentError, "Missing the required parameter 'claim_anesthesia_procedure_code_unit_key' when calling ClaimAnesthesiaProcedureCodeUnitsApi.update_claim_anesthesia_procedure_code_unit"
      end
      # verify the required parameter 'claim_anesthesia_procedure_code_unit' is set
      if @api_client.config.client_side_validation && claim_anesthesia_procedure_code_unit.nil?
        fail ArgumentError, "Missing the required parameter 'claim_anesthesia_procedure_code_unit' when calling ClaimAnesthesiaProcedureCodeUnitsApi.update_claim_anesthesia_procedure_code_unit"
      end
      # resource path
      local_var_path = '/claim-anesthesia-procedure-code-units/{claimAnesthesiaProcedureCodeUnitKey}'.sub('{' + 'claimAnesthesiaProcedureCodeUnitKey' + '}', CGI.escape(claim_anesthesia_procedure_code_unit_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_anesthesia_procedure_code_unit)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimAnesthesiaProcedureCodeUnitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimAnesthesiaProcedureCodeUnitsApi.update_claim_anesthesia_procedure_code_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimAnesthesiaProcedureCodeUnitsApi#update_claim_anesthesia_procedure_code_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
