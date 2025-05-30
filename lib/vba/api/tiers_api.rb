=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class TiersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Tier
    # Creates a new Tier
    # @param vbasoftware_database [String] Target database
    # @param tier [Tier] 
    # @param [Hash] opts the optional parameters
    # @return [TierVBAResponse]
    def create_tier(vbasoftware_database, tier, opts = {})
      data, _status_code, _headers = create_tier_with_http_info(vbasoftware_database, tier, opts)
      data
    end

    # Create Tier
    # Creates a new Tier
    # @param vbasoftware_database [String] Target database
    # @param tier [Tier] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TierVBAResponse, Integer, Hash)>] TierVBAResponse data, response status code and response headers
    def create_tier_with_http_info(vbasoftware_database, tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiersApi.create_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TiersApi.create_tier"
      end
      # verify the required parameter 'tier' is set
      if @api_client.config.client_side_validation && tier.nil?
        fail ArgumentError, "Missing the required parameter 'tier' when calling TiersApi.create_tier"
      end
      # resource path
      local_var_path = '/tiers'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tier)

      # return_type
      return_type = opts[:debug_return_type] || 'TierVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TiersApi.create_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiersApi#create_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Tier
    # Deletes an Tier
    # @param vbasoftware_database [String] Target database
    # @param tier1 [String] Tier1
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tier(vbasoftware_database, tier1, opts = {})
      delete_tier_with_http_info(vbasoftware_database, tier1, opts)
      nil
    end

    # Delete Tier
    # Deletes an Tier
    # @param vbasoftware_database [String] Target database
    # @param tier1 [String] Tier1
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_tier_with_http_info(vbasoftware_database, tier1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiersApi.delete_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TiersApi.delete_tier"
      end
      # verify the required parameter 'tier1' is set
      if @api_client.config.client_side_validation && tier1.nil?
        fail ArgumentError, "Missing the required parameter 'tier1' when calling TiersApi.delete_tier"
      end
      # resource path
      local_var_path = '/tiers/{tier1}'.sub('{' + 'tier1' + '}', CGI.escape(tier1.to_s))

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
        :operation => :"TiersApi.delete_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiersApi#delete_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Tier
    # Gets Tier
    # @param vbasoftware_database [String] Target database
    # @param tier1 [String] Tier1
    # @param [Hash] opts the optional parameters
    # @return [TierVBAResponse]
    def get_tier(vbasoftware_database, tier1, opts = {})
      data, _status_code, _headers = get_tier_with_http_info(vbasoftware_database, tier1, opts)
      data
    end

    # Get Tier
    # Gets Tier
    # @param vbasoftware_database [String] Target database
    # @param tier1 [String] Tier1
    # @param [Hash] opts the optional parameters
    # @return [Array<(TierVBAResponse, Integer, Hash)>] TierVBAResponse data, response status code and response headers
    def get_tier_with_http_info(vbasoftware_database, tier1, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiersApi.get_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TiersApi.get_tier"
      end
      # verify the required parameter 'tier1' is set
      if @api_client.config.client_side_validation && tier1.nil?
        fail ArgumentError, "Missing the required parameter 'tier1' when calling TiersApi.get_tier"
      end
      # resource path
      local_var_path = '/tiers/{tier1}'.sub('{' + 'tier1' + '}', CGI.escape(tier1.to_s))

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
      return_type = opts[:debug_return_type] || 'TierVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TiersApi.get_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiersApi#get_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Tier
    # Lists all Tier
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [TierListVBAResponse]
    def list_tier(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_tier_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Tier
    # Lists all Tier
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(TierListVBAResponse, Integer, Hash)>] TierListVBAResponse data, response status code and response headers
    def list_tier_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiersApi.list_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TiersApi.list_tier"
      end
      # resource path
      local_var_path = '/tiers'

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
      return_type = opts[:debug_return_type] || 'TierListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TiersApi.list_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiersApi#list_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Tier
    # Create or Update multiple Tier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param tier [Array<Tier>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_tier(vbasoftware_database, tier, opts = {})
      data, _status_code, _headers = update_batch_tier_with_http_info(vbasoftware_database, tier, opts)
      data
    end

    # Create or Update Batch Tier
    # Create or Update multiple Tier at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param tier [Array<Tier>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_tier_with_http_info(vbasoftware_database, tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiersApi.update_batch_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TiersApi.update_batch_tier"
      end
      # verify the required parameter 'tier' is set
      if @api_client.config.client_side_validation && tier.nil?
        fail ArgumentError, "Missing the required parameter 'tier' when calling TiersApi.update_batch_tier"
      end
      # resource path
      local_var_path = '/tiers-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tier)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TiersApi.update_batch_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiersApi#update_batch_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Tier
    # Updates a specific Tier.
    # @param vbasoftware_database [String] Target database
    # @param tier1 [String] Tier1
    # @param tier [Tier] 
    # @param [Hash] opts the optional parameters
    # @return [TierVBAResponse]
    def update_tier(vbasoftware_database, tier1, tier, opts = {})
      data, _status_code, _headers = update_tier_with_http_info(vbasoftware_database, tier1, tier, opts)
      data
    end

    # Update Tier
    # Updates a specific Tier.
    # @param vbasoftware_database [String] Target database
    # @param tier1 [String] Tier1
    # @param tier [Tier] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TierVBAResponse, Integer, Hash)>] TierVBAResponse data, response status code and response headers
    def update_tier_with_http_info(vbasoftware_database, tier1, tier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TiersApi.update_tier ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling TiersApi.update_tier"
      end
      # verify the required parameter 'tier1' is set
      if @api_client.config.client_side_validation && tier1.nil?
        fail ArgumentError, "Missing the required parameter 'tier1' when calling TiersApi.update_tier"
      end
      # verify the required parameter 'tier' is set
      if @api_client.config.client_side_validation && tier.nil?
        fail ArgumentError, "Missing the required parameter 'tier' when calling TiersApi.update_tier"
      end
      # resource path
      local_var_path = '/tiers/{tier1}'.sub('{' + 'tier1' + '}', CGI.escape(tier1.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tier)

      # return_type
      return_type = opts[:debug_return_type] || 'TierVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TiersApi.update_tier",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TiersApi#update_tier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
