=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CarePlanRuleCriteriasApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CarePlanRuleCriteria
    # Creates a new CarePlanRuleCriteria
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria [CarePlanRuleCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [CarePlanRuleCriteriaVBAResponse]
    def create_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria, opts = {})
      data, _status_code, _headers = create_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria, opts)
      data
    end

    # Create CarePlanRuleCriteria
    # Creates a new CarePlanRuleCriteria
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria [CarePlanRuleCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarePlanRuleCriteriaVBAResponse, Integer, Hash)>] CarePlanRuleCriteriaVBAResponse data, response status code and response headers
    def create_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlanRuleCriteriasApi.create_care_plan_rule_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlanRuleCriteriasApi.create_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlanRuleCriteriasApi.create_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_key' when calling CarePlanRuleCriteriasApi.create_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_criteria' is set
      if @api_client.config.client_side_validation && care_plan_rule_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_criteria' when calling CarePlanRuleCriteriasApi.create_care_plan_rule_criteria"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s)).sub('{' + 'carePlanRuleKey' + '}', CGI.escape(care_plan_rule_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_plan_rule_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'CarePlanRuleCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlanRuleCriteriasApi.create_care_plan_rule_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlanRuleCriteriasApi#create_care_plan_rule_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CarePlanRuleCriteria
    # Deletes an CarePlanRuleCriteria
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria_key [Integer] CarePlanRuleCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, opts = {})
      delete_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, opts)
      nil
    end

    # Delete CarePlanRuleCriteria
    # Deletes an CarePlanRuleCriteria
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria_key [Integer] CarePlanRuleCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlanRuleCriteriasApi.delete_care_plan_rule_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlanRuleCriteriasApi.delete_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlanRuleCriteriasApi.delete_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_key' when calling CarePlanRuleCriteriasApi.delete_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_criteria_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_criteria_key' when calling CarePlanRuleCriteriasApi.delete_care_plan_rule_criteria"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias/{carePlanRuleCriteriaKey}'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s)).sub('{' + 'carePlanRuleKey' + '}', CGI.escape(care_plan_rule_key.to_s)).sub('{' + 'carePlanRuleCriteriaKey' + '}', CGI.escape(care_plan_rule_criteria_key.to_s))

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
        :operation => :"CarePlanRuleCriteriasApi.delete_care_plan_rule_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlanRuleCriteriasApi#delete_care_plan_rule_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CarePlanRuleCriteria
    # Gets CarePlanRuleCriteria
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria_key [Integer] CarePlanRuleCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [CarePlanRuleCriteriaVBAResponse]
    def get_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, opts = {})
      data, _status_code, _headers = get_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, opts)
      data
    end

    # Get CarePlanRuleCriteria
    # Gets CarePlanRuleCriteria
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria_key [Integer] CarePlanRuleCriteria Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarePlanRuleCriteriaVBAResponse, Integer, Hash)>] CarePlanRuleCriteriaVBAResponse data, response status code and response headers
    def get_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlanRuleCriteriasApi.get_care_plan_rule_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlanRuleCriteriasApi.get_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlanRuleCriteriasApi.get_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_key' when calling CarePlanRuleCriteriasApi.get_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_criteria_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_criteria_key' when calling CarePlanRuleCriteriasApi.get_care_plan_rule_criteria"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias/{carePlanRuleCriteriaKey}'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s)).sub('{' + 'carePlanRuleKey' + '}', CGI.escape(care_plan_rule_key.to_s)).sub('{' + 'carePlanRuleCriteriaKey' + '}', CGI.escape(care_plan_rule_criteria_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CarePlanRuleCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlanRuleCriteriasApi.get_care_plan_rule_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlanRuleCriteriasApi#get_care_plan_rule_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CarePlanRuleCriteria
    # Lists all CarePlanRuleCriteria for the given carePlanRuleKey
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CarePlanRuleCriteriaListVBAResponse]
    def list_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, opts = {})
      data, _status_code, _headers = list_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, opts)
      data
    end

    # List CarePlanRuleCriteria
    # Lists all CarePlanRuleCriteria for the given carePlanRuleKey
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CarePlanRuleCriteriaListVBAResponse, Integer, Hash)>] CarePlanRuleCriteriaListVBAResponse data, response status code and response headers
    def list_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlanRuleCriteriasApi.list_care_plan_rule_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlanRuleCriteriasApi.list_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlanRuleCriteriasApi.list_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_key' when calling CarePlanRuleCriteriasApi.list_care_plan_rule_criteria"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s)).sub('{' + 'carePlanRuleKey' + '}', CGI.escape(care_plan_rule_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CarePlanRuleCriteriaListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlanRuleCriteriasApi.list_care_plan_rule_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlanRuleCriteriasApi#list_care_plan_rule_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CarePlanRuleCriteria
    # Create or Update multiple CarePlanRuleCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria [Array<CarePlanRuleCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria, opts = {})
      data, _status_code, _headers = update_batch_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria, opts)
      data
    end

    # Create or Update Batch CarePlanRuleCriteria
    # Create or Update multiple CarePlanRuleCriteria at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria [Array<CarePlanRuleCriteria>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlanRuleCriteriasApi.update_batch_care_plan_rule_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlanRuleCriteriasApi.update_batch_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlanRuleCriteriasApi.update_batch_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_key' when calling CarePlanRuleCriteriasApi.update_batch_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_criteria' is set
      if @api_client.config.client_side_validation && care_plan_rule_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_criteria' when calling CarePlanRuleCriteriasApi.update_batch_care_plan_rule_criteria"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias-batch'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s)).sub('{' + 'carePlanRuleKey' + '}', CGI.escape(care_plan_rule_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_plan_rule_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlanRuleCriteriasApi.update_batch_care_plan_rule_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlanRuleCriteriasApi#update_batch_care_plan_rule_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CarePlanRuleCriteria
    # Updates a specific CarePlanRuleCriteria.
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria_key [Integer] CarePlanRuleCriteria Key
    # @param care_plan_rule_criteria [CarePlanRuleCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [CarePlanRuleCriteriaVBAResponse]
    def update_care_plan_rule_criteria(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria, opts = {})
      data, _status_code, _headers = update_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria, opts)
      data
    end

    # Update CarePlanRuleCriteria
    # Updates a specific CarePlanRuleCriteria.
    # @param vbasoftware_database [String] Target database
    # @param care_plan_key [Integer] CarePlan Key
    # @param care_plan_rule_key [Integer] CarePlanRule Key
    # @param care_plan_rule_criteria_key [Integer] CarePlanRuleCriteria Key
    # @param care_plan_rule_criteria [CarePlanRuleCriteria] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CarePlanRuleCriteriaVBAResponse, Integer, Hash)>] CarePlanRuleCriteriaVBAResponse data, response status code and response headers
    def update_care_plan_rule_criteria_with_http_info(vbasoftware_database, care_plan_key, care_plan_rule_key, care_plan_rule_criteria_key, care_plan_rule_criteria, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CarePlanRuleCriteriasApi.update_care_plan_rule_criteria ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CarePlanRuleCriteriasApi.update_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_key' is set
      if @api_client.config.client_side_validation && care_plan_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_key' when calling CarePlanRuleCriteriasApi.update_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_key' when calling CarePlanRuleCriteriasApi.update_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_criteria_key' is set
      if @api_client.config.client_side_validation && care_plan_rule_criteria_key.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_criteria_key' when calling CarePlanRuleCriteriasApi.update_care_plan_rule_criteria"
      end
      # verify the required parameter 'care_plan_rule_criteria' is set
      if @api_client.config.client_side_validation && care_plan_rule_criteria.nil?
        fail ArgumentError, "Missing the required parameter 'care_plan_rule_criteria' when calling CarePlanRuleCriteriasApi.update_care_plan_rule_criteria"
      end
      # resource path
      local_var_path = '/care-plans/{carePlanKey}/rules/{carePlanRuleKey}/criterias/{carePlanRuleCriteriaKey}'.sub('{' + 'carePlanKey' + '}', CGI.escape(care_plan_key.to_s)).sub('{' + 'carePlanRuleKey' + '}', CGI.escape(care_plan_rule_key.to_s)).sub('{' + 'carePlanRuleCriteriaKey' + '}', CGI.escape(care_plan_rule_criteria_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(care_plan_rule_criteria)

      # return_type
      return_type = opts[:debug_return_type] || 'CarePlanRuleCriteriaVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CarePlanRuleCriteriasApi.update_care_plan_rule_criteria",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CarePlanRuleCriteriasApi#update_care_plan_rule_criteria\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
