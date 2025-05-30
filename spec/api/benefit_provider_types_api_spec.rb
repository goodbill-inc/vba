=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::BenefitProviderTypesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BenefitProviderTypesApi' do
  before do
    # run before each test
    @api_instance = Vba::BenefitProviderTypesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BenefitProviderTypesApi' do
    it 'should create an instance of BenefitProviderTypesApi' do
      expect(@api_instance).to be_instance_of(Vba::BenefitProviderTypesApi)
    end
  end

  # unit tests for create_benefit_provider_types
  # Create BenefitProviderTypes
  # Creates a new BenefitProviderTypes
  # @param vbasoftware_database Target database
  # @param benefit_code Benefit Code
  # @param benefit_provider_types 
  # @param [Hash] opts the optional parameters
  # @return [BenefitProviderTypesVBAResponse]
  describe 'create_benefit_provider_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_benefit_provider_types
  # Delete BenefitProviderTypes
  # Deletes an BenefitProviderTypes
  # @param vbasoftware_database Target database
  # @param benefit_code Benefit Code
  # @param provider_type Provider Type
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_benefit_provider_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_benefit_provider_types
  # Get BenefitProviderTypes
  # Gets BenefitProviderTypes
  # @param vbasoftware_database Target database
  # @param benefit_code Benefit Code
  # @param provider_type Provider Type
  # @param [Hash] opts the optional parameters
  # @return [BenefitProviderTypesVBAResponse]
  describe 'get_benefit_provider_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_benefit_provider_types
  # List BenefitProviderTypes
  # Lists all BenefitProviderTypes benefitCode
  # @param vbasoftware_database Target database
  # @param benefit_code Benefit Code
  # @param [Hash] opts the optional parameters
  # @return [BenefitProviderTypesListVBAResponse]
  describe 'list_benefit_provider_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_benefit_provider_types
  # Create or Update Batch BenefitProviderTypes
  # Create or Update multiple BenefitProviderTypes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param benefit_code Benefit Code
  # @param benefit_provider_types 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_benefit_provider_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_benefit_provider_types
  # Update BenefitProviderTypes
  # Updates a specific BenefitProviderTypes.
  # @param vbasoftware_database Target database
  # @param benefit_code Benefit Code
  # @param provider_type Provider Type
  # @param benefit_provider_types 
  # @param [Hash] opts the optional parameters
  # @return [BenefitProviderTypesVBAResponse]
  describe 'update_benefit_provider_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
