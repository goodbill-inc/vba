=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class AdvCapitationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Capitation Generate
    # Generates Capitation records and attaches those to a new Capitation Transaction based on entered criteria.
    # @param vbasoftware_database [String] Target database
    # @param capitation_generate [CapitationGenerate] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def capitation_generate(vbasoftware_database, capitation_generate, opts = {})
      capitation_generate_with_http_info(vbasoftware_database, capitation_generate, opts)
      nil
    end

    # Capitation Generate
    # Generates Capitation records and attaches those to a new Capitation Transaction based on entered criteria.
    # @param vbasoftware_database [String] Target database
    # @param capitation_generate [CapitationGenerate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def capitation_generate_with_http_info(vbasoftware_database, capitation_generate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvCapitationApi.capitation_generate ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AdvCapitationApi.capitation_generate"
      end
      # verify the required parameter 'capitation_generate' is set
      if @api_client.config.client_side_validation && capitation_generate.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_generate' when calling AdvCapitationApi.capitation_generate"
      end
      # resource path
      local_var_path = '/capitation-generate'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capitation_generate)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AdvCapitationApi.capitation_generate",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvCapitationApi#capitation_generate\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capitation Generate Assign
    # Takes selected unassigned list of CapitationKeys and a valid Payee, and attaches them to a newly created Capitation Transaction.
    # @param vbasoftware_database [String] Target database
    # @param capitation_generate [CapitationGenerate] 
    # @param [Hash] opts the optional parameters
    # @return [CapitationTransactionVBAResponse]
    def capitation_generate_assign(vbasoftware_database, capitation_generate, opts = {})
      data, _status_code, _headers = capitation_generate_assign_with_http_info(vbasoftware_database, capitation_generate, opts)
      data
    end

    # Capitation Generate Assign
    # Takes selected unassigned list of CapitationKeys and a valid Payee, and attaches them to a newly created Capitation Transaction.
    # @param vbasoftware_database [String] Target database
    # @param capitation_generate [CapitationGenerate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CapitationTransactionVBAResponse, Integer, Hash)>] CapitationTransactionVBAResponse data, response status code and response headers
    def capitation_generate_assign_with_http_info(vbasoftware_database, capitation_generate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvCapitationApi.capitation_generate_assign ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AdvCapitationApi.capitation_generate_assign"
      end
      # verify the required parameter 'capitation_generate' is set
      if @api_client.config.client_side_validation && capitation_generate.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_generate' when calling AdvCapitationApi.capitation_generate_assign"
      end
      # resource path
      local_var_path = '/capitation-generate-assign'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capitation_generate)

      # return_type
      return_type = opts[:debug_return_type] || 'CapitationTransactionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AdvCapitationApi.capitation_generate_assign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvCapitationApi#capitation_generate_assign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Capitation Generate Set Unassigned
    # Takes existing unassigned capitation records and attaches them to the chosen Provider on a newly created Capitation Transaction.
    # @param vbasoftware_database [String] Target database
    # @param capitation_generate [CapitationGenerate] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def capitation_generate_set_unassigned(vbasoftware_database, capitation_generate, opts = {})
      capitation_generate_set_unassigned_with_http_info(vbasoftware_database, capitation_generate, opts)
      nil
    end

    # Capitation Generate Set Unassigned
    # Takes existing unassigned capitation records and attaches them to the chosen Provider on a newly created Capitation Transaction.
    # @param vbasoftware_database [String] Target database
    # @param capitation_generate [CapitationGenerate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def capitation_generate_set_unassigned_with_http_info(vbasoftware_database, capitation_generate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdvCapitationApi.capitation_generate_set_unassigned ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling AdvCapitationApi.capitation_generate_set_unassigned"
      end
      # verify the required parameter 'capitation_generate' is set
      if @api_client.config.client_side_validation && capitation_generate.nil?
        fail ArgumentError, "Missing the required parameter 'capitation_generate' when calling AdvCapitationApi.capitation_generate_set_unassigned"
      end
      # resource path
      local_var_path = '/capitation-generate-set-unassigned'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'text/json', 'application/*+json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'vbasoftware-database'] = vbasoftware_database

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(capitation_generate)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AdvCapitationApi.capitation_generate_set_unassigned",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdvCapitationApi#capitation_generate_set_unassigned\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
