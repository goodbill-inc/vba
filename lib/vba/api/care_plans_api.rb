=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CarePlansApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CarePlan
    # Creates a new CarePlan
    # @param vbasoftware_database [String] Target database
    # @param care_plan [CarePlan] 
    # @param [Hash] opts the optional parameters
    # @return [CarePlanVBAResponse]
    def create_care_plan(vbasoftware_database, care_plan, opts = {})
      data, _status_code, _headers = create_care_plan_with_http_info(vbasoftware_database, care_plan, opts)
      data
    end

    # Create CarePlan
    # Creates a new CarePlan
    # @param vbasoftware_database [String] Target database
    # @param care_plan [CarePlan] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarePlanVBAResponse, Integer, Hash)>] CarePlanVBAResponse data, response status code and response headers
    def create_care_plan_with_http_info(vbasoftware_database, care_plan, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlansApi.create_care_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlansApi.create_care_plan"
      end
      # verify the required parameter 'care_plan' is set
      if @api_client.config.client_side_validation && care_plan.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan' when calling CarePlansApi.create_care_plan"
      end
      # resource path
      local_var_path = '/care-plans'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_plan)

      # return_type
      return_type = opts[:debug_return_type] || 'CarePlanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlansApi.create_care_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlansApi#create_care_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CarePlan
    # Deletes an CarePlan
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_plan(vbasoftware_database, care_plan_key, opts = {})
      delete_care_plan_with_http_info(vbasoftware_database, care_plan_key, opts)
      nil
    end

    # Delete CarePlan
    # Deletes an CarePlan
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_plan_with_http_info(vbasoftware_database, care_plan_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlansApi.delete_care_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlansApi.delete_care_plan"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlansApi.delete_care_plan"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s))

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
        :operation => :"CarePlansApi.delete_care_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlansApi#delete_care_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CarePlan
    # Gets CarePlan
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param [Hash] opts the optional parameters
    # @return [CarePlanVBAResponse]
    def get_care_plan(vbasoftware_database, care_plan_key, opts = {})
      data, _status_code, _headers = get_care_plan_with_http_info(vbasoftware_database, care_plan_key, opts)
      data
    end

    # Get CarePlan
    # Gets CarePlan
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarePlanVBAResponse, Integer, Hash)>] CarePlanVBAResponse data, response status code and response headers
    def get_care_plan_with_http_info(vbasoftware_database, care_plan_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlansApi.get_care_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlansApi.get_care_plan"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlansApi.get_care_plan"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CarePlanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlansApi.get_care_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlansApi#get_care_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CarePlan
    # Lists all CarePlan
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CarePlanListVBAResponse]
    def list_care_plan(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_care_plan_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CarePlan
    # Lists all CarePlan
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CarePlanListVBAResponse, Integer, Hash)>] CarePlanListVBAResponse data, response status code and response headers
    def list_care_plan_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlansApi.list_care_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlansApi.list_care_plan"
      end
      # resource path
      local_var_path = '/care-plans'

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
      return_type = opts[:debug_return_type] || 'CarePlanListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlansApi.list_care_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlansApi#list_care_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CarePlan
    # Create or Update multiple CarePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_plan [Array<CarePlan>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_plan(vbasoftware_database, care_plan, opts = {})
      data, _status_code, _headers = update_batch_care_plan_with_http_info(vbasoftware_database, care_plan, opts)
      data
    end

    # Create or Update Batch CarePlan
    # Create or Update multiple CarePlan at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_plan [Array<CarePlan>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_plan_with_http_info(vbasoftware_database, care_plan, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlansApi.update_batch_care_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlansApi.update_batch_care_plan"
      end
      # verify the required parameter 'care_plan' is set
      if @api_client.config.client_side_validation && care_plan.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan' when calling CarePlansApi.update_batch_care_plan"
      end
      # resource path
      local_var_path = '/care-plans-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_plan)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlansApi.update_batch_care_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlansApi#update_batch_care_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CarePlan
    # Updates a specific CarePlan.
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan [CarePlan] 
    # @param [Hash] opts the optional parameters
    # @return [CarePlanVBAResponse]
    def update_care_plan(vbasoftware_database, care_plan_key, care_plan, opts = {})
      data, _status_code, _headers = update_care_plan_with_http_info(vbasoftware_database, care_plan_key, care_plan, opts)
      data
    end

    # Update CarePlan
    # Updates a specific CarePlan.
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan [CarePlan] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarePlanVBAResponse, Integer, Hash)>] CarePlanVBAResponse data, response status code and response headers
    def update_care_plan_with_http_info(vbasoftware_database, care_plan_key, care_plan, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlansApi.update_care_plan ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlansApi.update_care_plan"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlansApi.update_care_plan"
      end
      # verify the required parameter 'care_plan' is set
      if @api_client.config.client_side_validation && care_plan.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan' when calling CarePlansApi.update_care_plan"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_plan)

      # return_type
      return_type = opts[:debug_return_type] || 'CarePlanVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlansApi.update_care_plan",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlansApi#update_care_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
