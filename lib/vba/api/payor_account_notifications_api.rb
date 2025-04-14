=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class PayorAccountNotificationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create PayorAccountNotify
    # Creates a new PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param payor_account_notify [PayorAccountNotify] 
    # @param [Hash] opts the optional parameters
    # @return [PayorAccountNotifyVBAResponse]
    def create_payor_account_notify(vbasoftware_database, payor_account_notify, opts = {})
      data, _status_code, _headers = create_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify, opts)
      data
    end

    # Create PayorAccountNotify
    # Creates a new PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param payor_account_notify [PayorAccountNotify] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayorAccountNotifyVBAResponse, Integer, Hash)>] PayorAccountNotifyVBAResponse data, response status code and response headers
    def create_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorAccountNotificationsApi.create_payor_account_notify ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PayorAccountNotificationsApi.create_payor_account_notify"
      end
      # verify the required parameter 'payor_account_notify' is set
      if @api_client.config.client_side_validation && payor_account_notify.nil?
        fail ArgumentError, "Missing the required parameter 'payor_account_notify' when calling PayorAccountNotificationsApi.create_payor_account_notify"
      end
      # resource path
      local_var_path = '/payor-account-notifications'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payor_account_notify)

      # return_type
      return_type = opts[:debug_return_type] || 'PayorAccountNotifyVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PayorAccountNotificationsApi.create_payor_account_notify",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayorAccountNotificationsApi#create_payor_account_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete PayorAccountNotify
    # Deletes an PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param payor_account_key [Integer] Payor Account Key
    # @param user_id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_payor_account_notify(vbasoftware_database, payor_account_key, user_id, opts = {})
      delete_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id, opts)
      nil
    end

    # Delete PayorAccountNotify
    # Deletes an PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param payor_account_key [Integer] Payor Account Key
    # @param user_id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorAccountNotificationsApi.delete_payor_account_notify ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PayorAccountNotificationsApi.delete_payor_account_notify"
      end
      # verify the required parameter 'payor_account_key' is set
      if @api_client.config.client_side_validation && payor_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'payor_account_key' when calling PayorAccountNotificationsApi.delete_payor_account_notify"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling PayorAccountNotificationsApi.delete_payor_account_notify"
      end
      # resource path
      local_var_path = '/payor-account-notifications/{payorAccountKey}/{userID}'.sub('{' + 'payorAccountKey' + '}', CGI.escape(payor_account_key.to_s)).sub('{' + 'userID' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"PayorAccountNotificationsApi.delete_payor_account_notify",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayorAccountNotificationsApi#delete_payor_account_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get PayorAccountNotify
    # Gets PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param payor_account_key [Integer] Payor Account Key
    # @param user_id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [PayorAccountNotifyVBAResponse]
    def get_payor_account_notify(vbasoftware_database, payor_account_key, user_id, opts = {})
      data, _status_code, _headers = get_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id, opts)
      data
    end

    # Get PayorAccountNotify
    # Gets PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param payor_account_key [Integer] Payor Account Key
    # @param user_id [String] User ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(PayorAccountNotifyVBAResponse, Integer, Hash)>] PayorAccountNotifyVBAResponse data, response status code and response headers
    def get_payor_account_notify_with_http_info(vbasoftware_database, payor_account_key, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorAccountNotificationsApi.get_payor_account_notify ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PayorAccountNotificationsApi.get_payor_account_notify"
      end
      # verify the required parameter 'payor_account_key' is set
      if @api_client.config.client_side_validation && payor_account_key.nil?
        fail ArgumentError, "Missing the required parameter 'payor_account_key' when calling PayorAccountNotificationsApi.get_payor_account_notify"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling PayorAccountNotificationsApi.get_payor_account_notify"
      end
      # resource path
      local_var_path = '/payor-account-notifications/{payorAccountKey}/{userID}'.sub('{' + 'payorAccountKey' + '}', CGI.escape(payor_account_key.to_s)).sub('{' + 'userID' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PayorAccountNotifyVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PayorAccountNotificationsApi.get_payor_account_notify",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayorAccountNotificationsApi#get_payor_account_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List PayorAccountNotify
    # Lists all PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [PayorAccountNotifyListVBAResponse]
    def list_payor_account_notify(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_payor_account_notify_with_http_info(vbasoftware_database, opts)
      data
    end

    # List PayorAccountNotify
    # Lists all PayorAccountNotify
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(PayorAccountNotifyListVBAResponse, Integer, Hash)>] PayorAccountNotifyListVBAResponse data, response status code and response headers
    def list_payor_account_notify_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorAccountNotificationsApi.list_payor_account_notify ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PayorAccountNotificationsApi.list_payor_account_notify"
      end
      # resource path
      local_var_path = '/payor-account-notifications'

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
      return_type = opts[:debug_return_type] || 'PayorAccountNotifyListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PayorAccountNotificationsApi.list_payor_account_notify",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayorAccountNotificationsApi#list_payor_account_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Batch PayorAccountNotify
    # Create or Update multiple PayorAccountNotify at once.  If the entity does not exist, it will be created.  Updates are not allowed. If the entity does exist, an error message will be returned with the resultset.
    # @param vbasoftware_database [String] Target database
    # @param payor_account_notify [Array<PayorAccountNotify>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_payor_account_notify(vbasoftware_database, payor_account_notify, opts = {})
      data, _status_code, _headers = update_batch_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify, opts)
      data
    end

    # Create Batch PayorAccountNotify
    # Create or Update multiple PayorAccountNotify at once.  If the entity does not exist, it will be created.  Updates are not allowed. If the entity does exist, an error message will be returned with the resultset.
    # @param vbasoftware_database [String] Target database
    # @param payor_account_notify [Array<PayorAccountNotify>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_payor_account_notify_with_http_info(vbasoftware_database, payor_account_notify, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayorAccountNotificationsApi.update_batch_payor_account_notify ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling PayorAccountNotificationsApi.update_batch_payor_account_notify"
      end
      # verify the required parameter 'payor_account_notify' is set
      if @api_client.config.client_side_validation && payor_account_notify.nil?
        fail ArgumentError, "Missing the required parameter 'payor_account_notify' when calling PayorAccountNotificationsApi.update_batch_payor_account_notify"
      end
      # resource path
      local_var_path = '/payor-account-notifications-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payor_account_notify)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"PayorAccountNotificationsApi.update_batch_payor_account_notify",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayorAccountNotificationsApi#update_batch_payor_account_notify\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
