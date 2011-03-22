require 'spec_helper'

describe Student do
  before(:each)do
    @attr={:name=>"example Student", :email=>"student@example.com"}
end
it "name should be presence" do
		student=Student.new(@attr.merge(:name=>"", :email=>"4552554@qq.com"))
		student.should_not be_valid
 end
it "name should be presence" do
		student=Student.new(@attr.merge(:name=>"45242452452425242542154515454", :email=>"651231237@qq.com"))
		student.should_not be_valid
 end
 it "email should be presence" do
		student=Student.new(@attr.merge(:email=>""))
		student.should_not be_valid
 end
 it "email should be format" do
		student=Student.new(@attr.merge(:email=>"6523234qq.com"))
		student.should_not be_valid
 end
 it "num should be presence" do
		student=Student.new(@attr.merge(:num=>"564"))
		student.should_not be_valid
 end
 
end
 
 