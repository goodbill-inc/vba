=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class FundingReconciliationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add Reconciliation
    # Creates a new FundingReconcile along with attaching any Checks/Deposits identified.
    # @param vbasoftware_database [String] Target database
    # @param funding_statement [FundingStatement] 
    # @param [Hash] opts the optional parameters
    # @return [FundingReconcileVBAResponse]
    def add_reconciliation(vbasoftware_database, funding_statement, opts = {})
      data, _status_code, _headers = add_reconciliation_with_http_info(vbasoftware_database, funding_statement, opts)
      data
    end

    # Add Reconciliation
    # Creates a new FundingReconcile along with attaching any Checks/Deposits identified.
    # @param vbasoftware_database [String] Target database
    # @param funding_statement [FundingStatement] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingReconcileVBAResponse, Integer, Hash)>] FundingReconcileVBAResponse data, response status code and response headers
    def add_reconciliation_with_http_info(vbasoftware_database, funding_statement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.add_reconciliation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.add_reconciliation"
      end
      # verify the required parameter 'funding_statement' is set
      if @api_client.config.client_side_validation && funding_statement.nil?
        fail ArgumentError, "Missing the required parameter 'funding_statement' when calling FundingReconciliationsApi.add_reconciliation"
      end
      # resource path
      local_var_path = '/funding-reconciliation-add'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_statement)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingReconcileVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.add_reconciliation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#add_reconciliation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create FundingReconcile
    # Creates a new FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param funding_reconcile [FundingReconcile] 
    # @param [Hash] opts the optional parameters
    # @return [FundingReconcileVBAResponse]
    def create_funding_reconcile(vbasoftware_database, funding_reconcile, opts = {})
      data, _status_code, _headers = create_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile, opts)
      data
    end

    # Create FundingReconcile
    # Creates a new FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param funding_reconcile [FundingReconcile] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingReconcileVBAResponse, Integer, Hash)>] FundingReconcileVBAResponse data, response status code and response headers
    def create_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.create_funding_reconcile ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.create_funding_reconcile"
      end
      # verify the required parameter 'funding_reconcile' is set
      if @api_client.config.client_side_validation && funding_reconcile.nil?
        fail ArgumentError, "Missing the required parameter 'funding_reconcile' when calling FundingReconciliationsApi.create_funding_reconcile"
      end
      # resource path
      local_var_path = '/funding-reconciliations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_reconcile)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingReconcileVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.create_funding_reconcile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#create_funding_reconcile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete FundingReconcile
    # Deletes an FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param reconcile_key [Integer] Reconcile Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_funding_reconcile(vbasoftware_database, reconcile_key, opts = {})
      delete_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, opts)
      nil
    end

    # Delete FundingReconcile
    # Deletes an FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param reconcile_key [Integer] Reconcile Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.delete_funding_reconcile ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.delete_funding_reconcile"
      end
      # verify the required parameter 'reconcile_key' is set
      if @api_client.config.client_side_validation && reconcile_key.nil?
        fail ArgumentError, "Missing the required parameter 'reconcile_key' when calling FundingReconciliationsApi.delete_funding_reconcile"
      end
      # resource path
      local_var_path = '/funding-reconciliations/{reconcileKey}'.sub('{' + 'reconcileKey' + '}', CGI.escape(reconcile_key.to_s))

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
        :operation => :"FundingReconciliationsApi.delete_funding_reconcile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#delete_funding_reconcile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get FundingReconcile
    # Gets FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param reconcile_key [Integer] Reconcile Key
    # @param [Hash] opts the optional parameters
    # @return [FundingReconcileVBAResponse]
    def get_funding_reconcile(vbasoftware_database, reconcile_key, opts = {})
      data, _status_code, _headers = get_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, opts)
      data
    end

    # Get FundingReconcile
    # Gets FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param reconcile_key [Integer] Reconcile Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingReconcileVBAResponse, Integer, Hash)>] FundingReconcileVBAResponse data, response status code and response headers
    def get_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.get_funding_reconcile ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.get_funding_reconcile"
      end
      # verify the required parameter 'reconcile_key' is set
      if @api_client.config.client_side_validation && reconcile_key.nil?
        fail ArgumentError, "Missing the required parameter 'reconcile_key' when calling FundingReconciliationsApi.get_funding_reconcile"
      end
      # resource path
      local_var_path = '/funding-reconciliations/{reconcileKey}'.sub('{' + 'reconcileKey' + '}', CGI.escape(reconcile_key.to_s))

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
      return_type = opts[:debug_return_type] || 'FundingReconcileVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.get_funding_reconcile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#get_funding_reconcile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List FundingReconcile
    # Lists all FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [FundingReconcileListVBAResponse]
    def list_funding_reconcile(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_funding_reconcile_with_http_info(vbasoftware_database, opts)
      data
    end

    # List FundingReconcile
    # Lists all FundingReconcile
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(FundingReconcileListVBAResponse, Integer, Hash)>] FundingReconcileListVBAResponse data, response status code and response headers
    def list_funding_reconcile_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.list_funding_reconcile ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.list_funding_reconcile"
      end
      # resource path
      local_var_path = '/funding-reconciliations'

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
      return_type = opts[:debug_return_type] || 'FundingReconcileListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.list_funding_reconcile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#list_funding_reconcile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reconcile Funds
    # Reconcile all Deposits, Checks, and Funding associated with this Reconciliation as well as creating offset debits and credits.
    # @param vbasoftware_database [String] Target database
    # @param funding_statement [FundingStatement] 
    # @param [Hash] opts the optional parameters
    # @return [FundingReconcileVBAResponse]
    def reconcile_funds(vbasoftware_database, funding_statement, opts = {})
      data, _status_code, _headers = reconcile_funds_with_http_info(vbasoftware_database, funding_statement, opts)
      data
    end

    # Reconcile Funds
    # Reconcile all Deposits, Checks, and Funding associated with this Reconciliation as well as creating offset debits and credits.
    # @param vbasoftware_database [String] Target database
    # @param funding_statement [FundingStatement] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingReconcileVBAResponse, Integer, Hash)>] FundingReconcileVBAResponse data, response status code and response headers
    def reconcile_funds_with_http_info(vbasoftware_database, funding_statement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.reconcile_funds ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.reconcile_funds"
      end
      # verify the required parameter 'funding_statement' is set
      if @api_client.config.client_side_validation && funding_statement.nil?
        fail ArgumentError, "Missing the required parameter 'funding_statement' when calling FundingReconciliationsApi.reconcile_funds"
      end
      # resource path
      local_var_path = '/funding-reconciliation-reconcile-funds'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_statement)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingReconcileVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.reconcile_funds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#reconcile_funds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch FundingReconcile
    # Create or Update multiple FundingReconcile at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param funding_reconcile [Array<FundingReconcile>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_funding_reconcile(vbasoftware_database, funding_reconcile, opts = {})
      data, _status_code, _headers = update_batch_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile, opts)
      data
    end

    # Create or Update Batch FundingReconcile
    # Create or Update multiple FundingReconcile at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param funding_reconcile [Array<FundingReconcile>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_funding_reconcile_with_http_info(vbasoftware_database, funding_reconcile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.update_batch_funding_reconcile ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.update_batch_funding_reconcile"
      end
      # verify the required parameter 'funding_reconcile' is set
      if @api_client.config.client_side_validation && funding_reconcile.nil?
        fail ArgumentError, "Missing the required parameter 'funding_reconcile' when calling FundingReconciliationsApi.update_batch_funding_reconcile"
      end
      # resource path
      local_var_path = '/funding-reconciliations-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_reconcile)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.update_batch_funding_reconcile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#update_batch_funding_reconcile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update FundingReconcile
    # Updates a specific FundingReconcile.
    # @param vbasoftware_database [String] Target database
    # @param reconcile_key [Integer] Reconcile Key
    # @param funding_reconcile [FundingReconcile] 
    # @param [Hash] opts the optional parameters
    # @return [FundingReconcileVBAResponse]
    def update_funding_reconcile(vbasoftware_database, reconcile_key, funding_reconcile, opts = {})
      data, _status_code, _headers = update_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile, opts)
      data
    end

    # Update FundingReconcile
    # Updates a specific FundingReconcile.
    # @param vbasoftware_database [String] Target database
    # @param reconcile_key [Integer] Reconcile Key
    # @param funding_reconcile [FundingReconcile] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FundingReconcileVBAResponse, Integer, Hash)>] FundingReconcileVBAResponse data, response status code and response headers
    def update_funding_reconcile_with_http_info(vbasoftware_database, reconcile_key, funding_reconcile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FundingReconciliationsApi.update_funding_reconcile ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling FundingReconciliationsApi.update_funding_reconcile"
      end
      # verify the required parameter 'reconcile_key' is set
      if @api_client.config.client_side_validation && reconcile_key.nil?
        fail ArgumentError, "Missing the required parameter 'reconcile_key' when calling FundingReconciliationsApi.update_funding_reconcile"
      end
      # verify the required parameter 'funding_reconcile' is set
      if @api_client.config.client_side_validation && funding_reconcile.nil?
        fail ArgumentError, "Missing the required parameter 'funding_reconcile' when calling FundingReconciliationsApi.update_funding_reconcile"
      end
      # resource path
      local_var_path = '/funding-reconciliations/{reconcileKey}'.sub('{' + 'reconcileKey' + '}', CGI.escape(reconcile_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(funding_reconcile)

      # return_type
      return_type = opts[:debug_return_type] || 'FundingReconcileVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"FundingReconciliationsApi.update_funding_reconcile",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FundingReconciliationsApi#update_funding_reconcile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
