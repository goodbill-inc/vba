=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class OccupationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Occupation
    # Creates a new Occupation
    # @param vbasoftware_database [String] Target database
    # @param occupation [Occupation] 
    # @param [Hash] opts the optional parameters
    # @return [OccupationVBAResponse]
    def create_occupation(vbasoftware_database, occupation, opts = {})
      data, _status_code, _headers = create_occupation_with_http_info(vbasoftware_database, occupation, opts)
      data
    end

    # Create Occupation
    # Creates a new Occupation
    # @param vbasoftware_database [String] Target database
    # @param occupation [Occupation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OccupationVBAResponse, Integer, Hash)>] OccupationVBAResponse data, response status code and response headers
    def create_occupation_with_http_info(vbasoftware_database, occupation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OccupationsApi.create_occupation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling OccupationsApi.create_occupation"
      end
      # verify the required parameter 'occupation' is set
      if @api_client.config.client_side_validation && occupation.nil?
        fail ArgumentError, "Missing the required parameter 'occupation' when calling OccupationsApi.create_occupation"
      end
      # resource path
      local_var_path = '/occupations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(occupation)

      # return_type
      return_type = opts[:debug_return_type] || 'OccupationVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"OccupationsApi.create_occupation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OccupationsApi#create_occupation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Occupation
    # Deletes an Occupation
    # @param vbasoftware_database [String] Target database
    # @param occupation_id [String] Occupation ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_occupation(vbasoftware_database, occupation_id, opts = {})
      delete_occupation_with_http_info(vbasoftware_database, occupation_id, opts)
      nil
    end

    # Delete Occupation
    # Deletes an Occupation
    # @param vbasoftware_database [String] Target database
    # @param occupation_id [String] Occupation ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_occupation_with_http_info(vbasoftware_database, occupation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OccupationsApi.delete_occupation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling OccupationsApi.delete_occupation"
      end
      # verify the required parameter 'occupation_id' is set
      if @api_client.config.client_side_validation && occupation_id.nil?
        fail ArgumentError, "Missing the required parameter 'occupation_id' when calling OccupationsApi.delete_occupation"
      end
      # resource path
      local_var_path = '/occupations/{occupationID}'.sub('{' + 'occupationID' + '}', CGI.escape(occupation_id.to_s))

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
        :operation => :"OccupationsApi.delete_occupation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OccupationsApi#delete_occupation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Occupation
    # Gets Occupation
    # @param vbasoftware_database [String] Target database
    # @param occupation_id [String] Occupation ID
    # @param [Hash] opts the optional parameters
    # @return [OccupationVBAResponse]
    def get_occupation(vbasoftware_database, occupation_id, opts = {})
      data, _status_code, _headers = get_occupation_with_http_info(vbasoftware_database, occupation_id, opts)
      data
    end

    # Get Occupation
    # Gets Occupation
    # @param vbasoftware_database [String] Target database
    # @param occupation_id [String] Occupation ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(OccupationVBAResponse, Integer, Hash)>] OccupationVBAResponse data, response status code and response headers
    def get_occupation_with_http_info(vbasoftware_database, occupation_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OccupationsApi.get_occupation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling OccupationsApi.get_occupation"
      end
      # verify the required parameter 'occupation_id' is set
      if @api_client.config.client_side_validation && occupation_id.nil?
        fail ArgumentError, "Missing the required parameter 'occupation_id' when calling OccupationsApi.get_occupation"
      end
      # resource path
      local_var_path = '/occupations/{occupationID}'.sub('{' + 'occupationID' + '}', CGI.escape(occupation_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OccupationVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"OccupationsApi.get_occupation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OccupationsApi#get_occupation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Occupation
    # Lists all Occupation
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [OccupationListVBAResponse]
    def list_occupation(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_occupation_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Occupation
    # Lists all Occupation
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(OccupationListVBAResponse, Integer, Hash)>] OccupationListVBAResponse data, response status code and response headers
    def list_occupation_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OccupationsApi.list_occupation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling OccupationsApi.list_occupation"
      end
      # resource path
      local_var_path = '/occupations'

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
      return_type = opts[:debug_return_type] || 'OccupationListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"OccupationsApi.list_occupation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OccupationsApi#list_occupation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Occupation
    # Create or Update multiple Occupation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param occupation [Array<Occupation>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_occupation(vbasoftware_database, occupation, opts = {})
      data, _status_code, _headers = update_batch_occupation_with_http_info(vbasoftware_database, occupation, opts)
      data
    end

    # Create or Update Batch Occupation
    # Create or Update multiple Occupation at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param occupation [Array<Occupation>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_occupation_with_http_info(vbasoftware_database, occupation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OccupationsApi.update_batch_occupation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling OccupationsApi.update_batch_occupation"
      end
      # verify the required parameter 'occupation' is set
      if @api_client.config.client_side_validation && occupation.nil?
        fail ArgumentError, "Missing the required parameter 'occupation' when calling OccupationsApi.update_batch_occupation"
      end
      # resource path
      local_var_path = '/occupations-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(occupation)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"OccupationsApi.update_batch_occupation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OccupationsApi#update_batch_occupation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Occupation
    # Updates a specific Occupation.
    # @param vbasoftware_database [String] Target database
    # @param occupation_id [String] Occupation ID
    # @param occupation [Occupation] 
    # @param [Hash] opts the optional parameters
    # @return [OccupationVBAResponse]
    def update_occupation(vbasoftware_database, occupation_id, occupation, opts = {})
      data, _status_code, _headers = update_occupation_with_http_info(vbasoftware_database, occupation_id, occupation, opts)
      data
    end

    # Update Occupation
    # Updates a specific Occupation.
    # @param vbasoftware_database [String] Target database
    # @param occupation_id [String] Occupation ID
    # @param occupation [Occupation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OccupationVBAResponse, Integer, Hash)>] OccupationVBAResponse data, response status code and response headers
    def update_occupation_with_http_info(vbasoftware_database, occupation_id, occupation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OccupationsApi.update_occupation ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling OccupationsApi.update_occupation"
      end
      # verify the required parameter 'occupation_id' is set
      if @api_client.config.client_side_validation && occupation_id.nil?
        fail ArgumentError, "Missing the required parameter 'occupation_id' when calling OccupationsApi.update_occupation"
      end
      # verify the required parameter 'occupation' is set
      if @api_client.config.client_side_validation && occupation.nil?
        fail ArgumentError, "Missing the required parameter 'occupation' when calling OccupationsApi.update_occupation"
      end
      # resource path
      local_var_path = '/occupations/{occupationID}'.sub('{' + 'occupationID' + '}', CGI.escape(occupation_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(occupation)

      # return_type
      return_type = opts[:debug_return_type] || 'OccupationVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"OccupationsApi.update_occupation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OccupationsApi#update_occupation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
