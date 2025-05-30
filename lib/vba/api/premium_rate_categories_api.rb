=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PremiumRateCategoriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PremRateCategory
    # Creates a new PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [PremRateCategory] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateCategoryVBAResponse]
    def create_prem_rate_category(vbasoftware_database, prem_rate_category, opts = {})
      data, _status_code, _headers = create_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts)
      data
    end

    # Create PremRateCategory
    # Creates a new PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [PremRateCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateCategoryVBAResponse, Integer, Hash)>] PremRateCategoryVBAResponse data, response status code and response headers
    def create_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateCategoriesApi.create_prem_rate_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateCategoriesApi.create_prem_rate_category"
      end
      # verify the required parameter 'prem_rate_category' is set
      if @api_client.config.client_side_validation && prem_rate_category.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_category' when calling PremiumRateCategoriesApi.create_prem_rate_category"
      end
      # resource path
      local_var_path = '/premium-rate-categories'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_category)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateCategoriesApi.create_prem_rate_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateCategoriesApi#create_prem_rate_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PremRateCategory
    # Deletes an PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [String] PremRate Category
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_prem_rate_category(vbasoftware_database, prem_rate_category, opts = {})
      delete_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts)
      nil
    end

    # Delete PremRateCategory
    # Deletes an PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [String] PremRate Category
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateCategoriesApi.delete_prem_rate_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateCategoriesApi.delete_prem_rate_category"
      end
      # verify the required parameter 'prem_rate_category' is set
      if @api_client.config.client_side_validation && prem_rate_category.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_category' when calling PremiumRateCategoriesApi.delete_prem_rate_category"
      end
      # resource path
      local_var_path = '/premium-rate-categories/{premRateCategory}'.sub('{' + 'premRateCategory' + '}', CGI.escape(prem_rate_category.to_s))

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
        :operation => :"PremiumRateCategoriesApi.delete_prem_rate_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateCategoriesApi#delete_prem_rate_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PremRateCategory
    # Gets PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [String] PremRate Category
    # @param [Hash] opts the optional parameters
    # @return [PremRateCategoryVBAResponse]
    def get_prem_rate_category(vbasoftware_database, prem_rate_category, opts = {})
      data, _status_code, _headers = get_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts)
      data
    end

    # Get PremRateCategory
    # Gets PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [String] PremRate Category
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateCategoryVBAResponse, Integer, Hash)>] PremRateCategoryVBAResponse data, response status code and response headers
    def get_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateCategoriesApi.get_prem_rate_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateCategoriesApi.get_prem_rate_category"
      end
      # verify the required parameter 'prem_rate_category' is set
      if @api_client.config.client_side_validation && prem_rate_category.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_category' when calling PremiumRateCategoriesApi.get_prem_rate_category"
      end
      # resource path
      local_var_path = '/premium-rate-categories/{premRateCategory}'.sub('{' + 'premRateCategory' + '}', CGI.escape(prem_rate_category.to_s))

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
      return_type = opts[:debug_return_type] || 'PremRateCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateCategoriesApi.get_prem_rate_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateCategoriesApi#get_prem_rate_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PremRateCategory
    # Lists all PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PremRateCategoryListVBAResponse]
    def list_prem_rate_category(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_prem_rate_category_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PremRateCategory
    # Lists all PremRateCategory
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PremRateCategoryListVBAResponse, Integer, Hash)>] PremRateCategoryListVBAResponse data, response status code and response headers
    def list_prem_rate_category_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateCategoriesApi.list_prem_rate_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateCategoriesApi.list_prem_rate_category"
      end
      # resource path
      local_var_path = '/premium-rate-categories'

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
      return_type = opts[:debug_return_type] || 'PremRateCategoryListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateCategoriesApi.list_prem_rate_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateCategoriesApi#list_prem_rate_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch PremRateCategory
    # Create or Update multiple PremRateCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [Array<PremRateCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_prem_rate_category(vbasoftware_database, prem_rate_category, opts = {})
      data, _status_code, _headers = update_batch_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts)
      data
    end

    # Create or Update Batch PremRateCategory
    # Create or Update multiple PremRateCategory at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [Array<PremRateCategory>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateCategoriesApi.update_batch_prem_rate_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateCategoriesApi.update_batch_prem_rate_category"
      end
      # verify the required parameter 'prem_rate_category' is set
      if @api_client.config.client_side_validation && prem_rate_category.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_category' when calling PremiumRateCategoriesApi.update_batch_prem_rate_category"
      end
      # resource path
      local_var_path = '/premium-rate-categories-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_category)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateCategoriesApi.update_batch_prem_rate_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateCategoriesApi#update_batch_prem_rate_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update PremRateCategory
    # Updates a specific PremRateCategory.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [String] PremRate Category
    # @param prem_rate_category2 [PremRateCategory] 
    # @param [Hash] opts the optional parameters
    # @return [PremRateCategoryVBAResponse]
    def update_prem_rate_category(vbasoftware_database, prem_rate_category, prem_rate_category2, opts = {})
      data, _status_code, _headers = update_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, prem_rate_category2, opts)
      data
    end

    # Update PremRateCategory
    # Updates a specific PremRateCategory.
    # @param vbasoftware_database [String] Target database
    # @param prem_rate_category [String] PremRate Category
    # @param prem_rate_category2 [PremRateCategory] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremRateCategoryVBAResponse, Integer, Hash)>] PremRateCategoryVBAResponse data, response status code and response headers
    def update_prem_rate_category_with_http_info(vbasoftware_database, prem_rate_category, prem_rate_category2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PremiumRateCategoriesApi.update_prem_rate_category ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PremiumRateCategoriesApi.update_prem_rate_category"
      end
      # verify the required parameter 'prem_rate_category' is set
      if @api_client.config.client_side_validation && prem_rate_category.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_category' when calling PremiumRateCategoriesApi.update_prem_rate_category"
      end
      # verify the required parameter 'prem_rate_category2' is set
      if @api_client.config.client_side_validation && prem_rate_category2.nil?
        fail ArgumentError, "Missing the required parameter 'prem_rate_category2' when calling PremiumRateCategoriesApi.update_prem_rate_category"
      end
      # resource path
      local_var_path = '/premium-rate-categories/{premRateCategory}'.sub('{' + 'premRateCategory' + '}', CGI.escape(prem_rate_category.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(prem_rate_category2)

      # return_type
      return_type = opts[:debug_return_type] || 'PremRateCategoryVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PremiumRateCategoriesApi.update_prem_rate_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PremiumRateCategoriesApi#update_prem_rate_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
