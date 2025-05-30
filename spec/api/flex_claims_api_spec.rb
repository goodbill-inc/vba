=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::FlexClaimsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FlexClaimsApi' do
  before do
    # run before each test
    @api_instance = Vba::FlexClaimsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FlexClaimsApi' do
    it 'should create an instance of FlexClaimsApi' do
      expect(@api_instance).to be_instance_of(Vba::FlexClaimsApi)
    end
  end

  # unit tests for create_claim_flex
  # Create ClaimFlex
  # Creates a new ClaimFlex
  # @param vbasoftware_database Target database
  # @param claim_flex 
  # @param [Hash] opts the optional parameters
  # @return [ClaimFlexVBAResponse]
  describe 'create_claim_flex test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_flex
  # Delete ClaimFlex
  # Deletes an ClaimFlex
  # @param vbasoftware_database Target database
  # @param claim_flex_key ClaimFlex Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_flex test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_flex
  # Get ClaimFlex
  # Gets ClaimFlex
  # @param vbasoftware_database Target database
  # @param claim_flex_key ClaimFlex Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimFlexVBAResponse]
  describe 'get_claim_flex test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_flex
  # List ClaimFlex
  # Lists all ClaimFlex
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimFlexListVBAResponse]
  describe 'list_claim_flex test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_flex
  # Create or Update Batch ClaimFlex
  # Create or Update multiple ClaimFlex at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_flex 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_flex test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_flex
  # Update ClaimFlex
  # Updates a specific ClaimFlex.
  # @param vbasoftware_database Target database
  # @param claim_flex_key ClaimFlex Key
  # @param claim_flex 
  # @param [Hash] opts the optional parameters
  # @return [ClaimFlexVBAResponse]
  describe 'update_claim_flex test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
