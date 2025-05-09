=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::DRGCodesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DRGCodesApi' do
  before do
    # run before each test
    @api_instance = Vba::DRGCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DRGCodesApi' do
    it 'should create an instance of DRGCodesApi' do
      expect(@api_instance).to be_instance_of(Vba::DRGCodesApi)
    end
  end

  # unit tests for create_drg_codes
  # Create DRGCodes
  # Creates a new DRGCodes
  # @param vbasoftware_database Target database
  # @param drg_codes 
  # @param [Hash] opts the optional parameters
  # @return [DRGCodesVBAResponse]
  describe 'create_drg_codes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_drg_codes
  # Delete DRGCodes
  # Deletes an DRGCodes
  # @param vbasoftware_database Target database
  # @param d_rg_code DRG Code
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_drg_codes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_drg_codes
  # Get DRGCodes
  # Gets DRGCodes
  # @param vbasoftware_database Target database
  # @param d_rg_code DRG Code
  # @param [Hash] opts the optional parameters
  # @return [DRGCodesVBAResponse]
  describe 'get_drg_codes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_drg_codes
  # Create or Update Batch DRGCodes
  # Create or Update multiple DRGCodes at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param drg_codes 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_drg_codes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_drg_codes
  # Update DRGCodes
  # Updates a specific DRGCodes.
  # @param vbasoftware_database Target database
  # @param d_rg_code DRG Code
  # @param drg_codes 
  # @param [Hash] opts the optional parameters
  # @return [DRGCodesVBAResponse]
  describe 'update_drg_codes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
