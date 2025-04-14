=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::JobExecutionMetadataApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobExecutionMetadataApi' do
  before do
    # run before each test
    @api_instance = Vba::JobExecutionMetadataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobExecutionMetadataApi' do
    it 'should create an instance of JobExecutionMetadataApi' do
      expect(@api_instance).to be_instance_of(Vba::JobExecutionMetadataApi)
    end
  end

  # unit tests for create_job_execution_meta_data
  # Create JobExecutionMetaData
  # Creates a new JobExecutionMetaData
  # @param vbasoftware_database Target database
  # @param job_id Job ID
  # @param job_execution_key JobExecution Key
  # @param job_execution_meta_data 
  # @param [Hash] opts the optional parameters
  # @return [JobExecutionMetaDataVBAResponse]
  describe 'create_job_execution_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_job_execution_meta_data
  # Delete JobExecutionMetaData
  # Deletes an JobExecutionMetaData
  # @param vbasoftware_database Target database
  # @param job_id Job ID
  # @param job_execution_key JobExecution Key
  # @param job_execution_attribute JobExecution Attribute
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_job_execution_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_job_execution_meta_data
  # Get JobExecutionMetaData
  # Gets JobExecutionMetaData
  # @param vbasoftware_database Target database
  # @param job_id Job ID
  # @param job_execution_key JobExecution Key
  # @param job_execution_attribute JobExecution Attribute
  # @param [Hash] opts the optional parameters
  # @return [JobExecutionMetaDataVBAResponse]
  describe 'get_job_execution_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_job_execution_meta_data
  # List JobExecutionMetaData
  # Lists all JobExecutionMetaData for the given jobExecutionKey
  # @param vbasoftware_database Target database
  # @param job_id Job ID
  # @param job_execution_key JobExecution Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [JobExecutionMetaDataListVBAResponse]
  describe 'list_job_execution_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_job_execution_meta_data
  # Create or Update Batch JobExecutionMetaData
  # Create or Update multiple JobExecutionMetaData at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param job_id Job ID
  # @param job_execution_key JobExecution Key
  # @param job_execution_meta_data 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_job_execution_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_job_execution_meta_data
  # Update JobExecutionMetaData
  # Updates a specific JobExecutionMetaData.
  # @param vbasoftware_database Target database
  # @param job_id Job ID
  # @param job_execution_key JobExecution Key
  # @param job_execution_attribute JobExecution Attribute
  # @param job_execution_meta_data 
  # @param [Hash] opts the optional parameters
  # @return [JobExecutionMetaDataVBAResponse]
  describe 'update_job_execution_meta_data test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
