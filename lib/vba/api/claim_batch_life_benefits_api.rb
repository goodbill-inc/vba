=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module Vba
  class ClaimBatchLifeBenefitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create ClaimBatchLifeBenefit
    # Creates a new ClaimBatchLifeBenefit
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param claim_batch_life_benefit [ClaimBatchLifeBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchLifeBenefitVBAResponse]
    def create_claim_batch_life_benefit(vbasoftware_database, batch_number, claim_batch_life_benefit, opts = {})
      data, _status_code, _headers = create_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit, opts)
      data
    end

    # Create ClaimBatchLifeBenefit
    # Creates a new ClaimBatchLifeBenefit
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param claim_batch_life_benefit [ClaimBatchLifeBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchLifeBenefitVBAResponse, Integer, Hash)>] ClaimBatchLifeBenefitVBAResponse data, response status code and response headers
    def create_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLifeBenefitsApi.create_claim_batch_life_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLifeBenefitsApi.create_claim_batch_life_benefit"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchLifeBenefitsApi.create_claim_batch_life_benefit"
      end
      # verify the required parameter 'claim_batch_life_benefit' is set
      if @api_client.config.client_side_validation && claim_batch_life_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_life_benefit' when calling ClaimBatchLifeBenefitsApi.create_claim_batch_life_benefit"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/life-benefits'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batch_life_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimBatchLifeBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLifeBenefitsApi.create_claim_batch_life_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLifeBenefitsApi#create_claim_batch_life_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete ClaimBatchLifeBenefit
    # Deletes an ClaimBatchLifeBenefit
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code, opts = {})
      delete_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, opts)
      nil
    end

    # Delete ClaimBatchLifeBenefit
    # Deletes an ClaimBatchLifeBenefit
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLifeBenefitsApi.delete_claim_batch_life_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLifeBenefitsApi.delete_claim_batch_life_benefit"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchLifeBenefitsApi.delete_claim_batch_life_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling ClaimBatchLifeBenefitsApi.delete_claim_batch_life_benefit"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/life-benefits/{benefitCode}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
        :operation => :"ClaimBatchLifeBenefitsApi.delete_claim_batch_life_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLifeBenefitsApi#delete_claim_batch_life_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get ClaimBatchLifeBenefit
    # Gets ClaimBatchLifeBenefit
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchLifeBenefitVBAResponse]
    def get_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code, opts = {})
      data, _status_code, _headers = get_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, opts)
      data
    end

    # Get ClaimBatchLifeBenefit
    # Gets ClaimBatchLifeBenefit
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param benefit_code [String] Benefit Code
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchLifeBenefitVBAResponse, Integer, Hash)>] ClaimBatchLifeBenefitVBAResponse data, response status code and response headers
    def get_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLifeBenefitsApi.get_claim_batch_life_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLifeBenefitsApi.get_claim_batch_life_benefit"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchLifeBenefitsApi.get_claim_batch_life_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling ClaimBatchLifeBenefitsApi.get_claim_batch_life_benefit"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/life-benefits/{benefitCode}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimBatchLifeBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLifeBenefitsApi.get_claim_batch_life_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLifeBenefitsApi#get_claim_batch_life_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List ClaimBatchLifeBenefit
    # Lists all ClaimBatchLifeBenefit for the given batchNumber
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [ClaimBatchLifeBenefitListVBAResponse]
    def list_claim_batch_life_benefit(vbasoftware_database, batch_number, opts = {})
      data, _status_code, _headers = list_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, opts)
      data
    end

    # List ClaimBatchLifeBenefit
    # Lists all ClaimBatchLifeBenefit for the given batchNumber
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Page (default to 1)
    # @option opts [Integer] :page_size Page Size (default to 100)
    # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
    # @return [Array<(ClaimBatchLifeBenefitListVBAResponse, Integer, Hash)>] ClaimBatchLifeBenefitListVBAResponse data, response status code and response headers
    def list_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLifeBenefitsApi.list_claim_batch_life_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLifeBenefitsApi.list_claim_batch_life_benefit"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchLifeBenefitsApi.list_claim_batch_life_benefit"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/life-benefits'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s))

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
      return_type = opts[:debug_return_type] || 'ClaimBatchLifeBenefitListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLifeBenefitsApi.list_claim_batch_life_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLifeBenefitsApi#list_claim_batch_life_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update Batch ClaimBatchLifeBenefit
    # Create or Update multiple ClaimBatchLifeBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param claim_batch_life_benefit [Array<ClaimBatchLifeBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [MultiCodeResponseListVBAResponse]
    def update_batch_claim_batch_life_benefit(vbasoftware_database, batch_number, claim_batch_life_benefit, opts = {})
      data, _status_code, _headers = update_batch_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit, opts)
      data
    end

    # Create or Update Batch ClaimBatchLifeBenefit
    # Create or Update multiple ClaimBatchLifeBenefit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param claim_batch_life_benefit [Array<ClaimBatchLifeBenefit>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MultiCodeResponseListVBAResponse, Integer, Hash)>] MultiCodeResponseListVBAResponse data, response status code and response headers
    def update_batch_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, claim_batch_life_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLifeBenefitsApi.update_batch_claim_batch_life_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLifeBenefitsApi.update_batch_claim_batch_life_benefit"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchLifeBenefitsApi.update_batch_claim_batch_life_benefit"
      end
      # verify the required parameter 'claim_batch_life_benefit' is set
      if @api_client.config.client_side_validation && claim_batch_life_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_life_benefit' when calling ClaimBatchLifeBenefitsApi.update_batch_claim_batch_life_benefit"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/life-benefits-batch'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batch_life_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'MultiCodeResponseListVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLifeBenefitsApi.update_batch_claim_batch_life_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLifeBenefitsApi#update_batch_claim_batch_life_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ClaimBatchLifeBenefit
    # Updates a specific ClaimBatchLifeBenefit.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param benefit_code [String] Benefit Code
    # @param claim_batch_life_benefit [ClaimBatchLifeBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [ClaimBatchLifeBenefitVBAResponse]
    def update_claim_batch_life_benefit(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit, opts = {})
      data, _status_code, _headers = update_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit, opts)
      data
    end

    # Update ClaimBatchLifeBenefit
    # Updates a specific ClaimBatchLifeBenefit.
    # @param vbasoftware_database [String] Target database
    # @param batch_number [Integer] Batch Number
    # @param benefit_code [String] Benefit Code
    # @param claim_batch_life_benefit [ClaimBatchLifeBenefit] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClaimBatchLifeBenefitVBAResponse, Integer, Hash)>] ClaimBatchLifeBenefitVBAResponse data, response status code and response headers
    def update_claim_batch_life_benefit_with_http_info(vbasoftware_database, batch_number, benefit_code, claim_batch_life_benefit, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClaimBatchLifeBenefitsApi.update_claim_batch_life_benefit ...'
      end
      # verify the required parameter 'vbasoftware_database' is set
      if @api_client.config.client_side_validation && vbasoftware_database.nil?
        fail ArgumentError, "Missing the required parameter 'vbasoftware_database' when calling ClaimBatchLifeBenefitsApi.update_claim_batch_life_benefit"
      end
      # verify the required parameter 'batch_number' is set
      if @api_client.config.client_side_validation && batch_number.nil?
        fail ArgumentError, "Missing the required parameter 'batch_number' when calling ClaimBatchLifeBenefitsApi.update_claim_batch_life_benefit"
      end
      # verify the required parameter 'benefit_code' is set
      if @api_client.config.client_side_validation && benefit_code.nil?
        fail ArgumentError, "Missing the required parameter 'benefit_code' when calling ClaimBatchLifeBenefitsApi.update_claim_batch_life_benefit"
      end
      # verify the required parameter 'claim_batch_life_benefit' is set
      if @api_client.config.client_side_validation && claim_batch_life_benefit.nil?
        fail ArgumentError, "Missing the required parameter 'claim_batch_life_benefit' when calling ClaimBatchLifeBenefitsApi.update_claim_batch_life_benefit"
      end
      # resource path
      local_var_path = '/claim-batches/{batchNumber}/life-benefits/{benefitCode}'.sub('{' + 'batchNumber' + '}', CGI.escape(batch_number.to_s)).sub('{' + 'benefitCode' + '}', CGI.escape(benefit_code.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(claim_batch_life_benefit)

      # return_type
      return_type = opts[:debug_return_type] || 'ClaimBatchLifeBenefitVBAResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"ClaimBatchLifeBenefitsApi.update_claim_batch_life_benefit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClaimBatchLifeBenefitsApi#update_claim_batch_life_benefit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
