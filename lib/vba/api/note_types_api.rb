=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class NoteTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create NoteType
    # Creates a new NoteType
    # @param vbasoftware_database [String] Target database
    # @param note_type [NoteType] 
    # @param [Hash] opts the optional parameters
    # @return [NoteTypeVBAResponse]
    def create_note_type(vbasoftware_database, note_type, opts = {})
      data, _status_code, _headers = create_note_type_with_http_info(vbasoftware_database, note_type, opts)
      data
    end

    # Create NoteType
    # Creates a new NoteType
    # @param vbasoftware_database [String] Target database
    # @param note_type [NoteType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteTypeVBAResponse, Integer, Hash)>] NoteTypeVBAResponse data, response status code and response headers
    def create_note_type_with_http_info(vbasoftware_database, note_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteTypesApi.create_note_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NoteTypesApi.create_note_type"
      end
      # verify the required parameter 'note_type' is set
      if @api_client.config.client_side_validation && note_type.nil?
        fail ArgumentError, "Missing the required parameter 'note_type' when calling NoteTypesApi.create_note_type"
      end
      # resource path
      local_var_path = '/note-types'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_type)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NoteTypesApi.create_note_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteTypesApi#create_note_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete NoteType
    # Deletes an NoteType
    # @param vbasoftware_database [String] Target database
    # @param note_type [String] Note Type
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_note_type(vbasoftware_database, note_type, opts = {})
      delete_note_type_with_http_info(vbasoftware_database, note_type, opts)
      nil
    end

    # Delete NoteType
    # Deletes an NoteType
    # @param vbasoftware_database [String] Target database
    # @param note_type [String] Note Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_note_type_with_http_info(vbasoftware_database, note_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteTypesApi.delete_note_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NoteTypesApi.delete_note_type"
      end
      # verify the required parameter 'note_type' is set
      if @api_client.config.client_side_validation && note_type.nil?
        fail ArgumentError, "Missing the required parameter 'note_type' when calling NoteTypesApi.delete_note_type"
      end
      # resource path
      local_var_path = '/note-types/{noteType}'.sub('{' + 'noteType' + '}', CGI.escape(note_type.to_s))

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
        :operation => :"NoteTypesApi.delete_note_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteTypesApi#delete_note_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get NoteType
    # Gets NoteType
    # @param vbasoftware_database [String] Target database
    # @param note_type [String] Note Type
    # @param [Hash] opts the optional parameters
    # @return [NoteTypeVBAResponse]
    def get_note_type(vbasoftware_database, note_type, opts = {})
      data, _status_code, _headers = get_note_type_with_http_info(vbasoftware_database, note_type, opts)
      data
    end

    # Get NoteType
    # Gets NoteType
    # @param vbasoftware_database [String] Target database
    # @param note_type [String] Note Type
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteTypeVBAResponse, Integer, Hash)>] NoteTypeVBAResponse data, response status code and response headers
    def get_note_type_with_http_info(vbasoftware_database, note_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteTypesApi.get_note_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NoteTypesApi.get_note_type"
      end
      # verify the required parameter 'note_type' is set
      if @api_client.config.client_side_validation && note_type.nil?
        fail ArgumentError, "Missing the required parameter 'note_type' when calling NoteTypesApi.get_note_type"
      end
      # resource path
      local_var_path = '/note-types/{noteType}'.sub('{' + 'noteType' + '}', CGI.escape(note_type.to_s))

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
      return_type = opts[:debug_return_type] || 'NoteTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NoteTypesApi.get_note_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteTypesApi#get_note_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List NoteType
    # Lists all NoteType 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [NoteTypeListVBAResponse]
    def list_note_type(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_note_type_with_http_info(vbasoftware_database, opts)
      data
    end

    # List NoteType
    # Lists all NoteType 
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteTypeListVBAResponse, Integer, Hash)>] NoteTypeListVBAResponse data, response status code and response headers
    def list_note_type_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteTypesApi.list_note_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NoteTypesApi.list_note_type"
      end
      # resource path
      local_var_path = '/note-types'

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
      return_type = opts[:debug_return_type] || 'NoteTypeListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NoteTypesApi.list_note_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteTypesApi#list_note_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch NoteType
    # Create or Update multiple NoteType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param note_type [Array<NoteType>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_note_type(vbasoftware_database, note_type, opts = {})
      data, _status_code, _headers = update_batch_note_type_with_http_info(vbasoftware_database, note_type, opts)
      data
    end

    # Create or Update Batch NoteType
    # Create or Update multiple NoteType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param note_type [Array<NoteType>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_note_type_with_http_info(vbasoftware_database, note_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteTypesApi.update_batch_note_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NoteTypesApi.update_batch_note_type"
      end
      # verify the required parameter 'note_type' is set
      if @api_client.config.client_side_validation && note_type.nil?
        fail ArgumentError, "Missing the required parameter 'note_type' when calling NoteTypesApi.update_batch_note_type"
      end
      # resource path
      local_var_path = '/note-types-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_type)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NoteTypesApi.update_batch_note_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteTypesApi#update_batch_note_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update NoteType
    # Updates a specific NoteType.
    # @param vbasoftware_database [String] Target database
    # @param note_type [String] Note Type
    # @param note_type2 [NoteType] 
    # @param [Hash] opts the optional parameters
    # @return [NoteTypeVBAResponse]
    def update_note_type(vbasoftware_database, note_type, note_type2, opts = {})
      data, _status_code, _headers = update_note_type_with_http_info(vbasoftware_database, note_type, note_type2, opts)
      data
    end

    # Update NoteType
    # Updates a specific NoteType.
    # @param vbasoftware_database [String] Target database
    # @param note_type [String] Note Type
    # @param note_type2 [NoteType] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteTypeVBAResponse, Integer, Hash)>] NoteTypeVBAResponse data, response status code and response headers
    def update_note_type_with_http_info(vbasoftware_database, note_type, note_type2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteTypesApi.update_note_type ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NoteTypesApi.update_note_type"
      end
      # verify the required parameter 'note_type' is set
      if @api_client.config.client_side_validation && note_type.nil?
        fail ArgumentError, "Missing the required parameter 'note_type' when calling NoteTypesApi.update_note_type"
      end
      # verify the required parameter 'note_type2' is set
      if @api_client.config.client_side_validation && note_type2.nil?
        fail ArgumentError, "Missing the required parameter 'note_type2' when calling NoteTypesApi.update_note_type"
      end
      # resource path
      local_var_path = '/note-types/{noteType}'.sub('{' + 'noteType' + '}', CGI.escape(note_type.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_type2)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteTypeVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NoteTypesApi.update_note_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteTypesApi#update_note_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
