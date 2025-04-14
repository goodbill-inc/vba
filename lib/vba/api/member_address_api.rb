=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class MemberAddressApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create MemberAddress
    # Creates a new MemberAddress
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_address [MemberAddress] 
    # @param [Hash] opts the optional parameters
    # @return [MemberAddressVBAResponse]
    def create_member_address(vbasoftware_database, subscriber_id, member_seq, member_address, opts = {})
      data, _status_code, _headers = create_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address, opts)
      data
    end

    # Create MemberAddress
    # Creates a new MemberAddress
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_address [MemberAddress] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAddressVBAResponse, Integer, Hash)>] MemberAddressVBAResponse data, response status code and response headers
    def create_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAddressApi.create_member_address ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAddressApi.create_member_address"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAddressApi.create_member_address"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAddressApi.create_member_address"
      end
      # verify the required parameter 'member_address' is set
      if @api_client.config.client_side_validation && member_address.nil?
        fail ArgumentError, "Missing the required parameter 'member_address' when calling MemberAddressApi.create_member_address"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/addresses'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_address)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberAddressVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAddressApi.create_member_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAddressApi#create_member_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete MemberAddress
    # Deletes an MemberAddress
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_member_address(vbasoftware_database, subscriber_id, member_seq, opts = {})
      delete_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      nil
    end

    # Delete MemberAddress
    # Deletes an MemberAddress
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAddressApi.delete_member_address ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAddressApi.delete_member_address"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAddressApi.delete_member_address"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAddressApi.delete_member_address"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/addresses'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
        :operation => :"MemberAddressApi.delete_member_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAddressApi#delete_member_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get MemberAddress
    # Gets MemberAddress
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [MemberAddressVBAResponse]
    def get_member_address(vbasoftware_database, subscriber_id, member_seq, opts = {})
      data, _status_code, _headers = get_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts)
      data
    end

    # Get MemberAddress
    # Gets MemberAddress
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAddressVBAResponse, Integer, Hash)>] MemberAddressVBAResponse data, response status code and response headers
    def get_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAddressApi.get_member_address ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAddressApi.get_member_address"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAddressApi.get_member_address"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAddressApi.get_member_address"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/addresses'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      return_type = opts[:debug_return_type] || 'MemberAddressVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAddressApi.get_member_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAddressApi#get_member_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update MemberAddress
    # Updates a specific MemberAddress.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_address [MemberAddress] 
    # @param [Hash] opts the optional parameters
    # @return [MemberAddressVBAResponse]
    def update_member_address(vbasoftware_database, subscriber_id, member_seq, member_address, opts = {})
      data, _status_code, _headers = update_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address, opts)
      data
    end

    # Update MemberAddress
    # Updates a specific MemberAddress.
    # @param vbasoftware_database [String] Target database
    # @param subscriber_id [String] Subscriber ID
    # @param member_seq [String] Member Seq
    # @param member_address [MemberAddress] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MemberAddressVBAResponse, Integer, Hash)>] MemberAddressVBAResponse data, response status code and response headers
    def update_member_address_with_http_info(vbasoftware_database, subscriber_id, member_seq, member_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MemberAddressApi.update_member_address ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling MemberAddressApi.update_member_address"
      end
      # verify the required parameter 'subscriber_id' is set
      if @api_client.config.client_side_validation && subscriber_id.nil?
        fail ArgumentError, "Missing the required parameter 'subscriber_id' when calling MemberAddressApi.update_member_address"
      end
      # verify the required parameter 'member_seq' is set
      if @api_client.config.client_side_validation && member_seq.nil?
        fail ArgumentError, "Missing the required parameter 'member_seq' when calling MemberAddressApi.update_member_address"
      end
      # verify the required parameter 'member_address' is set
      if @api_client.config.client_side_validation && member_address.nil?
        fail ArgumentError, "Missing the required parameter 'member_address' when calling MemberAddressApi.update_member_address"
      end
      # resource path
      local_var_path = '/subscribers/{subscriberID}/members/{memberSeq}/addresses'.sub('{' + 'subscriberID' + '}', CGI.escape(subscriber_id.to_s)).sub('{' + 'memberSeq' + '}', CGI.escape(member_seq.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(member_address)

      # return_type
      return_type = opts[:debug_return_type] || 'MemberAddressVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"MemberAddressApi.update_member_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MemberAddressApi#update_member_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
