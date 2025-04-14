=begin
#VBASoftware

#APIs for VBASoftware

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Vba::MemberToothExCodesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MemberToothExCodesApi' do
  before do
    # run before each test
    @api_instance = Vba::MemberToothExCodesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MemberToothExCodesApi' do
    it 'should create an instance of MemberToothExCodesApi' do
      expect(@api_instance).to be_instance_of(Vba::MemberToothExCodesApi)
    end
  end

  # unit tests for create_member_tooth_ex_code
  # Create MemberToothExCode
  # Creates a new MemberToothExCode
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_tooth_ex_code 
  # @param [Hash] opts the optional parameters
  # @return [MemberToothExCodeVBAResponse]
  describe 'create_member_tooth_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_member_tooth_ex_code
  # Delete MemberToothExCode
  # Deletes an MemberToothExCode
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param tooth_number Tooth Number
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_member_tooth_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_member_tooth_ex_code
  # Get MemberToothExCode
  # Gets MemberToothExCode
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param tooth_number Tooth Number
  # @param [Hash] opts the optional parameters
  # @return [MemberToothExCodeVBAResponse]
  describe 'get_member_tooth_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_member_tooth_ex_code
  # List MemberToothExCode
  # Lists all MemberToothExCode for the given subscriberID and memberSeq
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page
  # @option opts [Integer] :page_size Page Size
  # @option opts [String] :sort_by Comma separated string to sort by. Each sort field can be followed by :asc or :desc to specify sort direction, ascending is default. E.g., &#39;Property1:desc,Property2:asc,Property3:asc&#39; sorts Property1 in descending order, Property2 in ascending, and Property3 in ascending.
  # @return [MemberToothExCodeListVBAResponse]
  describe 'list_member_tooth_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_batch_member_tooth_ex_code
  # Create or Update Batch MemberToothExCode
  # Create or Update multiple MemberToothExCode at once.  If the entity exists, it will be updated.  If the entity does not exist, it will be created.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param member_tooth_ex_code 
  # @param [Hash] opts the optional parameters
  # @return [MultiCodeResponseListVBAResponse]
  describe 'update_batch_member_tooth_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_member_tooth_ex_code
  # Update MemberToothExCode
  # Updates a specific MemberToothExCode.
  # @param vbasoftware_database Target database
  # @param subscriber_id Subscriber ID
  # @param member_seq Member Seq
  # @param tooth_number Tooth Number
  # @param member_tooth_ex_code 
  # @param [Hash] opts the optional parameters
  # @return [MemberToothExCodeVBAResponse]
  describe 'update_member_tooth_ex_code test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
