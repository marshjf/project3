require 'spec_helper'

describe Parent do
  before(:each)do
    @attr={:name=>"example Parent", :email=>"parent@example.com"}
end
it "name should be presence" do
		parent=Parent.new(@attr.merge(:name=>"", :email=>"4552554@qq.com"))
		parent.should_not be_valid
 end
it "name should be presence" do
		parent=Parent.new(@attr.merge(:name=>"45242452452425242542154515454", :email=>"651231237@qq.com"))
		parent.should_not be_valid
 end
 it "email should be presence" do
		parent=Parent.new(@attr.merge(:email=>""))
		parent.should_not be_valid
 end
 it "email should be format" do
		parent=Parent.new(@attr.merge(:email=>"6523234qq.com"))
		parent.should_not be_valid
 end
 it "tel should be format" do
		parent=Parent.new(@attr.merge(:tel=>"1232"))
		parent.should_not be_valid
 end
end