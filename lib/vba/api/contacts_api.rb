=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ContactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Contact
    # Creates a new Contact
    # @param vbasoftware_database [String] Target database
    # @param contact [Contact] 
    # @param [Hash] opts the optional parameters
    # @return [ContactVBAResponse]
    def create_contact(vbasoftware_database, contact, opts = {})
      data, _status_code, _headers = create_contact_with_http_info(vbasoftware_database, contact, opts)
      data
    end

    # Create Contact
    # Creates a new Contact
    # @param vbasoftware_database [String] Target database
    # @param contact [Contact] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactVBAResponse, Integer, Hash)>] ContactVBAResponse data, response status code and response headers
    def create_contact_with_http_info(vbasoftware_database, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.create_contact ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactsApi.create_contact"
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.create_contact"
      end
      # resource path
      local_var_path = '/contacts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.create_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#create_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Contact
    # Deletes an Contact
    # @param vbasoftware_database [String] Target database
    # @param contact_key [Integer] Contact Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_contact(vbasoftware_database, contact_key, opts = {})
      delete_contact_with_http_info(vbasoftware_database, contact_key, opts)
      nil
    end

    # Delete Contact
    # Deletes an Contact
    # @param vbasoftware_database [String] Target database
    # @param contact_key [Integer] Contact Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_contact_with_http_info(vbasoftware_database, contact_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.delete_contact ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactsApi.delete_contact"
      end
      # verify the required parameter 'contact_key' is set
      if @api_client.config.client_side_validation && contact_key.nil?
        fail ArgumentError, "Missing the required parameter 'contact_key' when calling ContactsApi.delete_contact"
      end
      # resource path
      local_var_path = '/contacts/{contactKey}'.sub('{' + 'contactKey' + '}', CGI.escape(contact_key.to_s))

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
        :operation => :"ContactsApi.delete_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#delete_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Contact
    # Gets Contact
    # @param vbasoftware_database [String] Target database
    # @param contact_key [Integer] Contact Key
    # @param [Hash] opts the optional parameters
    # @return [ContactVBAResponse]
    def get_contact(vbasoftware_database, contact_key, opts = {})
      data, _status_code, _headers = get_contact_with_http_info(vbasoftware_database, contact_key, opts)
      data
    end

    # Get Contact
    # Gets Contact
    # @param vbasoftware_database [String] Target database
    # @param contact_key [Integer] Contact Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactVBAResponse, Integer, Hash)>] ContactVBAResponse data, response status code and response headers
    def get_contact_with_http_info(vbasoftware_database, contact_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.get_contact ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactsApi.get_contact"
      end
      # verify the required parameter 'contact_key' is set
      if @api_client.config.client_side_validation && contact_key.nil?
        fail ArgumentError, "Missing the required parameter 'contact_key' when calling ContactsApi.get_contact"
      end
      # resource path
      local_var_path = '/contacts/{contactKey}'.sub('{' + 'contactKey' + '}', CGI.escape(contact_key.to_s))

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
      return_type = opts[:debug_return_type] || 'ContactVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.get_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#get_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Contact
    # Lists all Contact
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ContactListVBAResponse]
    def list_contact(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_contact_with_http_info(vbasoftware_database, opts)
      data
    end

    # List Contact
    # Lists all Contact
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ContactListVBAResponse, Integer, Hash)>] ContactListVBAResponse data, response status code and response headers
    def list_contact_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.list_contact ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactsApi.list_contact"
      end
      # resource path
      local_var_path = '/contacts'

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
      return_type = opts[:debug_return_type] || 'ContactListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.list_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#list_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch Contact
    # Create or Update multiple Contact at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param contact [Array<Contact>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_contact(vbasoftware_database, contact, opts = {})
      data, _status_code, _headers = update_batch_contact_with_http_info(vbasoftware_database, contact, opts)
      data
    end

    # Create or Update Batch Contact
    # Create or Update multiple Contact at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param contact [Array<Contact>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_contact_with_http_info(vbasoftware_database, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.update_batch_contact ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactsApi.update_batch_contact"
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.update_batch_contact"
      end
      # resource path
      local_var_path = '/contacts-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.update_batch_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#update_batch_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Contact
    # Updates a specific Contact.
    # @param vbasoftware_database [String] Target database
    # @param contact_key [Integer] Contact Key
    # @param contact [Contact] 
    # @param [Hash] opts the optional parameters
    # @return [ContactVBAResponse]
    def update_contact(vbasoftware_database, contact_key, contact, opts = {})
      data, _status_code, _headers = update_contact_with_http_info(vbasoftware_database, contact_key, contact, opts)
      data
    end

    # Update Contact
    # Updates a specific Contact.
    # @param vbasoftware_database [String] Target database
    # @param contact_key [Integer] Contact Key
    # @param contact [Contact] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactVBAResponse, Integer, Hash)>] ContactVBAResponse data, response status code and response headers
    def update_contact_with_http_info(vbasoftware_database, contact_key, contact, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsApi.update_contact ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ContactsApi.update_contact"
      end
      # verify the required parameter 'contact_key' is set
      if @api_client.config.client_side_validation && contact_key.nil?
        fail ArgumentError, "Missing the required parameter 'contact_key' when calling ContactsApi.update_contact"
      end
      # verify the required parameter 'contact' is set
      if @api_client.config.client_side_validation && contact.nil?
        fail ArgumentError, "Missing the required parameter 'contact' when calling ContactsApi.update_contact"
      end
      # resource path
      local_var_path = '/contacts/{contactKey}'.sub('{' + 'contactKey' + '}', CGI.escape(contact_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(contact)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ContactsApi.update_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsApi#update_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
