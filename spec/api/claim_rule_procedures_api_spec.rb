=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::ClaimRuleProceduresApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClaimRuleProceduresApi' do
  before do
    # run before each test
    @api_instance = Vba::ClaimRuleProceduresApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClaimRuleProceduresApi' do
    it 'should create an instance of ClaimRuleProceduresApi' do
      expect(@api_instance).to be_instance_of(Vba::ClaimRuleProceduresApi)
    end
  end

  # unit tests for create_claim_rule_procedure
  # Create ClaimRuleProcedure
  # Creates a new ClaimRuleProcedure
  # @param vbasoftware_database Target database
  # @param claim_rule_key ClaimRule Key
  # @param claim_rule_procedure 
  # @param [Hash] opts the optional parameters
  # @return [ClaimRuleProcedureVBAResponse]
  describe 'create_claim_rule_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_claim_rule_procedure
  # Delete ClaimRuleProcedure
  # Deletes an ClaimRuleProcedure
  # @param vbasoftware_database Target database
  # @param claim_rule_key ClaimRule Key
  # @param from_procedure From Procedure
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_claim_rule_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_claim_rule_procedure
  # Get ClaimRuleProcedure
  # Gets ClaimRuleProcedure
  # @param vbasoftware_database Target database
  # @param claim_rule_key ClaimRule Key
  # @param from_procedure From Procedure
  # @param [Hash] opts the optional parameters
  # @return [ClaimRuleProcedureVBAResponse]
  describe 'get_claim_rule_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_claim_rule_procedure
  # List ClaimRuleProcedure
  # Lists all ClaimRuleProcedure for the given claimRuleKey
  # @param vbasoftware_database Target database
  # @param claim_rule_key ClaimRule Key
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [ClaimRuleProcedureListVBAResponse]
  describe 'list_claim_rule_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_claim_rule_procedure
  # Create or Update Batch ClaimRuleProcedure
  # Create or Update multiple ClaimRuleProcedure at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param claim_rule_key ClaimRule Key
  # @param claim_rule_procedure 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_claim_rule_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_claim_rule_procedure
  # Update ClaimRuleProcedure
  # Updates a specific ClaimRuleProcedure.
  # @param vbasoftware_database Target database
  # @param claim_rule_key ClaimRule Key
  # @param from_procedure From Procedure
  # @param claim_rule_procedure 
  # @param [Hash] opts the optional parameters
  # @return [ClaimRuleProcedureVBAResponse]
  describe 'update_claim_rule_procedure test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
