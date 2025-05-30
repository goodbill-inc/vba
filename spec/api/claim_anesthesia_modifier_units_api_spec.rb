=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimAnesthesiaModifierUnitsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimAnesthesiaModifierUnitsApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimAnesthesiaModifierUnitsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimAnesthesiaModifierUnitsApi' do
    it 'should create an instance of ClaimAnesthesiaModifierUnitsApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimAnesthesiaModifierUnitsApi)
    end
  end

  # unit tests for create_claim_anesthesia_modifier_unit
  # Create ClaimAnesthesiaModifierUnit
  # Creates a new ClaimAnesthesiaModifierUnit
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_modifier_unit 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAnesthesiaModifierUnitVBAResponse]
  describe 'create_claim_anesthesia_modifier_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_anesthesia_modifier_unit
  # Delete ClaimAnesthesiaModifierUnit
  # Deletes an ClaimAnesthesiaModifierUnit
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_modifier_unit_key ClaimAnesthesiaModifierUnit Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_anesthesia_modifier_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_anesthesia_modifier_unit
  # Get ClaimAnesthesiaModifierUnit
  # Gets ClaimAnesthesiaModifierUnit
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_modifier_unit_key ClaimAnesthesiaModifierUnit Key
  # @param [Hash] opts the optional parameters
  # @return [ClaimAnesthesiaModifierUnitVBAResponse]
  describe 'get_claim_anesthesia_modifier_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_anesthesia_modifier_unit
  # List ClaimAnesthesiaModifierUnit
  # Lists all ClaimAnesthesiaModifierUnit
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimAnesthesiaModifierUnitListVBAResponse]
  describe 'list_claim_anesthesia_modifier_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_anesthesia_modifier_unit
  # Create or Update Batch ClaimAnesthesiaModifierUnit
  # Create or Update multiple ClaimAnesthesiaModifierUnit at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_modifier_unit 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_anesthesia_modifier_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_anesthesia_modifier_unit
  # Update ClaimAnesthesiaModifierUnit
  # Updates a specific ClaimAnesthesiaModifierUnit.
  # @param vbasoftware_database Target database
  # @param claim_anesthesia_modifier_unit_key ClaimAnesthesiaModifierUnit Key
  # @param claim_anesthesia_modifier_unit 
  # @param [Hash] opts the optional parameters
  # @return [ClaimAnesthesiaModifierUnitVBAResponse]
  describe 'update_claim_anesthesia_modifier_unit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
