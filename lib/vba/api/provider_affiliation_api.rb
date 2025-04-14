=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ProviderAffiliationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ProviderAffiliation
    # Creates a new ProviderAffiliation
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_affiliation [ProviderAffiliation] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderAffiliationVBAResponse]
    def create_provider_affiliation(vbasoftware_database, provider_id, provider_affiliation, opts = {})
      data, _status_code, _headers = create_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation, opts)
      data
    end

    # Create ProviderAffiliation
    # Creates a new ProviderAffiliation
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_affiliation [ProviderAffiliation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAffiliationVBAResponse, Integer, Hash)>] ProviderAffiliationVBAResponse data, response status code and response headers
    def create_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAffiliationApi.create_provider_affiliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAffiliationApi.create_provider_affiliation"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAffiliationApi.create_provider_affiliation"
      end
      # verify the required parameter 'provider_affiliation' is set
      if @api_client.config.client_side_validation && provider_affiliation.nil?
        fail ArgumentError, "Missing the required parameter 'provider_affiliation' when calling ProviderAffiliationApi.create_provider_affiliation"
      end
      # resource path
      local_var_path = '/providers/{providerID}/affiliations'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_affiliation)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderAffiliationVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAffiliationApi.create_provider_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAffiliationApi#create_provider_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ProviderAffiliation
    # Deletes an ProviderAffiliation
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param affiliation_provider_id [String] Affiliation Provider ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, opts = {})
      delete_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, opts)
      nil
    end

    # Delete ProviderAffiliation
    # Deletes an ProviderAffiliation
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param affiliation_provider_id [String] Affiliation Provider ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAffiliationApi.delete_provider_affiliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAffiliationApi.delete_provider_affiliation"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAffiliationApi.delete_provider_affiliation"
      end
      # verify the required parameter 'affiliation_provider_id' is set
      if @api_client.config.client_side_validation && affiliation_provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'affiliation_provider_id' when calling ProviderAffiliationApi.delete_provider_affiliation"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling ProviderAffiliationApi.delete_provider_affiliation"
      end
      # resource path
      local_var_path = '/providers/{providerID}/affiliations/{affiliationProviderID}/effective-dates/{effectiveDate}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'affiliationProviderID' + '}', CGI.escape(affiliation_provider_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
        :operation => :"ProviderAffiliationApi.delete_provider_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAffiliationApi#delete_provider_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ProviderAffiliation
    # Gets ProviderAffiliation
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param affiliation_provider_id [String] Affiliation Provider ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [ProviderAffiliationVBAResponse]
    def get_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, opts = {})
      data, _status_code, _headers = get_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, opts)
      data
    end

    # Get ProviderAffiliation
    # Gets ProviderAffiliation
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param affiliation_provider_id [String] Affiliation Provider ID
    # @param effective_date [Time] Effective Date
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAffiliationVBAResponse, Integer, Hash)>] ProviderAffiliationVBAResponse data, response status code and response headers
    def get_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAffiliationApi.get_provider_affiliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAffiliationApi.get_provider_affiliation"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAffiliationApi.get_provider_affiliation"
      end
      # verify the required parameter 'affiliation_provider_id' is set
      if @api_client.config.client_side_validation && affiliation_provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'affiliation_provider_id' when calling ProviderAffiliationApi.get_provider_affiliation"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling ProviderAffiliationApi.get_provider_affiliation"
      end
      # resource path
      local_var_path = '/providers/{providerID}/affiliations/{affiliationProviderID}/effective-dates/{effectiveDate}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'affiliationProviderID' + '}', CGI.escape(affiliation_provider_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderAffiliationVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAffiliationApi.get_provider_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAffiliationApi#get_provider_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ProviderAffiliation
    # Gets all ProviderAffiliations for a specific Provider
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [ProviderAffiliationListVBAResponse]
    def list_provider_affiliation(vbasoftware_database, provider_id, opts = {})
      data, _status_code, _headers = list_provider_affiliation_with_http_info(vbasoftware_database, provider_id, opts)
      data
    end

    # List ProviderAffiliation
    # Gets all ProviderAffiliations for a specific Provider
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAffiliationListVBAResponse, Integer, Hash)>] ProviderAffiliationListVBAResponse data, response status code and response headers
    def list_provider_affiliation_with_http_info(vbasoftware_database, provider_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAffiliationApi.list_provider_affiliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAffiliationApi.list_provider_affiliation"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAffiliationApi.list_provider_affiliation"
      end
      # resource path
      local_var_path = '/providers/{providerID}/affiliations'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ProviderAffiliationListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAffiliationApi.list_provider_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAffiliationApi#list_provider_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ProviderAffiliation
    # Create or Update multiple ProviderAffiliation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_affiliation [Array<ProviderAffiliation>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_provider_affiliation(vbasoftware_database, provider_id, provider_affiliation, opts = {})
      data, _status_code, _headers = update_batch_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation, opts)
      data
    end

    # Create or Update Batch ProviderAffiliation
    # Create or Update multiple ProviderAffiliation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param provider_affiliation [Array<ProviderAffiliation>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_provider_affiliation_with_http_info(vbasoftware_database, provider_id, provider_affiliation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAffiliationApi.update_batch_provider_affiliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAffiliationApi.update_batch_provider_affiliation"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAffiliationApi.update_batch_provider_affiliation"
      end
      # verify the required parameter 'provider_affiliation' is set
      if @api_client.config.client_side_validation && provider_affiliation.nil?
        fail ArgumentError, "Missing the required parameter 'provider_affiliation' when calling ProviderAffiliationApi.update_batch_provider_affiliation"
      end
      # resource path
      local_var_path = '/providers/{providerID}/affiliations-batch'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_affiliation)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAffiliationApi.update_batch_provider_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAffiliationApi#update_batch_provider_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ProviderAffiliation
    # Updates a specific ProviderAffiliation.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param affiliation_provider_id [String] Affiliation Provider ID
    # @param effective_date [Time] Effective Date
    # @param provider_affiliation [ProviderAffiliation] 
    # @param [Hash] opts the optional parameters
    # @return [ProviderAffiliationVBAResponse]
    def update_provider_affiliation(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation, opts = {})
      data, _status_code, _headers = update_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation, opts)
      data
    end

    # Update ProviderAffiliation
    # Updates a specific ProviderAffiliation.
    # @param vbasoftware_database [String] Target database
    # @param provider_id [String] Provider ID
    # @param affiliation_provider_id [String] Affiliation Provider ID
    # @param effective_date [Time] Effective Date
    # @param provider_affiliation [ProviderAffiliation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderAffiliationVBAResponse, Integer, Hash)>] ProviderAffiliationVBAResponse data, response status code and response headers
    def update_provider_affiliation_with_http_info(vbasoftware_database, provider_id, affiliation_provider_id, effective_date, provider_affiliation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProviderAffiliationApi.update_provider_affiliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ProviderAffiliationApi.update_provider_affiliation"
      end
      # verify the required parameter 'provider_id' is set
      if @api_client.config.client_side_validation && provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'provider_id' when calling ProviderAffiliationApi.update_provider_affiliation"
      end
      # verify the required parameter 'affiliation_provider_id' is set
      if @api_client.config.client_side_validation && affiliation_provider_id.nil?
        fail ArgumentError, "Missing the required parameter 'affiliation_provider_id' when calling ProviderAffiliationApi.update_provider_affiliation"
      end
      # verify the required parameter 'effective_date' is set
      if @api_client.config.client_side_validation && effective_date.nil?
        fail ArgumentError, "Missing the required parameter 'effective_date' when calling ProviderAffiliationApi.update_provider_affiliation"
      end
      # verify the required parameter 'provider_affiliation' is set
      if @api_client.config.client_side_validation && provider_affiliation.nil?
        fail ArgumentError, "Missing the required parameter 'provider_affiliation' when calling ProviderAffiliationApi.update_provider_affiliation"
      end
      # resource path
      local_var_path = '/providers/{providerID}/affiliations/{affiliationProviderID}/effective-dates/{effectiveDate}'.sub('{' + 'providerID' + '}', CGI.escape(provider_id.to_s)).sub('{' + 'affiliationProviderID' + '}', CGI.escape(affiliation_provider_id.to_s)).sub('{' + 'effectiveDate' + '}', CGI.escape(effective_date.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(provider_affiliation)

      # return_type
      return_type = opts[:debug_return_type] || 'ProviderAffiliationVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ProviderAffiliationApi.update_provider_affiliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProviderAffiliationApi#update_provider_affiliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
