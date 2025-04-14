=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::PremiumPastDueTriggersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PremiumPastDueTriggersApi' do
  before do
    # run before each test
    @api_instance = Vba::PremiumPastDueTriggersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PremiumPastDueTriggersApi' do
    it 'should create an instance of PremiumPastDueTriggersApi' do
      expect(@api_instance).to be_instance_of(Vba::PremiumPastDueTriggersApi)
    end
  end

  # unit tests for create_prem_past_due_trigger
  # Create PremPastDueTrigger
  # Creates a new PremPastDueTrigger
  # @param vbasoftware_database Target database
  # @param prem_past_due_trigger 
  # @param [Hash] opts the optional parameters
  # @return [PremPastDueTriggerVBAResponse]
  describe 'create_prem_past_due_trigger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_prem_past_due_trigger
  # Delete PremPastDueTrigger
  # Deletes an PremPastDueTrigger
  # @param vbasoftware_database Target database
  # @param prem_past_due_trigger_key PremPastDueTrigger Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_prem_past_due_trigger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_prem_past_due_trigger
  # Get PremPastDueTrigger
  # Gets PremPastDueTrigger
  # @param vbasoftware_database Target database
  # @param prem_past_due_trigger_key PremPastDueTrigger Key
  # @param [Hash] opts the optional parameters
  # @return [PremPastDueTriggerVBAResponse]
  describe 'get_prem_past_due_trigger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_prem_past_due_trigger
  # List PremPastDueTrigger
  # Lists all PremPastDueTrigger
  # @param vbasoftware_database Target database
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [PremPastDueTriggerListVBAResponse]
  describe 'list_prem_past_due_trigger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_prem_past_due_trigger
  # Create or Update Batch PremPastDueTrigger
  # Create or Update multiple PremPastDueTrigger at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param prem_past_due_trigger 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_prem_past_due_trigger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_prem_past_due_trigger
  # Update PremPastDueTrigger
  # Updates a specific PremPastDueTrigger.
  # @param vbasoftware_database Target database
  # @param prem_past_due_trigger_key PremPastDueTrigger Key
  # @param prem_past_due_trigger 
  # @param [Hash] opts the optional parameters
  # @return [PremPastDueTriggerVBAResponse]
  describe 'update_prem_past_due_trigger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
