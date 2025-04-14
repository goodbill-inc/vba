=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CallTrackingSubscribersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CallTrackingSubscriber
    # Creates a new CallTrackingSubscriber
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [CallTrackingSubscriberVBAResponse]
    def create_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = create_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq, opts)
      data
    end

    # Create CallTrackingSubscriber
    # Creates a new CallTrackingSubscriber
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallTrackingSubscriberVBAResponse, Integer, Hash)>] CallTrackingSubscriberVBAResponse data, response status code and response headers
    def create_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallTrackingSubscribersApi.create_call_tracking_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallTrackingSubscribersApi.create_call_tracking_subscriber"
      end
      # verify the required parameter 'call_key' is set
      if @api_client.config.client_side_validation && call_key.nil?
        fail ArgumentError, "Missing the required parameter 'call_key' when calling CallTrackingSubscribersApi.create_call_tracking_subscriber"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling CallTrackingSubscribersApi.create_call_tracking_subscriber"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling CallTrackingSubscribersApi.create_call_tracking_subscriber"
      end
      # resource path
      local_var_path = '/call-trackings/{callKey}/subscribers/{subscriberID}/members/{memberSeq}'.sub('{' + 'callKey' + '}', CGI.escape(call_key.to_s)).sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'CallTrackingSubscriberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallTrackingSubscribersApi.create_call_tracking_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallTrackingSubscribersApi#create_call_tracking_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CallTrackingSubscriber
    # Deletes an CallTrackingSubscriber
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq, opts = {})
      delete_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq, opts)
      nil
    end

    # Delete CallTrackingSubscriber
    # Deletes an CallTrackingSubscriber
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallTrackingSubscribersApi.delete_call_tracking_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallTrackingSubscribersApi.delete_call_tracking_subscriber"
      end
      # verify the required parameter 'call_key' is set
      if @api_client.config.client_side_validation && call_key.nil?
        fail ArgumentError, "Missing the required parameter 'call_key' when calling CallTrackingSubscribersApi.delete_call_tracking_subscriber"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling CallTrackingSubscribersApi.delete_call_tracking_subscriber"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling CallTrackingSubscribersApi.delete_call_tracking_subscriber"
      end
      # resource path
      local_var_path = '/call-trackings/{callKey}/subscribers/{subscriberID}/members/{memberSeq}'.sub('{' + 'callKey' + '}', CGI.escape(call_key.to_s)).sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
        :operation => :"CallTrackingSubscribersApi.delete_call_tracking_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallTrackingSubscribersApi#delete_call_tracking_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CallTrackingSubscriber
    # Gets CallTrackingSubscriber
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [CallTrackingSubscriberVBAResponse]
    def get_call_tracking_subscriber(vbasoftware_database, call_key, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = get_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq, opts)
      data
    end

    # Get CallTrackingSubscriber
    # Gets CallTrackingSubscriber
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(CallTrackingSubscriberVBAResponse, Integer, Hash)>] CallTrackingSubscriberVBAResponse data, response status code and response headers
    def get_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallTrackingSubscribersApi.get_call_tracking_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallTrackingSubscribersApi.get_call_tracking_subscriber"
      end
      # verify the required parameter 'call_key' is set
      if @api_client.config.client_side_validation && call_key.nil?
        fail ArgumentError, "Missing the required parameter 'call_key' when calling CallTrackingSubscribersApi.get_call_tracking_subscriber"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling CallTrackingSubscribersApi.get_call_tracking_subscriber"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling CallTrackingSubscribersApi.get_call_tracking_subscriber"
      end
      # resource path
      local_var_path = '/call-trackings/{callKey}/subscribers/{subscriberID}/members/{memberSeq}'.sub('{' + 'callKey' + '}', CGI.escape(call_key.to_s)).sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'CallTrackingSubscriberVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallTrackingSubscribersApi.get_call_tracking_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallTrackingSubscribersApi#get_call_tracking_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CallTrackingSubscriber
    # Lists all CallTrackingSubscriber for the given callKey
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CallTrackingSubscriberListVBAResponse]
    def list_call_tracking_subscriber(vbasoftware_database, call_key, opts = {})
      data, _status_code, _headers = list_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, opts)
      data
    end

    # List CallTrackingSubscriber
    # Lists all CallTrackingSubscriber for the given callKey
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CallTrackingSubscriberListVBAResponse, Integer, Hash)>] CallTrackingSubscriberListVBAResponse data, response status code and response headers
    def list_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallTrackingSubscribersApi.list_call_tracking_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallTrackingSubscribersApi.list_call_tracking_subscriber"
      end
      # verify the required parameter 'call_key' is set
      if @api_client.config.client_side_validation && call_key.nil?
        fail ArgumentError, "Missing the required parameter 'call_key' when calling CallTrackingSubscribersApi.list_call_tracking_subscriber"
      end
      # resource path
      local_var_path = '/call-trackings/{callKey}/subscribers'.sub('{' + 'callKey' + '}', CGI.escape(call_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CallTrackingSubscriberListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallTrackingSubscribersApi.list_call_tracking_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallTrackingSubscribersApi#list_call_tracking_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CallTrackingSubscriber
    # Create multiple CallTrackingSubscriber at once.  If the entity does not exist, it will be created. If the entity does exist, an error code will be returned.  Updates are not allowed for this entity.
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param call_tracking_subscriber [Array<CallTrackingSubscriber>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_call_tracking_subscriber(vbasoftware_database, call_key, call_tracking_subscriber, opts = {})
      data, _status_code, _headers = update_batch_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, call_tracking_subscriber, opts)
      data
    end

    # Create or Update Batch CallTrackingSubscriber
    # Create multiple CallTrackingSubscriber at once.  If the entity does not exist, it will be created. If the entity does exist, an error code will be returned.  Updates are not allowed for this entity.
    # @param vbasoftware_database [String] Target database
    # @param call_key [Integer] Call Key
    # @param call_tracking_subscriber [Array<CallTrackingSubscriber>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_call_tracking_subscriber_with_http_info(vbasoftware_database, call_key, call_tracking_subscriber, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CallTrackingSubscribersApi.update_batch_call_tracking_subscriber ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CallTrackingSubscribersApi.update_batch_call_tracking_subscriber"
      end
      # verify the required parameter 'call_key' is set
      if @api_client.config.client_side_validation && call_key.nil?
        fail ArgumentError, "Missing the required parameter 'call_key' when calling CallTrackingSubscribersApi.update_batch_call_tracking_subscriber"
      end
      # verify the required parameter 'call_tracking_subscriber' is set
      if @api_client.config.client_side_validation && call_tracking_subscriber.nil?
        fail ArgumentError, "Missing the required parameter 'call_tracking_subscriber' when calling CallTrackingSubscribersApi.update_batch_call_tracking_subscriber"
      end
      # resource path
      local_var_path = '/call-trackings/{callKey}/subscribers-batch'.sub('{' + 'callKey' + '}', CGI.escape(call_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(call_tracking_subscriber)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CallTrackingSubscribersApi.update_batch_call_tracking_subscriber",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CallTrackingSubscribersApi#update_batch_call_tracking_subscriber\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
