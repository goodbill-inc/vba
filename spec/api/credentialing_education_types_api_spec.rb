=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::CredentialingEducationTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CredentialingEducationTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::CredentialingEducationTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CredentialingEducationTypesApi' do
    it 'should create an instance of CredentialingEducationTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::CredentialingEducationTypesApi)
    end
  end

  # unit tests for create_cred_education_type
  # Create CredEducationType
  # Creates a new CredEducationType
  # @param vbasoftware_database Target database
  # @param cred_education_type 
  # @param [Hash] opts the optional parameters
  # @return [CredEducationTypeVBAResponse]
  describe 'create_cred_education_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_cred_education_type
  # Delete CredEducationType
  # Deletes an CredEducationType
  # @param vbasoftware_database Target database
  # @param cred_education_type_key CredEducationType Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_cred_education_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cred_education_type
  # Get CredEducationType
  # Gets CredEducationType
  # @param vbasoftware_database Target database
  # @param cred_education_type_key CredEducationType Key
  # @param [Hash] opts the optional parameters
  # @return [CredEducationTypeVBAResponse]
  describe 'get_cred_education_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cred_education_type
  # List CredEducationType
  # Lists all CredEducationType
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [CredEducationTypeListVBAResponse]
  describe 'list_cred_education_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_cred_education_type
  # Create or Update Batch CredEducationType
  # Create or Update multiple CredEducationType at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param cred_education_type 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_cred_education_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_cred_education_type
  # Update CredEducationType
  # Updates a specific CredEducationType.
  # @param vbasoftware_database Target database
  # @param cred_education_type_key CredEducationType Key
  # @param cred_education_type 
  # @param [Hash] opts the optional parameters
  # @return [CredEducationTypeVBAResponse]
  describe 'update_cred_education_type test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
