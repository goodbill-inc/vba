=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CareCaseLotsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CareCaseLot
    # Creates a new CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot [CareCaseLot] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseLotVBAResponse]
    def create_care_case_lot(vbasoftware_database, care_case_lot, opts = {})
      data, _status_code, _headers = create_care_case_lot_with_http_info(vbasoftware_database, care_case_lot, opts)
      data
    end

    # Create CareCaseLot
    # Creates a new CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot [CareCaseLot] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseLotVBAResponse, Integer, Hash)>] CareCaseLotVBAResponse data, response status code and response headers
    def create_care_case_lot_with_http_info(vbasoftware_database, care_case_lot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseLotsApi.create_care_case_lot ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseLotsApi.create_care_case_lot"
      end
      # verify the required parameter 'care_case_lot' is set
      if @api_client.config.client_side_validation && care_case_lot.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_lot' when calling CareCaseLotsApi.create_care_case_lot"
      end
      # resource path
      local_var_path = '/care-case-lots'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_lot)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseLotVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseLotsApi.create_care_case_lot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseLotsApi#create_care_case_lot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CareCaseLot
    # Deletes an CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot_key [Integer] CareCaseLot Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_case_lot(vbasoftware_database, care_case_lot_key, opts = {})
      delete_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, opts)
      nil
    end

    # Delete CareCaseLot
    # Deletes an CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot_key [Integer] CareCaseLot Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseLotsApi.delete_care_case_lot ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseLotsApi.delete_care_case_lot"
      end
      # verify the required parameter 'care_case_lot_key' is set
      if @api_client.config.client_side_validation && care_case_lot_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_lot_key' when calling CareCaseLotsApi.delete_care_case_lot"
      end
      # resource path
      local_var_path = '/care-case-lots/{careCaseLotKey}'.sub('{' + 'careCaseLotKey' + '}', CGI.escape(care_case_lot_key.to_s))

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
        :operation => :"CareCaseLotsApi.delete_care_case_lot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseLotsApi#delete_care_case_lot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CareCaseLot
    # Gets CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot_key [Integer] CareCaseLot Key
    # @param [Hash] opts the optional parameters
    # @return [CareCaseLotVBAResponse]
    def get_care_case_lot(vbasoftware_database, care_case_lot_key, opts = {})
      data, _status_code, _headers = get_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, opts)
      data
    end

    # Get CareCaseLot
    # Gets CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot_key [Integer] CareCaseLot Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseLotVBAResponse, Integer, Hash)>] CareCaseLotVBAResponse data, response status code and response headers
    def get_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseLotsApi.get_care_case_lot ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseLotsApi.get_care_case_lot"
      end
      # verify the required parameter 'care_case_lot_key' is set
      if @api_client.config.client_side_validation && care_case_lot_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_lot_key' when calling CareCaseLotsApi.get_care_case_lot"
      end
      # resource path
      local_var_path = '/care-case-lots/{careCaseLotKey}'.sub('{' + 'careCaseLotKey' + '}', CGI.escape(care_case_lot_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CareCaseLotVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseLotsApi.get_care_case_lot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseLotsApi#get_care_case_lot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CareCaseLot
    # Lists all CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CareCaseLotListVBAResponse]
    def list_care_case_lot(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_care_case_lot_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CareCaseLot
    # Lists all CareCaseLot
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CareCaseLotListVBAResponse, Integer, Hash)>] CareCaseLotListVBAResponse data, response status code and response headers
    def list_care_case_lot_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseLotsApi.list_care_case_lot ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseLotsApi.list_care_case_lot"
      end
      # resource path
      local_var_path = '/care-case-lots'

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
      return_type = opts[:debug_return_type] || 'CareCaseLotListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseLotsApi.list_care_case_lot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseLotsApi#list_care_case_lot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CareCaseLot
    # Create or Update multiple CareCaseLot at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot [Array<CareCaseLot>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_case_lot(vbasoftware_database, care_case_lot, opts = {})
      data, _status_code, _headers = update_batch_care_case_lot_with_http_info(vbasoftware_database, care_case_lot, opts)
      data
    end

    # Create or Update Batch CareCaseLot
    # Create or Update multiple CareCaseLot at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot [Array<CareCaseLot>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_case_lot_with_http_info(vbasoftware_database, care_case_lot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseLotsApi.update_batch_care_case_lot ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseLotsApi.update_batch_care_case_lot"
      end
      # verify the required parameter 'care_case_lot' is set
      if @api_client.config.client_side_validation && care_case_lot.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_lot' when calling CareCaseLotsApi.update_batch_care_case_lot"
      end
      # resource path
      local_var_path = '/care-case-lots-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_lot)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseLotsApi.update_batch_care_case_lot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseLotsApi#update_batch_care_case_lot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CareCaseLot
    # Updates a specific CareCaseLot.
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot_key [Integer] CareCaseLot Key
    # @param care_case_lot [CareCaseLot] 
    # @param [Hash] opts the optional parameters
    # @return [CareCaseLotVBAResponse]
    def update_care_case_lot(vbasoftware_database, care_case_lot_key, care_case_lot, opts = {})
      data, _status_code, _headers = update_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, care_case_lot, opts)
      data
    end

    # Update CareCaseLot
    # Updates a specific CareCaseLot.
    # @param vbasoftware_database [String] Target database
    # @param care_case_lot_key [Integer] CareCaseLot Key
    # @param care_case_lot [CareCaseLot] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CareCaseLotVBAResponse, Integer, Hash)>] CareCaseLotVBAResponse data, response status code and response headers
    def update_care_case_lot_with_http_info(vbasoftware_database, care_case_lot_key, care_case_lot, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CareCaseLotsApi.update_care_case_lot ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CareCaseLotsApi.update_care_case_lot"
      end
      # verify the required parameter 'care_case_lot_key' is set
      if @api_client.config.client_side_validation && care_case_lot_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_lot_key' when calling CareCaseLotsApi.update_care_case_lot"
      end
      # verify the required parameter 'care_case_lot' is set
      if @api_client.config.client_side_validation && care_case_lot.nil?
        fail ArgumentError, "Missing the required parameter 'care_case_lot' when calling CareCaseLotsApi.update_care_case_lot"
      end
      # resource path
      local_var_path = '/care-case-lots/{careCaseLotKey}'.sub('{' + 'careCaseLotKey' + '}', CGI.escape(care_case_lot_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_case_lot)

      # return_type
      return_type = opts[:debug_return_type] || 'CareCaseLotVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CareCaseLotsApi.update_care_case_lot",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CareCaseLotsApi#update_care_case_lot\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
