=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class GroupPayorAccountBenefitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create GroupPayorAccountBenefit
    # Creates a new GroupPayorAccountBenefit
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_benefit [GroupPayorAccountBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [GroupPayorAccountBenefitVBAResponse]
    def create_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, group_payor_account_benefit, opts = {})
      data, _status_code, _headers = create_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit, opts)
      data
    end

    # Create GroupPayorAccountBenefit
    # Creates a new GroupPayorAccountBenefit
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_benefit [GroupPayorAccountBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupPayorAccountBenefitVBAResponse, Integer, Hash)>] GroupPayorAccountBenefitVBAResponse data, response status code and response headers
    def create_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountBenefitsApi.create_group_payor_account_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountBenefitsApi.create_group_payor_account_benefit"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountBenefitsApi.create_group_payor_account_benefit"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountBenefitsApi.create_group_payor_account_benefit"
      end
      # verify the required parameter 'group_payor_account_benefit' is set
      if @api_client.config.client_side_validation && group_payor_account_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'group_payor_account_benefit' when calling GroupPayorAccountBenefitsApi.create_group_payor_account_benefit"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/benefits'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_payor_account_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupPayorAccountBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountBenefitsApi.create_group_payor_account_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountBenefitsApi#create_group_payor_account_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete GroupPayorAccountBenefit
    # Deletes an GroupPayorAccountBenefit
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code, opts = {})
      delete_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, opts)
      nil
    end

    # Delete GroupPayorAccountBenefit
    # Deletes an GroupPayorAccountBenefit
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountBenefitsApi.delete_group_payor_account_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountBenefitsApi.delete_group_payor_account_benefit"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountBenefitsApi.delete_group_payor_account_benefit"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountBenefitsApi.delete_group_payor_account_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupPayorAccountBenefitsApi.delete_group_payor_account_benefit"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/benefits/{benefitCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
        :operation => :"GroupPayorAccountBenefitsApi.delete_group_payor_account_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountBenefitsApi#delete_group_payor_account_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get GroupPayorAccountBenefit
    # Gets GroupPayorAccountBenefit
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [GroupPayorAccountBenefitVBAResponse]
    def get_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code, opts = {})
      data, _status_code, _headers = get_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, opts)
      data
    end

    # Get GroupPayorAccountBenefit
    # Gets GroupPayorAccountBenefit
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupPayorAccountBenefitVBAResponse, Integer, Hash)>] GroupPayorAccountBenefitVBAResponse data, response status code and response headers
    def get_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountBenefitsApi.get_group_payor_account_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountBenefitsApi.get_group_payor_account_benefit"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountBenefitsApi.get_group_payor_account_benefit"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountBenefitsApi.get_group_payor_account_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupPayorAccountBenefitsApi.get_group_payor_account_benefit"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/benefits/{benefitCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupPayorAccountBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountBenefitsApi.get_group_payor_account_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountBenefitsApi#get_group_payor_account_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List GroupPayorAccountBenefit
    # Lists all GroupPayorAccountBenefit for the given groupID and settingID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [GroupPayorAccountBenefitListVBAResponse]
    def list_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, opts = {})
      data, _status_code, _headers = list_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, opts)
      data
    end

    # List GroupPayorAccountBenefit
    # Lists all GroupPayorAccountBenefit for the given groupID and settingID
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(GroupPayorAccountBenefitListVBAResponse, Integer, Hash)>] GroupPayorAccountBenefitListVBAResponse data, response status code and response headers
    def list_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountBenefitsApi.list_group_payor_account_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountBenefitsApi.list_group_payor_account_benefit"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountBenefitsApi.list_group_payor_account_benefit"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountBenefitsApi.list_group_payor_account_benefit"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/benefits'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GroupPayorAccountBenefitListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountBenefitsApi.list_group_payor_account_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountBenefitsApi#list_group_payor_account_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch GroupPayorAccountBenefit
    # Create or Update multiple GroupPayorAccountBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_benefit [Array<GroupPayorAccountBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, group_payor_account_benefit, opts = {})
      data, _status_code, _headers = update_batch_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit, opts)
      data
    end

    # Create or Update Batch GroupPayorAccountBenefit
    # Create or Update multiple GroupPayorAccountBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param group_payor_account_benefit [Array<GroupPayorAccountBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, group_payor_account_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountBenefitsApi.update_batch_group_payor_account_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountBenefitsApi.update_batch_group_payor_account_benefit"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountBenefitsApi.update_batch_group_payor_account_benefit"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountBenefitsApi.update_batch_group_payor_account_benefit"
      end
      # verify the required parameter 'group_payor_account_benefit' is set
      if @api_client.config.client_side_validation && group_payor_account_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'group_payor_account_benefit' when calling GroupPayorAccountBenefitsApi.update_batch_group_payor_account_benefit"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/benefits-batch'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_payor_account_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountBenefitsApi.update_batch_group_payor_account_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountBenefitsApi#update_batch_group_payor_account_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update GroupPayorAccountBenefit
    # Updates a specific GroupPayorAccountBenefit.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param benefit_code [String] Benefit Code
    # @param group_payor_account_benefit [GroupPayorAccountBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [GroupPayorAccountBenefitVBAResponse]
    def update_group_payor_account_benefit(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit, opts = {})
      data, _status_code, _headers = update_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit, opts)
      data
    end

    # Update GroupPayorAccountBenefit
    # Updates a specific GroupPayorAccountBenefit.
    # @param vbasoftware_database [String] Target database
    # @param group_id [String] Group ID
    # @param setting_id [String] Setting ID
    # @param benefit_code [String] Benefit Code
    # @param group_payor_account_benefit [GroupPayorAccountBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupPayorAccountBenefitVBAResponse, Integer, Hash)>] GroupPayorAccountBenefitVBAResponse data, response status code and response headers
    def update_group_payor_account_benefit_with_http_info(vbasoftware_database, group_id, setting_id, benefit_code, group_payor_account_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupPayorAccountBenefitsApi.update_group_payor_account_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling GroupPayorAccountBenefitsApi.update_group_payor_account_benefit"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling GroupPayorAccountBenefitsApi.update_group_payor_account_benefit"
      end
      # verify the required parameter 'setting_id' is set
      if @api_client.config.client_side_validation && setting_id.nil?
        fail ArgumentError, "Missing the required parameter 'setting_id' when calling GroupPayorAccountBenefitsApi.update_group_payor_account_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling GroupPayorAccountBenefitsApi.update_group_payor_account_benefit"
      end
      # verify the required parameter 'group_payor_account_benefit' is set
      if @api_client.config.client_side_validation && group_payor_account_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'group_payor_account_benefit' when calling GroupPayorAccountBenefitsApi.update_group_payor_account_benefit"
      end
      # resource path
      local_var_path = '/groups/{groupID}/payor-account-settings/{settingID}/benefits/{benefitCode}'.sub('{' + 'groupID' + '}', CGI.escape(group_id.to_s)).sub('{' + 'settingID' + '}', CGI.escape(setting_id.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group_payor_account_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'GroupPayorAccountBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupPayorAccountBenefitsApi.update_group_payor_account_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupPayorAccountBenefitsApi#update_group_payor_account_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
