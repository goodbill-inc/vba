=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ContactPhoneApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ContactPhone
    # Creates a new ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param contact_phone [ContactPhone] 
    # @param [Hash] opts the optional parameters
    # @return [ContactPhoneVBAResponse]
    def create_contact_phone(vbasoftware_database, contact_phone, opts = {})
      data, _status_code, _headers = create_contact_phone_with_http_info(vbasoftware_database, contact_phone, opts)
      data
    end

    # Create ContactPhone
    # Creates a new ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param contact_phone [ContactPhone] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactPhoneVBAResponse, Integer, Hash)>] ContactPhoneVBAResponse data, response status code and response headers
    def create_contact_phone_with_http_info(vbasoftware_database, contact_phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactPhoneApi.create_contact_phone ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactPhoneApi.create_contact_phone"
      end
      # verify the required parameter 'contact_phone' is set
      if @api_client.config.client_side_validation && contact_phone.nil?
        fail ArgumentError, "Missing the required parameter 'contact_phone' when calling ContactPhoneApi.create_contact_phone"
      end
      # resource path
      local_var_path = '/contact-phones'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_phone)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactPhoneVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactPhoneApi.create_contact_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactPhoneApi#create_contact_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ContactPhone
    # Deletes an ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param contact_phone_key [Integer] ContactPhone Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contact_phone(vbasoftware_database, contact_phone_key, opts = {})
      delete_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, opts)
      nil
    end

    # Delete ContactPhone
    # Deletes an ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param contact_phone_key [Integer] ContactPhone Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactPhoneApi.delete_contact_phone ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactPhoneApi.delete_contact_phone"
      end
      # verify the required parameter 'contact_phone_key' is set
      if @api_client.config.client_side_validation && contact_phone_key.nil?
        fail ArgumentError, "Missing the required parameter 'contact_phone_key' when calling ContactPhoneApi.delete_contact_phone"
      end
      # resource path
      local_var_path = '/contact-phones/{ContactPhone_Key}'.sub('{' + 'ContactPhone_Key' + '}', CGI.escape(contact_phone_key.to_s))

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
        :operation => :"ContactPhoneApi.delete_contact_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactPhoneApi#delete_contact_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ContactPhone
    # Gets ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param contact_phone_key [Integer] ContactPhone Key
    # @param [Hash] opts the optional parameters
    # @return [ContactPhoneVBAResponse]
    def get_contact_phone(vbasoftware_database, contact_phone_key, opts = {})
      data, _status_code, _headers = get_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, opts)
      data
    end

    # Get ContactPhone
    # Gets ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param contact_phone_key [Integer] ContactPhone Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactPhoneVBAResponse, Integer, Hash)>] ContactPhoneVBAResponse data, response status code and response headers
    def get_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactPhoneApi.get_contact_phone ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactPhoneApi.get_contact_phone"
      end
      # verify the required parameter 'contact_phone_key' is set
      if @api_client.config.client_side_validation && contact_phone_key.nil?
        fail ArgumentError, "Missing the required parameter 'contact_phone_key' when calling ContactPhoneApi.get_contact_phone"
      end
      # resource path
      local_var_path = '/contact-phones/{ContactPhone_Key}'.sub('{' + 'ContactPhone_Key' + '}', CGI.escape(contact_phone_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ContactPhoneVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactPhoneApi.get_contact_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactPhoneApi#get_contact_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ContactPhone
    # Lists all ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ContactPhoneListVBAResponse]
    def list_contact_phone(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_contact_phone_with_http_info(vbasoftware_database, opts)
      data
    end

    # List ContactPhone
    # Lists all ContactPhone
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ContactPhoneListVBAResponse, Integer, Hash)>] ContactPhoneListVBAResponse data, response status code and response headers
    def list_contact_phone_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactPhoneApi.list_contact_phone ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactPhoneApi.list_contact_phone"
      end
      # resource path
      local_var_path = '/contact-phones'

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
      return_type = opts[:debug_return_type] || 'ContactPhoneListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactPhoneApi.list_contact_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactPhoneApi#list_contact_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ContactPhone
    # Create or Update multiple ContactPhone at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param contact_phone [Array<ContactPhone>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_contact_phone(vbasoftware_database, contact_phone, opts = {})
      data, _status_code, _headers = update_batch_contact_phone_with_http_info(vbasoftware_database, contact_phone, opts)
      data
    end

    # Create or Update Batch ContactPhone
    # Create or Update multiple ContactPhone at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param contact_phone [Array<ContactPhone>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_contact_phone_with_http_info(vbasoftware_database, contact_phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactPhoneApi.update_batch_contact_phone ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactPhoneApi.update_batch_contact_phone"
      end
      # verify the required parameter 'contact_phone' is set
      if @api_client.config.client_side_validation && contact_phone.nil?
        fail ArgumentError, "Missing the required parameter 'contact_phone' when calling ContactPhoneApi.update_batch_contact_phone"
      end
      # resource path
      local_var_path = '/contact-phones-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_phone)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactPhoneApi.update_batch_contact_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactPhoneApi#update_batch_contact_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ContactPhone
    # Updates a specific ContactPhone.
    # @param vbasoftware_database [String] Target database
    # @param contact_phone_key [Integer] ContactPhone Key
    # @param contact_phone [ContactPhone] 
    # @param [Hash] opts the optional parameters
    # @return [ContactPhoneVBAResponse]
    def update_contact_phone(vbasoftware_database, contact_phone_key, contact_phone, opts = {})
      data, _status_code, _headers = update_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, contact_phone, opts)
      data
    end

    # Update ContactPhone
    # Updates a specific ContactPhone.
    # @param vbasoftware_database [String] Target database
    # @param contact_phone_key [Integer] ContactPhone Key
    # @param contact_phone [ContactPhone] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactPhoneVBAResponse, Integer, Hash)>] ContactPhoneVBAResponse data, response status code and response headers
    def update_contact_phone_with_http_info(vbasoftware_database, contact_phone_key, contact_phone, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactPhoneApi.update_contact_phone ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactPhoneApi.update_contact_phone"
      end
      # verify the required parameter 'contact_phone_key' is set
      if @api_client.config.client_side_validation && contact_phone_key.nil?
        fail ArgumentError, "Missing the required parameter 'contact_phone_key' when calling ContactPhoneApi.update_contact_phone"
      end
      # verify the required parameter 'contact_phone' is set
      if @api_client.config.client_side_validation && contact_phone.nil?
        fail ArgumentError, "Missing the required parameter 'contact_phone' when calling ContactPhoneApi.update_contact_phone"
      end
      # resource path
      local_var_path = '/contact-phones/{ContactPhone_Key}'.sub('{' + 'ContactPhone_Key' + '}', CGI.escape(contact_phone_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact_phone)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactPhoneVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactPhoneApi.update_contact_phone",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactPhoneApi#update_contact_phone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
