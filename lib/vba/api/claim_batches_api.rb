=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimBatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimBatches
    # Creates a new ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param claim_batches [ClaimBatches] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchesVBAResponse]
    def create_claim_batches(vbasoftware_database, claim_batches, opts = {})
      data, _status_code, _headers = create_claim_batches_with_http_info(vbasoftware_database, claim_batches, opts)
      data
    end

    # Create ClaimBatches
    # Creates a new ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param claim_batches [ClaimBatches] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchesVBAResponse, Integer, Hash)>] ClaimBatchesVBAResponse data, response status code and response headers
    def create_claim_batches_with_http_info(vbasoftware_database, claim_batches, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchesApi.create_claim_batches ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchesApi.create_claim_batches"
      end
      # verify the required parameter 'claim_batches' is set
      if @api_client.config.client_side_validation && claim_batches.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batches' when calling ClaimBatchesApi.create_claim_batches"
      end
      # resource path
      local_var_path = '/claim-batches'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batches)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimBatchesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchesApi.create_claim_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchesApi#create_claim_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimBatches
    # Deletes an ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_batches(vbasoftware_database, batch_number, opts = {})
      delete_claim_batches_with_http_info(vbasoftware_database, batch_number, opts)
      nil
    end

    # Delete ClaimBatches
    # Deletes an ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_batches_with_http_info(vbasoftware_database, batch_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchesApi.delete_claim_batches ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchesApi.delete_claim_batches"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchesApi.delete_claim_batches"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s))

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
        :operation => :"ClaimBatchesApi.delete_claim_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchesApi#delete_claim_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimBatches
    # Gets ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchesVBAResponse]
    def get_claim_batches(vbasoftware_database, batch_number, opts = {})
      data, _status_code, _headers = get_claim_batches_with_http_info(vbasoftware_database, batch_number, opts)
      data
    end

    # Get ClaimBatches
    # Gets ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchesVBAResponse, Integer, Hash)>] ClaimBatchesVBAResponse data, response status code and response headers
    def get_claim_batches_with_http_info(vbasoftware_database, batch_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchesApi.get_claim_batches ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchesApi.get_claim_batches"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchesApi.get_claim_batches"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimBatchesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchesApi.get_claim_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchesApi#get_claim_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimBatches
    # Lists all ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimBatchesListVBAResponse]
    def list_claim_batches(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_claim_batches_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ClaimBatches
    # Lists all ClaimBatches
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimBatchesListVBAResponse, Integer, Hash)>] ClaimBatchesListVBAResponse data, response status code and response headers
    def list_claim_batches_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchesApi.list_claim_batches ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchesApi.list_claim_batches"
      end
      # resource path
      local_var_path = '/claim-batches'

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
      return_type = opts[:debug_return_type] || 'ClaimBatchesListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchesApi.list_claim_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchesApi#list_claim_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimBatches
    # Create or Update multiple ClaimBatches at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_batches [Array<ClaimBatches>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_batches(vbasoftware_database, claim_batches, opts = {})
      data, _status_code, _headers = update_batch_claim_batches_with_http_info(vbasoftware_database, claim_batches, opts)
      data
    end

    # Create or Update Batch ClaimBatches
    # Create or Update multiple ClaimBatches at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param claim_batches [Array<ClaimBatches>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_batches_with_http_info(vbasoftware_database, claim_batches, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchesApi.update_batch_claim_batches ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchesApi.update_batch_claim_batches"
      end
      # verify the required parameter 'claim_batches' is set
      if @api_client.config.client_side_validation && claim_batches.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batches' when calling ClaimBatchesApi.update_batch_claim_batches"
      end
      # resource path
      local_var_path = '/claim-batches-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batches)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchesApi.update_batch_claim_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchesApi#update_batch_claim_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimBatches
    # Updates a specific ClaimBatches.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param claim_batches [ClaimBatches] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchesVBAResponse]
    def update_claim_batches(vbasoftware_database, batch_number, claim_batches, opts = {})
      data, _status_code, _headers = update_claim_batches_with_http_info(vbasoftware_database, batch_number, claim_batches, opts)
      data
    end

    # Update ClaimBatches
    # Updates a specific ClaimBatches.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param claim_batches [ClaimBatches] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchesVBAResponse, Integer, Hash)>] ClaimBatchesVBAResponse data, response status code and response headers
    def update_claim_batches_with_http_info(vbasoftware_database, batch_number, claim_batches, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchesApi.update_claim_batches ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchesApi.update_claim_batches"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchesApi.update_claim_batches"
      end
      # verify the required parameter 'claim_batches' is set
      if @api_client.config.client_side_validation && claim_batches.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batches' when calling ClaimBatchesApi.update_claim_batches"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batches)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimBatchesVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchesApi.update_claim_batches",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchesApi#update_claim_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
