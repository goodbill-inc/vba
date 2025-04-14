=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CredentialingTechniquesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CredTechnique
    # Creates a new CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param cred_technique [CredTechnique] 
    # @param [Hash] opts the optional parameters
    # @return [CredTechniqueVBAResponse]
    def create_cred_technique(vbasoftware_database, cred_technique, opts = {})
      data, _status_code, _headers = create_cred_technique_with_http_info(vbasoftware_database, cred_technique, opts)
      data
    end

    # Create CredTechnique
    # Creates a new CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param cred_technique [CredTechnique] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CredTechniqueVBAResponse, Integer, Hash)>] CredTechniqueVBAResponse data, response status code and response headers
    def create_cred_technique_with_http_info(vbasoftware_database, cred_technique, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingTechniquesApi.create_cred_technique ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingTechniquesApi.create_cred_technique"
      end
      # verify the required parameter 'cred_technique' is set
      if @api_client.config.client_side_validation && cred_technique.nil?
        fail ArgumentError, "Missing the required parameter 'cred_technique' when calling CredentialingTechniquesApi.create_cred_technique"
      end
      # resource path
      local_var_path = '/credentialing-techniques'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cred_technique)

      # return_type
      return_type = opts[:debug_return_type] || 'CredTechniqueVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingTechniquesApi.create_cred_technique",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingTechniquesApi#create_cred_technique\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CredTechnique
    # Deletes an CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param cred_technique_key [Integer] CredTechnique Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cred_technique(vbasoftware_database, cred_technique_key, opts = {})
      delete_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, opts)
      nil
    end

    # Delete CredTechnique
    # Deletes an CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param cred_technique_key [Integer] CredTechnique Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingTechniquesApi.delete_cred_technique ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingTechniquesApi.delete_cred_technique"
      end
      # verify the required parameter 'cred_technique_key' is set
      if @api_client.config.client_side_validation && cred_technique_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_technique_key' when calling CredentialingTechniquesApi.delete_cred_technique"
      end
      # resource path
      local_var_path = '/credentialing-techniques/{credTechniqueKey}'.sub('{' + 'credTechniqueKey' + '}', CGI.escape(cred_technique_key.to_s))

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
        :operation => :"CredentialingTechniquesApi.delete_cred_technique",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingTechniquesApi#delete_cred_technique\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CredTechnique
    # Gets CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param cred_technique_key [Integer] CredTechnique Key
    # @param [Hash] opts the optional parameters
    # @return [CredTechniqueVBAResponse]
    def get_cred_technique(vbasoftware_database, cred_technique_key, opts = {})
      data, _status_code, _headers = get_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, opts)
      data
    end

    # Get CredTechnique
    # Gets CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param cred_technique_key [Integer] CredTechnique Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CredTechniqueVBAResponse, Integer, Hash)>] CredTechniqueVBAResponse data, response status code and response headers
    def get_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingTechniquesApi.get_cred_technique ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingTechniquesApi.get_cred_technique"
      end
      # verify the required parameter 'cred_technique_key' is set
      if @api_client.config.client_side_validation && cred_technique_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_technique_key' when calling CredentialingTechniquesApi.get_cred_technique"
      end
      # resource path
      local_var_path = '/credentialing-techniques/{credTechniqueKey}'.sub('{' + 'credTechniqueKey' + '}', CGI.escape(cred_technique_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CredTechniqueVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingTechniquesApi.get_cred_technique",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingTechniquesApi#get_cred_technique\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CredTechnique
    # Lists all CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CredTechniqueListVBAResponse]
    def list_cred_technique(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cred_technique_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CredTechnique
    # Lists all CredTechnique
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CredTechniqueListVBAResponse, Integer, Hash)>] CredTechniqueListVBAResponse data, response status code and response headers
    def list_cred_technique_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingTechniquesApi.list_cred_technique ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingTechniquesApi.list_cred_technique"
      end
      # resource path
      local_var_path = '/credentialing-techniques'

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
      return_type = opts[:debug_return_type] || 'CredTechniqueListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingTechniquesApi.list_cred_technique",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingTechniquesApi#list_cred_technique\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CredTechnique
    # Create or Update multiple CredTechnique at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cred_technique [Array<CredTechnique>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_cred_technique(vbasoftware_database, cred_technique, opts = {})
      data, _status_code, _headers = update_batch_cred_technique_with_http_info(vbasoftware_database, cred_technique, opts)
      data
    end

    # Create or Update Batch CredTechnique
    # Create or Update multiple CredTechnique at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cred_technique [Array<CredTechnique>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_cred_technique_with_http_info(vbasoftware_database, cred_technique, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingTechniquesApi.update_batch_cred_technique ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingTechniquesApi.update_batch_cred_technique"
      end
      # verify the required parameter 'cred_technique' is set
      if @api_client.config.client_side_validation && cred_technique.nil?
        fail ArgumentError, "Missing the required parameter 'cred_technique' when calling CredentialingTechniquesApi.update_batch_cred_technique"
      end
      # resource path
      local_var_path = '/credentialing-techniques-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cred_technique)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingTechniquesApi.update_batch_cred_technique",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingTechniquesApi#update_batch_cred_technique\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CredTechnique
    # Updates a specific CredTechnique.
    # @param vbasoftware_database [String] Target database
    # @param cred_technique_key [Integer] CredTechnique Key
    # @param cred_technique [CredTechnique] 
    # @param [Hash] opts the optional parameters
    # @return [CredTechniqueVBAResponse]
    def update_cred_technique(vbasoftware_database, cred_technique_key, cred_technique, opts = {})
      data, _status_code, _headers = update_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, cred_technique, opts)
      data
    end

    # Update CredTechnique
    # Updates a specific CredTechnique.
    # @param vbasoftware_database [String] Target database
    # @param cred_technique_key [Integer] CredTechnique Key
    # @param cred_technique [CredTechnique] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CredTechniqueVBAResponse, Integer, Hash)>] CredTechniqueVBAResponse data, response status code and response headers
    def update_cred_technique_with_http_info(vbasoftware_database, cred_technique_key, cred_technique, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingTechniquesApi.update_cred_technique ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingTechniquesApi.update_cred_technique"
      end
      # verify the required parameter 'cred_technique_key' is set
      if @api_client.config.client_side_validation && cred_technique_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_technique_key' when calling CredentialingTechniquesApi.update_cred_technique"
      end
      # verify the required parameter 'cred_technique' is set
      if @api_client.config.client_side_validation && cred_technique.nil?
        fail ArgumentError, "Missing the required parameter 'cred_technique' when calling CredentialingTechniquesApi.update_cred_technique"
      end
      # resource path
      local_var_path = '/credentialing-techniques/{credTechniqueKey}'.sub('{' + 'credTechniqueKey' + '}', CGI.escape(cred_technique_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cred_technique)

      # return_type
      return_type = opts[:debug_return_type] || 'CredTechniqueVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingTechniquesApi.update_cred_technique",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingTechniquesApi#update_cred_technique\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
