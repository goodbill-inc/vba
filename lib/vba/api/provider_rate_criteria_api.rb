=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderRateCriteriaApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Provider Rate Criteria
    # Creates a new Provider Rate Criteria
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria [ProviderRateCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateCriteriaVBAResponse]
    def create_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria, opts = {})
      data, _status_code, _headers = create_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria, opts)
      data
    end

    # Create Provider Rate Criteria
    # Creates a new Provider Rate Criteria
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria [ProviderRateCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateCriteriaVBAResponse, Integer, Hash)>] ProviderRateCriteriaVBAResponse data, response status code and response headers
    def create_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateCriteriaApi.create_provider_rate_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateCriteriaApi.create_provider_rate_criteria"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateCriteriaApi.create_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateCriteriaApi.create_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_criteria' is set
      if @api_client.config.client_side_validation && provider_rate_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_criteria' when calling ProviderRateCriteriaApi.create_provider_rate_criteria"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/criterias'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_rate_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderRateCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateCriteriaApi.create_provider_rate_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateCriteriaApi#create_provider_rate_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderRateCriteria
    # Deletes an ProviderRateCriteria
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria_key [Integer] ProviderRateCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, opts = {})
      delete_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, opts)
      nil
    end

    # Delete ProviderRateCriteria
    # Deletes an ProviderRateCriteria
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria_key [Integer] ProviderRateCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateCriteriaApi.delete_provider_rate_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateCriteriaApi.delete_provider_rate_criteria"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateCriteriaApi.delete_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateCriteriaApi.delete_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_criteria_key' is set
      if @api_client.config.client_side_validation && provider_rate_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_criteria_key' when calling ProviderRateCriteriaApi.delete_provider_rate_criteria"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/criterias/{providerRateCriteriaKey}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s)).sub('{' + 'providerRateCriteriaKey' + '}', CGI.escape(provider_rate_criteria_key.to_s))

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
        :operation => :"ProviderRateCriteriaApi.delete_provider_rate_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateCriteriaApi#delete_provider_rate_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderRateCriteria
    # Gets ProviderRateCriteria
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria_key [Integer] ProviderRateCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateCriteriaVBAResponse]
    def get_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, opts = {})
      data, _status_code, _headers = get_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, opts)
      data
    end

    # Get ProviderRateCriteria
    # Gets ProviderRateCriteria
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria_key [Integer] ProviderRateCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateCriteriaVBAResponse, Integer, Hash)>] ProviderRateCriteriaVBAResponse data, response status code and response headers
    def get_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateCriteriaApi.get_provider_rate_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateCriteriaApi.get_provider_rate_criteria"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateCriteriaApi.get_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateCriteriaApi.get_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_criteria_key' is set
      if @api_client.config.client_side_validation && provider_rate_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_criteria_key' when calling ProviderRateCriteriaApi.get_provider_rate_criteria"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/criterias/{providerRateCriteriaKey}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s)).sub('{' + 'providerRateCriteriaKey' + '}', CGI.escape(provider_rate_criteria_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderRateCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateCriteriaApi.get_provider_rate_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateCriteriaApi#get_provider_rate_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderRateCriteria
    # Lists all ProviderRateCriteria given a ProviderID and ProviderRateKey
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ProviderRateCriteriaListVBAResponse]
    def list_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, opts = {})
      data, _status_code, _headers = list_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, opts)
      data
    end

    # List ProviderRateCriteria
    # Lists all ProviderRateCriteria given a ProviderID and ProviderRateKey
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ProviderRateCriteriaListVBAResponse, Integer, Hash)>] ProviderRateCriteriaListVBAResponse data, response status code and response headers
    def list_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateCriteriaApi.list_provider_rate_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateCriteriaApi.list_provider_rate_criteria"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateCriteriaApi.list_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateCriteriaApi.list_provider_rate_criteria"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/criterias'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderRateCriteriaListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateCriteriaApi.list_provider_rate_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateCriteriaApi#list_provider_rate_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Batch ProviderRateCriteria
    # Updates a multiple ProviderRateCriteria.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria [Array<ProviderRateCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria, opts = {})
      data, _status_code, _headers = update_batch_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria, opts)
      data
    end

    # Update Batch ProviderRateCriteria
    # Updates a multiple ProviderRateCriteria.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria [Array<ProviderRateCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateCriteriaApi.update_batch_provider_rate_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateCriteriaApi.update_batch_provider_rate_criteria"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateCriteriaApi.update_batch_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateCriteriaApi.update_batch_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_criteria' is set
      if @api_client.config.client_side_validation && provider_rate_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_criteria' when calling ProviderRateCriteriaApi.update_batch_provider_rate_criteria"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/criterias-batch'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_rate_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateCriteriaApi.update_batch_provider_rate_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateCriteriaApi#update_batch_provider_rate_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderRateCriteria
    # Updates a specific ProviderRateCriteria.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria_key [Integer] ProviderRateCriteria Key
    # @param provider_rate_criteria [ProviderRateCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderRateCriteriaVBAResponse]
    def update_provider_rate_criteria(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria, opts = {})
      data, _status_code, _headers = update_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria, opts)
      data
    end

    # Update ProviderRateCriteria
    # Updates a specific ProviderRateCriteria.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_rate_key [Integer] Provider Rate Key
    # @param provider_rate_criteria_key [Integer] ProviderRateCriteria Key
    # @param provider_rate_criteria [ProviderRateCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderRateCriteriaVBAResponse, Integer, Hash)>] ProviderRateCriteriaVBAResponse data, response status code and response headers
    def update_provider_rate_criteria_with_http_info(vbasoftware_database, provider_id, provider_rate_key, provider_rate_criteria_key, provider_rate_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderRateCriteriaApi.update_provider_rate_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderRateCriteriaApi.update_provider_rate_criteria"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderRateCriteriaApi.update_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_key' is set
      if @api_client.config.client_side_validation && provider_rate_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_key' when calling ProviderRateCriteriaApi.update_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_criteria_key' is set
      if @api_client.config.client_side_validation && provider_rate_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_criteria_key' when calling ProviderRateCriteriaApi.update_provider_rate_criteria"
      end
      # verify the required parameter 'provider_rate_criteria' is set
      if @api_client.config.client_side_validation && provider_rate_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'provider_rate_criteria' when calling ProviderRateCriteriaApi.update_provider_rate_criteria"
      end
      # resource path
      local_var_path = '/providers/{providerId}/rates/{providerRateKey}/criterias/{providerRateCriteriaKey}'.sub('{' + 'providerId' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'providerRateKey' + '}', CGI.escape(provider_rate_key.to_s)).sub('{' + 'providerRateCriteriaKey' + '}', CGI.escape(provider_rate_criteria_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_rate_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderRateCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderRateCriteriaApi.update_provider_rate_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderRateCriteriaApi#update_provider_rate_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
