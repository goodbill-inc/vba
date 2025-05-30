=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CountryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Country
    # Creates a new Country
    # @param vbasoftware_database [String] Target database
    # @param country [Country] 
    # @param [Hash] opts the optional parameters
    # @return [CountryVBAResponse]
    def create_country(vbasoftware_database, country, opts = {})
      data, _status_code, _headers = create_country_with_http_info(vbasoftware_database, country, opts)
      data
    end

    # Create Country
    # Creates a new Country
    # @param vbasoftware_database [String] Target database
    # @param country [Country] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CountryVBAResponse, Integer, Hash)>] CountryVBAResponse data, response status code and response headers
    def create_country_with_http_info(vbasoftware_database, country, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountryApi.create_country ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CountryApi.create_country"
      end
      # verify the required parameter 'country' is set
      if @api_client.config.client_side_validation && country.nil?
        fail ArgumentError, "Missing the required parameter 'country' when calling CountryApi.create_country"
      end
      # resource path
      local_var_path = '/countries'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(country)

      # return_type
      return_type = opts[:debug_return_type] || 'CountryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CountryApi.create_country",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountryApi#create_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Country
    # Deletes an Country
    # @param vbasoftware_database [String] Target database
    # @param country_id [String] Country ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_country(vbasoftware_database, country_id, opts = {})
      delete_country_with_http_info(vbasoftware_database, country_id, opts)
      nil
    end

    # Delete Country
    # Deletes an Country
    # @param vbasoftware_database [String] Target database
    # @param country_id [String] Country ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_country_with_http_info(vbasoftware_database, country_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountryApi.delete_country ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CountryApi.delete_country"
      end
      # verify the required parameter 'country_id' is set
      if @api_client.config.client_side_validation && country_id.nil?
        fail ArgumentError, "Missing the required parameter 'country_id' when calling CountryApi.delete_country"
      end
      # resource path
      local_var_path = '/countries/{countryID}'.sub('{' + 'countryID' + '}', CGI.escape(country_id.to_s))

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
        :operation => :"CountryApi.delete_country",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountryApi#delete_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Country
    # Gets Country
    # @param vbasoftware_database [String] Target database
    # @param country_id [String] Country ID
    # @param [Hash] opts the optional parameters
    # @return [CountryVBAResponse]
    def get_country(vbasoftware_database, country_id, opts = {})
      data, _status_code, _headers = get_country_with_http_info(vbasoftware_database, country_id, opts)
      data
    end

    # Get Country
    # Gets Country
    # @param vbasoftware_database [String] Target database
    # @param country_id [String] Country ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(CountryVBAResponse, Integer, Hash)>] CountryVBAResponse data, response status code and response headers
    def get_country_with_http_info(vbasoftware_database, country_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountryApi.get_country ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CountryApi.get_country"
      end
      # verify the required parameter 'country_id' is set
      if @api_client.config.client_side_validation && country_id.nil?
        fail ArgumentError, "Missing the required parameter 'country_id' when calling CountryApi.get_country"
      end
      # resource path
      local_var_path = '/countries/{countryID}'.sub('{' + 'countryID' + '}', CGI.escape(country_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CountryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CountryApi.get_country",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountryApi#get_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Countries
    # List all available countries
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CountryListVBAResponse]
    def list_countries(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_countries_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Countries
    # List all available countries
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CountryListVBAResponse, Integer, Hash)>] CountryListVBAResponse data, response status code and response headers
    def list_countries_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountryApi.list_countries ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CountryApi.list_countries"
      end
      # resource path
      local_var_path = '/countries'

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
      return_type = opts[:debug_return_type] || 'CountryListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CountryApi.list_countries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountryApi#list_countries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Country
    # Create or Update multiple Country at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param country [Array<Country>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_country(vbasoftware_database, country, opts = {})
      data, _status_code, _headers = update_batch_country_with_http_info(vbasoftware_database, country, opts)
      data
    end

    # Create or Update Batch Country
    # Create or Update multiple Country at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param country [Array<Country>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_country_with_http_info(vbasoftware_database, country, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountryApi.update_batch_country ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CountryApi.update_batch_country"
      end
      # verify the required parameter 'country' is set
      if @api_client.config.client_side_validation && country.nil?
        fail ArgumentError, "Missing the required parameter 'country' when calling CountryApi.update_batch_country"
      end
      # resource path
      local_var_path = '/countries-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(country)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CountryApi.update_batch_country",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountryApi#update_batch_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Country
    # Updates a specific Country.
    # @param vbasoftware_database [String] Target database
    # @param country_id [String] Country ID
    # @param country [Country] 
    # @param [Hash] opts the optional parameters
    # @return [CountryVBAResponse]
    def update_country(vbasoftware_database, country_id, country, opts = {})
      data, _status_code, _headers = update_country_with_http_info(vbasoftware_database, country_id, country, opts)
      data
    end

    # Update Country
    # Updates a specific Country.
    # @param vbasoftware_database [String] Target database
    # @param country_id [String] Country ID
    # @param country [Country] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CountryVBAResponse, Integer, Hash)>] CountryVBAResponse data, response status code and response headers
    def update_country_with_http_info(vbasoftware_database, country_id, country, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CountryApi.update_country ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CountryApi.update_country"
      end
      # verify the required parameter 'country_id' is set
      if @api_client.config.client_side_validation && country_id.nil?
        fail ArgumentError, "Missing the required parameter 'country_id' when calling CountryApi.update_country"
      end
      # verify the required parameter 'country' is set
      if @api_client.config.client_side_validation && country.nil?
        fail ArgumentError, "Missing the required parameter 'country' when calling CountryApi.update_country"
      end
      # resource path
      local_var_path = '/countries/{countryID}'.sub('{' + 'countryID' + '}', CGI.escape(country_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(country)

      # return_type
      return_type = opts[:debug_return_type] || 'CountryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CountryApi.update_country",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CountryApi#update_country\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
