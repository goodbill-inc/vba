=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class JobExecutionMetadataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create JobExecutionMetaData
    # Creates a new JobExecutionMetaData
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_meta_data [JobExecutionMetaData] 
    # @param [Hash] opts the optional parameters
    # @return [JobExecutionMetaDataVBAResponse]
    def create_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data, opts = {})
      data, _status_code, _headers = create_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data, opts)
      data
    end

    # Create JobExecutionMetaData
    # Creates a new JobExecutionMetaData
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_meta_data [JobExecutionMetaData] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobExecutionMetaDataVBAResponse, Integer, Hash)>] JobExecutionMetaDataVBAResponse data, response status code and response headers
    def create_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobExecutionMetadataApi.create_job_execution_meta_data ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling JobExecutionMetadataApi.create_job_execution_meta_data"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobExecutionMetadataApi.create_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_key' is set
      if @api_client.config.client_side_validation && job_execution_key.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_key' when calling JobExecutionMetadataApi.create_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_meta_data' is set
      if @api_client.config.client_side_validation && job_execution_meta_data.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_meta_data' when calling JobExecutionMetadataApi.create_job_execution_meta_data"
      end
      # resource path
      local_var_path = '/jobs/{jobID}/executions/{jobExecutionKey}/metadata'.sub('{' + 'jobID' + '}', CGI.escape(job_id.to_s)).sub('{' + 'jobExecutionKey' + '}', CGI.escape(job_execution_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(job_execution_meta_data)

      # return_type
      return_type = opts[:debug_return_type] || 'JobExecutionMetaDataVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"JobExecutionMetadataApi.create_job_execution_meta_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobExecutionMetadataApi#create_job_execution_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete JobExecutionMetaData
    # Deletes an JobExecutionMetaData
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_attribute [String] JobExecution Attribute
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, opts = {})
      delete_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, opts)
      nil
    end

    # Delete JobExecutionMetaData
    # Deletes an JobExecutionMetaData
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_attribute [String] JobExecution Attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobExecutionMetadataApi.delete_job_execution_meta_data ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling JobExecutionMetadataApi.delete_job_execution_meta_data"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobExecutionMetadataApi.delete_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_key' is set
      if @api_client.config.client_side_validation && job_execution_key.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_key' when calling JobExecutionMetadataApi.delete_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_attribute' is set
      if @api_client.config.client_side_validation && job_execution_attribute.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_attribute' when calling JobExecutionMetadataApi.delete_job_execution_meta_data"
      end
      # resource path
      local_var_path = '/jobs/{jobID}/executions/{jobExecutionKey}/metadata/{jobExecutionAttribute}'.sub('{' + 'jobID' + '}', CGI.escape(job_id.to_s)).sub('{' + 'jobExecutionKey' + '}', CGI.escape(job_execution_key.to_s)).sub('{' + 'jobExecutionAttribute' + '}', CGI.escape(job_execution_attribute.to_s))

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
        :operation => :"JobExecutionMetadataApi.delete_job_execution_meta_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobExecutionMetadataApi#delete_job_execution_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get JobExecutionMetaData
    # Gets JobExecutionMetaData
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_attribute [String] JobExecution Attribute
    # @param [Hash] opts the optional parameters
    # @return [JobExecutionMetaDataVBAResponse]
    def get_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, opts = {})
      data, _status_code, _headers = get_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, opts)
      data
    end

    # Get JobExecutionMetaData
    # Gets JobExecutionMetaData
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_attribute [String] JobExecution Attribute
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobExecutionMetaDataVBAResponse, Integer, Hash)>] JobExecutionMetaDataVBAResponse data, response status code and response headers
    def get_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobExecutionMetadataApi.get_job_execution_meta_data ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling JobExecutionMetadataApi.get_job_execution_meta_data"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobExecutionMetadataApi.get_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_key' is set
      if @api_client.config.client_side_validation && job_execution_key.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_key' when calling JobExecutionMetadataApi.get_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_attribute' is set
      if @api_client.config.client_side_validation && job_execution_attribute.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_attribute' when calling JobExecutionMetadataApi.get_job_execution_meta_data"
      end
      # resource path
      local_var_path = '/jobs/{jobID}/executions/{jobExecutionKey}/metadata/{jobExecutionAttribute}'.sub('{' + 'jobID' + '}', CGI.escape(job_id.to_s)).sub('{' + 'jobExecutionKey' + '}', CGI.escape(job_execution_key.to_s)).sub('{' + 'jobExecutionAttribute' + '}', CGI.escape(job_execution_attribute.to_s))

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
      return_type = opts[:debug_return_type] || 'JobExecutionMetaDataVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"JobExecutionMetadataApi.get_job_execution_meta_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobExecutionMetadataApi#get_job_execution_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List JobExecutionMetaData
    # Lists all JobExecutionMetaData for the given jobExecutionKey
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [JobExecutionMetaDataListVBAResponse]
    def list_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, opts = {})
      data, _status_code, _headers = list_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, opts)
      data
    end

    # List JobExecutionMetaData
    # Lists all JobExecutionMetaData for the given jobExecutionKey
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(JobExecutionMetaDataListVBAResponse, Integer, Hash)>] JobExecutionMetaDataListVBAResponse data, response status code and response headers
    def list_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobExecutionMetadataApi.list_job_execution_meta_data ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling JobExecutionMetadataApi.list_job_execution_meta_data"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobExecutionMetadataApi.list_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_key' is set
      if @api_client.config.client_side_validation && job_execution_key.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_key' when calling JobExecutionMetadataApi.list_job_execution_meta_data"
      end
      # resource path
      local_var_path = '/jobs/{jobID}/executions/{jobExecutionKey}/metadata'.sub('{' + 'jobID' + '}', CGI.escape(job_id.to_s)).sub('{' + 'jobExecutionKey' + '}', CGI.escape(job_execution_key.to_s))

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
      return_type = opts[:debug_return_type] || 'JobExecutionMetaDataListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"JobExecutionMetadataApi.list_job_execution_meta_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobExecutionMetadataApi#list_job_execution_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch JobExecutionMetaData
    # Create or Update multiple JobExecutionMetaData at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_meta_data [Array<JobExecutionMetaData>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data, opts = {})
      data, _status_code, _headers = update_batch_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data, opts)
      data
    end

    # Create or Update Batch JobExecutionMetaData
    # Create or Update multiple JobExecutionMetaData at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_meta_data [Array<JobExecutionMetaData>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_meta_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobExecutionMetadataApi.update_batch_job_execution_meta_data ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling JobExecutionMetadataApi.update_batch_job_execution_meta_data"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobExecutionMetadataApi.update_batch_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_key' is set
      if @api_client.config.client_side_validation && job_execution_key.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_key' when calling JobExecutionMetadataApi.update_batch_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_meta_data' is set
      if @api_client.config.client_side_validation && job_execution_meta_data.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_meta_data' when calling JobExecutionMetadataApi.update_batch_job_execution_meta_data"
      end
      # resource path
      local_var_path = '/jobs/{jobID}/executions/{jobExecutionKey}/metadata-batch'.sub('{' + 'jobID' + '}', CGI.escape(job_id.to_s)).sub('{' + 'jobExecutionKey' + '}', CGI.escape(job_execution_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(job_execution_meta_data)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"JobExecutionMetadataApi.update_batch_job_execution_meta_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobExecutionMetadataApi#update_batch_job_execution_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update JobExecutionMetaData
    # Updates a specific JobExecutionMetaData.
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_attribute [String] JobExecution Attribute
    # @param job_execution_meta_data [JobExecutionMetaData] 
    # @param [Hash] opts the optional parameters
    # @return [JobExecutionMetaDataVBAResponse]
    def update_job_execution_meta_data(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data, opts = {})
      data, _status_code, _headers = update_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data, opts)
      data
    end

    # Update JobExecutionMetaData
    # Updates a specific JobExecutionMetaData.
    # @param vbasoftware_database [String] Target database
    # @param job_id [String] Job ID
    # @param job_execution_key [Integer] JobExecution Key
    # @param job_execution_attribute [String] JobExecution Attribute
    # @param job_execution_meta_data [JobExecutionMetaData] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobExecutionMetaDataVBAResponse, Integer, Hash)>] JobExecutionMetaDataVBAResponse data, response status code and response headers
    def update_job_execution_meta_data_with_http_info(vbasoftware_database, job_id, job_execution_key, job_execution_attribute, job_execution_meta_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobExecutionMetadataApi.update_job_execution_meta_data ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling JobExecutionMetadataApi.update_job_execution_meta_data"
      end
      # verify the required parameter 'job_id' is set
      if @api_client.config.client_side_validation && job_id.nil?
        fail ArgumentError, "Missing the required parameter 'job_id' when calling JobExecutionMetadataApi.update_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_key' is set
      if @api_client.config.client_side_validation && job_execution_key.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_key' when calling JobExecutionMetadataApi.update_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_attribute' is set
      if @api_client.config.client_side_validation && job_execution_attribute.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_attribute' when calling JobExecutionMetadataApi.update_job_execution_meta_data"
      end
      # verify the required parameter 'job_execution_meta_data' is set
      if @api_client.config.client_side_validation && job_execution_meta_data.nil?
        fail ArgumentError, "Missing the required parameter 'job_execution_meta_data' when calling JobExecutionMetadataApi.update_job_execution_meta_data"
      end
      # resource path
      local_var_path = '/jobs/{jobID}/executions/{jobExecutionKey}/metadata/{jobExecutionAttribute}'.sub('{' + 'jobID' + '}', CGI.escape(job_id.to_s)).sub('{' + 'jobExecutionKey' + '}', CGI.escape(job_execution_key.to_s)).sub('{' + 'jobExecutionAttribute' + '}', CGI.escape(job_execution_attribute.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(job_execution_meta_data)

      # return_type
      return_type = opts[:debug_return_type] || 'JobExecutionMetaDataVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"JobExecutionMetadataApi.update_job_execution_meta_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobExecutionMetadataApi#update_job_execution_meta_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
