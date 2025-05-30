=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumRatePacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PremRatePace
    # Creates a new PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_pace [PremRatePace] 
    # @param [Hash] opts the optional parameters
    # @return [PremRatePaceVBAResponse]
    def create_prem_rate_pace(vbasoftware_database, prem_rate_pace, opts = {})
      data, _status_code, _headers = create_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace, opts)
      data
    end

    # Create PremRatePace
    # Creates a new PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_pace [PremRatePace] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRatePaceVBAResponse, Integer, Hash)>] PremRatePaceVBAResponse data, response status code and response headers
    def create_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatePacesApi.create_prem_rate_pace ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatePacesApi.create_prem_rate_pace"
      end
      # verify the required parameter 'prem_rate_pace' is set
      if @api_client.config.client_side_validation && prem_rate_pace.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_pace' when calling PremiumRatePacesApi.create_prem_rate_pace"
      end
      # resource path
      local_var_path = '/premium-rate-paces'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_pace)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRatePaceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatePacesApi.create_prem_rate_pace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatePacesApi#create_prem_rate_pace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremRatePace
    # Deletes an PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param rate_pace [String] Rate Pace
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_rate_pace(vbasoftware_database, rate_pace, opts = {})
      delete_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, opts)
      nil
    end

    # Delete PremRatePace
    # Deletes an PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param rate_pace [String] Rate Pace
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatePacesApi.delete_prem_rate_pace ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatePacesApi.delete_prem_rate_pace"
      end
      # verify the required parameter 'rate_pace' is set
      if @api_client.config.client_side_validation && rate_pace.nil?
        fail ArgumentError, "Missing the required parameter 'rate_pace' when calling PremiumRatePacesApi.delete_prem_rate_pace"
      end
      # resource path
      local_var_path = '/premium-rate-paces/{ratePace}'.sub('{' + 'ratePace' + '}', CGI.escape(rate_pace.to_s))

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
        :operation => :"PremiumRatePacesApi.delete_prem_rate_pace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatePacesApi#delete_prem_rate_pace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremRatePace
    # Gets PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param rate_pace [String] Rate Pace
    # @param [Hash] opts the optional parameters
    # @return [PremRatePaceVBAResponse]
    def get_prem_rate_pace(vbasoftware_database, rate_pace, opts = {})
      data, _status_code, _headers = get_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, opts)
      data
    end

    # Get PremRatePace
    # Gets PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param rate_pace [String] Rate Pace
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRatePaceVBAResponse, Integer, Hash)>] PremRatePaceVBAResponse data, response status code and response headers
    def get_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatePacesApi.get_prem_rate_pace ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatePacesApi.get_prem_rate_pace"
      end
      # verify the required parameter 'rate_pace' is set
      if @api_client.config.client_side_validation && rate_pace.nil?
        fail ArgumentError, "Missing the required parameter 'rate_pace' when calling PremiumRatePacesApi.get_prem_rate_pace"
      end
      # resource path
      local_var_path = '/premium-rate-paces/{ratePace}'.sub('{' + 'ratePace' + '}', CGI.escape(rate_pace.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRatePaceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatePacesApi.get_prem_rate_pace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatePacesApi#get_prem_rate_pace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremRatePace
    # Lists all PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremRatePaceListVBAResponse]
    def list_prem_rate_pace(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_prem_rate_pace_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PremRatePace
    # Lists all PremRatePace
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremRatePaceListVBAResponse, Integer, Hash)>] PremRatePaceListVBAResponse data, response status code and response headers
    def list_prem_rate_pace_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatePacesApi.list_prem_rate_pace ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatePacesApi.list_prem_rate_pace"
      end
      # resource path
      local_var_path = '/premium-rate-paces'

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
      return_type = opts[:debug_return_type] || 'PremRatePaceListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatePacesApi.list_prem_rate_pace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatePacesApi#list_prem_rate_pace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremRatePace
    # Create or Update multiple PremRatePace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_pace [Array<PremRatePace>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_rate_pace(vbasoftware_database, prem_rate_pace, opts = {})
      data, _status_code, _headers = update_batch_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace, opts)
      data
    end

    # Create or Update Batch PremRatePace
    # Create or Update multiple PremRatePace at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_pace [Array<PremRatePace>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_rate_pace_with_http_info(vbasoftware_database, prem_rate_pace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatePacesApi.update_batch_prem_rate_pace ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatePacesApi.update_batch_prem_rate_pace"
      end
      # verify the required parameter 'prem_rate_pace' is set
      if @api_client.config.client_side_validation && prem_rate_pace.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_pace' when calling PremiumRatePacesApi.update_batch_prem_rate_pace"
      end
      # resource path
      local_var_path = '/premium-rate-paces-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_pace)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatePacesApi.update_batch_prem_rate_pace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatePacesApi#update_batch_prem_rate_pace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremRatePace
    # Updates a specific PremRatePace.
    # @param vbasoftware_database [String] Target database
    # @param rate_pace [String] Rate Pace
    # @param prem_rate_pace [PremRatePace] 
    # @param [Hash] opts the optional parameters
    # @return [PremRatePaceVBAResponse]
    def update_prem_rate_pace(vbasoftware_database, rate_pace, prem_rate_pace, opts = {})
      data, _status_code, _headers = update_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, prem_rate_pace, opts)
      data
    end

    # Update PremRatePace
    # Updates a specific PremRatePace.
    # @param vbasoftware_database [String] Target database
    # @param rate_pace [String] Rate Pace
    # @param prem_rate_pace [PremRatePace] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRatePaceVBAResponse, Integer, Hash)>] PremRatePaceVBAResponse data, response status code and response headers
    def update_prem_rate_pace_with_http_info(vbasoftware_database, rate_pace, prem_rate_pace, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRatePacesApi.update_prem_rate_pace ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRatePacesApi.update_prem_rate_pace"
      end
      # verify the required parameter 'rate_pace' is set
      if @api_client.config.client_side_validation && rate_pace.nil?
        fail ArgumentError, "Missing the required parameter 'rate_pace' when calling PremiumRatePacesApi.update_prem_rate_pace"
      end
      # verify the required parameter 'prem_rate_pace' is set
      if @api_client.config.client_side_validation && prem_rate_pace.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_pace' when calling PremiumRatePacesApi.update_prem_rate_pace"
      end
      # resource path
      local_var_path = '/premium-rate-paces/{ratePace}'.sub('{' + 'ratePace' + '}', CGI.escape(rate_pace.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_pace)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRatePaceVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRatePacesApi.update_prem_rate_pace",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRatePacesApi#update_prem_rate_pace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
