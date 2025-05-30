=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberIDCardsPrintedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberIDCardsPrintedApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberIDCardsPrintedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberIDCardsPrintedApi' do
    it 'should create an instance of MemberIDCardsPrintedApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberIDCardsPrintedApi)
    end
  end

  # unit tests for create_member_id_card_printed
  # Create MemberIDCardPrinted
  # Creates a new MemberIDCardPrinted
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_id_card_printed 
  # @param [Hash] opts the optional parameters
  # @return [MemberIDCardPrintedVBAResponse]
  describe 'create_member_id_card_printed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_id_card_printed
  # Delete MemberIDCardPrinted
  # Deletes an MemberIDCardPrinted
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param report_definition_key ReportDefinition Key
  # @param printed_date Printed Date
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_id_card_printed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_id_card_printed
  # Get MemberIDCardPrinted
  # Gets MemberIDCardPrinted
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param report_definition_key ReportDefinition Key
  # @param printed_date Printed Date
  # @param [Hash] opts the optional parameters
  # @return [MemberIDCardPrintedVBAResponse]
  describe 'get_member_id_card_printed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_id_card_printed
  # List MemberIDCardPrinted
  # Lists all MemberIDCardPrinted for the given subscriberID and memberSeq
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberIDCardPrintedListVBAResponse]
  describe 'list_member_id_card_printed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_id_card_printed
  # Create or Update Batch MemberIDCardPrinted
  # Create or Update multiple MemberIDCardPrinted at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_id_card_printed 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_id_card_printed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_id_card_printed
  # Update MemberIDCardPrinted
  # Updates a specific MemberIDCardPrinted.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param report_definition_key ReportDefinition Key
  # @param printed_date Printed Date
  # @param member_id_card_printed 
  # @param [Hash] opts the optional parameters
  # @return [MemberIDCardPrintedVBAResponse]
  describe 'update_member_id_card_printed test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
