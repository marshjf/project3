require 'spec_helper'

describe PagesController do

  describe "GET 'student'" do
    it "should be successful" do
      get 'student'
      response.should be_success
    end
  end

  describe "GET 'parent'" do
    it "should be successful" do
      get 'parent'
      response.should be_success
    end
  end

end
