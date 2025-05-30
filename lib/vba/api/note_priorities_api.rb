=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class NotePrioritiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create NotePriority
    # Creates a new NotePriority
    # @param vbasoftware_database [String] Target database
    # @param note_priority [NotePriority] 
    # @param [Hash] opts the optional parameters
    # @return [NotePriorityVBAResponse]
    def create_note_priority(vbasoftware_database, note_priority, opts = {})
      data, _status_code, _headers = create_note_priority_with_http_info(vbasoftware_database, note_priority, opts)
      data
    end

    # Create NotePriority
    # Creates a new NotePriority
    # @param vbasoftware_database [String] Target database
    # @param note_priority [NotePriority] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NotePriorityVBAResponse, Integer, Hash)>] NotePriorityVBAResponse data, response status code and response headers
    def create_note_priority_with_http_info(vbasoftware_database, note_priority, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotePrioritiesApi.create_note_priority ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NotePrioritiesApi.create_note_priority"
      end
      # verify the required parameter 'note_priority' is set
      if @api_client.config.client_side_validation && note_priority.nil?
        fail ArgumentError, "Missing the required parameter 'note_priority' when calling NotePrioritiesApi.create_note_priority"
      end
      # resource path
      local_var_path = '/note-priorities'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_priority)

      # return_type
      return_type = opts[:debug_return_type] || 'NotePriorityVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NotePrioritiesApi.create_note_priority",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotePrioritiesApi#create_note_priority\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete NotePriority
    # Deletes an NotePriority
    # @param vbasoftware_database [String] Target database
    # @param note_priority [String] Note Priority
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_note_priority(vbasoftware_database, note_priority, opts = {})
      delete_note_priority_with_http_info(vbasoftware_database, note_priority, opts)
      nil
    end

    # Delete NotePriority
    # Deletes an NotePriority
    # @param vbasoftware_database [String] Target database
    # @param note_priority [String] Note Priority
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_note_priority_with_http_info(vbasoftware_database, note_priority, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotePrioritiesApi.delete_note_priority ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NotePrioritiesApi.delete_note_priority"
      end
      # verify the required parameter 'note_priority' is set
      if @api_client.config.client_side_validation && note_priority.nil?
        fail ArgumentError, "Missing the required parameter 'note_priority' when calling NotePrioritiesApi.delete_note_priority"
      end
      # resource path
      local_var_path = '/note-priorities/{notePriority}'.sub('{' + 'notePriority' + '}', CGI.escape(note_priority.to_s))

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
        :operation => :"NotePrioritiesApi.delete_note_priority",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotePrioritiesApi#delete_note_priority\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get NotePriority
    # Gets NotePriority
    # @param vbasoftware_database [String] Target database
    # @param note_priority [String] Note Priority
    # @param [Hash] opts the optional parameters
    # @return [NotePriorityVBAResponse]
    def get_note_priority(vbasoftware_database, note_priority, opts = {})
      data, _status_code, _headers = get_note_priority_with_http_info(vbasoftware_database, note_priority, opts)
      data
    end

    # Get NotePriority
    # Gets NotePriority
    # @param vbasoftware_database [String] Target database
    # @param note_priority [String] Note Priority
    # @param [Hash] opts the optional parameters
    # @return [Array<(NotePriorityVBAResponse, Integer, Hash)>] NotePriorityVBAResponse data, response status code and response headers
    def get_note_priority_with_http_info(vbasoftware_database, note_priority, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotePrioritiesApi.get_note_priority ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NotePrioritiesApi.get_note_priority"
      end
      # verify the required parameter 'note_priority' is set
      if @api_client.config.client_side_validation && note_priority.nil?
        fail ArgumentError, "Missing the required parameter 'note_priority' when calling NotePrioritiesApi.get_note_priority"
      end
      # resource path
      local_var_path = '/note-priorities/{notePriority}'.sub('{' + 'notePriority' + '}', CGI.escape(note_priority.to_s))

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
      return_type = opts[:debug_return_type] || 'NotePriorityVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NotePrioritiesApi.get_note_priority",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotePrioritiesApi#get_note_priority\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List NotePriority
    # Lists all NotePriority
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [NotePriorityListVBAResponse]
    def list_note_priority(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_note_priority_with_http_info(vbasoftware_database, opts)
      data
    end

    # List NotePriority
    # Lists all NotePriority
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(NotePriorityListVBAResponse, Integer, Hash)>] NotePriorityListVBAResponse data, response status code and response headers
    def list_note_priority_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotePrioritiesApi.list_note_priority ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NotePrioritiesApi.list_note_priority"
      end
      # resource path
      local_var_path = '/note-priorities'

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
      return_type = opts[:debug_return_type] || 'NotePriorityListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NotePrioritiesApi.list_note_priority",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotePrioritiesApi#list_note_priority\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch NotePriority
    # Create or Update multiple NotePriority at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param note_priority [Array<NotePriority>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_note_priority(vbasoftware_database, note_priority, opts = {})
      data, _status_code, _headers = update_batch_note_priority_with_http_info(vbasoftware_database, note_priority, opts)
      data
    end

    # Create or Update Batch NotePriority
    # Create or Update multiple NotePriority at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param note_priority [Array<NotePriority>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_note_priority_with_http_info(vbasoftware_database, note_priority, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotePrioritiesApi.update_batch_note_priority ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NotePrioritiesApi.update_batch_note_priority"
      end
      # verify the required parameter 'note_priority' is set
      if @api_client.config.client_side_validation && note_priority.nil?
        fail ArgumentError, "Missing the required parameter 'note_priority' when calling NotePrioritiesApi.update_batch_note_priority"
      end
      # resource path
      local_var_path = '/note-priorities-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_priority)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NotePrioritiesApi.update_batch_note_priority",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotePrioritiesApi#update_batch_note_priority\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update NotePriority
    # Updates a specific NotePriority.
    # @param vbasoftware_database [String] Target database
    # @param note_priority [String] Note Priority
    # @param note_priority2 [NotePriority] 
    # @param [Hash] opts the optional parameters
    # @return [NotePriorityVBAResponse]
    def update_note_priority(vbasoftware_database, note_priority, note_priority2, opts = {})
      data, _status_code, _headers = update_note_priority_with_http_info(vbasoftware_database, note_priority, note_priority2, opts)
      data
    end

    # Update NotePriority
    # Updates a specific NotePriority.
    # @param vbasoftware_database [String] Target database
    # @param note_priority [String] Note Priority
    # @param note_priority2 [NotePriority] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NotePriorityVBAResponse, Integer, Hash)>] NotePriorityVBAResponse data, response status code and response headers
    def update_note_priority_with_http_info(vbasoftware_database, note_priority, note_priority2, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NotePrioritiesApi.update_note_priority ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling NotePrioritiesApi.update_note_priority"
      end
      # verify the required parameter 'note_priority' is set
      if @api_client.config.client_side_validation && note_priority.nil?
        fail ArgumentError, "Missing the required parameter 'note_priority' when calling NotePrioritiesApi.update_note_priority"
      end
      # verify the required parameter 'note_priority2' is set
      if @api_client.config.client_side_validation && note_priority2.nil?
        fail ArgumentError, "Missing the required parameter 'note_priority2' when calling NotePrioritiesApi.update_note_priority"
      end
      # resource path
      local_var_path = '/note-priorities/{notePriority}'.sub('{' + 'notePriority' + '}', CGI.escape(note_priority.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_priority2)

      # return_type
      return_type = opts[:debug_return_type] || 'NotePriorityVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"NotePrioritiesApi.update_note_priority",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NotePrioritiesApi#update_note_priority\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
