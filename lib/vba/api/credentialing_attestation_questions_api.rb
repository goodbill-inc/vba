=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class CredentialingAttestationQuestionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create CredAttestationQuestion
    # Creates a new CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question [CredAttestationQuestion] 
    # @param [Hash] opts the optional parameters
    # @return [CredAttestationQuestionVBAResponse]
    def create_cred_attestation_question(vbasoftware_database, cred_attestation_question, opts = {})
      data, _status_code, _headers = create_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question, opts)
      data
    end

    # Create CredAttestationQuestion
    # Creates a new CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question [CredAttestationQuestion] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CredAttestationQuestionVBAResponse, Integer, Hash)>] CredAttestationQuestionVBAResponse data, response status code and response headers
    def create_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingAttestationQuestionsApi.create_cred_attestation_question ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingAttestationQuestionsApi.create_cred_attestation_question"
      end
      # verify the required parameter 'cred_attestation_question' is set
      if @api_client.config.client_side_validation && cred_attestation_question.nil?
        fail ArgumentError, "Missing the required parameter 'cred_attestation_question' when calling CredentialingAttestationQuestionsApi.create_cred_attestation_question"
      end
      # resource path
      local_var_path = '/credentialing-attestation-questions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cred_attestation_question)

      # return_type
      return_type = opts[:debug_return_type] || 'CredAttestationQuestionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingAttestationQuestionsApi.create_cred_attestation_question",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingAttestationQuestionsApi#create_cred_attestation_question\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete CredAttestationQuestion
    # Deletes an CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question_key [Integer] CredAttestationQuestion Key
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_cred_attestation_question(vbasoftware_database, cred_attestation_question_key, opts = {})
      delete_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, opts)
      nil
    end

    # Delete CredAttestationQuestion
    # Deletes an CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question_key [Integer] CredAttestationQuestion Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingAttestationQuestionsApi.delete_cred_attestation_question ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingAttestationQuestionsApi.delete_cred_attestation_question"
      end
      # verify the required parameter 'cred_attestation_question_key' is set
      if @api_client.config.client_side_validation && cred_attestation_question_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_attestation_question_key' when calling CredentialingAttestationQuestionsApi.delete_cred_attestation_question"
      end
      # resource path
      local_var_path = '/credentialing-attestation-questions/{credAttestationQuestionKey}'.sub('{' + 'credAttestationQuestionKey' + '}', CGI.escape(cred_attestation_question_key.to_s))

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
        :operation => :"CredentialingAttestationQuestionsApi.delete_cred_attestation_question",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingAttestationQuestionsApi#delete_cred_attestation_question\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get CredAttestationQuestion
    # Gets CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question_key [Integer] CredAttestationQuestion Key
    # @param [Hash] opts the optional parameters
    # @return [CredAttestationQuestionVBAResponse]
    def get_cred_attestation_question(vbasoftware_database, cred_attestation_question_key, opts = {})
      data, _status_code, _headers = get_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, opts)
      data
    end

    # Get CredAttestationQuestion
    # Gets CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question_key [Integer] CredAttestationQuestion Key
    # @param [Hash] opts the optional parameters
    # @return [Array<(CredAttestationQuestionVBAResponse, Integer, Hash)>] CredAttestationQuestionVBAResponse data, response status code and response headers
    def get_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingAttestationQuestionsApi.get_cred_attestation_question ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingAttestationQuestionsApi.get_cred_attestation_question"
      end
      # verify the required parameter 'cred_attestation_question_key' is set
      if @api_client.config.client_side_validation && cred_attestation_question_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_attestation_question_key' when calling CredentialingAttestationQuestionsApi.get_cred_attestation_question"
      end
      # resource path
      local_var_path = '/credentialing-attestation-questions/{credAttestationQuestionKey}'.sub('{' + 'credAttestationQuestionKey' + '}', CGI.escape(cred_attestation_question_key.to_s))

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
      return_type = opts[:debug_return_type] || 'CredAttestationQuestionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingAttestationQuestionsApi.get_cred_attestation_question",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingAttestationQuestionsApi#get_cred_attestation_question\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List CredAttestationQuestion
    # Lists all CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [CredAttestationQuestionListVBAResponse]
    def list_cred_attestation_question(vbasoftware_database, opts = {})
      data, _status_code, _headers = list_cred_attestation_question_with_http_info(vbasoftware_database, opts)
      data
    end

    # List CredAttestationQuestion
    # Lists all CredAttestationQuestion
    # @param vbasoftware_database [String] Target database
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(CredAttestationQuestionListVBAResponse, Integer, Hash)>] CredAttestationQuestionListVBAResponse data, response status code and response headers
    def list_cred_attestation_question_with_http_info(vbasoftware_database, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingAttestationQuestionsApi.list_cred_attestation_question ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingAttestationQuestionsApi.list_cred_attestation_question"
      end
      # resource path
      local_var_path = '/credentialing-attestation-questions'

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
      return_type = opts[:debug_return_type] || 'CredAttestationQuestionListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingAttestationQuestionsApi.list_cred_attestation_question",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingAttestationQuestionsApi#list_cred_attestation_question\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch CredAttestationQuestion
    # Create or Update multiple CredAttestationQuestion at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question [Array<CredAttestationQuestion>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_cred_attestation_question(vbasoftware_database, cred_attestation_question, opts = {})
      data, _status_code, _headers = update_batch_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question, opts)
      data
    end

    # Create or Update Batch CredAttestationQuestion
    # Create or Update multiple CredAttestationQuestion at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question [Array<CredAttestationQuestion>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingAttestationQuestionsApi.update_batch_cred_attestation_question ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingAttestationQuestionsApi.update_batch_cred_attestation_question"
      end
      # verify the required parameter 'cred_attestation_question' is set
      if @api_client.config.client_side_validation && cred_attestation_question.nil?
        fail ArgumentError, "Missing the required parameter 'cred_attestation_question' when calling CredentialingAttestationQuestionsApi.update_batch_cred_attestation_question"
      end
      # resource path
      local_var_path = '/credentialing-attestation-questions-batch'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cred_attestation_question)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingAttestationQuestionsApi.update_batch_cred_attestation_question",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingAttestationQuestionsApi#update_batch_cred_attestation_question\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update CredAttestationQuestion
    # Updates a specific CredAttestationQuestion.
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question_key [Integer] CredAttestationQuestion Key
    # @param cred_attestation_question [CredAttestationQuestion] 
    # @param [Hash] opts the optional parameters
    # @return [CredAttestationQuestionVBAResponse]
    def update_cred_attestation_question(vbasoftware_database, cred_attestation_question_key, cred_attestation_question, opts = {})
      data, _status_code, _headers = update_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, cred_attestation_question, opts)
      data
    end

    # Update CredAttestationQuestion
    # Updates a specific CredAttestationQuestion.
    # @param vbasoftware_database [String] Target database
    # @param cred_attestation_question_key [Integer] CredAttestationQuestion Key
    # @param cred_attestation_question [CredAttestationQuestion] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CredAttestationQuestionVBAResponse, Integer, Hash)>] CredAttestationQuestionVBAResponse data, response status code and response headers
    def update_cred_attestation_question_with_http_info(vbasoftware_database, cred_attestation_question_key, cred_attestation_question, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CredentialingAttestationQuestionsApi.update_cred_attestation_question ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling CredentialingAttestationQuestionsApi.update_cred_attestation_question"
      end
      # verify the required parameter 'cred_attestation_question_key' is set
      if @api_client.config.client_side_validation && cred_attestation_question_key.nil?
        fail ArgumentError, "Missing the required parameter 'cred_attestation_question_key' when calling CredentialingAttestationQuestionsApi.update_cred_attestation_question"
      end
      # verify the required parameter 'cred_attestation_question' is set
      if @api_client.config.client_side_validation && cred_attestation_question.nil?
        fail ArgumentError, "Missing the required parameter 'cred_attestation_question' when calling CredentialingAttestationQuestionsApi.update_cred_attestation_question"
      end
      # resource path
      local_var_path = '/credentialing-attestation-questions/{credAttestationQuestionKey}'.sub('{' + 'credAttestationQuestionKey' + '}', CGI.escape(cred_attestation_question_key.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(cred_attestation_question)

      # return_type
      return_type = opts[:debug_return_type] || 'CredAttestationQuestionVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"CredentialingAttestationQuestionsApi.update_cred_attestation_question",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CredentialingAttestationQuestionsApi#update_cred_attestation_question\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
