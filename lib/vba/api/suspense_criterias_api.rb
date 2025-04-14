=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class SuspenseCriteriasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create SuspenseCriteria
    # Creates a new SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria [SuspenseCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [SuspenseCriteriaVBAResponse]
    def create_suspense_criteria(vbasoftware_database, suspense_criteria, opts = {})
      data, _status_code, _headers = create_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria, opts)
      data
    end

    # Create SuspenseCriteria
    # Creates a new SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria [SuspenseCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuspenseCriteriaVBAResponse, Integer, Hash)>] SuspenseCriteriaVBAResponse data, response status code and response headers
    def create_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuspenseCriteriasApi.create_suspense_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SuspenseCriteriasApi.create_suspense_criteria"
      end
      # verify the required parameter 'suspense_criteria' is set
      if @api_client.config.client_side_validation && suspense_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'suspense_criteria' when calling SuspenseCriteriasApi.create_suspense_criteria"
      end
      # resource path
      local_var_path = '/suspense-criterias'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(suspense_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'SuspenseCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SuspenseCriteriasApi.create_suspense_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuspenseCriteriasApi#create_suspense_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete SuspenseCriteria
    # Deletes an SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria_key [Integer] SuspenseCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_suspense_criteria(vbasoftware_database, suspense_criteria_key, opts = {})
      delete_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, opts)
      nil
    end

    # Delete SuspenseCriteria
    # Deletes an SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria_key [Integer] SuspenseCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuspenseCriteriasApi.delete_suspense_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SuspenseCriteriasApi.delete_suspense_criteria"
      end
      # verify the required parameter 'suspense_criteria_key' is set
      if @api_client.config.client_side_validation && suspense_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'suspense_criteria_key' when calling SuspenseCriteriasApi.delete_suspense_criteria"
      end
      # resource path
      local_var_path = '/suspense-criterias/{suspenseCriteriaKey}'.sub('{' + 'suspenseCriteriaKey' + '}', CGI.escape(suspense_criteria_key.to_s))

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
        :operation => :"SuspenseCriteriasApi.delete_suspense_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuspenseCriteriasApi#delete_suspense_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get SuspenseCriteria
    # Gets SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria_key [Integer] SuspenseCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [SuspenseCriteriaVBAResponse]
    def get_suspense_criteria(vbasoftware_database, suspense_criteria_key, opts = {})
      data, _status_code, _headers = get_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, opts)
      data
    end

    # Get SuspenseCriteria
    # Gets SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria_key [Integer] SuspenseCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuspenseCriteriaVBAResponse, Integer, Hash)>] SuspenseCriteriaVBAResponse data, response status code and response headers
    def get_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuspenseCriteriasApi.get_suspense_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SuspenseCriteriasApi.get_suspense_criteria"
      end
      # verify the required parameter 'suspense_criteria_key' is set
      if @api_client.config.client_side_validation && suspense_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'suspense_criteria_key' when calling SuspenseCriteriasApi.get_suspense_criteria"
      end
      # resource path
      local_var_path = '/suspense-criterias/{suspenseCriteriaKey}'.sub('{' + 'suspenseCriteriaKey' + '}', CGI.escape(suspense_criteria_key.to_s))

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
      return_type = opts[:debug_return_type] || 'SuspenseCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SuspenseCriteriasApi.get_suspense_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuspenseCriteriasApi#get_suspense_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List SuspenseCriteria
    # Lists all SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [SuspenseCriteriaListVBAResponse]
    def list_suspense_criteria(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_suspense_criteria_with_http_info(vbasoftware_database, opts)
      data
    end

    # List SuspenseCriteria
    # Lists all SuspenseCriteria
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(SuspenseCriteriaListVBAResponse, Integer, Hash)>] SuspenseCriteriaListVBAResponse data, response status code and response headers
    def list_suspense_criteria_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuspenseCriteriasApi.list_suspense_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SuspenseCriteriasApi.list_suspense_criteria"
      end
      # resource path
      local_var_path = '/suspense-criterias'

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
      return_type = opts[:debug_return_type] || 'SuspenseCriteriaListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SuspenseCriteriasApi.list_suspense_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuspenseCriteriasApi#list_suspense_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch SuspenseCriteria
    # Create or Update multiple SuspenseCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria [Array<SuspenseCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_suspense_criteria(vbasoftware_database, suspense_criteria, opts = {})
      data, _status_code, _headers = update_batch_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria, opts)
      data
    end

    # Create or Update Batch SuspenseCriteria
    # Create or Update multiple SuspenseCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria [Array<SuspenseCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuspenseCriteriasApi.update_batch_suspense_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SuspenseCriteriasApi.update_batch_suspense_criteria"
      end
      # verify the required parameter 'suspense_criteria' is set
      if @api_client.config.client_side_validation && suspense_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'suspense_criteria' when calling SuspenseCriteriasApi.update_batch_suspense_criteria"
      end
      # resource path
      local_var_path = '/suspense-criterias-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(suspense_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SuspenseCriteriasApi.update_batch_suspense_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuspenseCriteriasApi#update_batch_suspense_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update SuspenseCriteria
    # Updates a specific SuspenseCriteria.
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria_key [Integer] SuspenseCriteria Key
    # @param suspense_criteria [SuspenseCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [SuspenseCriteriaVBAResponse]
    def update_suspense_criteria(vbasoftware_database, suspense_criteria_key, suspense_criteria, opts = {})
      data, _status_code, _headers = update_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, suspense_criteria, opts)
      data
    end

    # Update SuspenseCriteria
    # Updates a specific SuspenseCriteria.
    # @param vbasoftware_database [String] Target database
    # @param suspense_criteria_key [Integer] SuspenseCriteria Key
    # @param suspense_criteria [SuspenseCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuspenseCriteriaVBAResponse, Integer, Hash)>] SuspenseCriteriaVBAResponse data, response status code and response headers
    def update_suspense_criteria_with_http_info(vbasoftware_database, suspense_criteria_key, suspense_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SuspenseCriteriasApi.update_suspense_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling SuspenseCriteriasApi.update_suspense_criteria"
      end
      # verify the required parameter 'suspense_criteria_key' is set
      if @api_client.config.client_side_validation && suspense_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'suspense_criteria_key' when calling SuspenseCriteriasApi.update_suspense_criteria"
      end
      # verify the required parameter 'suspense_criteria' is set
      if @api_client.config.client_side_validation && suspense_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'suspense_criteria' when calling SuspenseCriteriasApi.update_suspense_criteria"
      end
      # resource path
      local_var_path = '/suspense-criterias/{suspenseCriteriaKey}'.sub('{' + 'suspenseCriteriaKey' + '}', CGI.escape(suspense_criteria_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(suspense_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'SuspenseCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"SuspenseCriteriasApi.update_suspense_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SuspenseCriteriasApi#update_suspense_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
