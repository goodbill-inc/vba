=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::JobTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'JobTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::JobTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of JobTypesApi' do
    it 'should create an instance of JobTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::JobTypesApi)
    end
  end

  # unit tests for create_job_type
  # Create JobType
  # Creates a new JobType
  # @param vbasoftware_database Target database
  # @param job_type 
  # @param [Hash] opts the optional parameters
  # @return [JobTypeVBAResponse]
  describe 'create_job_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_job_type
  # Delete JobType
  # Deletes an JobType
  # @param vbasoftware_database Target database
  # @param job_type Job Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_job_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_job_type
  # Get JobType
  # Gets JobType
  # @param vbasoftware_database Target database
  # @param job_type Job Type
  # @param [Hash] opts the optional parameters
  # @return [JobTypeVBAResponse]
  describe 'get_job_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_job_type
  # List JobType
  # Lists all JobType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [JobTypeListVBAResponse]
  describe 'list_job_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_job_type
  # Create or Update Batch JobType
  # Create or Update multiple JobType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param job_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_job_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_job_type
  # Update JobType
  # Updates a specific JobType.
  # @param vbasoftware_database Target database
  # @param job_type Job Type
  # @param job_type2 
  # @param [Hash] opts the optional parameters
  # @return [JobTypeVBAResponse]
  describe 'update_job_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
